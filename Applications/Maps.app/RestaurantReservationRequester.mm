@interface RestaurantReservationRequester
- (NSString)uniqueName;
- (RestaurantReservationRequester)initWithExtension:(id)extension mapItem:(id)item delegate:(id)delegate parameters:(id)parameters;
- (RestaurantReservationRequesterDelegate)delegate;
- (void)bookRestaurantReservation:(id)reservation guest:(id)guest selectedOffer:(id)offer specialRequest:(id)request;
- (void)requestAvailableBookingsForPreferredTime:(id)time partySize:(unint64_t)size;
- (void)requestGuest;
- (void)requestReservationDefaults;
- (void)requestUserCurrentBookingWithRelevanceWindow:(double)window reservationIdentifier:(id)identifier;
- (void)resetAvailableBookingsState;
- (void)resetBookRestaurantReservationState;
- (void)resetGuestState;
- (void)resetReservationDefaultsState;
- (void)resetUserCurrentBookingState;
- (void)setAvailableBookingsRequestPending:(BOOL)pending;
- (void)setBookReservationRequestPending:(BOOL)pending;
- (void)setGuestRequestPending:(BOOL)pending;
- (void)setReservationDefaultsRequestPending:(BOOL)pending;
- (void)setUserCurrentBookingRequestPending:(BOOL)pending;
@end

@implementation RestaurantReservationRequester

- (RestaurantReservationRequesterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (void)setBookReservationRequestPending:(BOOL)pending
{
  if (self->_bookReservationRequestPending == !pending)
  {
    self->_bookReservationRequestPending = pending;
    if (!pending)
    {
      bookReservationRequestError = [(RestaurantReservationRequester *)self bookReservationRequestError];

      delegate = [(RestaurantReservationRequester *)self delegate];
      if (bookReservationRequestError)
      {
        v6 = objc_opt_respondsToSelector();

        if ((v6 & 1) == 0)
        {
          return;
        }

        delegate2 = [(RestaurantReservationRequester *)self delegate];
        bookReservationRequestError2 = [(RestaurantReservationRequester *)self bookReservationRequestError];
        [delegate2 requester:self bookRestaurantReservationRequestDidFailWithError:bookReservationRequestError2];
      }

      else
      {
        v8 = objc_opt_respondsToSelector();

        if ((v8 & 1) == 0)
        {
          return;
        }

        delegate2 = [(RestaurantReservationRequester *)self delegate];
        [delegate2 requesterBookRestaurantReservationRequestDidComplete:self];
      }
    }
  }
}

- (void)resetBookRestaurantReservationState
{
  [(RestaurantReservationRequester *)self setCurrentBookReservationNumber:[(RestaurantReservationRequester *)self currentBookReservationNumber]+ 1];
  [(RestaurantReservationRequester *)self setBookReservationRequestPending:1];
  [(RestaurantReservationRequester *)self setBookReservationUserActivity:0];
  [(RestaurantReservationRequester *)self setBookReservationResponse:0];

  [(RestaurantReservationRequester *)self setBookReservationRequestError:0];
}

- (void)bookRestaurantReservation:(id)reservation guest:(id)guest selectedOffer:(id)offer specialRequest:(id)request
{
  reservationCopy = reservation;
  guestCopy = guest;
  offerCopy = offer;
  requestCopy = request;
  [(RestaurantReservationRequester *)self resetBookRestaurantReservationState];
  v32 = +[NSCalendar currentCalendar];
  v12 = objc_alloc_init(INBookRestaurantReservationIntent);
  mapItem = [(RestaurantReservationRequester *)self mapItem];
  v14 = [mapItem _maps_intentsRestaurantUsingParameters:self->_extensionParameters];
  [v12 setRestaurant:v14];

  [v12 setPartySize:{objc_msgSend(reservationCopy, "partySize")}];
  bookingDate = [reservationCopy bookingDate];
  [v12 setBookingDate:bookingDate];

  if (objc_opt_respondsToSelector())
  {
    mapItem2 = [(RestaurantReservationRequester *)self mapItem];
    timeZone = [mapItem2 timeZone];
    v18 = timeZone;
    if (!timeZone)
    {
      v18 = +[NSTimeZone defaultTimeZone];
    }

    bookingDate2 = [reservationCopy bookingDate];
    v20 = [v32 componentsInTimeZone:v18 fromDate:bookingDate2];
    [v12 setBookingDateComponents:v20];

    if (!timeZone)
    {
    }
  }

  bookingIdentifier = [reservationCopy bookingIdentifier];
  [v12 setBookingIdentifier:bookingIdentifier];

  [v12 setGuest:guestCopy];
  [v12 setSelectedOffer:offerCopy];
  [v12 setGuestProvidedSpecialRequestText:requestCopy];
  extension = [(RestaurantReservationRequester *)self extension];
  v23 = [extension canSupportIntent:v12];

  if ((v23 & 1) == 0)
  {
    extensionDoesNotSupportIntentError = [(RestaurantReservationRequester *)self extensionDoesNotSupportIntentError];
    [(RestaurantReservationRequester *)self setBookReservationRequestError:extensionDoesNotSupportIntentError];

    [(RestaurantReservationRequester *)self setBookReservationRequestPending:0];
  }

  currentBookReservationNumber = [(RestaurantReservationRequester *)self currentBookReservationNumber];
  objc_initWeak(&location, self);
  v26 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [(RestaurantReservationRequester *)self uniqueName];
    *buf = 138412546;
    v40 = uniqueName;
    v41 = 2080;
    v42 = "bookRestaurantReservation";
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
  }

  v28 = GEOFindOrCreateLog();
  if (os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "bookRestaurantReservation", "", buf, 2u);
  }

  extension2 = [(RestaurantReservationRequester *)self extension];
  v30 = objc_opt_class();
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100E3AEC4;
  v36[3] = &unk_101655EA8;
  objc_copyWeak(v37, &location);
  v37[1] = currentBookReservationNumber;
  v31 = [extension2 handleIntent:v12 expectResponseClass:v30 withCompletion:v36];

  objc_destroyWeak(v37);
  objc_destroyWeak(&location);
}

- (void)setAvailableBookingsRequestPending:(BOOL)pending
{
  if (self->_availableBookingsRequestPending == !pending)
  {
    self->_availableBookingsRequestPending = pending;
    if (!pending)
    {
      availableBookingsRequestError = [(RestaurantReservationRequester *)self availableBookingsRequestError];

      delegate = [(RestaurantReservationRequester *)self delegate];
      if (availableBookingsRequestError)
      {
        v6 = objc_opt_respondsToSelector();

        if ((v6 & 1) == 0)
        {
          return;
        }

        delegate2 = [(RestaurantReservationRequester *)self delegate];
        availableBookingsRequestError2 = [(RestaurantReservationRequester *)self availableBookingsRequestError];
        [delegate2 requester:self availableBookingsRequestDidFailWithError:availableBookingsRequestError2];
      }

      else
      {
        v8 = objc_opt_respondsToSelector();

        if ((v8 & 1) == 0)
        {
          return;
        }

        delegate2 = [(RestaurantReservationRequester *)self delegate];
        [delegate2 requesterAvailableBookingsRequestDidComplete:self];
      }
    }
  }
}

- (void)resetAvailableBookingsState
{
  [(RestaurantReservationRequester *)self setCurrentAvailableBookingNumber:[(RestaurantReservationRequester *)self currentAvailableBookingNumber]+ 1];
  [(RestaurantReservationRequester *)self setAvailableBookingsRequestPending:1];
  [(RestaurantReservationRequester *)self setAvailableBookingsUserActivity:0];
  [(RestaurantReservationRequester *)self setAvailableBookingsResponse:0];
  [(RestaurantReservationRequester *)self setAvailableBookingsRequestError:0];

  [(RestaurantReservationRequester *)self setAvailableBookingsRequest:0];
}

- (void)requestAvailableBookingsForPreferredTime:(id)time partySize:(unint64_t)size
{
  timeCopy = time;
  [(RestaurantReservationRequester *)self resetAvailableBookingsState];
  v7 = +[NSCalendar currentCalendar];
  v8 = objc_alloc_init(INGetAvailableRestaurantReservationBookingsIntent);
  mapItem = [(RestaurantReservationRequester *)self mapItem];
  v10 = [mapItem _maps_intentsRestaurantUsingParameters:self->_extensionParameters];
  [v8 setRestaurant:v10];

  [v8 setPartySize:size];
  [v8 setPreferredBookingDate:timeCopy];
  if (objc_opt_respondsToSelector())
  {
    mapItem2 = [(RestaurantReservationRequester *)self mapItem];
    timeZone = [mapItem2 timeZone];
    v13 = timeZone;
    if (!timeZone)
    {
      v13 = +[NSTimeZone defaultTimeZone];
    }

    v14 = [v7 componentsInTimeZone:v13 fromDate:timeCopy];
    [v8 setPreferredBookingDateComponents:v14];

    if (!timeZone)
    {
    }
  }

  [v8 setMaximumNumberOfResults:&off_1016E9F38];
  v15 = +[NSDate date];
  [v8 setEarliestBookingDateForResults:v15];

  mapItem3 = [(RestaurantReservationRequester *)self mapItem];
  timeZone2 = [mapItem3 timeZone];
  v18 = [timeCopy _maps_nextDayAtHour:0 timeZone:timeZone2];
  [v8 setLatestBookingDateForResults:v18];

  extension = [(RestaurantReservationRequester *)self extension];
  LOBYTE(timeZone2) = [extension canSupportIntent:v8];

  if (timeZone2)
  {
    [(RestaurantReservationRequester *)self setAvailableBookingsRequest:v8];
    currentAvailableBookingNumber = [(RestaurantReservationRequester *)self currentAvailableBookingNumber];
    objc_initWeak(&location, self);
    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [(RestaurantReservationRequester *)self uniqueName];
      *buf = 138412546;
      v33 = uniqueName;
      v34 = 2080;
      v35 = "requestAvailableBookings";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v23 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "requestAvailableBookings", "", buf, 2u);
    }

    extension2 = [(RestaurantReservationRequester *)self extension];
    v25 = objc_opt_class();
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100E3B9D4;
    v28[3] = &unk_101655ED0;
    objc_copyWeak(v30, &location);
    v29 = v8;
    v30[1] = currentAvailableBookingNumber;
    v26 = [extension2 handleIntent:v29 expectResponseClass:v25 withCompletion:v28];

    objc_destroyWeak(v30);
    objc_destroyWeak(&location);
  }

  else
  {
    extensionDoesNotSupportIntentError = [(RestaurantReservationRequester *)self extensionDoesNotSupportIntentError];
    [(RestaurantReservationRequester *)self setAvailableBookingsRequestError:extensionDoesNotSupportIntentError];

    [(RestaurantReservationRequester *)self setAvailableBookingsRequestPending:0];
  }
}

- (void)setUserCurrentBookingRequestPending:(BOOL)pending
{
  if (self->_userCurrentBookingRequestPending == !pending)
  {
    self->_userCurrentBookingRequestPending = pending;
    if (!pending)
    {
      userCurrentBookingRequestError = [(RestaurantReservationRequester *)self userCurrentBookingRequestError];

      delegate = [(RestaurantReservationRequester *)self delegate];
      if (userCurrentBookingRequestError)
      {
        v6 = objc_opt_respondsToSelector();

        if ((v6 & 1) == 0)
        {
          return;
        }

        delegate2 = [(RestaurantReservationRequester *)self delegate];
        userCurrentBookingRequestError2 = [(RestaurantReservationRequester *)self userCurrentBookingRequestError];
        [delegate2 requester:self userCurrentBookingRequestDidFailWithError:userCurrentBookingRequestError2];
      }

      else
      {
        v8 = objc_opt_respondsToSelector();

        if ((v8 & 1) == 0)
        {
          return;
        }

        delegate2 = [(RestaurantReservationRequester *)self delegate];
        [delegate2 requesterUserCurrentBookingRequestDidComplete:self];
      }
    }
  }
}

- (void)resetUserCurrentBookingState
{
  [(RestaurantReservationRequester *)self setCurrentUserBookingNumber:[(RestaurantReservationRequester *)self currentUserBookingNumber]+ 1];
  [(RestaurantReservationRequester *)self setUserCurrentBookingRequestPending:1];
  [(RestaurantReservationRequester *)self setUserCurrentBookingUserActivity:0];
  [(RestaurantReservationRequester *)self setUserCurrentBookingResponse:0];

  [(RestaurantReservationRequester *)self setUserCurrentBookingRequestError:0];
}

- (void)requestUserCurrentBookingWithRelevanceWindow:(double)window reservationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(RestaurantReservationRequester *)self resetUserCurrentBookingState];
  v7 = objc_alloc_init(INGetUserCurrentRestaurantReservationBookingsIntent);
  mapItem = [(RestaurantReservationRequester *)self mapItem];
  v9 = [mapItem _maps_intentsRestaurantUsingParameters:self->_extensionParameters];
  [v7 setRestaurant:v9];

  [v7 setMaximumNumberOfResults:&off_1016E9F20];
  v10 = [NSDate dateWithTimeIntervalSinceNow:-window];
  [v7 setEarliestBookingDateForResults:v10];

  [v7 setReservationIdentifier:identifierCopy];
  extension = [(RestaurantReservationRequester *)self extension];
  LOBYTE(v9) = [extension canSupportIntent:v7];

  if (v9)
  {
    currentUserBookingNumber = [(RestaurantReservationRequester *)self currentUserBookingNumber];
    objc_initWeak(&location, self);
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [(RestaurantReservationRequester *)self uniqueName];
      *buf = 138412546;
      v24 = uniqueName;
      v25 = 2080;
      v26 = "requestUserCurrentBooking";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v15 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "requestUserCurrentBooking", "", buf, 2u);
    }

    extension2 = [(RestaurantReservationRequester *)self extension];
    v17 = objc_opt_class();
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100E3C3F4;
    v20[3] = &unk_101655EA8;
    objc_copyWeak(v21, &location);
    v21[1] = currentUserBookingNumber;
    v18 = [extension2 handleIntent:v7 expectResponseClass:v17 withCompletion:v20];

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }

  else
  {
    extensionDoesNotSupportIntentError = [(RestaurantReservationRequester *)self extensionDoesNotSupportIntentError];
    [(RestaurantReservationRequester *)self setUserCurrentBookingRequestError:extensionDoesNotSupportIntentError];

    [(RestaurantReservationRequester *)self setUserCurrentBookingRequestPending:0];
  }
}

- (void)setReservationDefaultsRequestPending:(BOOL)pending
{
  if (self->_reservationDefaultsRequestPending == !pending)
  {
    self->_reservationDefaultsRequestPending = pending;
    if (!pending)
    {
      reservationDefaultsRequestError = [(RestaurantReservationRequester *)self reservationDefaultsRequestError];

      delegate = [(RestaurantReservationRequester *)self delegate];
      if (reservationDefaultsRequestError)
      {
        v6 = objc_opt_respondsToSelector();

        if ((v6 & 1) == 0)
        {
          return;
        }

        delegate2 = [(RestaurantReservationRequester *)self delegate];
        reservationDefaultsRequestError2 = [(RestaurantReservationRequester *)self reservationDefaultsRequestError];
        [delegate2 requester:self reservationDefaultsRequestDidFailWithError:reservationDefaultsRequestError2];
      }

      else
      {
        v8 = objc_opt_respondsToSelector();

        if ((v8 & 1) == 0)
        {
          return;
        }

        delegate2 = [(RestaurantReservationRequester *)self delegate];
        [delegate2 requesterReservationDefaultsRequestDidComplete:self];
      }
    }
  }
}

- (void)resetReservationDefaultsState
{
  [(RestaurantReservationRequester *)self setCurrentReservationDefaultsNumber:[(RestaurantReservationRequester *)self currentReservationDefaultsNumber]+ 1];
  [(RestaurantReservationRequester *)self setReservationDefaultsRequestPending:1];
  [(RestaurantReservationRequester *)self setReservationDefaultsUserActivity:0];
  [(RestaurantReservationRequester *)self setReservationDefaultsResponse:0];

  [(RestaurantReservationRequester *)self setReservationDefaultsRequestError:0];
}

- (void)requestReservationDefaults
{
  [(RestaurantReservationRequester *)self resetReservationDefaultsState];
  v3 = objc_alloc_init(INGetAvailableRestaurantReservationBookingDefaultsIntent);
  mapItem = [(RestaurantReservationRequester *)self mapItem];
  v5 = [mapItem _maps_intentsRestaurantUsingParameters:self->_extensionParameters];
  [v3 setRestaurant:v5];

  extension = [(RestaurantReservationRequester *)self extension];
  LOBYTE(v5) = [extension canSupportIntent:v3];

  if (v5)
  {
    currentReservationDefaultsNumber = [(RestaurantReservationRequester *)self currentReservationDefaultsNumber];
    objc_initWeak(&location, self);
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [(RestaurantReservationRequester *)self uniqueName];
      *buf = 138412546;
      v19 = uniqueName;
      v20 = 2080;
      v21 = "requestReservationDefaults";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v10 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "requestReservationDefaults", "", buf, 2u);
    }

    extension2 = [(RestaurantReservationRequester *)self extension];
    v12 = objc_opt_class();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100E3CD8C;
    v15[3] = &unk_101655EA8;
    objc_copyWeak(v16, &location);
    v16[1] = currentReservationDefaultsNumber;
    v13 = [extension2 handleIntent:v3 expectResponseClass:v12 withCompletion:v15];

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }

  else
  {
    extensionDoesNotSupportIntentError = [(RestaurantReservationRequester *)self extensionDoesNotSupportIntentError];
    [(RestaurantReservationRequester *)self setReservationDefaultsRequestError:extensionDoesNotSupportIntentError];

    [(RestaurantReservationRequester *)self setReservationDefaultsRequestPending:0];
  }
}

- (void)setGuestRequestPending:(BOOL)pending
{
  if (self->_guestRequestPending == !pending)
  {
    self->_guestRequestPending = pending;
    if (!pending)
    {
      guestRequestError = [(RestaurantReservationRequester *)self guestRequestError];

      delegate = [(RestaurantReservationRequester *)self delegate];
      if (guestRequestError)
      {
        v6 = objc_opt_respondsToSelector();

        if ((v6 & 1) == 0)
        {
          return;
        }

        delegate2 = [(RestaurantReservationRequester *)self delegate];
        guestRequestError2 = [(RestaurantReservationRequester *)self guestRequestError];
        [delegate2 requester:self guestRequestDidFailWithError:guestRequestError2];
      }

      else
      {
        v8 = objc_opt_respondsToSelector();

        if ((v8 & 1) == 0)
        {
          return;
        }

        delegate2 = [(RestaurantReservationRequester *)self delegate];
        [delegate2 requesterGuestRequestDidComplete:self];
      }
    }
  }
}

- (void)resetGuestState
{
  [(RestaurantReservationRequester *)self setCurrentGuestRequestNumber:[(RestaurantReservationRequester *)self currentGuestRequestNumber]+ 1];
  [(RestaurantReservationRequester *)self setGuestRequestPending:1];
  [(RestaurantReservationRequester *)self setGuestUserActivity:0];
  [(RestaurantReservationRequester *)self setGuestResponse:0];

  [(RestaurantReservationRequester *)self setGuestRequestError:0];
}

- (void)requestGuest
{
  [(RestaurantReservationRequester *)self resetGuestState];
  v3 = objc_alloc_init(INGetRestaurantGuestIntent);
  extension = [(RestaurantReservationRequester *)self extension];
  v5 = [extension canSupportIntent:v3];

  if (v5)
  {
    currentGuestRequestNumber = [(RestaurantReservationRequester *)self currentGuestRequestNumber];
    objc_initWeak(&location, self);
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      uniqueName = [(RestaurantReservationRequester *)self uniqueName];
      *buf = 138412546;
      v18 = uniqueName;
      v19 = 2080;
      v20 = "requestGuest";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "{MSgDebug} OBJECT{%@} %s BEGIN", buf, 0x16u);
    }

    v9 = GEOFindOrCreateLog();
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "requestGuest", "", buf, 2u);
    }

    extension2 = [(RestaurantReservationRequester *)self extension];
    v11 = objc_opt_class();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100E3D6E0;
    v14[3] = &unk_101655EA8;
    objc_copyWeak(v15, &location);
    v15[1] = currentGuestRequestNumber;
    v12 = [extension2 handleIntent:v3 expectResponseClass:v11 withCompletion:v14];

    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }

  else
  {
    extensionDoesNotSupportIntentError = [(RestaurantReservationRequester *)self extensionDoesNotSupportIntentError];
    [(RestaurantReservationRequester *)self setGuestRequestError:extensionDoesNotSupportIntentError];

    [(RestaurantReservationRequester *)self setGuestRequestPending:0];
  }
}

- (RestaurantReservationRequester)initWithExtension:(id)extension mapItem:(id)item delegate:(id)delegate parameters:(id)parameters
{
  extensionCopy = extension;
  itemCopy = item;
  delegateCopy = delegate;
  parametersCopy = parameters;
  v18.receiver = self;
  v18.super_class = RestaurantReservationRequester;
  v15 = [(RestaurantReservationRequester *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_extension, extension);
    objc_storeStrong(&v16->_mapItem, item);
    objc_storeWeak(&v16->_delegate, delegateCopy);
    objc_storeStrong(&v16->_extensionParameters, parameters);
  }

  return v16;
}

@end
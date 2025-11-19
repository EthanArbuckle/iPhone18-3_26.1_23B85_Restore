@interface RestaurantReservationRequester
- (NSString)uniqueName;
- (RestaurantReservationRequester)initWithExtension:(id)a3 mapItem:(id)a4 delegate:(id)a5 parameters:(id)a6;
- (RestaurantReservationRequesterDelegate)delegate;
- (void)bookRestaurantReservation:(id)a3 guest:(id)a4 selectedOffer:(id)a5 specialRequest:(id)a6;
- (void)requestAvailableBookingsForPreferredTime:(id)a3 partySize:(unint64_t)a4;
- (void)requestGuest;
- (void)requestReservationDefaults;
- (void)requestUserCurrentBookingWithRelevanceWindow:(double)a3 reservationIdentifier:(id)a4;
- (void)resetAvailableBookingsState;
- (void)resetBookRestaurantReservationState;
- (void)resetGuestState;
- (void)resetReservationDefaultsState;
- (void)resetUserCurrentBookingState;
- (void)setAvailableBookingsRequestPending:(BOOL)a3;
- (void)setBookReservationRequestPending:(BOOL)a3;
- (void)setGuestRequestPending:(BOOL)a3;
- (void)setReservationDefaultsRequestPending:(BOOL)a3;
- (void)setUserCurrentBookingRequestPending:(BOOL)a3;
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

- (void)setBookReservationRequestPending:(BOOL)a3
{
  if (self->_bookReservationRequestPending == !a3)
  {
    self->_bookReservationRequestPending = a3;
    if (!a3)
    {
      v4 = [(RestaurantReservationRequester *)self bookReservationRequestError];

      v5 = [(RestaurantReservationRequester *)self delegate];
      if (v4)
      {
        v6 = objc_opt_respondsToSelector();

        if ((v6 & 1) == 0)
        {
          return;
        }

        v9 = [(RestaurantReservationRequester *)self delegate];
        v7 = [(RestaurantReservationRequester *)self bookReservationRequestError];
        [v9 requester:self bookRestaurantReservationRequestDidFailWithError:v7];
      }

      else
      {
        v8 = objc_opt_respondsToSelector();

        if ((v8 & 1) == 0)
        {
          return;
        }

        v9 = [(RestaurantReservationRequester *)self delegate];
        [v9 requesterBookRestaurantReservationRequestDidComplete:self];
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

- (void)bookRestaurantReservation:(id)a3 guest:(id)a4 selectedOffer:(id)a5 specialRequest:(id)a6
{
  v10 = a3;
  v34 = a4;
  v35 = a5;
  v11 = a6;
  [(RestaurantReservationRequester *)self resetBookRestaurantReservationState];
  v32 = +[NSCalendar currentCalendar];
  v12 = objc_alloc_init(INBookRestaurantReservationIntent);
  v13 = [(RestaurantReservationRequester *)self mapItem];
  v14 = [v13 _maps_intentsRestaurantUsingParameters:self->_extensionParameters];
  [v12 setRestaurant:v14];

  [v12 setPartySize:{objc_msgSend(v10, "partySize")}];
  v15 = [v10 bookingDate];
  [v12 setBookingDate:v15];

  if (objc_opt_respondsToSelector())
  {
    v16 = [(RestaurantReservationRequester *)self mapItem];
    v17 = [v16 timeZone];
    v18 = v17;
    if (!v17)
    {
      v18 = +[NSTimeZone defaultTimeZone];
    }

    v19 = [v10 bookingDate];
    v20 = [v32 componentsInTimeZone:v18 fromDate:v19];
    [v12 setBookingDateComponents:v20];

    if (!v17)
    {
    }
  }

  v21 = [v10 bookingIdentifier];
  [v12 setBookingIdentifier:v21];

  [v12 setGuest:v34];
  [v12 setSelectedOffer:v35];
  [v12 setGuestProvidedSpecialRequestText:v11];
  v22 = [(RestaurantReservationRequester *)self extension];
  v23 = [v22 canSupportIntent:v12];

  if ((v23 & 1) == 0)
  {
    v24 = [(RestaurantReservationRequester *)self extensionDoesNotSupportIntentError];
    [(RestaurantReservationRequester *)self setBookReservationRequestError:v24];

    [(RestaurantReservationRequester *)self setBookReservationRequestPending:0];
  }

  v25 = [(RestaurantReservationRequester *)self currentBookReservationNumber];
  objc_initWeak(&location, self);
  v26 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = [(RestaurantReservationRequester *)self uniqueName];
    *buf = 138412546;
    v40 = v27;
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

  v29 = [(RestaurantReservationRequester *)self extension];
  v30 = objc_opt_class();
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100E3AEC4;
  v36[3] = &unk_101655EA8;
  objc_copyWeak(v37, &location);
  v37[1] = v25;
  v31 = [v29 handleIntent:v12 expectResponseClass:v30 withCompletion:v36];

  objc_destroyWeak(v37);
  objc_destroyWeak(&location);
}

- (void)setAvailableBookingsRequestPending:(BOOL)a3
{
  if (self->_availableBookingsRequestPending == !a3)
  {
    self->_availableBookingsRequestPending = a3;
    if (!a3)
    {
      v4 = [(RestaurantReservationRequester *)self availableBookingsRequestError];

      v5 = [(RestaurantReservationRequester *)self delegate];
      if (v4)
      {
        v6 = objc_opt_respondsToSelector();

        if ((v6 & 1) == 0)
        {
          return;
        }

        v9 = [(RestaurantReservationRequester *)self delegate];
        v7 = [(RestaurantReservationRequester *)self availableBookingsRequestError];
        [v9 requester:self availableBookingsRequestDidFailWithError:v7];
      }

      else
      {
        v8 = objc_opt_respondsToSelector();

        if ((v8 & 1) == 0)
        {
          return;
        }

        v9 = [(RestaurantReservationRequester *)self delegate];
        [v9 requesterAvailableBookingsRequestDidComplete:self];
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

- (void)requestAvailableBookingsForPreferredTime:(id)a3 partySize:(unint64_t)a4
{
  v6 = a3;
  [(RestaurantReservationRequester *)self resetAvailableBookingsState];
  v7 = +[NSCalendar currentCalendar];
  v8 = objc_alloc_init(INGetAvailableRestaurantReservationBookingsIntent);
  v9 = [(RestaurantReservationRequester *)self mapItem];
  v10 = [v9 _maps_intentsRestaurantUsingParameters:self->_extensionParameters];
  [v8 setRestaurant:v10];

  [v8 setPartySize:a4];
  [v8 setPreferredBookingDate:v6];
  if (objc_opt_respondsToSelector())
  {
    v11 = [(RestaurantReservationRequester *)self mapItem];
    v12 = [v11 timeZone];
    v13 = v12;
    if (!v12)
    {
      v13 = +[NSTimeZone defaultTimeZone];
    }

    v14 = [v7 componentsInTimeZone:v13 fromDate:v6];
    [v8 setPreferredBookingDateComponents:v14];

    if (!v12)
    {
    }
  }

  [v8 setMaximumNumberOfResults:&off_1016E9F38];
  v15 = +[NSDate date];
  [v8 setEarliestBookingDateForResults:v15];

  v16 = [(RestaurantReservationRequester *)self mapItem];
  v17 = [v16 timeZone];
  v18 = [v6 _maps_nextDayAtHour:0 timeZone:v17];
  [v8 setLatestBookingDateForResults:v18];

  v19 = [(RestaurantReservationRequester *)self extension];
  LOBYTE(v17) = [v19 canSupportIntent:v8];

  if (v17)
  {
    [(RestaurantReservationRequester *)self setAvailableBookingsRequest:v8];
    v20 = [(RestaurantReservationRequester *)self currentAvailableBookingNumber];
    objc_initWeak(&location, self);
    v21 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = [(RestaurantReservationRequester *)self uniqueName];
      *buf = 138412546;
      v33 = v22;
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

    v24 = [(RestaurantReservationRequester *)self extension];
    v25 = objc_opt_class();
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100E3B9D4;
    v28[3] = &unk_101655ED0;
    objc_copyWeak(v30, &location);
    v29 = v8;
    v30[1] = v20;
    v26 = [v24 handleIntent:v29 expectResponseClass:v25 withCompletion:v28];

    objc_destroyWeak(v30);
    objc_destroyWeak(&location);
  }

  else
  {
    v27 = [(RestaurantReservationRequester *)self extensionDoesNotSupportIntentError];
    [(RestaurantReservationRequester *)self setAvailableBookingsRequestError:v27];

    [(RestaurantReservationRequester *)self setAvailableBookingsRequestPending:0];
  }
}

- (void)setUserCurrentBookingRequestPending:(BOOL)a3
{
  if (self->_userCurrentBookingRequestPending == !a3)
  {
    self->_userCurrentBookingRequestPending = a3;
    if (!a3)
    {
      v4 = [(RestaurantReservationRequester *)self userCurrentBookingRequestError];

      v5 = [(RestaurantReservationRequester *)self delegate];
      if (v4)
      {
        v6 = objc_opt_respondsToSelector();

        if ((v6 & 1) == 0)
        {
          return;
        }

        v9 = [(RestaurantReservationRequester *)self delegate];
        v7 = [(RestaurantReservationRequester *)self userCurrentBookingRequestError];
        [v9 requester:self userCurrentBookingRequestDidFailWithError:v7];
      }

      else
      {
        v8 = objc_opt_respondsToSelector();

        if ((v8 & 1) == 0)
        {
          return;
        }

        v9 = [(RestaurantReservationRequester *)self delegate];
        [v9 requesterUserCurrentBookingRequestDidComplete:self];
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

- (void)requestUserCurrentBookingWithRelevanceWindow:(double)a3 reservationIdentifier:(id)a4
{
  v6 = a4;
  [(RestaurantReservationRequester *)self resetUserCurrentBookingState];
  v7 = objc_alloc_init(INGetUserCurrentRestaurantReservationBookingsIntent);
  v8 = [(RestaurantReservationRequester *)self mapItem];
  v9 = [v8 _maps_intentsRestaurantUsingParameters:self->_extensionParameters];
  [v7 setRestaurant:v9];

  [v7 setMaximumNumberOfResults:&off_1016E9F20];
  v10 = [NSDate dateWithTimeIntervalSinceNow:-a3];
  [v7 setEarliestBookingDateForResults:v10];

  [v7 setReservationIdentifier:v6];
  v11 = [(RestaurantReservationRequester *)self extension];
  LOBYTE(v9) = [v11 canSupportIntent:v7];

  if (v9)
  {
    v12 = [(RestaurantReservationRequester *)self currentUserBookingNumber];
    objc_initWeak(&location, self);
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [(RestaurantReservationRequester *)self uniqueName];
      *buf = 138412546;
      v24 = v14;
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

    v16 = [(RestaurantReservationRequester *)self extension];
    v17 = objc_opt_class();
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100E3C3F4;
    v20[3] = &unk_101655EA8;
    objc_copyWeak(v21, &location);
    v21[1] = v12;
    v18 = [v16 handleIntent:v7 expectResponseClass:v17 withCompletion:v20];

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v19 = [(RestaurantReservationRequester *)self extensionDoesNotSupportIntentError];
    [(RestaurantReservationRequester *)self setUserCurrentBookingRequestError:v19];

    [(RestaurantReservationRequester *)self setUserCurrentBookingRequestPending:0];
  }
}

- (void)setReservationDefaultsRequestPending:(BOOL)a3
{
  if (self->_reservationDefaultsRequestPending == !a3)
  {
    self->_reservationDefaultsRequestPending = a3;
    if (!a3)
    {
      v4 = [(RestaurantReservationRequester *)self reservationDefaultsRequestError];

      v5 = [(RestaurantReservationRequester *)self delegate];
      if (v4)
      {
        v6 = objc_opt_respondsToSelector();

        if ((v6 & 1) == 0)
        {
          return;
        }

        v9 = [(RestaurantReservationRequester *)self delegate];
        v7 = [(RestaurantReservationRequester *)self reservationDefaultsRequestError];
        [v9 requester:self reservationDefaultsRequestDidFailWithError:v7];
      }

      else
      {
        v8 = objc_opt_respondsToSelector();

        if ((v8 & 1) == 0)
        {
          return;
        }

        v9 = [(RestaurantReservationRequester *)self delegate];
        [v9 requesterReservationDefaultsRequestDidComplete:self];
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
  v4 = [(RestaurantReservationRequester *)self mapItem];
  v5 = [v4 _maps_intentsRestaurantUsingParameters:self->_extensionParameters];
  [v3 setRestaurant:v5];

  v6 = [(RestaurantReservationRequester *)self extension];
  LOBYTE(v5) = [v6 canSupportIntent:v3];

  if (v5)
  {
    v7 = [(RestaurantReservationRequester *)self currentReservationDefaultsNumber];
    objc_initWeak(&location, self);
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [(RestaurantReservationRequester *)self uniqueName];
      *buf = 138412546;
      v19 = v9;
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

    v11 = [(RestaurantReservationRequester *)self extension];
    v12 = objc_opt_class();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100E3CD8C;
    v15[3] = &unk_101655EA8;
    objc_copyWeak(v16, &location);
    v16[1] = v7;
    v13 = [v11 handleIntent:v3 expectResponseClass:v12 withCompletion:v15];

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = [(RestaurantReservationRequester *)self extensionDoesNotSupportIntentError];
    [(RestaurantReservationRequester *)self setReservationDefaultsRequestError:v14];

    [(RestaurantReservationRequester *)self setReservationDefaultsRequestPending:0];
  }
}

- (void)setGuestRequestPending:(BOOL)a3
{
  if (self->_guestRequestPending == !a3)
  {
    self->_guestRequestPending = a3;
    if (!a3)
    {
      v4 = [(RestaurantReservationRequester *)self guestRequestError];

      v5 = [(RestaurantReservationRequester *)self delegate];
      if (v4)
      {
        v6 = objc_opt_respondsToSelector();

        if ((v6 & 1) == 0)
        {
          return;
        }

        v9 = [(RestaurantReservationRequester *)self delegate];
        v7 = [(RestaurantReservationRequester *)self guestRequestError];
        [v9 requester:self guestRequestDidFailWithError:v7];
      }

      else
      {
        v8 = objc_opt_respondsToSelector();

        if ((v8 & 1) == 0)
        {
          return;
        }

        v9 = [(RestaurantReservationRequester *)self delegate];
        [v9 requesterGuestRequestDidComplete:self];
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
  v4 = [(RestaurantReservationRequester *)self extension];
  v5 = [v4 canSupportIntent:v3];

  if (v5)
  {
    v6 = [(RestaurantReservationRequester *)self currentGuestRequestNumber];
    objc_initWeak(&location, self);
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [(RestaurantReservationRequester *)self uniqueName];
      *buf = 138412546;
      v18 = v8;
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

    v10 = [(RestaurantReservationRequester *)self extension];
    v11 = objc_opt_class();
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100E3D6E0;
    v14[3] = &unk_101655EA8;
    objc_copyWeak(v15, &location);
    v15[1] = v6;
    v12 = [v10 handleIntent:v3 expectResponseClass:v11 withCompletion:v14];

    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = [(RestaurantReservationRequester *)self extensionDoesNotSupportIntentError];
    [(RestaurantReservationRequester *)self setGuestRequestError:v13];

    [(RestaurantReservationRequester *)self setGuestRequestPending:0];
  }
}

- (RestaurantReservationRequester)initWithExtension:(id)a3 mapItem:(id)a4 delegate:(id)a5 parameters:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = RestaurantReservationRequester;
  v15 = [(RestaurantReservationRequester *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_extension, a3);
    objc_storeStrong(&v16->_mapItem, a4);
    objc_storeWeak(&v16->_delegate, v13);
    objc_storeStrong(&v16->_extensionParameters, a6);
  }

  return v16;
}

@end
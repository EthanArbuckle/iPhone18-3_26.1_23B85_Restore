@interface INGetAvailableRestaurantReservationBookingsIntent
- (BOOL)_bookingIsValid:(id)valid;
- (BOOL)_maps_responseIsValid:(id)valid;
- (id)_maps_preferredBookingDateWithTimeZone:(id)zone;
- (id)_maps_sanitizedResponseForResponse:(id)response;
@end

@implementation INGetAvailableRestaurantReservationBookingsIntent

- (id)_maps_preferredBookingDateWithTimeZone:(id)zone
{
  zoneCopy = zone;
  preferredBookingDateComponents = [(INGetAvailableRestaurantReservationBookingsIntent *)self preferredBookingDateComponents];
  v6 = preferredBookingDateComponents;
  v7 = 0;
  if (zoneCopy && preferredBookingDateComponents)
  {
    v8 = +[NSCalendar currentCalendar];
    v9 = [v8 copy];

    [v9 setTimeZone:zoneCopy];
    v7 = [v9 dateFromComponents:v6];
  }

  return v7;
}

- (BOOL)_bookingIsValid:(id)valid
{
  validCopy = valid;
  restaurant = [validCopy restaurant];
  restaurantIdentifier = [restaurant restaurantIdentifier];
  restaurant2 = [(INGetAvailableRestaurantReservationBookingsIntent *)self restaurant];
  restaurantIdentifier2 = [restaurant2 restaurantIdentifier];
  v9 = [restaurantIdentifier isEqualToString:restaurantIdentifier2];

  if (!v9 || (v10 = [validCopy partySize], v10 != -[INGetAvailableRestaurantReservationBookingsIntent partySize](self, "partySize")) || (objc_msgSend(validCopy, "bookingDate"), v11 = objc_claimAutoreleasedReturnValue(), +[NSDate date](NSDate, "date"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "earlierDate:", v12), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(validCopy, "bookingDate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToDate:", v14), v14, v13, v12, v11, (v15 & 1) != 0) || (-[INGetAvailableRestaurantReservationBookingsIntent earliestBookingDateForResults](self, "earliestBookingDateForResults"), (v16 = objc_claimAutoreleasedReturnValue()) != 0) && (v17 = v16, objc_msgSend(validCopy, "bookingDate"), v18 = objc_claimAutoreleasedReturnValue(), -[INGetAvailableRestaurantReservationBookingsIntent earliestBookingDateForResults](self, "earliestBookingDateForResults"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "earlierDate:", v19), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(validCopy, "bookingDate"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqualToDate:", v21), v21, v20, v19, v18, v17, (v22 & 1) != 0))
  {
    v23 = 0;
  }

  else
  {
    latestBookingDateForResults = [(INGetAvailableRestaurantReservationBookingsIntent *)self latestBookingDateForResults];
    if (latestBookingDateForResults)
    {
      v26 = latestBookingDateForResults;
      bookingDate = [validCopy bookingDate];
      latestBookingDateForResults2 = [(INGetAvailableRestaurantReservationBookingsIntent *)self latestBookingDateForResults];
      v29 = [bookingDate laterDate:latestBookingDateForResults2];
      bookingDate2 = [validCopy bookingDate];
      v31 = [v29 isEqualToDate:bookingDate2];

      v23 = v31 ^ 1;
    }

    else
    {
      v23 = 1;
    }
  }

  return v23 & 1;
}

- (BOOL)_maps_responseIsValid:(id)valid
{
  validCopy = valid;
  maximumNumberOfResults = [(INGetAvailableRestaurantReservationBookingsIntent *)self maximumNumberOfResults];

  if (maximumNumberOfResults && ([validCopy availableBookings], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), -[INGetAvailableRestaurantReservationBookingsIntent maximumNumberOfResults](self, "maximumNumberOfResults"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "unsignedIntegerValue"), v8, v6, v7 > v9))
  {
    v10 = 0;
  }

  else
  {
    v11 = +[NSDate distantFuture];
    v12 = +[NSDate distantPast];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v37 = validCopy;
    availableBookings = [validCopy availableBookings];
    v14 = [availableBookings countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v39;
      while (2)
      {
        v17 = 0;
        v18 = v11;
        v19 = v12;
        do
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(availableBookings);
          }

          v20 = *(*(&v38 + 1) + 8 * v17);
          if (![(INGetAvailableRestaurantReservationBookingsIntent *)self _bookingIsValid:v20])
          {

            v10 = 0;
            goto LABEL_16;
          }

          bookingDate = [v20 bookingDate];
          v11 = [v18 earlierDate:bookingDate];

          bookingDate2 = [v20 bookingDate];
          v12 = [v19 laterDate:bookingDate2];

          v17 = v17 + 1;
          v18 = v11;
          v19 = v12;
        }

        while (v15 != v17);
        v15 = [availableBookings countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    earliestBookingDateForResults = [(INGetAvailableRestaurantReservationBookingsIntent *)self earliestBookingDateForResults];

    if (earliestBookingDateForResults && (-[INGetAvailableRestaurantReservationBookingsIntent earliestBookingDateForResults](self, "earliestBookingDateForResults"), v24 = objc_claimAutoreleasedReturnValue(), [v24 earlierDate:v11], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToDate:", v11), v25, v24, (v26 & 1) != 0))
    {
      v10 = 0;
      v19 = v12;
      v18 = v11;
LABEL_16:
      validCopy = v37;
    }

    else
    {
      latestBookingDateForResults = [(INGetAvailableRestaurantReservationBookingsIntent *)self latestBookingDateForResults];

      validCopy = v37;
      if (latestBookingDateForResults && (-[INGetAvailableRestaurantReservationBookingsIntent latestBookingDateForResults](self, "latestBookingDateForResults"), v28 = objc_claimAutoreleasedReturnValue(), [v28 laterDate:v12], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqualToDate:", v12), v29, v28, (v30 & 1) != 0))
      {
        v10 = 0;
      }

      else
      {
        maximumNumberOfResults2 = [(INGetAvailableRestaurantReservationBookingsIntent *)self maximumNumberOfResults];
        if (maximumNumberOfResults2)
        {
          v32 = maximumNumberOfResults2;
          availableBookings2 = [v37 availableBookings];
          v34 = [availableBookings2 count];
          maximumNumberOfResults3 = [(INGetAvailableRestaurantReservationBookingsIntent *)self maximumNumberOfResults];
          v10 = v34 <= [maximumNumberOfResults3 unsignedIntegerValue];
        }

        else
        {
          v10 = 1;
        }
      }

      v19 = v12;
      v18 = v11;
    }
  }

  return v10;
}

- (id)_maps_sanitizedResponseForResponse:(id)response
{
  responseCopy = response;
  availableBookings = [responseCopy availableBookings];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [availableBookings count]);

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  availableBookings2 = [responseCopy availableBookings];
  v8 = [availableBookings2 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(availableBookings2);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        if ([(INGetAvailableRestaurantReservationBookingsIntent *)self _bookingIsValid:v12])
        {
          [v6 addObject:v12];
        }
      }

      v9 = [availableBookings2 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v9);
  }

  maximumNumberOfResults = [(INGetAvailableRestaurantReservationBookingsIntent *)self maximumNumberOfResults];
  if (maximumNumberOfResults)
  {
    v14 = maximumNumberOfResults;
    v15 = [v6 count];
    maximumNumberOfResults2 = [(INGetAvailableRestaurantReservationBookingsIntent *)self maximumNumberOfResults];
    unsignedIntegerValue = [maximumNumberOfResults2 unsignedIntegerValue];

    if (v15 > unsignedIntegerValue)
    {
      maximumNumberOfResults3 = [(INGetAvailableRestaurantReservationBookingsIntent *)self maximumNumberOfResults];
      unsignedIntegerValue2 = [maximumNumberOfResults3 unsignedIntegerValue];
      v20 = [v6 count];
      maximumNumberOfResults4 = [(INGetAvailableRestaurantReservationBookingsIntent *)self maximumNumberOfResults];
      [v6 removeObjectsInRange:{unsignedIntegerValue2, v20 - objc_msgSend(maximumNumberOfResults4, "unsignedIntegerValue")}];
    }
  }

  v22 = [INGetAvailableRestaurantReservationBookingsIntentResponse alloc];
  code = [responseCopy code];
  userActivity = [responseCopy userActivity];
  v25 = [v22 initWithAvailableBookings:v6 code:code userActivity:userActivity];

  localizedRestaurantDescriptionText = [responseCopy localizedRestaurantDescriptionText];
  [v25 setLocalizedRestaurantDescriptionText:localizedRestaurantDescriptionText];

  localizedBookingAdvisementText = [responseCopy localizedBookingAdvisementText];
  [v25 setLocalizedBookingAdvisementText:localizedBookingAdvisementText];

  termsAndConditions = [responseCopy termsAndConditions];
  [v25 setTermsAndConditions:termsAndConditions];

  if ([(INGetAvailableRestaurantReservationBookingsIntent *)self _maps_responseIsValid:v25])
  {
    v29 = v25;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

@end
@interface INGetAvailableRestaurantReservationBookingsIntent
- (BOOL)_bookingIsValid:(id)a3;
- (BOOL)_maps_responseIsValid:(id)a3;
- (id)_maps_preferredBookingDateWithTimeZone:(id)a3;
- (id)_maps_sanitizedResponseForResponse:(id)a3;
@end

@implementation INGetAvailableRestaurantReservationBookingsIntent

- (id)_maps_preferredBookingDateWithTimeZone:(id)a3
{
  v4 = a3;
  v5 = [(INGetAvailableRestaurantReservationBookingsIntent *)self preferredBookingDateComponents];
  v6 = v5;
  v7 = 0;
  if (v4 && v5)
  {
    v8 = +[NSCalendar currentCalendar];
    v9 = [v8 copy];

    [v9 setTimeZone:v4];
    v7 = [v9 dateFromComponents:v6];
  }

  return v7;
}

- (BOOL)_bookingIsValid:(id)a3
{
  v4 = a3;
  v5 = [v4 restaurant];
  v6 = [v5 restaurantIdentifier];
  v7 = [(INGetAvailableRestaurantReservationBookingsIntent *)self restaurant];
  v8 = [v7 restaurantIdentifier];
  v9 = [v6 isEqualToString:v8];

  if (!v9 || (v10 = [v4 partySize], v10 != -[INGetAvailableRestaurantReservationBookingsIntent partySize](self, "partySize")) || (objc_msgSend(v4, "bookingDate"), v11 = objc_claimAutoreleasedReturnValue(), +[NSDate date](NSDate, "date"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "earlierDate:", v12), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "bookingDate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToDate:", v14), v14, v13, v12, v11, (v15 & 1) != 0) || (-[INGetAvailableRestaurantReservationBookingsIntent earliestBookingDateForResults](self, "earliestBookingDateForResults"), (v16 = objc_claimAutoreleasedReturnValue()) != 0) && (v17 = v16, objc_msgSend(v4, "bookingDate"), v18 = objc_claimAutoreleasedReturnValue(), -[INGetAvailableRestaurantReservationBookingsIntent earliestBookingDateForResults](self, "earliestBookingDateForResults"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "earlierDate:", v19), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "bookingDate"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "isEqualToDate:", v21), v21, v20, v19, v18, v17, (v22 & 1) != 0))
  {
    v23 = 0;
  }

  else
  {
    v25 = [(INGetAvailableRestaurantReservationBookingsIntent *)self latestBookingDateForResults];
    if (v25)
    {
      v26 = v25;
      v27 = [v4 bookingDate];
      v28 = [(INGetAvailableRestaurantReservationBookingsIntent *)self latestBookingDateForResults];
      v29 = [v27 laterDate:v28];
      v30 = [v4 bookingDate];
      v31 = [v29 isEqualToDate:v30];

      v23 = v31 ^ 1;
    }

    else
    {
      v23 = 1;
    }
  }

  return v23 & 1;
}

- (BOOL)_maps_responseIsValid:(id)a3
{
  v4 = a3;
  v5 = [(INGetAvailableRestaurantReservationBookingsIntent *)self maximumNumberOfResults];

  if (v5 && ([v4 availableBookings], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), -[INGetAvailableRestaurantReservationBookingsIntent maximumNumberOfResults](self, "maximumNumberOfResults"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "unsignedIntegerValue"), v8, v6, v7 > v9))
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
    v37 = v4;
    v13 = [v4 availableBookings];
    v14 = [v13 countByEnumeratingWithState:&v38 objects:v42 count:16];
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
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v38 + 1) + 8 * v17);
          if (![(INGetAvailableRestaurantReservationBookingsIntent *)self _bookingIsValid:v20])
          {

            v10 = 0;
            goto LABEL_16;
          }

          v21 = [v20 bookingDate];
          v11 = [v18 earlierDate:v21];

          v22 = [v20 bookingDate];
          v12 = [v19 laterDate:v22];

          v17 = v17 + 1;
          v18 = v11;
          v19 = v12;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v23 = [(INGetAvailableRestaurantReservationBookingsIntent *)self earliestBookingDateForResults];

    if (v23 && (-[INGetAvailableRestaurantReservationBookingsIntent earliestBookingDateForResults](self, "earliestBookingDateForResults"), v24 = objc_claimAutoreleasedReturnValue(), [v24 earlierDate:v11], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToDate:", v11), v25, v24, (v26 & 1) != 0))
    {
      v10 = 0;
      v19 = v12;
      v18 = v11;
LABEL_16:
      v4 = v37;
    }

    else
    {
      v27 = [(INGetAvailableRestaurantReservationBookingsIntent *)self latestBookingDateForResults];

      v4 = v37;
      if (v27 && (-[INGetAvailableRestaurantReservationBookingsIntent latestBookingDateForResults](self, "latestBookingDateForResults"), v28 = objc_claimAutoreleasedReturnValue(), [v28 laterDate:v12], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqualToDate:", v12), v29, v28, (v30 & 1) != 0))
      {
        v10 = 0;
      }

      else
      {
        v31 = [(INGetAvailableRestaurantReservationBookingsIntent *)self maximumNumberOfResults];
        if (v31)
        {
          v32 = v31;
          v33 = [v37 availableBookings];
          v34 = [v33 count];
          v35 = [(INGetAvailableRestaurantReservationBookingsIntent *)self maximumNumberOfResults];
          v10 = v34 <= [v35 unsignedIntegerValue];
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

- (id)_maps_sanitizedResponseForResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 availableBookings];
  v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [v4 availableBookings];
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        if ([(INGetAvailableRestaurantReservationBookingsIntent *)self _bookingIsValid:v12])
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v9);
  }

  v13 = [(INGetAvailableRestaurantReservationBookingsIntent *)self maximumNumberOfResults];
  if (v13)
  {
    v14 = v13;
    v15 = [v6 count];
    v16 = [(INGetAvailableRestaurantReservationBookingsIntent *)self maximumNumberOfResults];
    v17 = [v16 unsignedIntegerValue];

    if (v15 > v17)
    {
      v18 = [(INGetAvailableRestaurantReservationBookingsIntent *)self maximumNumberOfResults];
      v19 = [v18 unsignedIntegerValue];
      v20 = [v6 count];
      v21 = [(INGetAvailableRestaurantReservationBookingsIntent *)self maximumNumberOfResults];
      [v6 removeObjectsInRange:{v19, v20 - objc_msgSend(v21, "unsignedIntegerValue")}];
    }
  }

  v22 = [INGetAvailableRestaurantReservationBookingsIntentResponse alloc];
  v23 = [v4 code];
  v24 = [v4 userActivity];
  v25 = [v22 initWithAvailableBookings:v6 code:v23 userActivity:v24];

  v26 = [v4 localizedRestaurantDescriptionText];
  [v25 setLocalizedRestaurantDescriptionText:v26];

  v27 = [v4 localizedBookingAdvisementText];
  [v25 setLocalizedBookingAdvisementText:v27];

  v28 = [v4 termsAndConditions];
  [v25 setTermsAndConditions:v28];

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
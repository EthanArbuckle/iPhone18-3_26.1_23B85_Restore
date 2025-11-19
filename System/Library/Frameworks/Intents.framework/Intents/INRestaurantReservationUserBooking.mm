@interface INRestaurantReservationUserBooking
- (BOOL)isEqual:(id)a3;
- (INRestaurantReservationUserBooking)initWithCoder:(id)a3;
- (INRestaurantReservationUserBooking)initWithRestaurant:(INRestaurant *)restaurant bookingDate:(NSDate *)bookingDate partySize:(NSUInteger)partySize bookingIdentifier:(NSString *)bookingIdentifier guest:(INRestaurantGuest *)guest status:(INRestaurantReservationUserBookingStatus)status dateStatusModified:(NSDate *)dateStatusModified;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INRestaurantReservationUserBooking

- (id)_dictionaryRepresentation
{
  v29[6] = *MEMORY[0x1E69E9840];
  v23 = @"guest";
  guest = self->_guest;
  v4 = guest;
  if (!guest)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v4;
  v29[0] = v4;
  v24 = @"advisementText";
  advisementText = self->_advisementText;
  v6 = advisementText;
  if (!advisementText)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v6;
  v29[1] = v6;
  v25 = @"selectedOffer";
  selectedOffer = self->_selectedOffer;
  v8 = selectedOffer;
  if (!selectedOffer)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v8;
  v29[2] = v8;
  v26 = @"guestProvidedSpecialRequestText";
  guestProvidedSpecialRequestText = self->_guestProvidedSpecialRequestText;
  v10 = guestProvidedSpecialRequestText;
  if (!guestProvidedSpecialRequestText)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v29[3] = v10;
  v27 = @"status";
  v11 = [(INRestaurantReservationUserBooking *)self status];
  v12 = v11;
  if (v11 <= INRestaurantReservationUserBookingStatusDenied)
  {
    v13 = off_1E72802D0[v11];
  }

  else
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v29[4] = v13;
  v28 = @"dateStatusModified";
  dateStatusModified = self->_dateStatusModified;
  v15 = dateStatusModified;
  if (!dateStatusModified)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v23 count:6];
  if (!dateStatusModified)
  {
  }

  if (v12 >= 3)
  {

    if (guestProvidedSpecialRequestText)
    {
LABEL_18:
      if (selectedOffer)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    }
  }

  else if (guestProvidedSpecialRequestText)
  {
    goto LABEL_18;
  }

  if (selectedOffer)
  {
LABEL_19:
    if (advisementText)
    {
      goto LABEL_20;
    }

LABEL_27:

    if (guest)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

LABEL_26:

  if (!advisementText)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (guest)
  {
    goto LABEL_21;
  }

LABEL_28:

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v31.receiver = self;
  v31.super_class = INRestaurantReservationUserBooking;
  if (![(INRestaurantReservationBooking *)&v31 isEqual:v6])
  {
    goto LABEL_9;
  }

  if (v6 == self)
  {
    v12 = 1;
    goto LABEL_37;
  }

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_9:
    v12 = 0;
    goto LABEL_37;
  }

  v7 = v6;
  v8 = [(INRestaurantReservationUserBooking *)self advisementText];
  if (!v8)
  {
    v3 = [(INRestaurantReservationUserBooking *)v7 advisementText];
    if (!v3)
    {
      v11 = 1;
LABEL_15:

      goto LABEL_16;
    }
  }

  v4 = [(INRestaurantReservationUserBooking *)v7 advisementText];
  v9 = [(INRestaurantReservationUserBooking *)self advisementText];
  if (v9)
  {
    v10 = [(INRestaurantReservationUserBooking *)self advisementText];
    v11 = [v4 isEqualToString:v10];
  }

  else
  {
    v11 = [v4 isEqualToString:&stru_1F01E0850];
  }

  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_16:

  v13 = [(INRestaurantReservationUserBooking *)self selectedOffer];
  if (!v13)
  {
    v4 = [(INRestaurantReservationUserBooking *)v7 selectedOffer];
    if (!v4)
    {
      v16 = 1;
LABEL_21:

      goto LABEL_22;
    }
  }

  v14 = [(INRestaurantReservationUserBooking *)self selectedOffer];
  v15 = [(INRestaurantReservationUserBooking *)v7 selectedOffer];
  v16 = [v14 isEqual:v15];

  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_22:

  v17 = [(INRestaurantReservationUserBooking *)self guestProvidedSpecialRequestText];
  if (!v17)
  {
    v30 = [(INRestaurantReservationUserBooking *)v7 guestProvidedSpecialRequestText];
    if (!v30)
    {
      v30 = 0;
      v23 = 1;
LABEL_30:

      goto LABEL_31;
    }
  }

  v18 = [(INRestaurantReservationUserBooking *)self guestProvidedSpecialRequestText];
  v19 = [(INRestaurantReservationUserBooking *)self guestProvidedSpecialRequestText];
  if (v19)
  {
    [(INRestaurantReservationUserBooking *)self guestProvidedSpecialRequestText];
    v20 = v16;
    v22 = v21 = v11;
    v23 = [v18 isEqualToString:v22];

    v11 = v21;
    v16 = v20;
  }

  else
  {
    v23 = [v18 isEqualToString:&stru_1F01E0850];
  }

  if (!v17)
  {
    goto LABEL_30;
  }

LABEL_31:

  v24 = [(INRestaurantReservationUserBooking *)v7 guest];
  v25 = [(INRestaurantReservationUserBooking *)self guest];
  v12 = 0;
  if (([v24 isEqual:v25] & v11 & v16) == 1 && v23)
  {
    v26 = [(INRestaurantReservationUserBooking *)self status];
    if (v26 == [(INRestaurantReservationUserBooking *)v7 status])
    {
      v27 = [(INRestaurantReservationUserBooking *)v7 dateStatusModified];
      v28 = [(INRestaurantReservationUserBooking *)self dateStatusModified];
      v12 = [v27 isEqualToDate:v28];
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_37:
  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = INRestaurantReservationUserBooking;
  v4 = [(INRestaurantReservationBooking *)&v11 copyWithZone:a3];
  v5 = [(INRestaurantReservationUserBooking *)self guest];
  [v4 setGuest:v5];

  v6 = [(INRestaurantReservationUserBooking *)self advisementText];
  [v4 setAdvisementText:v6];

  v7 = [(INRestaurantReservationUserBooking *)self selectedOffer];
  [v4 setSelectedOffer:v7];

  v8 = [(INRestaurantReservationUserBooking *)self guestProvidedSpecialRequestText];
  [v4 setGuestProvidedSpecialRequestText:v8];

  [v4 setStatus:{-[INRestaurantReservationUserBooking status](self, "status")}];
  v9 = [(INRestaurantReservationUserBooking *)self dateStatusModified];
  [v4 setDateStatusModified:v9];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INRestaurantReservationUserBooking;
  v4 = a3;
  [(INRestaurantReservationBooking *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_guest forKey:{@"guest", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_advisementText forKey:@"advisementText"];
  [v4 encodeObject:self->_selectedOffer forKey:@"selectedOffer"];
  [v4 encodeObject:self->_guestProvidedSpecialRequestText forKey:@"guestProvidedSpecialRequestText"];
  [v4 encodeInteger:self->_status forKey:@"status"];
  [v4 encodeObject:self->_dateStatusModified forKey:@"dateStatusModified"];
}

- (INRestaurantReservationUserBooking)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = INRestaurantReservationUserBooking;
  v5 = [(INRestaurantReservationBooking *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"guest"];
    if (v6)
    {
      objc_storeStrong(&v5->_guest, v6);
    }

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"advisementText"];
    advisementText = v5->_advisementText;
    v5->_advisementText = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedOffer"];
    selectedOffer = v5->_selectedOffer;
    v5->_selectedOffer = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"guestProvidedSpecialRequestText"];
    guestProvidedSpecialRequestText = v5->_guestProvidedSpecialRequestText;
    v5->_guestProvidedSpecialRequestText = v11;

    v5->_status = [v4 decodeIntegerForKey:@"status"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateStatusModified"];
    if (v13)
    {
      objc_storeStrong(&v5->_dateStatusModified, v13);
    }
  }

  return v5;
}

- (INRestaurantReservationUserBooking)initWithRestaurant:(INRestaurant *)restaurant bookingDate:(NSDate *)bookingDate partySize:(NSUInteger)partySize bookingIdentifier:(NSString *)bookingIdentifier guest:(INRestaurantGuest *)guest status:(INRestaurantReservationUserBookingStatus)status dateStatusModified:(NSDate *)dateStatusModified
{
  v15 = guest;
  v16 = dateStatusModified;
  v23.receiver = self;
  v23.super_class = INRestaurantReservationUserBooking;
  v17 = [(INRestaurantReservationBooking *)&v23 initWithRestaurant:restaurant bookingDate:bookingDate partySize:partySize bookingIdentifier:bookingIdentifier];
  if (v17)
  {
    v18 = [(INRestaurantGuest *)v15 copy];
    v19 = v17->_guest;
    v17->_guest = v18;

    v17->_status = status;
    v20 = [(NSDate *)v16 copy];
    v21 = v17->_dateStatusModified;
    v17->_dateStatusModified = v20;
  }

  return v17;
}

@end
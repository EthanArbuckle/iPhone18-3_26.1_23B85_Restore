@interface INRestaurantReservationUserBooking
- (BOOL)isEqual:(id)equal;
- (INRestaurantReservationUserBooking)initWithCoder:(id)coder;
- (INRestaurantReservationUserBooking)initWithRestaurant:(INRestaurant *)restaurant bookingDate:(NSDate *)bookingDate partySize:(NSUInteger)partySize bookingIdentifier:(NSString *)bookingIdentifier guest:(INRestaurantGuest *)guest status:(INRestaurantReservationUserBookingStatus)status dateStatusModified:(NSDate *)dateStatusModified;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INRestaurantReservationUserBooking

- (id)_dictionaryRepresentation
{
  v29[6] = *MEMORY[0x1E69E9840];
  v23 = @"guest";
  guest = self->_guest;
  null = guest;
  if (!guest)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null;
  v29[0] = null;
  v24 = @"advisementText";
  advisementText = self->_advisementText;
  null2 = advisementText;
  if (!advisementText)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null2;
  v29[1] = null2;
  v25 = @"selectedOffer";
  selectedOffer = self->_selectedOffer;
  null3 = selectedOffer;
  if (!selectedOffer)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null3;
  v29[2] = null3;
  v26 = @"guestProvidedSpecialRequestText";
  guestProvidedSpecialRequestText = self->_guestProvidedSpecialRequestText;
  null4 = guestProvidedSpecialRequestText;
  if (!guestProvidedSpecialRequestText)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v29[3] = null4;
  v27 = @"status";
  status = [(INRestaurantReservationUserBooking *)self status];
  v12 = status;
  if (status <= INRestaurantReservationUserBookingStatusDenied)
  {
    null5 = off_1E72802D0[status];
  }

  else
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v29[4] = null5;
  v28 = @"dateStatusModified";
  dateStatusModified = self->_dateStatusModified;
  null6 = dateStatusModified;
  if (!dateStatusModified)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = null6;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v31.receiver = self;
  v31.super_class = INRestaurantReservationUserBooking;
  if (![(INRestaurantReservationBooking *)&v31 isEqual:equalCopy])
  {
    goto LABEL_9;
  }

  if (equalCopy == self)
  {
    v12 = 1;
    goto LABEL_37;
  }

  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_9:
    v12 = 0;
    goto LABEL_37;
  }

  v7 = equalCopy;
  advisementText = [(INRestaurantReservationUserBooking *)self advisementText];
  if (!advisementText)
  {
    advisementText2 = [(INRestaurantReservationUserBooking *)v7 advisementText];
    if (!advisementText2)
    {
      v11 = 1;
LABEL_15:

      goto LABEL_16;
    }
  }

  advisementText3 = [(INRestaurantReservationUserBooking *)v7 advisementText];
  advisementText4 = [(INRestaurantReservationUserBooking *)self advisementText];
  if (advisementText4)
  {
    advisementText5 = [(INRestaurantReservationUserBooking *)self advisementText];
    v11 = [advisementText3 isEqualToString:advisementText5];
  }

  else
  {
    v11 = [advisementText3 isEqualToString:&stru_1F01E0850];
  }

  if (!advisementText)
  {
    goto LABEL_15;
  }

LABEL_16:

  selectedOffer = [(INRestaurantReservationUserBooking *)self selectedOffer];
  if (!selectedOffer)
  {
    advisementText3 = [(INRestaurantReservationUserBooking *)v7 selectedOffer];
    if (!advisementText3)
    {
      v16 = 1;
LABEL_21:

      goto LABEL_22;
    }
  }

  selectedOffer2 = [(INRestaurantReservationUserBooking *)self selectedOffer];
  selectedOffer3 = [(INRestaurantReservationUserBooking *)v7 selectedOffer];
  v16 = [selectedOffer2 isEqual:selectedOffer3];

  if (!selectedOffer)
  {
    goto LABEL_21;
  }

LABEL_22:

  guestProvidedSpecialRequestText = [(INRestaurantReservationUserBooking *)self guestProvidedSpecialRequestText];
  if (!guestProvidedSpecialRequestText)
  {
    guestProvidedSpecialRequestText2 = [(INRestaurantReservationUserBooking *)v7 guestProvidedSpecialRequestText];
    if (!guestProvidedSpecialRequestText2)
    {
      guestProvidedSpecialRequestText2 = 0;
      v23 = 1;
LABEL_30:

      goto LABEL_31;
    }
  }

  guestProvidedSpecialRequestText3 = [(INRestaurantReservationUserBooking *)self guestProvidedSpecialRequestText];
  guestProvidedSpecialRequestText4 = [(INRestaurantReservationUserBooking *)self guestProvidedSpecialRequestText];
  if (guestProvidedSpecialRequestText4)
  {
    [(INRestaurantReservationUserBooking *)self guestProvidedSpecialRequestText];
    v20 = v16;
    v22 = v21 = v11;
    v23 = [guestProvidedSpecialRequestText3 isEqualToString:v22];

    v11 = v21;
    v16 = v20;
  }

  else
  {
    v23 = [guestProvidedSpecialRequestText3 isEqualToString:&stru_1F01E0850];
  }

  if (!guestProvidedSpecialRequestText)
  {
    goto LABEL_30;
  }

LABEL_31:

  guest = [(INRestaurantReservationUserBooking *)v7 guest];
  guest2 = [(INRestaurantReservationUserBooking *)self guest];
  v12 = 0;
  if (([guest isEqual:guest2] & v11 & v16) == 1 && v23)
  {
    status = [(INRestaurantReservationUserBooking *)self status];
    if (status == [(INRestaurantReservationUserBooking *)v7 status])
    {
      dateStatusModified = [(INRestaurantReservationUserBooking *)v7 dateStatusModified];
      dateStatusModified2 = [(INRestaurantReservationUserBooking *)self dateStatusModified];
      v12 = [dateStatusModified isEqualToDate:dateStatusModified2];
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_37:
  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = INRestaurantReservationUserBooking;
  v4 = [(INRestaurantReservationBooking *)&v11 copyWithZone:zone];
  guest = [(INRestaurantReservationUserBooking *)self guest];
  [v4 setGuest:guest];

  advisementText = [(INRestaurantReservationUserBooking *)self advisementText];
  [v4 setAdvisementText:advisementText];

  selectedOffer = [(INRestaurantReservationUserBooking *)self selectedOffer];
  [v4 setSelectedOffer:selectedOffer];

  guestProvidedSpecialRequestText = [(INRestaurantReservationUserBooking *)self guestProvidedSpecialRequestText];
  [v4 setGuestProvidedSpecialRequestText:guestProvidedSpecialRequestText];

  [v4 setStatus:{-[INRestaurantReservationUserBooking status](self, "status")}];
  dateStatusModified = [(INRestaurantReservationUserBooking *)self dateStatusModified];
  [v4 setDateStatusModified:dateStatusModified];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INRestaurantReservationUserBooking;
  coderCopy = coder;
  [(INRestaurantReservationBooking *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_guest forKey:{@"guest", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_advisementText forKey:@"advisementText"];
  [coderCopy encodeObject:self->_selectedOffer forKey:@"selectedOffer"];
  [coderCopy encodeObject:self->_guestProvidedSpecialRequestText forKey:@"guestProvidedSpecialRequestText"];
  [coderCopy encodeInteger:self->_status forKey:@"status"];
  [coderCopy encodeObject:self->_dateStatusModified forKey:@"dateStatusModified"];
}

- (INRestaurantReservationUserBooking)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = INRestaurantReservationUserBooking;
  v5 = [(INRestaurantReservationBooking *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"guest"];
    if (v6)
    {
      objc_storeStrong(&v5->_guest, v6);
    }

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"advisementText"];
    advisementText = v5->_advisementText;
    v5->_advisementText = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedOffer"];
    selectedOffer = v5->_selectedOffer;
    v5->_selectedOffer = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"guestProvidedSpecialRequestText"];
    guestProvidedSpecialRequestText = v5->_guestProvidedSpecialRequestText;
    v5->_guestProvidedSpecialRequestText = v11;

    v5->_status = [coderCopy decodeIntegerForKey:@"status"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateStatusModified"];
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
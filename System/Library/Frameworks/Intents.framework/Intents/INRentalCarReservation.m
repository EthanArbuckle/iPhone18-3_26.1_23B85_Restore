@interface INRentalCarReservation
- (BOOL)isEqual:(id)a3;
- (INRentalCarReservation)initWithCoder:(id)a3;
- (INRentalCarReservation)initWithItemReference:(INSpeakableString *)itemReference reservationNumber:(NSString *)reservationNumber bookingTime:(NSDate *)bookingTime reservationStatus:(INReservationStatus)reservationStatus reservationHolderName:(NSString *)reservationHolderName actions:(NSArray *)actions URL:(NSURL *)URL rentalCar:(INRentalCar *)rentalCar rentalDuration:(INDateComponentsRange *)rentalDuration pickupLocation:(CLPlacemark *)pickupLocation dropOffLocation:(CLPlacemark *)dropOffLocation;
- (id)_dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INRentalCarReservation

- (id)_dictionaryRepresentation
{
  v18[4] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = INRentalCarReservation;
  v3 = [(INReservation *)&v16 _dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v17[0] = @"rentalCar";
  rentalCar = self->_rentalCar;
  v6 = rentalCar;
  if (!rentalCar)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v6;
  v17[1] = @"rentalDuration";
  rentalDuration = self->_rentalDuration;
  v8 = rentalDuration;
  if (!rentalDuration)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v8;
  v17[2] = @"pickupLocation";
  pickupLocation = self->_pickupLocation;
  v10 = pickupLocation;
  if (!pickupLocation)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = v10;
  v17[3] = @"dropOffLocation";
  dropOffLocation = self->_dropOffLocation;
  v12 = dropOffLocation;
  if (!dropOffLocation)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  [v4 addEntriesFromDictionary:v13];

  if (dropOffLocation)
  {
    if (pickupLocation)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (pickupLocation)
    {
LABEL_11:
      if (rentalDuration)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (rentalCar)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!rentalDuration)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (rentalCar)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = INRentalCarReservation;
  v4 = a3;
  [(INReservation *)&v13 encodeWithCoder:v4];
  rentalCar = self->_rentalCar;
  v6 = NSStringFromSelector(sel_rentalCar);
  [v4 encodeObject:rentalCar forKey:{v6, v13.receiver, v13.super_class}];

  rentalDuration = self->_rentalDuration;
  v8 = NSStringFromSelector(sel_rentalDuration);
  [v4 encodeObject:rentalDuration forKey:v8];

  pickupLocation = self->_pickupLocation;
  v10 = NSStringFromSelector(sel_pickupLocation);
  [v4 encodeObject:pickupLocation forKey:v10];

  dropOffLocation = self->_dropOffLocation;
  v12 = NSStringFromSelector(sel_dropOffLocation);
  [v4 encodeObject:dropOffLocation forKey:v12];
}

- (INRentalCarReservation)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = INRentalCarReservation;
  v5 = [(INReservation *)&v23 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_rentalCar);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    rentalCar = v5->_rentalCar;
    v5->_rentalCar = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_rentalDuration);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    rentalDuration = v5->_rentalDuration;
    v5->_rentalDuration = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_pickupLocation);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    pickupLocation = v5->_pickupLocation;
    v5->_pickupLocation = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_dropOffLocation);
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    dropOffLocation = v5->_dropOffLocation;
    v5->_dropOffLocation = v20;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v12.receiver = self, v12.super_class = INRentalCarReservation, [(INReservation *)&v12 isEqual:v4]))
    {
      v5 = v4;
      rentalCar = self->_rentalCar;
      v10 = 0;
      if (rentalCar == v5->_rentalCar || [(INRentalCar *)rentalCar isEqual:?])
      {
        rentalDuration = self->_rentalDuration;
        if (rentalDuration == v5->_rentalDuration || [(INDateComponentsRange *)rentalDuration isEqual:?])
        {
          pickupLocation = self->_pickupLocation;
          if (pickupLocation == v5->_pickupLocation || [(CLPlacemark *)pickupLocation isEqual:?])
          {
            dropOffLocation = self->_dropOffLocation;
            if (dropOffLocation == v5->_dropOffLocation || [(CLPlacemark *)dropOffLocation isEqual:?])
            {
              v10 = 1;
            }
          }
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = INRentalCarReservation;
  v3 = [(INReservation *)&v8 hash];
  v4 = [(INRentalCar *)self->_rentalCar hash]^ v3;
  v5 = [(INDateComponentsRange *)self->_rentalDuration hash];
  v6 = v4 ^ v5 ^ [(CLPlacemark *)self->_pickupLocation hash];
  return v6 ^ [(CLPlacemark *)self->_dropOffLocation hash];
}

- (INRentalCarReservation)initWithItemReference:(INSpeakableString *)itemReference reservationNumber:(NSString *)reservationNumber bookingTime:(NSDate *)bookingTime reservationStatus:(INReservationStatus)reservationStatus reservationHolderName:(NSString *)reservationHolderName actions:(NSArray *)actions URL:(NSURL *)URL rentalCar:(INRentalCar *)rentalCar rentalDuration:(INDateComponentsRange *)rentalDuration pickupLocation:(CLPlacemark *)pickupLocation dropOffLocation:(CLPlacemark *)dropOffLocation
{
  v18 = rentalCar;
  v19 = rentalDuration;
  v20 = pickupLocation;
  v21 = dropOffLocation;
  v34.receiver = self;
  v34.super_class = INRentalCarReservation;
  v22 = [(INReservation *)&v34 initWithItemReference:itemReference reservationNumber:reservationNumber bookingTime:bookingTime reservationStatus:reservationStatus reservationHolderName:reservationHolderName actions:actions URL:URL];
  if (v22)
  {
    v23 = [(INRentalCar *)v18 copy];
    v24 = v22->_rentalCar;
    v22->_rentalCar = v23;

    v25 = [(INDateComponentsRange *)v19 copy];
    v26 = v22->_rentalDuration;
    v22->_rentalDuration = v25;

    v27 = [(CLPlacemark *)v20 copy];
    v28 = v22->_pickupLocation;
    v22->_pickupLocation = v27;

    v29 = [(CLPlacemark *)v21 copy];
    v30 = v22->_dropOffLocation;
    v22->_dropOffLocation = v29;
  }

  return v22;
}

@end
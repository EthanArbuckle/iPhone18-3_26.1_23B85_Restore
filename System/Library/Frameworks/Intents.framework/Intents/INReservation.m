@interface INReservation
- (BOOL)isEqual:(id)a3;
- (INReservation)initWithCoder:(id)a3;
- (INReservation)initWithItemReference:(id)a3 reservationNumber:(id)a4 bookingTime:(id)a5 reservationStatus:(int64_t)a6 reservationHolderName:(id)a7 actions:(id)a8 URL:(id)a9;
- (id)_dictionaryRepresentation;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INReservation

- (id)_dictionaryRepresentation
{
  v20[6] = *MEMORY[0x1E69E9840];
  v19[0] = @"itemReference";
  itemReference = self->_itemReference;
  v4 = itemReference;
  if (!itemReference)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v4;
  v20[0] = v4;
  v19[1] = @"reservationNumber";
  reservationNumber = self->_reservationNumber;
  v6 = reservationNumber;
  if (!reservationNumber)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = v6;
  v20[1] = v6;
  v19[2] = @"bookingTime";
  bookingTime = self->_bookingTime;
  v8 = bookingTime;
  if (!bookingTime)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v20[2] = v8;
  v19[3] = @"reservationStatus";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_reservationStatus];
  v20[3] = v9;
  v19[4] = @"reservationHolderName";
  reservationHolderName = self->_reservationHolderName;
  v11 = reservationHolderName;
  if (!reservationHolderName)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v20[4] = v11;
  v19[5] = @"URL";
  URL = self->_URL;
  v13 = URL;
  if (!URL)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v20[5] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:6];
  if (URL)
  {
    if (reservationHolderName)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (reservationHolderName)
    {
      goto LABEL_13;
    }
  }

LABEL_13:
  if (bookingTime)
  {
    if (reservationNumber)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (itemReference)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  if (!reservationNumber)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (itemReference)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INReservation;
  v6 = [(INReservation *)&v11 description];
  v7 = [(INReservation *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  itemReference = self->_itemReference;
  v5 = a3;
  [v5 encodeObject:itemReference forKey:@"itemReference"];
  [v5 encodeObject:self->_reservationNumber forKey:@"reservationNumber"];
  [v5 encodeObject:self->_bookingTime forKey:@"bookingTime"];
  [v5 encodeInteger:self->_reservationStatus forKey:@"reservationStatus"];
  [v5 encodeObject:self->_reservationHolderName forKey:@"reservationHolderName"];
  [v5 encodeObject:self->_URL forKey:@"URL"];
}

- (INReservation)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = INReservation;
  v5 = [(INReservation *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemReference"];
    itemReference = v5->_itemReference;
    v5->_itemReference = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reservationNumber"];
    reservationNumber = v5->_reservationNumber;
    v5->_reservationNumber = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bookingTime"];
    bookingTime = v5->_bookingTime;
    v5->_bookingTime = v10;

    v5->_reservationStatus = [v4 decodeIntegerForKey:@"reservationStatus"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reservationHolderName"];
    reservationHolderName = v5->_reservationHolderName;
    v5->_reservationHolderName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v14;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      itemReference = self->_itemReference;
      v12 = 0;
      if (itemReference == v5->_itemReference || [(INSpeakableString *)itemReference isEqual:?])
      {
        reservationNumber = self->_reservationNumber;
        if (reservationNumber == v5->_reservationNumber || [(NSString *)reservationNumber isEqual:?])
        {
          bookingTime = self->_bookingTime;
          if ((bookingTime == v5->_bookingTime || [(NSDate *)bookingTime isEqual:?]) && self->_reservationStatus == v5->_reservationStatus)
          {
            reservationHolderName = self->_reservationHolderName;
            if (reservationHolderName == v5->_reservationHolderName || [(NSString *)reservationHolderName isEqual:?])
            {
              actions = self->_actions;
              if (actions == v5->_actions || [(NSArray *)actions isEqual:?])
              {
                URL = self->_URL;
                if (URL == v5->_URL || [(NSURL *)URL isEqual:?])
                {
                  v12 = 1;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(INSpeakableString *)self->_itemReference hash];
  v4 = [(NSString *)self->_reservationNumber hash]^ v3;
  v5 = v4 ^ [(NSDate *)self->_bookingTime hash];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_reservationStatus];
  v7 = v5 ^ [v6 hash];
  v8 = [(NSString *)self->_reservationHolderName hash];
  v9 = v8 ^ [(NSArray *)self->_actions hash];
  v10 = v9 ^ [(NSURL *)self->_URL hash];

  return v7 ^ v10;
}

- (INReservation)initWithItemReference:(id)a3 reservationNumber:(id)a4 bookingTime:(id)a5 reservationStatus:(int64_t)a6 reservationHolderName:(id)a7 actions:(id)a8 URL:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v35.receiver = self;
  v35.super_class = INReservation;
  v21 = [(INReservation *)&v35 init];
  if (v21)
  {
    v22 = [v15 copy];
    itemReference = v21->_itemReference;
    v21->_itemReference = v22;

    v24 = [v16 copy];
    reservationNumber = v21->_reservationNumber;
    v21->_reservationNumber = v24;

    v26 = [v17 copy];
    bookingTime = v21->_bookingTime;
    v21->_bookingTime = v26;

    v21->_reservationStatus = a6;
    v28 = [v18 copy];
    reservationHolderName = v21->_reservationHolderName;
    v21->_reservationHolderName = v28;

    v30 = [v19 copy];
    actions = v21->_actions;
    v21->_actions = v30;

    v32 = [v20 copy];
    URL = v21->_URL;
    v21->_URL = v32;
  }

  return v21;
}

@end
@interface INReservation
- (BOOL)isEqual:(id)equal;
- (INReservation)initWithCoder:(id)coder;
- (INReservation)initWithItemReference:(id)reference reservationNumber:(id)number bookingTime:(id)time reservationStatus:(int64_t)status reservationHolderName:(id)name actions:(id)actions URL:(id)l;
- (id)_dictionaryRepresentation;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INReservation

- (id)_dictionaryRepresentation
{
  v20[6] = *MEMORY[0x1E69E9840];
  v19[0] = @"itemReference";
  itemReference = self->_itemReference;
  null = itemReference;
  if (!itemReference)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null;
  v20[0] = null;
  v19[1] = @"reservationNumber";
  reservationNumber = self->_reservationNumber;
  null2 = reservationNumber;
  if (!reservationNumber)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = null2;
  v20[1] = null2;
  v19[2] = @"bookingTime";
  bookingTime = self->_bookingTime;
  null3 = bookingTime;
  if (!bookingTime)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v20[2] = null3;
  v19[3] = @"reservationStatus";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_reservationStatus];
  v20[3] = v9;
  v19[4] = @"reservationHolderName";
  reservationHolderName = self->_reservationHolderName;
  null4 = reservationHolderName;
  if (!reservationHolderName)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v20[4] = null4;
  v19[5] = @"URL";
  URL = self->_URL;
  null5 = URL;
  if (!URL)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v20[5] = null5;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INReservation;
  v6 = [(INReservation *)&v11 description];
  _dictionaryRepresentation = [(INReservation *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  itemReference = self->_itemReference;
  coderCopy = coder;
  [coderCopy encodeObject:itemReference forKey:@"itemReference"];
  [coderCopy encodeObject:self->_reservationNumber forKey:@"reservationNumber"];
  [coderCopy encodeObject:self->_bookingTime forKey:@"bookingTime"];
  [coderCopy encodeInteger:self->_reservationStatus forKey:@"reservationStatus"];
  [coderCopy encodeObject:self->_reservationHolderName forKey:@"reservationHolderName"];
  [coderCopy encodeObject:self->_URL forKey:@"URL"];
}

- (INReservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = INReservation;
  v5 = [(INReservation *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemReference"];
    itemReference = v5->_itemReference;
    v5->_itemReference = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reservationNumber"];
    reservationNumber = v5->_reservationNumber;
    v5->_reservationNumber = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bookingTime"];
    bookingTime = v5->_bookingTime;
    v5->_bookingTime = v10;

    v5->_reservationStatus = [coderCopy decodeIntegerForKey:@"reservationStatus"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reservationHolderName"];
    reservationHolderName = v5->_reservationHolderName;
    v5->_reservationHolderName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v14;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (INReservation)initWithItemReference:(id)reference reservationNumber:(id)number bookingTime:(id)time reservationStatus:(int64_t)status reservationHolderName:(id)name actions:(id)actions URL:(id)l
{
  referenceCopy = reference;
  numberCopy = number;
  timeCopy = time;
  nameCopy = name;
  actionsCopy = actions;
  lCopy = l;
  v35.receiver = self;
  v35.super_class = INReservation;
  v21 = [(INReservation *)&v35 init];
  if (v21)
  {
    v22 = [referenceCopy copy];
    itemReference = v21->_itemReference;
    v21->_itemReference = v22;

    v24 = [numberCopy copy];
    reservationNumber = v21->_reservationNumber;
    v21->_reservationNumber = v24;

    v26 = [timeCopy copy];
    bookingTime = v21->_bookingTime;
    v21->_bookingTime = v26;

    v21->_reservationStatus = status;
    v28 = [nameCopy copy];
    reservationHolderName = v21->_reservationHolderName;
    v21->_reservationHolderName = v28;

    v30 = [actionsCopy copy];
    actions = v21->_actions;
    v21->_actions = v30;

    v32 = [lCopy copy];
    URL = v21->_URL;
    v21->_URL = v32;
  }

  return v21;
}

@end
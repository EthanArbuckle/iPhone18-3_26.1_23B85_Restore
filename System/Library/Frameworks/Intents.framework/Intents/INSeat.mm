@interface INSeat
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INSeat)initWithCoder:(id)coder;
- (INSeat)initWithSeatSection:(NSString *)seatSection seatRow:(NSString *)seatRow seatNumber:(NSString *)seatNumber seatingType:(NSString *)seatingType;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INSeat

- (id)_dictionaryRepresentation
{
  v15[4] = *MEMORY[0x1E69E9840];
  v14[0] = @"seatSection";
  seatSection = self->_seatSection;
  null = seatSection;
  if (!seatSection)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"seatRow";
  seatRow = self->_seatRow;
  null2 = seatRow;
  if (!seatRow)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"seatNumber";
  seatNumber = self->_seatNumber;
  null3 = seatNumber;
  if (!seatNumber)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"seatingType";
  seatingType = self->_seatingType;
  null4 = seatingType;
  if (!seatingType)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (seatingType)
  {
    if (seatNumber)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (seatNumber)
    {
LABEL_11:
      if (seatRow)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (seatSection)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!seatRow)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (seatSection)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INSeat;
  v6 = [(INSeat *)&v11 description];
  _dictionaryRepresentation = [(INSeat *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_seatSection];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"seatSection"];

  v9 = [encoderCopy encodeObject:self->_seatRow];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"seatRow"];

  v10 = [encoderCopy encodeObject:self->_seatNumber];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"seatNumber"];

  v11 = [encoderCopy encodeObject:self->_seatingType];

  [dictionary if_setObjectIfNonNil:v11 forKey:@"seatingType"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  seatSection = self->_seatSection;
  coderCopy = coder;
  [coderCopy encodeObject:seatSection forKey:@"seatSection"];
  [coderCopy encodeObject:self->_seatRow forKey:@"seatRow"];
  [coderCopy encodeObject:self->_seatNumber forKey:@"seatNumber"];
  [coderCopy encodeObject:self->_seatingType forKey:@"seatingType"];
}

- (INSeat)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"seatSection"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"seatRow"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"seatNumber"];

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"seatingType"];

  v21 = [(INSeat *)self initWithSeatSection:v8 seatRow:v12 seatNumber:v16 seatingType:v20];
  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      seatSection = self->_seatSection;
      v10 = 0;
      if (seatSection == v5->_seatSection || [(NSString *)seatSection isEqual:?])
      {
        seatRow = self->_seatRow;
        if (seatRow == v5->_seatRow || [(NSString *)seatRow isEqual:?])
        {
          seatNumber = self->_seatNumber;
          if (seatNumber == v5->_seatNumber || [(NSString *)seatNumber isEqual:?])
          {
            seatingType = self->_seatingType;
            if (seatingType == v5->_seatingType || [(NSString *)seatingType isEqual:?])
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
  v3 = [(NSString *)self->_seatSection hash];
  v4 = [(NSString *)self->_seatRow hash]^ v3;
  v5 = [(NSString *)self->_seatNumber hash];
  return v4 ^ v5 ^ [(NSString *)self->_seatingType hash];
}

- (INSeat)initWithSeatSection:(NSString *)seatSection seatRow:(NSString *)seatRow seatNumber:(NSString *)seatNumber seatingType:(NSString *)seatingType
{
  v10 = seatSection;
  v11 = seatRow;
  v12 = seatNumber;
  v13 = seatingType;
  v24.receiver = self;
  v24.super_class = INSeat;
  v14 = [(INSeat *)&v24 init];
  if (v14)
  {
    v15 = [(NSString *)v10 copy];
    v16 = v14->_seatSection;
    v14->_seatSection = v15;

    v17 = [(NSString *)v11 copy];
    v18 = v14->_seatRow;
    v14->_seatRow = v17;

    v19 = [(NSString *)v12 copy];
    v20 = v14->_seatNumber;
    v14->_seatNumber = v19;

    v21 = [(NSString *)v13 copy];
    v22 = v14->_seatingType;
    v14->_seatingType = v21;
  }

  return v14;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [fromCopy objectForKeyedSubscript:@"seatSection"];
    v8 = [fromCopy objectForKeyedSubscript:@"seatRow"];
    v9 = [fromCopy objectForKeyedSubscript:@"seatNumber"];
    v10 = [fromCopy objectForKeyedSubscript:@"seatingType"];
    v11 = [[self alloc] initWithSeatSection:v7 seatRow:v8 seatNumber:v9 seatingType:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end
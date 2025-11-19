@interface INSeat
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INSeat)initWithCoder:(id)a3;
- (INSeat)initWithSeatSection:(NSString *)seatSection seatRow:(NSString *)seatRow seatNumber:(NSString *)seatNumber seatingType:(NSString *)seatingType;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INSeat

- (id)_dictionaryRepresentation
{
  v15[4] = *MEMORY[0x1E69E9840];
  v14[0] = @"seatSection";
  seatSection = self->_seatSection;
  v4 = seatSection;
  if (!seatSection)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v4;
  v14[1] = @"seatRow";
  seatRow = self->_seatRow;
  v6 = seatRow;
  if (!seatRow)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v6;
  v14[2] = @"seatNumber";
  seatNumber = self->_seatNumber;
  v8 = seatNumber;
  if (!seatNumber)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v8;
  v14[3] = @"seatingType";
  seatingType = self->_seatingType;
  v10 = seatingType;
  if (!seatingType)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = v10;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INSeat;
  v6 = [(INSeat *)&v11 description];
  v7 = [(INSeat *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_seatSection];
  [v7 if_setObjectIfNonNil:v8 forKey:@"seatSection"];

  v9 = [v6 encodeObject:self->_seatRow];
  [v7 if_setObjectIfNonNil:v9 forKey:@"seatRow"];

  v10 = [v6 encodeObject:self->_seatNumber];
  [v7 if_setObjectIfNonNil:v10 forKey:@"seatNumber"];

  v11 = [v6 encodeObject:self->_seatingType];

  [v7 if_setObjectIfNonNil:v11 forKey:@"seatingType"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  seatSection = self->_seatSection;
  v5 = a3;
  [v5 encodeObject:seatSection forKey:@"seatSection"];
  [v5 encodeObject:self->_seatRow forKey:@"seatRow"];
  [v5 encodeObject:self->_seatNumber forKey:@"seatNumber"];
  [v5 encodeObject:self->_seatingType forKey:@"seatingType"];
}

- (INSeat)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"seatSection"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"seatRow"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [v5 decodeObjectOfClasses:v15 forKey:@"seatNumber"];

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [v5 decodeObjectOfClasses:v19 forKey:@"seatingType"];

  v21 = [(INSeat *)self initWithSeatSection:v8 seatRow:v12 seatNumber:v16 seatingType:v20];
  return v21;
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
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v6 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"seatSection"];
    v8 = [v6 objectForKeyedSubscript:@"seatRow"];
    v9 = [v6 objectForKeyedSubscript:@"seatNumber"];
    v10 = [v6 objectForKeyedSubscript:@"seatingType"];
    v11 = [[a1 alloc] initWithSeatSection:v7 seatRow:v8 seatNumber:v9 seatingType:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end
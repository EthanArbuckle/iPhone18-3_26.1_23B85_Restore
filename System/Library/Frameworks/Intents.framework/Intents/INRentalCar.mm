@interface INRentalCar
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INRentalCar)initWithCoder:(id)coder;
- (INRentalCar)initWithRentalCompanyName:(NSString *)rentalCompanyName type:(NSString *)type make:(NSString *)make model:(NSString *)model rentalCarDescription:(NSString *)rentalCarDescription;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INRentalCar

- (id)_dictionaryRepresentation
{
  v23[5] = *MEMORY[0x1E69E9840];
  v18 = @"rentalCompanyName";
  rentalCompanyName = self->_rentalCompanyName;
  null = rentalCompanyName;
  if (!rentalCompanyName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16 = null;
  v23[0] = null;
  v19 = @"type";
  type = self->_type;
  null2 = type;
  if (!type)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = null2;
  v20 = @"make";
  make = self->_make;
  null3 = make;
  if (!make)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v21 = @"model";
  model = self->_model;
  null4 = model;
  if (!model)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22 = @"rentalCarDescription";
  rentalCarDescription = self->_rentalCarDescription;
  null5 = rentalCarDescription;
  if (!rentalCarDescription)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (rentalCarDescription)
  {
    if (model)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (model)
    {
LABEL_13:
      if (make)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (make)
  {
LABEL_14:
    if (type)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (rentalCompanyName)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!type)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (rentalCompanyName)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INRentalCar;
  v6 = [(INRentalCar *)&v11 description];
  _dictionaryRepresentation = [(INRentalCar *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_rentalCompanyName];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"rentalCompanyName"];

  v9 = [encoderCopy encodeObject:self->_type];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"type"];

  v10 = [encoderCopy encodeObject:self->_make];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"make"];

  v11 = [encoderCopy encodeObject:self->_model];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"model"];

  v12 = [encoderCopy encodeObject:self->_rentalCarDescription];

  [dictionary if_setObjectIfNonNil:v12 forKey:@"rentalCarDescription"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  rentalCompanyName = self->_rentalCompanyName;
  coderCopy = coder;
  [coderCopy encodeObject:rentalCompanyName forKey:@"rentalCompanyName"];
  [coderCopy encodeObject:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_make forKey:@"make"];
  [coderCopy encodeObject:self->_model forKey:@"model"];
  [coderCopy encodeObject:self->_rentalCarDescription forKey:@"rentalCarDescription"];
}

- (INRentalCar)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"rentalCompanyName"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"type"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"make"];

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"model"];

  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"rentalCarDescription"];

  v25 = [(INRentalCar *)self initWithRentalCompanyName:v8 type:v12 make:v16 model:v20 rentalCarDescription:v24];
  return v25;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      rentalCompanyName = self->_rentalCompanyName;
      v11 = 0;
      if (rentalCompanyName == v5->_rentalCompanyName || [(NSString *)rentalCompanyName isEqual:?])
      {
        type = self->_type;
        if (type == v5->_type || [(NSString *)type isEqual:?])
        {
          make = self->_make;
          if (make == v5->_make || [(NSString *)make isEqual:?])
          {
            model = self->_model;
            if (model == v5->_model || [(NSString *)model isEqual:?])
            {
              rentalCarDescription = self->_rentalCarDescription;
              if (rentalCarDescription == v5->_rentalCarDescription || [(NSString *)rentalCarDescription isEqual:?])
              {
                v11 = 1;
              }
            }
          }
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_rentalCompanyName hash];
  v4 = [(NSString *)self->_type hash]^ v3;
  v5 = [(NSString *)self->_make hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_model hash];
  return v6 ^ [(NSString *)self->_rentalCarDescription hash];
}

- (INRentalCar)initWithRentalCompanyName:(NSString *)rentalCompanyName type:(NSString *)type make:(NSString *)make model:(NSString *)model rentalCarDescription:(NSString *)rentalCarDescription
{
  v12 = rentalCompanyName;
  v13 = type;
  v14 = make;
  v15 = model;
  v16 = rentalCarDescription;
  v29.receiver = self;
  v29.super_class = INRentalCar;
  v17 = [(INRentalCar *)&v29 init];
  if (v17)
  {
    v18 = [(NSString *)v12 copy];
    v19 = v17->_rentalCompanyName;
    v17->_rentalCompanyName = v18;

    v20 = [(NSString *)v13 copy];
    v21 = v17->_type;
    v17->_type = v20;

    v22 = [(NSString *)v14 copy];
    v23 = v17->_make;
    v17->_make = v22;

    v24 = [(NSString *)v15 copy];
    v25 = v17->_model;
    v17->_model = v24;

    v26 = [(NSString *)v16 copy];
    v27 = v17->_rentalCarDescription;
    v17->_rentalCarDescription = v26;
  }

  return v17;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [fromCopy objectForKeyedSubscript:@"rentalCompanyName"];
    v8 = [fromCopy objectForKeyedSubscript:@"type"];
    v9 = [fromCopy objectForKeyedSubscript:@"make"];
    v10 = [fromCopy objectForKeyedSubscript:@"model"];
    v11 = [fromCopy objectForKeyedSubscript:@"rentalCarDescription"];
    v12 = [[self alloc] initWithRentalCompanyName:v7 type:v8 make:v9 model:v10 rentalCarDescription:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end
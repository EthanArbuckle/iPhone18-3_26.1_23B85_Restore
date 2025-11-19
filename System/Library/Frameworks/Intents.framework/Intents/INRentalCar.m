@interface INRentalCar
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INRentalCar)initWithCoder:(id)a3;
- (INRentalCar)initWithRentalCompanyName:(NSString *)rentalCompanyName type:(NSString *)type make:(NSString *)make model:(NSString *)model rentalCarDescription:(NSString *)rentalCarDescription;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INRentalCar

- (id)_dictionaryRepresentation
{
  v23[5] = *MEMORY[0x1E69E9840];
  v18 = @"rentalCompanyName";
  rentalCompanyName = self->_rentalCompanyName;
  v4 = rentalCompanyName;
  if (!rentalCompanyName)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v4;
  v23[0] = v4;
  v19 = @"type";
  type = self->_type;
  v6 = type;
  if (!type)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v6;
  v20 = @"make";
  make = self->_make;
  v8 = make;
  if (!make)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v8;
  v21 = @"model";
  model = self->_model;
  v10 = model;
  if (!model)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v10;
  v22 = @"rentalCarDescription";
  rentalCarDescription = self->_rentalCarDescription;
  v12 = rentalCarDescription;
  if (!rentalCarDescription)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v12;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INRentalCar;
  v6 = [(INRentalCar *)&v11 description];
  v7 = [(INRentalCar *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_rentalCompanyName];
  [v7 if_setObjectIfNonNil:v8 forKey:@"rentalCompanyName"];

  v9 = [v6 encodeObject:self->_type];
  [v7 if_setObjectIfNonNil:v9 forKey:@"type"];

  v10 = [v6 encodeObject:self->_make];
  [v7 if_setObjectIfNonNil:v10 forKey:@"make"];

  v11 = [v6 encodeObject:self->_model];
  [v7 if_setObjectIfNonNil:v11 forKey:@"model"];

  v12 = [v6 encodeObject:self->_rentalCarDescription];

  [v7 if_setObjectIfNonNil:v12 forKey:@"rentalCarDescription"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  rentalCompanyName = self->_rentalCompanyName;
  v5 = a3;
  [v5 encodeObject:rentalCompanyName forKey:@"rentalCompanyName"];
  [v5 encodeObject:self->_type forKey:@"type"];
  [v5 encodeObject:self->_make forKey:@"make"];
  [v5 encodeObject:self->_model forKey:@"model"];
  [v5 encodeObject:self->_rentalCarDescription forKey:@"rentalCarDescription"];
}

- (INRentalCar)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"rentalCompanyName"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"type"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [v5 decodeObjectOfClasses:v15 forKey:@"make"];

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [v5 decodeObjectOfClasses:v19 forKey:@"model"];

  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v24 = [v5 decodeObjectOfClasses:v23 forKey:@"rentalCarDescription"];

  v25 = [(INRentalCar *)self initWithRentalCompanyName:v8 type:v12 make:v16 model:v20 rentalCarDescription:v24];
  return v25;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v6 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"rentalCompanyName"];
    v8 = [v6 objectForKeyedSubscript:@"type"];
    v9 = [v6 objectForKeyedSubscript:@"make"];
    v10 = [v6 objectForKeyedSubscript:@"model"];
    v11 = [v6 objectForKeyedSubscript:@"rentalCarDescription"];
    v12 = [[a1 alloc] initWithRentalCompanyName:v7 type:v8 make:v9 model:v10 rentalCarDescription:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end
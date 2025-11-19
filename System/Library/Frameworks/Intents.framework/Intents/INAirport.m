@interface INAirport
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INAirport)initWithCoder:(id)a3;
- (INAirport)initWithName:(NSString *)name iataCode:(NSString *)iataCode icaoCode:(NSString *)icaoCode;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INAirport

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"name";
  name = self->_name;
  v4 = name;
  if (!name)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"iataCode";
  iataCode = self->_iataCode;
  v6 = iataCode;
  if (!iataCode)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v6;
  v12[2] = @"icaoCode";
  icaoCode = self->_icaoCode;
  v8 = icaoCode;
  if (!icaoCode)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (icaoCode)
  {
    if (iataCode)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (name)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!iataCode)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (name)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INAirport;
  v6 = [(INAirport *)&v11 description];
  v7 = [(INAirport *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_name];
  [v7 if_setObjectIfNonNil:v8 forKey:@"name"];

  v9 = [v6 encodeObject:self->_iataCode];
  [v7 if_setObjectIfNonNil:v9 forKey:@"iataCode"];

  v10 = [v6 encodeObject:self->_icaoCode];

  [v7 if_setObjectIfNonNil:v10 forKey:@"icaoCode"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_iataCode forKey:@"iataCode"];
  [v5 encodeObject:self->_icaoCode forKey:@"icaoCode"];
}

- (INAirport)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"name"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v5 decodeObjectOfClasses:v11 forKey:@"iataCode"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [v5 decodeObjectOfClasses:v15 forKey:@"icaoCode"];

  v17 = [(INAirport *)self initWithName:v8 iataCode:v12 icaoCode:v16];
  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      name = self->_name;
      v9 = 0;
      if (name == v5->_name || [(NSString *)name isEqual:?])
      {
        iataCode = self->_iataCode;
        if (iataCode == v5->_iataCode || [(NSString *)iataCode isEqual:?])
        {
          icaoCode = self->_icaoCode;
          if (icaoCode == v5->_icaoCode || [(NSString *)icaoCode isEqual:?])
          {
            v9 = 1;
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_iataCode hash]^ v3;
  return v4 ^ [(NSString *)self->_icaoCode hash];
}

- (INAirport)initWithName:(NSString *)name iataCode:(NSString *)iataCode icaoCode:(NSString *)icaoCode
{
  v8 = name;
  v9 = iataCode;
  v10 = icaoCode;
  v19.receiver = self;
  v19.super_class = INAirport;
  v11 = [(INAirport *)&v19 init];
  if (v11)
  {
    v12 = [(NSString *)v8 copy];
    v13 = v11->_name;
    v11->_name = v12;

    v14 = [(NSString *)v9 copy];
    v15 = v11->_iataCode;
    v11->_iataCode = v14;

    v16 = [(NSString *)v10 copy];
    v17 = v11->_icaoCode;
    v11->_icaoCode = v16;
  }

  return v11;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v6 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"name"];
    v8 = [v6 objectForKeyedSubscript:@"iataCode"];
    v9 = [v6 objectForKeyedSubscript:@"icaoCode"];
    v10 = [[a1 alloc] initWithName:v7 iataCode:v8 icaoCode:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end
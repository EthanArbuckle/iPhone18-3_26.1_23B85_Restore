@interface INAirport
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INAirport)initWithCoder:(id)coder;
- (INAirport)initWithName:(NSString *)name iataCode:(NSString *)iataCode icaoCode:(NSString *)icaoCode;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INAirport

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"name";
  name = self->_name;
  null = name;
  if (!name)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"iataCode";
  iataCode = self->_iataCode;
  null2 = iataCode;
  if (!iataCode)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"icaoCode";
  icaoCode = self->_icaoCode;
  null3 = icaoCode;
  if (!icaoCode)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INAirport;
  v6 = [(INAirport *)&v11 description];
  _dictionaryRepresentation = [(INAirport *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_name];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"name"];

  v9 = [encoderCopy encodeObject:self->_iataCode];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"iataCode"];

  v10 = [encoderCopy encodeObject:self->_icaoCode];

  [dictionary if_setObjectIfNonNil:v10 forKey:@"icaoCode"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_iataCode forKey:@"iataCode"];
  [coderCopy encodeObject:self->_icaoCode forKey:@"icaoCode"];
}

- (INAirport)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"name"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"iataCode"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"icaoCode"];

  v17 = [(INAirport *)self initWithName:v8 iataCode:v12 icaoCode:v16];
  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [fromCopy objectForKeyedSubscript:@"name"];
    v8 = [fromCopy objectForKeyedSubscript:@"iataCode"];
    v9 = [fromCopy objectForKeyedSubscript:@"icaoCode"];
    v10 = [[self alloc] initWithName:v7 iataCode:v8 icaoCode:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end
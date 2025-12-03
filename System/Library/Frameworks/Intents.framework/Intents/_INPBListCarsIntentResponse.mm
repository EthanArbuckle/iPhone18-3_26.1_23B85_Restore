@interface _INPBListCarsIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBListCarsIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addCars:(id)cars;
- (void)encodeWithCoder:(id)coder;
- (void)setCars:(id)cars;
- (void)writeTo:(id)to;
@end

@implementation _INPBListCarsIntentResponse

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_cars count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_cars;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"cars"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    cars = [(_INPBListCarsIntentResponse *)self cars];
    cars2 = [equalCopy cars];
    v7 = cars2;
    if ((cars != 0) != (cars2 == 0))
    {
      cars3 = [(_INPBListCarsIntentResponse *)self cars];
      if (!cars3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = cars3;
      cars4 = [(_INPBListCarsIntentResponse *)self cars];
      cars5 = [equalCopy cars];
      v12 = [cars4 isEqual:cars5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBListCarsIntentResponse allocWithZone:](_INPBListCarsIntentResponse init];
  v6 = [(NSArray *)self->_cars copyWithZone:zone];
  [(_INPBListCarsIntentResponse *)v5 setCars:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBListCarsIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBListCarsIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBListCarsIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_cars;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addCars:(id)cars
{
  carsCopy = cars;
  cars = self->_cars;
  v8 = carsCopy;
  if (!cars)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_cars;
    self->_cars = array;

    carsCopy = v8;
    cars = self->_cars;
  }

  [(NSArray *)cars addObject:carsCopy];
}

- (void)setCars:(id)cars
{
  v4 = [cars mutableCopy];
  cars = self->_cars;
  self->_cars = v4;

  MEMORY[0x1EEE66BB8](v4, cars);
}

@end
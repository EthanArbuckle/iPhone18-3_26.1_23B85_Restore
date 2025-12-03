@interface NSMeasurement
- (BOOL)canBeConvertedToUnit:(NSUnit *)unit;
- (BOOL)isEqual:(id)equal;
- (NSMeasurement)initWithCoder:(id)coder;
- (NSMeasurement)initWithDoubleValue:(double)doubleValue unit:(id)unit;
- (NSMeasurement)measurementByConvertingToUnit:(NSUnit *)unit;
- (id)_performOperation:(int64_t)operation withMeasurement:(id)measurement;
- (id)description;
- (id)unit;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSMeasurement

- (id)unit
{
  v2 = self->_unit;

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSMeasurement;
  [(NSMeasurement *)&v3 dealloc];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSMeasurement;
  return [-[NSMeasurement description](&v3 description)];
}

- (NSMeasurement)initWithDoubleValue:(double)doubleValue unit:(id)unit
{
  v11 = *MEMORY[0x1E69E9840];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Must pass in an NSUnit object!" userInfo:0]);
  }

  v10.receiver = self;
  v10.super_class = NSMeasurement;
  v7 = [(NSMeasurement *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_doubleValue = doubleValue;
    v7->_unit = [unit copy];
  }

  return v8;
}

- (BOOL)canBeConvertedToUnit:(NSUnit *)unit
{
  if (objc_opt_isKindOfClass())
  {
    [(NSUnit *)self->_unit _effectiveUnitClass];
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (NSMeasurement)measurementByConvertingToUnit:(NSUnit *)unit
{
  if (![(NSMeasurement *)self canBeConvertedToUnit:?])
  {
    v12 = objc_opt_class();
    v13 = [NSString stringWithFormat:@"Cannot convert measurements of differing unit types! self: %@ unit: %@", v12, objc_opt_class()];
    goto LABEL_14;
  }

  if ([(NSUnit *)self->_unit isEqual:unit])
  {
    v5 = [NSMeasurement alloc];
    doubleValue = self->_doubleValue;
    goto LABEL_9;
  }

  if (!isDimensional() || !isDimensional())
  {
    v14 = objc_opt_class();
    v13 = [NSString stringWithFormat:@"Cannot convert differing units that are non-dimensional! lhs: %@ rhs: %@", v14, objc_opt_class()];
LABEL_14:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:0]);
  }

  [-[NSUnit converter](self->_unit "converter")];
  v8 = v7;
  [(NSUnit *)unit dimension];
  if (!-[NSUnit isEqual:](unit, "isEqual:", [objc_opt_class() baseUnit]))
  {
    [-[NSUnit converter](unit "converter")];
    v8 = v9;
  }

  v5 = [NSMeasurement alloc];
  doubleValue = v8;
LABEL_9:
  v10 = [(NSMeasurement *)v5 initWithDoubleValue:unit unit:doubleValue];

  return v10;
}

- (id)_performOperation:(int64_t)operation withMeasurement:(id)measurement
{
  if (!-[NSMeasurement canBeConvertedToUnit:](self, "canBeConvertedToUnit:", [measurement unit]))
  {
    v13 = objc_opt_class();
    [measurement unit];
    v14 = objc_opt_class();
    if (operation == 1)
    {
      v15 = [NSString stringWithFormat:@"Cannot subtract measurements of differing unit types! lhs: %@ rhs: %@", v13, v14];
    }

    else
    {
      if (operation)
      {
        goto LABEL_23;
      }

      v15 = [NSString stringWithFormat:@"Cannot add measurements of differing unit types! lhs: %@ rhs: %@", v13, v14];
    }

    goto LABEL_33;
  }

  if (-[NSUnit isEqual:](self->_unit, "isEqual:", [measurement unit]))
  {
    doubleValue = self->_doubleValue;
    [measurement doubleValue];
    v9 = doubleValue - v8;
    v10 = doubleValue + v8;
    if (operation)
    {
      v10 = 0.0;
    }

    if (operation == 1)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    unit = self->_unit;
    goto LABEL_24;
  }

  [measurement unit];
  if (!isDimensional() || !isDimensional())
  {
    v23 = objc_opt_class();
    [measurement unit];
    v24 = objc_opt_class();
    if (operation == 1)
    {
      v15 = [NSString stringWithFormat:@"Cannot subtract differing units that are non-dimensional! lhs: %@ rhs: %@", v23, v24];
    }

    else
    {
      if (operation)
      {
        goto LABEL_23;
      }

      v15 = [NSString stringWithFormat:@"Cannot add differing units that are non-dimensional! lhs: %@ rhs: %@", v23, v24];
    }

LABEL_33:
    v29 = v15;
    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    goto LABEL_34;
  }

  [objc_msgSend(measurement "unit")];
  [(NSUnit *)self->_unit dimension];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (operation != 1)
    {
      if (!operation)
      {
        v27 = MEMORY[0x1E695DF30];
        v28 = *MEMORY[0x1E695D940];
        v29 = @"Cannot add measurements of differing unit types!";
        goto LABEL_34;
      }

LABEL_23:
      unit = 0;
      v11 = 0.0;
      goto LABEL_24;
    }

    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v29 = @"Cannot subtract measurements of differing unit types!";
LABEL_34:
    objc_exception_throw([v27 exceptionWithName:v28 reason:v29 userInfo:0]);
  }

  [(NSUnit *)self->_unit dimension];
  v16 = -[NSMeasurement measurementByConvertingToUnit:](self, "measurementByConvertingToUnit:", [objc_opt_class() baseUnit]);
  [(NSUnit *)self->_unit dimension];
  v17 = [measurement measurementByConvertingToUnit:{objc_msgSend(objc_opt_class(), "baseUnit")}];
  [(NSMeasurement *)v16 doubleValue];
  v19 = v18;
  [v17 doubleValue];
  v21 = v19 - v20;
  v22 = v19 + v20;
  if (operation)
  {
    v22 = 0.0;
  }

  if (operation == 1)
  {
    v11 = v21;
  }

  else
  {
    v11 = v22;
  }

  unit = [(NSMeasurement *)v16 unit:v22];
LABEL_24:
  v25 = [[NSMeasurement alloc] initWithDoubleValue:unit unit:v11];

  return v25;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  doubleValue = self->_doubleValue;
  [equal doubleValue];
  if (doubleValue != v6)
  {
    return 0;
  }

  unit = self->_unit;
  unit = [equal unit];

  return [(NSUnit *)unit isEqual:unit];
}

- (unint64_t)hash
{
  doubleValue = self->_doubleValue;
  if (doubleValue < 0.0)
  {
    doubleValue = -doubleValue;
  }

  *v2.i64 = floor(doubleValue + 0.5);
  v5 = (doubleValue - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v2.i64[0] = vbslq_s8(vnegq_f64(v6), v3, v2).i64[0];
  v7 = 2654435761u * *v2.i64;
  v8 = v7 + v5;
  if (v5 <= 0.0)
  {
    v8 = 2654435761u * *v2.i64;
  }

  v9 = v7 - fabs(v5);
  if (v5 < 0.0)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

- (NSMeasurement)initWithCoder:(id)coder
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSMeasurement cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  [coder decodeDoubleForKey:@"NS.value"];
  v6 = v5;
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.unit"];
  if (v7)
  {

    return [(NSMeasurement *)self initWithDoubleValue:v7 unit:v6];
  }

  else
  {

    v9 = @"NSLocalizedDescription";
    v10[0] = @"Unit class object has been corrupted!";
    [coder failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, &v9, 1))}];
    return 0;
  }
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSMeasurement cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  [coder encodeDouble:@"NS.value" forKey:self->_doubleValue];
  unit = self->_unit;

  [coder encodeObject:unit forKey:@"NS.unit"];
}

@end
@interface NSEnergyFormatter
- (NSEnergyFormatter)init;
- (NSEnergyFormatter)initWithCoder:(id)coder;
- (NSString)stringFromJoules:(double)numberInJoules;
- (NSString)stringFromValue:(double)value unit:(NSEnergyFormatterUnit)unit;
- (NSString)unitStringFromJoules:(double)numberInJoules usedUnit:(NSEnergyFormatterUnit *)unitp;
- (NSString)unitStringFromValue:(double)value unit:(NSEnergyFormatterUnit)unit;
- (id)attributedStringForObjectValue:(id)value withDefaultAttributes:(id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stringForObjectValue:(id)value;
- (int64_t)targetUnitFromJoules:(double)joules;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)receiveObservedValue:(id)value;
@end

@implementation NSEnergyFormatter

- (NSEnergyFormatter)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = NSEnergyFormatter;
  v2 = [(NSEnergyFormatter *)&v4 init];
  if (v2)
  {
    v2->_unitFormatter = objc_alloc_init(NSUnitFormatter);
  }

  return v2;
}

- (void)receiveObservedValue:(id)value
{
  v7 = *MEMORY[0x1E69E9840];
  if (value && (_NSIsNSNumber() & 1) == 0)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSObservationFormatterSupport.m" description:58, @"Invalid parameter not satisfying: %@", @"!value || _NSIsNSNumber(value)"];
  }

  v6.receiver = self;
  v6.super_class = NSEnergyFormatter;
  [(NSEnergyFormatter *)&v6 receiveObservedValue:[(NSEnergyFormatter *)self stringForObjectValue:value]];
}

- (int64_t)targetUnitFromJoules:(double)joules
{
  locale = [(NSNumberFormatter *)[(NSEnergyFormatter *)self numberFormatter] locale];
  if ([-[NSLocale objectForKey:](locale objectForKey:{*MEMORY[0x1E695DA08]), "BOOLValue"}])
  {
    v5 = &metric_units_1;
  }

  else
  {
    v5 = &us_units_1;
  }

  v6 = malloc_type_malloc(0x20uLL, 0x1000040451B5BE8uLL);
  v7 = v6;
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = v5[v8];
    joulesCopy = 0.0;
    if (v11 > 1792)
    {
      if (v11 == 1793)
      {
        joulesCopy = joules / 4.184;
      }

      else if (v11 == 1794)
      {
        joulesCopy = joules / 4184.0;
      }
    }

    else
    {
      joulesCopy = joules;
      if (v11 != 11)
      {
        joulesCopy = 0.0;
        if (v11 == 14)
        {
          joulesCopy = joules / 1000.0;
        }
      }
    }

    v9 = 0;
    v13 = &v6[2 * v8];
    *v13 = joulesCopy;
    *(v13 + 1) = v11;
    v8 = 1;
  }

  while ((v10 & 1) != 0);
  qsort(v6, 2uLL, 0x10uLL, compare_1);
  v14 = *&v7[2 * (*v7 <= 1.0) + 1];
  free(v7);
  return v14;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSEnergyFormatter;
  [(NSEnergyFormatter *)&v3 dealloc];
}

- (NSString)unitStringFromValue:(double)value unit:(NSEnergyFormatterUnit)unit
{
  v6 = 3075;
  v7 = 3072;
  if (unit != NSEnergyFormatterUnitCalorie)
  {
    v7 = 0;
  }

  if (unit != NSEnergyFormatterUnitKilocalorie)
  {
    v6 = v7;
  }

  v8 = 3074;
  v9 = 3076;
  if (unit != NSEnergyFormatterUnitKilojoule)
  {
    v9 = 0;
  }

  if (unit != NSEnergyFormatterUnitJoule)
  {
    v8 = v9;
  }

  if (unit <= 1792)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (((unit == NSEnergyFormatterUnitKilocalorie) & [(NSEnergyFormatter *)self isForFoodEnergyUse]) != 0)
  {
    v11 = 3073;
  }

  else
  {
    v11 = v10;
  }

  unitFormatter = self->_unitFormatter;

  return [(NSUnitFormatter *)unitFormatter unitStringFromValue:v11 unit:value];
}

- (NSString)unitStringFromJoules:(double)numberInJoules usedUnit:(NSEnergyFormatterUnit *)unitp
{
  v7 = [(NSEnergyFormatter *)self targetUnitFromJoules:?];
  v8 = 0.0;
  if (v7 > 1792)
  {
    if (v7 == NSEnergyFormatterUnitCalorie)
    {
      v9 = 4.184;
    }

    else
    {
      if (v7 != NSEnergyFormatterUnitKilocalorie)
      {
        goto LABEL_11;
      }

      v9 = 4184.0;
    }
  }

  else
  {
    if (v7 == NSEnergyFormatterUnitJoule)
    {
      v8 = numberInJoules;
      goto LABEL_11;
    }

    if (v7 != NSEnergyFormatterUnitKilojoule)
    {
      goto LABEL_11;
    }

    v9 = 1000.0;
  }

  v8 = numberInJoules / v9;
LABEL_11:
  if (unitp)
  {
    *unitp = v7;
  }

  return [(NSEnergyFormatter *)self unitStringFromValue:v7 unit:v8];
}

- (NSString)stringFromValue:(double)value unit:(NSEnergyFormatterUnit)unit
{
  v6 = 3075;
  v7 = 3072;
  if (unit != NSEnergyFormatterUnitCalorie)
  {
    v7 = 0;
  }

  if (unit != NSEnergyFormatterUnitKilocalorie)
  {
    v6 = v7;
  }

  v8 = 3074;
  v9 = 3076;
  if (unit != NSEnergyFormatterUnitKilojoule)
  {
    v9 = 0;
  }

  if (unit != NSEnergyFormatterUnitJoule)
  {
    v8 = v9;
  }

  if (unit <= 1792)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (((unit == NSEnergyFormatterUnitKilocalorie) & [(NSEnergyFormatter *)self isForFoodEnergyUse]) != 0)
  {
    v11 = 3073;
  }

  else
  {
    v11 = v10;
  }

  unitFormatter = self->_unitFormatter;

  return [(NSUnitFormatter *)unitFormatter stringForValue:v11 unit:value];
}

- (NSString)stringFromJoules:(double)numberInJoules
{
  v5 = [(NSEnergyFormatter *)self targetUnitFromJoules:?];
  v6 = 0.0;
  if (v5 > 1792)
  {
    if (v5 == 1793)
    {
      v7 = 4.184;
    }

    else
    {
      if (v5 != 1794)
      {
        goto LABEL_11;
      }

      v7 = 4184.0;
    }
  }

  else
  {
    if (v5 == 11)
    {
      v6 = numberInJoules;
      goto LABEL_11;
    }

    if (v5 != 14)
    {
      goto LABEL_11;
    }

    v7 = 1000.0;
  }

  v6 = numberInJoules / v7;
LABEL_11:

  return [(NSEnergyFormatter *)self stringFromValue:v5 unit:v6];
}

- (id)stringForObjectValue:(id)value
{
  if (!value || !_NSIsNSNumber())
  {
    return 0;
  }

  [value doubleValue];

  return [(NSEnergyFormatter *)self stringFromJoules:?];
}

- (id)attributedStringForObjectValue:(id)value withDefaultAttributes:(id)attributes
{
  if (!value || !_NSIsNSNumber())
  {
    return 0;
  }

  [value doubleValue];
  v7 = [[NSAttributedString alloc] initWithString:[(NSEnergyFormatter *)self stringFromJoules:?] attributes:attributes];

  return v7;
}

- (NSEnergyFormatter)initWithCoder:(id)coder
{
  v8 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSEnergyFormatter cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v7.receiver = self;
  v7.super_class = NSEnergyFormatter;
  v5 = [(NSFormatter *)&v7 initWithCoder:coder];
  if (v5)
  {
    v5->_unitFormatter = [[NSUnitFormatter alloc] initWithCoder:coder];
    v5->_isForFoodEnergyUse = [coder decodeBoolForKey:@"NS.forFoodEnergyUse"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSEnergyFormatter cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSEnergyFormatter;
  [(NSFormatter *)&v5 encodeWithCoder:coder];
  [(NSUnitFormatter *)self->_unitFormatter encodeWithCoder:coder];
  if (self->_isForFoodEnergyUse)
  {
    [coder encodeBool:1 forKey:@"NS.forFoodEnergyUse"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = [(NSUnitFormatter *)self->_unitFormatter copyWithZone:zone];
  *(v5 + 16) = self->_isForFoodEnergyUse;
  return v5;
}

@end
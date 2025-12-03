@interface NSMassFormatter
- (NSMassFormatter)init;
- (NSMassFormatter)initWithCoder:(id)coder;
- (NSString)stringFromKilograms:(double)numberInKilograms;
- (NSString)stringFromValue:(double)value unit:(NSMassFormatterUnit)unit;
- (NSString)unitStringFromKilograms:(double)numberInKilograms usedUnit:(NSMassFormatterUnit *)unitp;
- (NSString)unitStringFromValue:(double)value unit:(NSMassFormatterUnit)unit;
- (id)attributedStringForObjectValue:(id)value withDefaultAttributes:(id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stringForObjectValue:(id)value;
- (int64_t)targetUnitFromKilograms:(double)kilograms;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)receiveObservedValue:(id)value;
@end

@implementation NSMassFormatter

- (id)stringForObjectValue:(id)value
{
  if (!value || !_NSIsNSNumber())
  {
    return 0;
  }

  [value doubleValue];

  return [(NSMassFormatter *)self stringFromKilograms:?];
}

- (id)attributedStringForObjectValue:(id)value withDefaultAttributes:(id)attributes
{
  if (!value || !_NSIsNSNumber())
  {
    return 0;
  }

  [value doubleValue];
  v7 = [[NSAttributedString alloc] initWithString:[(NSMassFormatter *)self stringFromKilograms:?] attributes:attributes];

  return v7;
}

- (int64_t)targetUnitFromKilograms:(double)kilograms
{
  locale = [(NSNumberFormatter *)[(NSMassFormatter *)self numberFormatter] locale];
  if ([-[NSLocale objectForKey:](locale objectForKey:{*MEMORY[0x1E695DA08]), "BOOLValue"}])
  {
    v5 = &metric_units_0;
  }

  else
  {
    v5 = &us_units_0;
  }

  v6 = malloc_type_malloc(0x20uLL, 0x1000040451B5BE8uLL);
  v7 = v6;
  v8 = 0;
  v9 = 1;
  do
  {
    v10 = v9;
    v11 = v5[v8];
    if (v11 <= 1536)
    {
      kilogramsCopy = kilograms / 0.001;
      if (v11 != 11)
      {
        if (v11 == 14)
        {
          kilogramsCopy = kilograms;
        }

        else
        {
          kilogramsCopy = 0.0;
        }
      }
    }

    else
    {
      if (v11 == 1539)
      {
        kilogramsCopy = kilograms * 0.15747;
      }

      else
      {
        kilogramsCopy = 0.0;
      }

      if (v11 == 1538)
      {
        kilogramsCopy = kilograms * 2.20462262;
      }

      if (v11 == 1537)
      {
        kilogramsCopy = kilograms * 35.273962;
      }
    }

    v9 = 0;
    v13 = &v6[2 * v8];
    *v13 = kilogramsCopy;
    *(v13 + 1) = v11;
    v8 = 1;
  }

  while ((v10 & 1) != 0);
  qsort(v6, 2uLL, 0x10uLL, compare_0);
  v14 = *&v7[2 * (*v7 <= 1.0) + 1];
  free(v7);
  return v14;
}

- (NSMassFormatter)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = NSMassFormatter;
  v2 = [(NSMassFormatter *)&v4 init];
  if (v2)
  {
    v2->_unitFormatter = objc_alloc_init(NSUnitFormatter);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSMassFormatter;
  [(NSMassFormatter *)&v3 dealloc];
}

- (NSString)unitStringFromKilograms:(double)numberInKilograms usedUnit:(NSMassFormatterUnit *)unitp
{
  v7 = [(NSMassFormatter *)self targetUnitFromKilograms:?];
  v8 = 0.0;
  if (v7 > 1536)
  {
    if (v7 != NSMassFormatterUnitOunce)
    {
      if (v7 == NSMassFormatterUnitPound)
      {
        v8 = numberInKilograms * 2.20462262;
      }

      else if (v7 == NSMassFormatterUnitStone)
      {
        v9 = 0.15747;
        goto LABEL_12;
      }

      if (!unitp)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v9 = 35.273962;
LABEL_12:
    v8 = numberInKilograms * v9;
    if (!unitp)
    {
      goto LABEL_17;
    }

LABEL_16:
    *unitp = v7;
    goto LABEL_17;
  }

  if (v7 == NSMassFormatterUnitGram)
  {
    v8 = numberInKilograms / 0.001;
    if (unitp)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v7 == NSMassFormatterUnitKilogram)
    {
      v8 = numberInKilograms;
    }

    if (unitp)
    {
      goto LABEL_16;
    }
  }

LABEL_17:

  return [(NSMassFormatter *)self unitStringFromValue:v7 unit:v8];
}

- (NSString)unitStringFromValue:(double)value unit:(NSMassFormatterUnit)unit
{
  v4 = 1538;
  v5 = 1539;
  v6 = 1540;
  if (unit != NSMassFormatterUnitStone)
  {
    v6 = 0;
  }

  if (unit != NSMassFormatterUnitPound)
  {
    v5 = v6;
  }

  if (unit != NSMassFormatterUnitOunce)
  {
    v4 = v5;
  }

  v7 = 1536;
  v8 = 1537;
  if (unit != NSMassFormatterUnitKilogram)
  {
    v8 = 0;
  }

  if (unit != NSMassFormatterUnitGram)
  {
    v7 = v8;
  }

  if (unit <= 1536)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  return [(NSUnitFormatter *)self->_unitFormatter unitStringFromValue:v9 unit:value];
}

- (NSString)stringFromKilograms:(double)numberInKilograms
{
  v5 = [(NSMassFormatter *)self targetUnitFromKilograms:?];
  v6 = 0.0;
  if (v5 <= 1536)
  {
    if (v5 == 11)
    {
      v6 = numberInKilograms / 0.001;
    }

    else if (v5 == 14)
    {
      v6 = numberInKilograms;
    }
  }

  else
  {
    switch(v5)
    {
      case 1537:
        v7 = 35.273962;
        break;
      case 1538:
        v7 = 2.20462262;
        break;
      case 1539:
        v7 = 0.15747;
        break;
      default:
        goto LABEL_14;
    }

    v6 = numberInKilograms * v7;
  }

LABEL_14:

  return [(NSMassFormatter *)self stringFromValue:v5 unit:v6];
}

- (NSString)stringFromValue:(double)value unit:(NSMassFormatterUnit)unit
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (unit <= 1536)
  {
    v12 = 1537;
    if (unit != NSMassFormatterUnitKilogram)
    {
      v12 = 0;
    }

    if (unit == NSMassFormatterUnitGram)
    {
      v13 = 1536;
    }

    else
    {
      v13 = v12;
    }
  }

  else
  {
    switch(unit)
    {
      case NSMassFormatterUnitOunce:
        v13 = 1538;
        break;
      case NSMassFormatterUnitPound:
        v13 = 1539;
        break;
      case NSMassFormatterUnitStone:
        v15[0] = 0.0;
        v6 = modf(value, v15);
        if (v6 > 0.0)
        {
          unitFormatter = self->_unitFormatter;
          v8 = v15[0];
          v9 = v6 * 14.0;
          v10 = v15[0];

          return [(NSUnitFormatter *)unitFormatter stringForValue1:1540 unit1:1539 value2:v10 unit2:v9, v8];
        }

        v13 = 1540;
        break;
      default:
        v13 = 0;
        break;
    }
  }

  v14 = self->_unitFormatter;

  return [(NSUnitFormatter *)v14 stringForValue:v13 unit:value];
}

- (NSMassFormatter)initWithCoder:(id)coder
{
  v8 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSMassFormatter cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v7.receiver = self;
  v7.super_class = NSMassFormatter;
  v5 = [(NSFormatter *)&v7 initWithCoder:coder];
  if (v5)
  {
    v5->_unitFormatter = [[NSUnitFormatter alloc] initWithCoder:coder];
    v5->_isForPersonMassUse = [coder decodeBoolForKey:@"NS.forPersonMassUse"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSMassFormatter cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSMassFormatter;
  [(NSFormatter *)&v5 encodeWithCoder:coder];
  [(NSUnitFormatter *)self->_unitFormatter encodeWithCoder:coder];
  if (self->_isForPersonMassUse)
  {
    [coder encodeBool:1 forKey:@"NS.forPersonMassUse"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = [(NSUnitFormatter *)self->_unitFormatter copyWithZone:zone];
  *(v5 + 16) = self->_isForPersonMassUse;
  return v5;
}

- (void)receiveObservedValue:(id)value
{
  v7 = *MEMORY[0x1E69E9840];
  if (value && (_NSIsNSNumber() & 1) == 0)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSObservationFormatterSupport.m" description:65, @"Invalid parameter not satisfying: %@", @"!value || _NSIsNSNumber(value)"];
  }

  v6.receiver = self;
  v6.super_class = NSMassFormatter;
  [(NSMassFormatter *)&v6 receiveObservedValue:[(NSMassFormatter *)self stringForObjectValue:value]];
}

@end
@interface NSMeasurementFormatter
- (NSMeasurementFormatter)init;
- (NSMeasurementFormatter)initWithCoder:(id)coder;
- (NSString)stringFromMeasurement:(NSMeasurement *)measurement;
- (id)stringForObjectValue:(id)value;
- (void)dealloc;
- (void)setUnitOptions:(NSMeasurementFormatterUnitOptions)unitOptions;
@end

@implementation NSMeasurementFormatter

- (NSMeasurementFormatter)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = NSMeasurementFormatter;
  v2 = [(NSMeasurementFormatter *)&v4 init];
  if (v2)
  {
    v2->_formatter = objc_alloc_init(NSUnitFormatter);
    [(NSMeasurementFormatter *)v2 setUnitOptions:0];
    [(NSMeasurementFormatter *)v2 setUnitStyle:2];
    -[NSMeasurementFormatter setLocale:](v2, "setLocale:", [MEMORY[0x1E695DF58] currentLocale]);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSMeasurementFormatter;
  [(NSMeasurementFormatter *)&v3 dealloc];
}

- (void)setUnitOptions:(NSMeasurementFormatterUnitOptions)unitOptions
{
  if (unitOptions >= 8)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSMeasurementFormatter.m" description:44, @"Invalid parameter not satisfying: %@", @"unitOptions == 0 || !(unitOptions & ~(NSMeasurementFormatterUnitOptionsProvidedUnit | NSMeasurementFormatterUnitOptionsNaturalScale | NSMeasurementFormatterUnitOptionsTemperatureWithoutUnit))"];
  }

  formatter = self->_formatter;

  [formatter setUnitOptions:unitOptions];
}

- (NSString)stringFromMeasurement:(NSMeasurement *)measurement
{
  result = [(NSMeasurementFormatter *)self stringForObjectValue:measurement];
  if (!result)
  {
    return &stru_1EEEFDF90;
  }

  return result;
}

- (id)stringForObjectValue:(id)value
{
  if (!value || (objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  formatter = self->_formatter;

  return [formatter stringForObjectValue:value];
}

- (NSMeasurementFormatter)initWithCoder:(id)coder
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSMeasurementFormatter cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.unitFormatter"];
  if (v5)
  {
    v6 = v5;
    v9.receiver = self;
    v9.super_class = NSMeasurementFormatter;
    v7 = [(NSMeasurementFormatter *)&v9 init];
    if (v7)
    {
      v7->_formatter = v6;
    }
  }

  else
  {

    v10 = @"NSLocalizedDescription";
    v11[0] = @"Formatter has been corrupted!";
    [coder failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1))}];
    return 0;
  }

  return v7;
}

@end
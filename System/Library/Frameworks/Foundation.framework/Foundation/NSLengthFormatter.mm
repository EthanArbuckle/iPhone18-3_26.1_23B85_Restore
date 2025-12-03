@interface NSLengthFormatter
- (NSLengthFormatter)init;
- (NSLengthFormatter)initWithCoder:(id)coder;
- (NSString)stringFromMeters:(double)numberInMeters;
- (NSString)stringFromValue:(double)value unit:(NSLengthFormatterUnit)unit;
- (NSString)unitStringFromMeters:(double)numberInMeters usedUnit:(NSLengthFormatterUnit *)unitp;
- (NSString)unitStringFromValue:(double)value unit:(NSLengthFormatterUnit)unit;
- (id)attributedStringForObjectValue:(id)value withDefaultAttributes:(id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)stringForObjectValue:(id)value;
- (int64_t)targetUnitFromMeters:(double)meters;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)receiveObservedValue:(id)value;
@end

@implementation NSLengthFormatter

- (NSLengthFormatter)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = NSLengthFormatter;
  v2 = [(NSLengthFormatter *)&v4 init];
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
  v3.super_class = NSLengthFormatter;
  [(NSLengthFormatter *)&v3 dealloc];
}

- (int64_t)targetUnitFromMeters:(double)meters
{
  locale = [(NSNumberFormatter *)[(NSLengthFormatter *)self numberFormatter] locale];
  v6 = [-[NSLocale objectForKey:](locale objectForKey:{*MEMORY[0x1E695DA08]), "BOOLValue"}];
  if ([(NSLengthFormatter *)self isForPersonHeightUse])
  {
    if (v6 && ![(NSString *)[(NSLocale *)locale localeIdentifier] isEqual:@"en_GB"])
    {
      return 9;
    }

    else
    {
      return 1282;
    }
  }

  else
  {
    if (v6)
    {
      v8 = &metric_units;
    }

    else
    {
      v8 = &us_units;
    }

    return findUnit(v8, meters);
  }
}

- (NSString)unitStringFromValue:(double)value unit:(NSLengthFormatterUnit)unit
{
  v4 = 1288;
  v5 = 1287;
  if (unit != NSLengthFormatterUnitMile)
  {
    v5 = 0;
  }

  if (unit != NSLengthFormatterUnitYard)
  {
    v4 = v5;
  }

  v6 = 1286;
  v7 = 1285;
  if (unit != NSLengthFormatterUnitFoot)
  {
    v7 = 0;
  }

  if (unit != NSLengthFormatterUnitInch)
  {
    v6 = v7;
  }

  if (unit <= NSLengthFormatterUnitFoot)
  {
    v4 = v6;
  }

  v8 = 1280;
  v9 = 1282;
  if (unit != NSLengthFormatterUnitKilometer)
  {
    v9 = 0;
  }

  if (unit != NSLengthFormatterUnitMeter)
  {
    v8 = v9;
  }

  v10 = 1283;
  v11 = 1281;
  if (unit != NSLengthFormatterUnitCentimeter)
  {
    v11 = 0;
  }

  if (unit != NSLengthFormatterUnitMillimeter)
  {
    v10 = v11;
  }

  if (unit <= 10)
  {
    v8 = v10;
  }

  if (unit <= 1280)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  return [(NSUnitFormatter *)self->_unitFormatter unitStringFromValue:v12 unit:value];
}

- (NSString)unitStringFromMeters:(double)numberInMeters usedUnit:(NSLengthFormatterUnit *)unitp
{
  v7 = [(NSLengthFormatter *)self targetUnitFromMeters:?];
  v8 = v7;
  if (unitp)
  {
    *unitp = v7;
  }

  v9 = convertUnitFromMeters(v7, numberInMeters);

  return [(NSLengthFormatter *)self unitStringFromValue:v8 unit:v9];
}

- (NSString)stringFromMeters:(double)numberInMeters
{
  if (![(NSLengthFormatter *)self isForPersonHeightUse])
  {
    v9 = [(NSLengthFormatter *)self targetUnitFromMeters:numberInMeters];
    v6 = convertUnitFromMeters(v9, numberInMeters);
    selfCopy2 = self;
    v8 = v9;
    goto LABEL_5;
  }

  locale = [(NSNumberFormatter *)[(NSLengthFormatter *)self numberFormatter] locale];
  if ([-[NSLocale objectForKey:](locale objectForKey:{*MEMORY[0x1E695DA08]), "BOOLValue"}])
  {
    v6 = numberInMeters / 0.01;
    selfCopy2 = self;
    v8 = 9;
LABEL_5:

    return [(NSLengthFormatter *)selfCopy2 stringFromValue:v8 unit:v6];
  }

  unitFormatter = self->_unitFormatter;

  return [NSUnitFormatter stringForValue1:"stringForValue1:unit1:value2:unit2:" unit1:1285 value2:1286 unit2:?];
}

- (NSString)stringFromValue:(double)value unit:(NSLengthFormatterUnit)unit
{
  v4 = 1288;
  v5 = 1287;
  if (unit != NSLengthFormatterUnitMile)
  {
    v5 = 0;
  }

  if (unit != NSLengthFormatterUnitYard)
  {
    v4 = v5;
  }

  v6 = 1286;
  v7 = 1285;
  if (unit != NSLengthFormatterUnitFoot)
  {
    v7 = 0;
  }

  if (unit != NSLengthFormatterUnitInch)
  {
    v6 = v7;
  }

  if (unit <= NSLengthFormatterUnitFoot)
  {
    v4 = v6;
  }

  v8 = 1280;
  v9 = 1282;
  if (unit != NSLengthFormatterUnitKilometer)
  {
    v9 = 0;
  }

  if (unit != NSLengthFormatterUnitMeter)
  {
    v8 = v9;
  }

  v10 = 1283;
  v11 = 1281;
  if (unit != NSLengthFormatterUnitCentimeter)
  {
    v11 = 0;
  }

  if (unit != NSLengthFormatterUnitMillimeter)
  {
    v10 = v11;
  }

  if (unit <= 10)
  {
    v8 = v10;
  }

  if (unit <= 1280)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  return [(NSUnitFormatter *)self->_unitFormatter stringForValue:v12 unit:value];
}

- (id)stringForObjectValue:(id)value
{
  if (!value || !_NSIsNSNumber())
  {
    return 0;
  }

  [value doubleValue];

  return [(NSLengthFormatter *)self stringFromMeters:?];
}

- (id)attributedStringForObjectValue:(id)value withDefaultAttributes:(id)attributes
{
  if (!value || !_NSIsNSNumber())
  {
    return 0;
  }

  [value doubleValue];
  v7 = [[NSAttributedString alloc] initWithString:[(NSLengthFormatter *)self stringFromMeters:?] attributes:attributes];

  return v7;
}

- (NSLengthFormatter)initWithCoder:(id)coder
{
  v8 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSLengthFormatter cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v7.receiver = self;
  v7.super_class = NSLengthFormatter;
  v5 = [(NSFormatter *)&v7 initWithCoder:coder];
  if (v5)
  {
    v5->_unitFormatter = [[NSUnitFormatter alloc] initWithCoder:coder];
    v5->_isForPersonHeight = [coder decodeBoolForKey:@"NS.forPersonHeightUse"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSLengthFormatter cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSLengthFormatter;
  [(NSFormatter *)&v5 encodeWithCoder:coder];
  [(NSUnitFormatter *)self->_unitFormatter encodeWithCoder:coder];
  if (self->_isForPersonHeight)
  {
    [coder encodeBool:1 forKey:@"NS.forPersonHeightUse"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = [(NSUnitFormatter *)self->_unitFormatter copyWithZone:zone];
  *(v5 + 16) = self->_isForPersonHeight;
  return v5;
}

- (void)receiveObservedValue:(id)value
{
  v7 = *MEMORY[0x1E69E9840];
  if (value && (_NSIsNSNumber() & 1) == 0)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSObservationFormatterSupport.m" description:72, @"Invalid parameter not satisfying: %@", @"!value || _NSIsNSNumber(value)"];
  }

  v6.receiver = self;
  v6.super_class = NSLengthFormatter;
  [(NSLengthFormatter *)&v6 receiveObservedValue:[(NSLengthFormatter *)self stringForObjectValue:value]];
}

@end
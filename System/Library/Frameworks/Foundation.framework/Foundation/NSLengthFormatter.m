@interface NSLengthFormatter
- (NSLengthFormatter)init;
- (NSLengthFormatter)initWithCoder:(id)a3;
- (NSString)stringFromMeters:(double)numberInMeters;
- (NSString)stringFromValue:(double)value unit:(NSLengthFormatterUnit)unit;
- (NSString)unitStringFromMeters:(double)numberInMeters usedUnit:(NSLengthFormatterUnit *)unitp;
- (NSString)unitStringFromValue:(double)value unit:(NSLengthFormatterUnit)unit;
- (id)attributedStringForObjectValue:(id)a3 withDefaultAttributes:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)stringForObjectValue:(id)a3;
- (int64_t)targetUnitFromMeters:(double)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)receiveObservedValue:(id)a3;
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

- (int64_t)targetUnitFromMeters:(double)a3
{
  v5 = [(NSNumberFormatter *)[(NSLengthFormatter *)self numberFormatter] locale];
  v6 = [-[NSLocale objectForKey:](v5 objectForKey:{*MEMORY[0x1E695DA08]), "BOOLValue"}];
  if ([(NSLengthFormatter *)self isForPersonHeightUse])
  {
    if (v6 && ![(NSString *)[(NSLocale *)v5 localeIdentifier] isEqual:@"en_GB"])
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

    return findUnit(v8, a3);
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
    v7 = self;
    v8 = v9;
    goto LABEL_5;
  }

  v5 = [(NSNumberFormatter *)[(NSLengthFormatter *)self numberFormatter] locale];
  if ([-[NSLocale objectForKey:](v5 objectForKey:{*MEMORY[0x1E695DA08]), "BOOLValue"}])
  {
    v6 = numberInMeters / 0.01;
    v7 = self;
    v8 = 9;
LABEL_5:

    return [(NSLengthFormatter *)v7 stringFromValue:v8 unit:v6];
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

- (id)stringForObjectValue:(id)a3
{
  if (!a3 || !_NSIsNSNumber())
  {
    return 0;
  }

  [a3 doubleValue];

  return [(NSLengthFormatter *)self stringFromMeters:?];
}

- (id)attributedStringForObjectValue:(id)a3 withDefaultAttributes:(id)a4
{
  if (!a3 || !_NSIsNSNumber())
  {
    return 0;
  }

  [a3 doubleValue];
  v7 = [[NSAttributedString alloc] initWithString:[(NSLengthFormatter *)self stringFromMeters:?] attributes:a4];

  return v7;
}

- (NSLengthFormatter)initWithCoder:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSLengthFormatter cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  v7.receiver = self;
  v7.super_class = NSLengthFormatter;
  v5 = [(NSFormatter *)&v7 initWithCoder:a3];
  if (v5)
  {
    v5->_unitFormatter = [[NSUnitFormatter alloc] initWithCoder:a3];
    v5->_isForPersonHeight = [a3 decodeBoolForKey:@"NS.forPersonHeightUse"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSLengthFormatter cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSLengthFormatter;
  [(NSFormatter *)&v5 encodeWithCoder:a3];
  [(NSUnitFormatter *)self->_unitFormatter encodeWithCoder:a3];
  if (self->_isForPersonHeight)
  {
    [a3 encodeBool:1 forKey:@"NS.forPersonHeightUse"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = [(NSUnitFormatter *)self->_unitFormatter copyWithZone:a3];
  *(v5 + 16) = self->_isForPersonHeight;
  return v5;
}

- (void)receiveObservedValue:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (a3 && (_NSIsNSNumber() & 1) == 0)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSObservationFormatterSupport.m" description:72, @"Invalid parameter not satisfying: %@", @"!value || _NSIsNSNumber(value)"];
  }

  v6.receiver = self;
  v6.super_class = NSLengthFormatter;
  [(NSLengthFormatter *)&v6 receiveObservedValue:[(NSLengthFormatter *)self stringForObjectValue:a3]];
}

@end
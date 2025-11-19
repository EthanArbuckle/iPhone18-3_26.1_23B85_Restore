@interface NSByteCountFormatter
+ (NSString)stringFromByteCount:(uint64_t)byteCount countStyle:(NSByteCountFormatterCountStyle)countStyle;
+ (NSString)stringFromMeasurement:(NSMeasurement *)measurement countStyle:(NSByteCountFormatterCountStyle)countStyle;
- (BOOL)_mayDecorateAttributedStringForObjectValue:(id)a3;
- (NSByteCountFormatter)init;
- (NSByteCountFormatter)initWithCoder:(id)a3;
- (NSString)stringForObjectValue:(id)obj;
- (NSString)stringFromByteCount:(uint64_t)byteCount;
- (NSString)stringFromMeasurement:(NSMeasurement *)measurement;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)_options;
- (void)encodeWithCoder:(id)a3;
- (void)receiveObservedValue:(id)a3;
@end

@implementation NSByteCountFormatter

- (NSByteCountFormatter)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSByteCountFormatter;
  v2 = [(NSByteCountFormatter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NSByteCountFormatter *)v2 setAdaptive:1];
    [(NSByteCountFormatter *)v3 setAllowsNonnumericFormatting:1];
    [(NSByteCountFormatter *)v3 setIncludesUnit:1];
    [(NSByteCountFormatter *)v3 setIncludesCount:1];
    [(NSByteCountFormatter *)v3 setFormattingContext:0];
  }

  return v3;
}

- (unint64_t)_options
{
  v3 = [(NSByteCountFormatter *)self countStyle]- 1;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_181453898[v3];
  }

  v5 = [(NSByteCountFormatter *)self allowedUnits];
  if (v5 == 0xFFFF)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (!v5)
  {
    v6 = 0;
  }

  v7 = v6 | v4;
  v8 = [(NSByteCountFormatter *)self allowsNonnumericFormatting];
  v9 = [(NSByteCountFormatter *)self includesUnit];
  v10 = [(NSByteCountFormatter *)self includesCount];
  v11 = [(NSByteCountFormatter *)self includesActualByteCount];
  v12 = [(NSByteCountFormatter *)self isAdaptive];
  v13 = [(NSByteCountFormatter *)self zeroPadsFractionDigits];
  v14 = 0x10000000;
  if (v8)
  {
    v14 = 0x8000000;
  }

  v15 = v14 | 0x40000000;
  if (!v9)
  {
    v15 = v14;
    v14 |= 0x20000000uLL;
  }

  if (!v10)
  {
    v14 = v15;
  }

  if (v11)
  {
    v14 |= 0x4000000uLL;
  }

  v16 = 0x400000;
  if (v12)
  {
    v16 = 0x200000;
  }

  v17 = v14 | v16;
  if (v13)
  {
    v17 |= 0x1000000uLL;
  }

  return v7 | v17;
}

+ (NSString)stringFromByteCount:(uint64_t)byteCount countStyle:(NSByteCountFormatterCountStyle)countStyle
{
  if ((countStyle - 1) > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_181453898[countStyle - 1];
  }

  return __NSLocalizedFileSizeDescription(byteCount, 0, v5, 0);
}

- (NSString)stringFromByteCount:(uint64_t)byteCount
{
  v5 = [(NSByteCountFormatter *)self _options];
  v6 = [(NSByteCountFormatter *)self formattingContext];

  return __NSLocalizedFileSizeDescription(byteCount, 0, v5, v6);
}

+ (NSString)stringFromMeasurement:(NSMeasurement *)measurement countStyle:(NSByteCountFormatterCountStyle)countStyle
{
  NSByteCountFormatterAssertValidMeasurement(measurement);
  if ((countStyle - 1) > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_181453898[countStyle - 1];
  }

  return __NSLocalizedFileSizeDescriptionWithMeasurement(measurement, v6, 0);
}

- (NSString)stringFromMeasurement:(NSMeasurement *)measurement
{
  NSByteCountFormatterAssertValidMeasurement(measurement);
  v5 = [(NSByteCountFormatter *)self _options];
  v6 = [(NSByteCountFormatter *)self formattingContext];

  return __NSLocalizedFileSizeDescriptionWithMeasurement(measurement, v5, v6);
}

- (BOOL)_mayDecorateAttributedStringForObjectValue:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3 && (_NSIsNSNumber() & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = NSByteCountFormatter;
    return [(NSFormatter *)&v9 _mayDecorateAttributedStringForObjectValue:a3];
  }

  else
  {
    v5 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v5, sel_attributedStringForObjectValue_withDefaultAttributes_);
    v7 = objc_opt_class();
    return MethodImplementation != class_getMethodImplementation(v7, sel_attributedStringForObjectValue_withDefaultAttributes_);
  }
}

- (NSString)stringForObjectValue:(id)obj
{
  if (_NSIsNSNumber())
  {
    v5 = [obj longLongValue];
    v6 = [(NSByteCountFormatter *)self _options];
    v7 = [(NSByteCountFormatter *)self formattingContext];

    return __NSLocalizedFileSizeDescription(v5, 0, v6, v7);
  }

  else if (objc_opt_isKindOfClass())
  {
    NSByteCountFormatterAssertValidMeasurement(obj);
    v9 = [(NSByteCountFormatter *)self _options];
    v10 = [(NSByteCountFormatter *)self formattingContext];

    return __NSLocalizedFileSizeDescriptionWithMeasurement(obj, v9, v10);
  }

  else
  {
    return 0;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setAllowedUnits:{-[NSByteCountFormatter allowedUnits](self, "allowedUnits")}];
  [v4 setCountStyle:{-[NSByteCountFormatter countStyle](self, "countStyle")}];
  [v4 setAllowsNonnumericFormatting:{-[NSByteCountFormatter allowsNonnumericFormatting](self, "allowsNonnumericFormatting")}];
  [v4 setIncludesUnit:{-[NSByteCountFormatter includesUnit](self, "includesUnit")}];
  [v4 setIncludesCount:{-[NSByteCountFormatter includesCount](self, "includesCount")}];
  [v4 setIncludesActualByteCount:{-[NSByteCountFormatter includesActualByteCount](self, "includesActualByteCount")}];
  [v4 setAdaptive:{-[NSByteCountFormatter isAdaptive](self, "isAdaptive")}];
  [v4 setZeroPadsFractionDigits:{-[NSByteCountFormatter zeroPadsFractionDigits](self, "zeroPadsFractionDigits")}];
  [v4 setFormattingContext:{-[NSByteCountFormatter formattingContext](self, "formattingContext")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSByteCountFormatter;
  [(NSFormatter *)&v5 encodeWithCoder:?];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSByteCountFormatter needs keyed archiver" userInfo:0]);
  }

  if ([(NSByteCountFormatter *)self allowedUnits])
  {
    [a3 encodeInt32:? forKey:?];
  }

  if ([(NSByteCountFormatter *)self countStyle])
  {
    [a3 encodeInt32:? forKey:?];
  }

  if ([(NSByteCountFormatter *)self formattingContext])
  {
    [a3 encodeInt32:? forKey:?];
  }

  if ([(NSByteCountFormatter *)self zeroPadsFractionDigits])
  {
    [a3 encodeBool:1 forKey:@"NSZeroPad"];
  }

  if ([(NSByteCountFormatter *)self includesActualByteCount])
  {
    [a3 encodeBool:1 forKey:@"NSActual"];
  }

  if (![(NSByteCountFormatter *)self allowsNonnumericFormatting])
  {
    [a3 encodeBool:1 forKey:@"NSNoNonnumeric"];
  }

  if (![(NSByteCountFormatter *)self includesUnit])
  {
    [a3 encodeBool:1 forKey:@"NSNoUnit"];
  }

  if (![(NSByteCountFormatter *)self includesCount])
  {
    [a3 encodeBool:1 forKey:@"NSNoCount"];
  }

  if (![(NSByteCountFormatter *)self isAdaptive])
  {
    [a3 encodeBool:1 forKey:@"NSNoAdaptive"];
  }
}

- (NSByteCountFormatter)initWithCoder:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSByteCountFormatter;
  v4 = [(NSFormatter *)&v6 initWithCoder:?];
  if (v4)
  {
    if (([a3 allowsKeyedCoding] & 1) == 0)
    {

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSByteCountFormatter needs keyed archiver" userInfo:0]);
    }

    -[NSByteCountFormatter setFormattingContext:](v4, "setFormattingContext:", [a3 decodeInt32ForKey:@"NSFormattingContext"]);
    -[NSByteCountFormatter setAllowedUnits:](v4, "setAllowedUnits:", [a3 decodeInt32ForKey:@"NSUnits"]);
    -[NSByteCountFormatter setCountStyle:](v4, "setCountStyle:", [a3 decodeInt32ForKey:@"NSKBSize"]);
    -[NSByteCountFormatter setZeroPadsFractionDigits:](v4, "setZeroPadsFractionDigits:", [a3 decodeBoolForKey:@"NSZeroPad"]);
    -[NSByteCountFormatter setIncludesActualByteCount:](v4, "setIncludesActualByteCount:", [a3 decodeBoolForKey:@"NSActual"]);
    -[NSByteCountFormatter setAllowsNonnumericFormatting:](v4, "setAllowsNonnumericFormatting:", [a3 decodeBoolForKey:@"NSNoNonnumeric"] ^ 1);
    -[NSByteCountFormatter setIncludesUnit:](v4, "setIncludesUnit:", [a3 decodeBoolForKey:@"NSNoUnit"] ^ 1);
    -[NSByteCountFormatter setIncludesCount:](v4, "setIncludesCount:", [a3 decodeBoolForKey:@"NSNoCount"] ^ 1);
    -[NSByteCountFormatter setAdaptive:](v4, "setAdaptive:", [a3 decodeBoolForKey:@"NSNoAdaptive"] ^ 1);
  }

  return v4;
}

- (void)receiveObservedValue:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (a3 && (_NSIsNSNumber() & 1) == 0)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSObservationFormatterSupport.m" description:51, @"Invalid parameter not satisfying: %@", @"!value || _NSIsNSNumber(value)"];
  }

  v6.receiver = self;
  v6.super_class = NSByteCountFormatter;
  [(NSByteCountFormatter *)&v6 receiveObservedValue:[(NSByteCountFormatter *)self stringForObjectValue:a3]];
}

@end
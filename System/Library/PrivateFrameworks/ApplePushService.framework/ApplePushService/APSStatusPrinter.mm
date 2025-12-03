@interface APSStatusPrinter
+ (id)statusPrinter;
- (APSStatusPrinter)init;
- (id)lineWithDescription:(id)description;
- (void)appendDescription:(id)description BOOLValue:(BOOL)value;
- (void)appendDescription:(id)description dateValue:(id)value;
- (void)appendDescription:(id)description enabledValue:(BOOL)value;
- (void)appendDescription:(id)description longLongValue:(int64_t)value;
- (void)appendDescription:(id)description stringValue:(id)value;
- (void)appendDescription:(id)description successRateWithSuccessCount:(unint64_t)count failureCount:(unint64_t)failureCount;
- (void)appendDescription:(id)description timeIntervalValue:(double)value;
- (void)appendDescription:(id)description unsignedLongLongValue:(unint64_t)value;
- (void)appendLine:(id)line;
@end

@implementation APSStatusPrinter

- (APSStatusPrinter)init
{
  v6.receiver = self;
  v6.super_class = APSStatusPrinter;
  v2 = [(APSStatusPrinter *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableString);
    s = v2->_s;
    v2->_s = v3;
  }

  return v2;
}

- (id)lineWithDescription:(id)description
{
  descriptionCopy = description;
  v5 = objc_alloc_init(NSMutableString);
  if (self->_indent)
  {
    v6 = 0;
    do
    {
      [v5 appendString:@"   "];
      ++v6;
    }

    while (v6 < self->_indent);
  }

  if (descriptionCopy)
  {
    v7 = descriptionCopy;
  }

  else
  {
    v7 = @"nil description";
  }

  [v5 appendString:v7];
  [v5 appendString:@":"];
  v8 = [v5 length];
  if (v8 <= 0x2D)
  {
    v9 = v8 - 46;
    do
    {
      [v5 appendString:@" "];
    }

    while (!__CFADD__(v9++, 1));
  }

  return v5;
}

- (void)appendLine:(id)line
{
  s = self->_s;
  if (!line)
  {
    line = &stru_10018F6A0;
  }

  [(NSMutableString *)s appendString:line];
  v5 = self->_s;

  [(NSMutableString *)v5 appendString:@"\n"];
}

+ (id)statusPrinter
{
  v2 = objc_alloc_init(APSStatusPrinter);

  return v2;
}

- (void)appendDescription:(id)description stringValue:(id)value
{
  valueCopy = value;
  v7 = [(APSStatusPrinter *)self lineWithDescription:description];
  v9 = v7;
  if (valueCopy)
  {
    v8 = valueCopy;
  }

  else
  {
    v8 = @"nil";
  }

  [v7 appendString:v8];

  [(APSStatusPrinter *)self appendLine:v9];
}

- (void)appendDescription:(id)description BOOLValue:(BOOL)value
{
  valueCopy = value;
  v6 = [(APSStatusPrinter *)self lineWithDescription:description];
  v7 = @"No";
  if (valueCopy)
  {
    v7 = @"Yes";
  }

  v8 = v6;
  [v6 appendFormat:@"%@", v7];
  [(APSStatusPrinter *)self appendLine:v8];
}

- (void)appendDescription:(id)description enabledValue:(BOOL)value
{
  valueCopy = value;
  v6 = [(APSStatusPrinter *)self lineWithDescription:description];
  v7 = @"Disabled";
  if (valueCopy)
  {
    v7 = @"Enabled";
  }

  v8 = v6;
  [v6 appendFormat:@"%@", v7];
  [(APSStatusPrinter *)self appendLine:v8];
}

- (void)appendDescription:(id)description dateValue:(id)value
{
  valueCopy = value;
  v8 = [(APSStatusPrinter *)self lineWithDescription:description];
  v7 = [APSDatePrinter dateStringFromDate:valueCopy];

  [v8 appendFormat:@"%@", v7];
  [(APSStatusPrinter *)self appendLine:v8];
}

- (void)appendDescription:(id)description timeIntervalValue:(double)value
{
  v7 = [(APSStatusPrinter *)self lineWithDescription:description];
  v6 = [APSDatePrinter dateStringFromInterval:value];
  [v7 appendFormat:@"%@", v6];

  [(APSStatusPrinter *)self appendLine:v7];
}

- (void)appendDescription:(id)description longLongValue:(int64_t)value
{
  v6 = [(APSStatusPrinter *)self lineWithDescription:description];
  [v6 appendFormat:@"%lld", value];
  [(APSStatusPrinter *)self appendLine:v6];
}

- (void)appendDescription:(id)description unsignedLongLongValue:(unint64_t)value
{
  v6 = [(APSStatusPrinter *)self lineWithDescription:description];
  [v6 appendFormat:@"%llu", value];
  [(APSStatusPrinter *)self appendLine:v6];
}

- (void)appendDescription:(id)description successRateWithSuccessCount:(unint64_t)count failureCount:(unint64_t)failureCount
{
  descriptionCopy = description;
  v8 = failureCount + count;
  if (__CFADD__(failureCount, count))
  {
    v9 = @"*";
    goto LABEL_17;
  }

  if (v8)
  {
    v10 = count / v8 * 100.0;
    if (count && v10 < 1.0)
    {
      if (v10 < 0.000001)
      {
        v11 = @"< 0.000001%%";
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (failureCount && v10 > 99.499999)
    {
      if (v10 > 99.999999)
      {
        v11 = @"> 99.999999%%";
        goto LABEL_15;
      }

LABEL_14:
      v13 = count / v8 * 100.0;
      v11 = @"%.06f%%";
LABEL_15:
      v9 = [NSString stringWithFormat:v11, *&v13];
      if (v9)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v10 = 0.0;
  }

  v9 = [NSString stringWithFormat:@"%.0f%%", *&v10];
LABEL_17:
  v12 = [(APSStatusPrinter *)self lineWithDescription:descriptionCopy];
  [v12 appendFormat:@"%@ (%llu of %llu)", v9, count, v8];
  [(APSStatusPrinter *)self appendLine:v12];
}

@end
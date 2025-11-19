@interface APSStatusPrinter
+ (id)statusPrinter;
- (APSStatusPrinter)init;
- (id)lineWithDescription:(id)a3;
- (void)appendDescription:(id)a3 BOOLValue:(BOOL)a4;
- (void)appendDescription:(id)a3 dateValue:(id)a4;
- (void)appendDescription:(id)a3 enabledValue:(BOOL)a4;
- (void)appendDescription:(id)a3 longLongValue:(int64_t)a4;
- (void)appendDescription:(id)a3 stringValue:(id)a4;
- (void)appendDescription:(id)a3 successRateWithSuccessCount:(unint64_t)a4 failureCount:(unint64_t)a5;
- (void)appendDescription:(id)a3 timeIntervalValue:(double)a4;
- (void)appendDescription:(id)a3 unsignedLongLongValue:(unint64_t)a4;
- (void)appendLine:(id)a3;
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

- (id)lineWithDescription:(id)a3
{
  v4 = a3;
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

  if (v4)
  {
    v7 = v4;
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

- (void)appendLine:(id)a3
{
  s = self->_s;
  if (!a3)
  {
    a3 = &stru_10018F6A0;
  }

  [(NSMutableString *)s appendString:a3];
  v5 = self->_s;

  [(NSMutableString *)v5 appendString:@"\n"];
}

+ (id)statusPrinter
{
  v2 = objc_alloc_init(APSStatusPrinter);

  return v2;
}

- (void)appendDescription:(id)a3 stringValue:(id)a4
{
  v6 = a4;
  v7 = [(APSStatusPrinter *)self lineWithDescription:a3];
  v9 = v7;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"nil";
  }

  [v7 appendString:v8];

  [(APSStatusPrinter *)self appendLine:v9];
}

- (void)appendDescription:(id)a3 BOOLValue:(BOOL)a4
{
  v4 = a4;
  v6 = [(APSStatusPrinter *)self lineWithDescription:a3];
  v7 = @"No";
  if (v4)
  {
    v7 = @"Yes";
  }

  v8 = v6;
  [v6 appendFormat:@"%@", v7];
  [(APSStatusPrinter *)self appendLine:v8];
}

- (void)appendDescription:(id)a3 enabledValue:(BOOL)a4
{
  v4 = a4;
  v6 = [(APSStatusPrinter *)self lineWithDescription:a3];
  v7 = @"Disabled";
  if (v4)
  {
    v7 = @"Enabled";
  }

  v8 = v6;
  [v6 appendFormat:@"%@", v7];
  [(APSStatusPrinter *)self appendLine:v8];
}

- (void)appendDescription:(id)a3 dateValue:(id)a4
{
  v6 = a4;
  v8 = [(APSStatusPrinter *)self lineWithDescription:a3];
  v7 = [APSDatePrinter dateStringFromDate:v6];

  [v8 appendFormat:@"%@", v7];
  [(APSStatusPrinter *)self appendLine:v8];
}

- (void)appendDescription:(id)a3 timeIntervalValue:(double)a4
{
  v7 = [(APSStatusPrinter *)self lineWithDescription:a3];
  v6 = [APSDatePrinter dateStringFromInterval:a4];
  [v7 appendFormat:@"%@", v6];

  [(APSStatusPrinter *)self appendLine:v7];
}

- (void)appendDescription:(id)a3 longLongValue:(int64_t)a4
{
  v6 = [(APSStatusPrinter *)self lineWithDescription:a3];
  [v6 appendFormat:@"%lld", a4];
  [(APSStatusPrinter *)self appendLine:v6];
}

- (void)appendDescription:(id)a3 unsignedLongLongValue:(unint64_t)a4
{
  v6 = [(APSStatusPrinter *)self lineWithDescription:a3];
  [v6 appendFormat:@"%llu", a4];
  [(APSStatusPrinter *)self appendLine:v6];
}

- (void)appendDescription:(id)a3 successRateWithSuccessCount:(unint64_t)a4 failureCount:(unint64_t)a5
{
  v14 = a3;
  v8 = a5 + a4;
  if (__CFADD__(a5, a4))
  {
    v9 = @"*";
    goto LABEL_17;
  }

  if (v8)
  {
    v10 = a4 / v8 * 100.0;
    if (a4 && v10 < 1.0)
    {
      if (v10 < 0.000001)
      {
        v11 = @"< 0.000001%%";
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (a5 && v10 > 99.499999)
    {
      if (v10 > 99.999999)
      {
        v11 = @"> 99.999999%%";
        goto LABEL_15;
      }

LABEL_14:
      v13 = a4 / v8 * 100.0;
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
  v12 = [(APSStatusPrinter *)self lineWithDescription:v14];
  [v12 appendFormat:@"%@ (%llu of %llu)", v9, a4, v8];
  [(APSStatusPrinter *)self appendLine:v12];
}

@end
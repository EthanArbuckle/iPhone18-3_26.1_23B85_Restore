@interface NSString
+ (id)_meridianStringFormatter;
+ (id)_twelveHourFormatter;
+ (id)attrStringWithValue:(id)a3;
+ (id)attrStringWithValue:(id)a3 unit:(id)a4;
+ (id)goalProgressAttrStringWithCurrentValue:(id)a3 goalValue:(id)a4 unitString:(id)a5;
+ (id)timeIntervalHourMinuteFormatter:(double)a3;
- (BOOL)isEmail;
- (BOOL)isPhoneNumber;
- (id)destinationStripped;
@end

@implementation NSString

+ (id)_meridianStringFormatter
{
  if (qword_1008F99D8 != -1)
  {
    sub_10069C344();
  }

  v3 = qword_1008F99D0;

  return v3;
}

+ (id)_twelveHourFormatter
{
  if (qword_1008F99E8 != -1)
  {
    sub_10069C358();
  }

  v3 = qword_1008F99E0;

  return v3;
}

+ (id)attrStringWithValue:(id)a3
{
  v3 = a3;
  v4 = [UIFont systemFontOfSize:22.0];
  v8 = NSFontAttributeName;
  v9 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [[NSAttributedString alloc] initWithString:v3 attributes:v5];

  return v6;
}

+ (id)timeIntervalHourMinuteFormatter:(double)a3
{
  LODWORD(v3) = vcvtmd_s64_f64(a3 / 60.0);
  v4 = (a3 % 60);
  v5 = [NSNumber numberWithInt:v3];
  v6 = [FIUIFormattingManager stringWithNumber:v5 decimalPrecision:1];

  v7 = [NSNumber numberWithInt:v4];
  v8 = [FIUIFormattingManager stringWithNumber:v7 decimalPrecision:1];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"HR" value:&stru_1008680E8 table:@"Localizable"];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"MIN" value:&stru_1008680E8 table:@"Localizable"];

  v17 = [NSString stringWithFormat:@"%@ %@ %@ %@", v6, v10, v8, v12];
  v13 = [[NSMutableAttributedString alloc] initWithString:v17];
  v14 = [UIFont systemFontOfSize:18.0];
  v15 = [UIFont systemFontOfSize:22.0];
  [v13 addAttribute:NSFontAttributeName value:v15 range:{0, objc_msgSend(v6, "length")}];
  [v13 addAttribute:NSFontAttributeName value:v14 range:{objc_msgSend(v6, "length") + 1, objc_msgSend(v10, "length")}];
  [v13 addAttribute:NSFontAttributeName value:v15 range:{objc_msgSend(v10, "length") + objc_msgSend(v6, "length") + 2, objc_msgSend(v8, "length")}];
  [v13 addAttribute:NSFontAttributeName value:v14 range:{objc_msgSend(v6, "length") + objc_msgSend(v8, "length") + objc_msgSend(v10, "length") + 3, objc_msgSend(v12, "length")}];

  return v13;
}

+ (id)attrStringWithValue:(id)a3 unit:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSMutableAttributedString alloc];
  v8 = [NSString stringWithFormat:@"%@%@", v6, v5];
  v9 = [v7 initWithString:v8];

  v10 = [UIFont systemFontOfSize:22.0];
  [v9 addAttribute:NSFontAttributeName value:v10 range:{0, objc_msgSend(v6, "length")}];

  v11 = [UIFont systemFontOfSize:18.0];
  v12 = [v6 length];

  v13 = [v5 length];
  [v9 addAttribute:NSFontAttributeName value:v11 range:{v12, v13}];

  return v9;
}

+ (id)goalProgressAttrStringWithCurrentValue:(id)a3 goalValue:(id)a4 unitString:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [FIUIFormattingManager stringWithNumber:a3 decimalPrecision:1];
  v11 = [FIUIFormattingManager stringWithNumber:v9 decimalPrecision:1];

  v12 = [NSString stringWithFormat:@"%@/%@", v10, v11];
  v13 = [a1 attrStringWithValue:v12 unit:v8];

  return v13;
}

- (BOOL)isPhoneNumber
{
  v3 = +[NSMutableCharacterSet decimalDigitCharacterSet];
  [v3 addCharactersInString:@"+()-"];
  v4 = +[NSCharacterSet controlCharacterSet];
  [v3 formUnionWithCharacterSet:v4];

  v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  [v3 formUnionWithCharacterSet:v5];

  v6 = [(NSString *)self componentsSeparatedByCharactersInSet:v3];
  v7 = [v6 componentsJoinedByString:&stru_1008680E8];

  LOBYTE(v6) = [v7 length] == 0;
  return v6;
}

- (BOOL)isEmail
{
  if (qword_1008F9AA8 != -1)
  {
    sub_10069C998();
  }

  v3 = qword_1008F9AA0;

  return [v3 evaluateWithObject:self];
}

- (id)destinationStripped
{
  v3 = +[NSMutableCharacterSet whitespaceAndNewlineCharacterSet];
  v4 = +[NSCharacterSet controlCharacterSet];
  [v3 formUnionWithCharacterSet:v4];

  [v3 addCharactersInString:@"\uFFFC"];
  v5 = [(NSString *)self stringByTrimmingCharactersInSet:v3];

  return v5;
}

@end
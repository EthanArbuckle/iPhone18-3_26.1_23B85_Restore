@interface CRLDecimalFormatter
- (BOOL)getValueFromString:(id)a3 rangePtr:(_NSRange *)a4 valuePtr:(double *)a5;
- (CRLDecimalFormatter)initWithLocale:(id)a3 style:(int64_t)a4;
- (_NSRange)crl_rangeOfNumericValueInString:(id)a3;
@end

@implementation CRLDecimalFormatter

- (CRLDecimalFormatter)initWithLocale:(id)a3 style:(int64_t)a4
{
  v11.receiver = self;
  v11.super_class = CRLDecimalFormatter;
  v4 = [(CRLDecimalFormatter *)&v11 init:a3];
  v5 = v4;
  if (v4)
  {
    format = v4->_format;
    v4->_format = @"#.##";

    v5->_useGroupingSeparator = 1;
    *&v5->_minIntegerDigits = xmmword_101465210;
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = @"USD";

    currencySymbol = v5->_currencySymbol;
    v5->_currencySymbol = @"$";

    exponentSymbol = v5->_exponentSymbol;
    v5->_exponentSymbol = @"E";
  }

  return v5;
}

- (BOOL)getValueFromString:(id)a3 rangePtr:(_NSRange *)a4 valuePtr:(double *)a5
{
  v7 = a3;
  v8 = +[CRLLocale preferredLocale];
  v9 = [CRLNumberParser numberValueFromString:v7 locale:v8 outDoubleValue:a5];

  if (a4)
  {
    v10 = [v7 length];
    a4->location = 0;
    a4->length = v10;
  }

  return v9;
}

- (_NSRange)crl_rangeOfNumericValueInString:(id)a3
{
  v3 = sub_101240710(self, a2, a3, sub_10123FBB8);
  result.length = v4;
  result.location = v3;
  return result;
}

@end
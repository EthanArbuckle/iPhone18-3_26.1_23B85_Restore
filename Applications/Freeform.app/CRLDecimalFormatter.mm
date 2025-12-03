@interface CRLDecimalFormatter
- (BOOL)getValueFromString:(id)string rangePtr:(_NSRange *)ptr valuePtr:(double *)valuePtr;
- (CRLDecimalFormatter)initWithLocale:(id)locale style:(int64_t)style;
- (_NSRange)crl_rangeOfNumericValueInString:(id)string;
@end

@implementation CRLDecimalFormatter

- (CRLDecimalFormatter)initWithLocale:(id)locale style:(int64_t)style
{
  v11.receiver = self;
  v11.super_class = CRLDecimalFormatter;
  v4 = [(CRLDecimalFormatter *)&v11 init:locale];
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

- (BOOL)getValueFromString:(id)string rangePtr:(_NSRange *)ptr valuePtr:(double *)valuePtr
{
  stringCopy = string;
  v8 = +[CRLLocale preferredLocale];
  v9 = [CRLNumberParser numberValueFromString:stringCopy locale:v8 outDoubleValue:valuePtr];

  if (ptr)
  {
    v10 = [stringCopy length];
    ptr->location = 0;
    ptr->length = v10;
  }

  return v9;
}

- (_NSRange)crl_rangeOfNumericValueInString:(id)string
{
  v3 = sub_101240710(self, a2, string, sub_10123FBB8);
  result.length = v4;
  result.location = v3;
  return result;
}

@end
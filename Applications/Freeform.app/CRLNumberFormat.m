@interface CRLNumberFormat
- (id)decimalFormatterForLocale:(id)a3;
@end

@implementation CRLNumberFormat

- (id)decimalFormatterForLocale:(id)a3
{
  v3 = a3;
  v4 = [[CRLDecimalFormatter alloc] initWithLocale:v3 style:1];

  return v4;
}

@end
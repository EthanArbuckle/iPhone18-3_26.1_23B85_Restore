@interface CRLNumberFormat
- (id)decimalFormatterForLocale:(id)locale;
@end

@implementation CRLNumberFormat

- (id)decimalFormatterForLocale:(id)locale
{
  localeCopy = locale;
  v4 = [[CRLDecimalFormatter alloc] initWithLocale:localeCopy style:1];

  return v4;
}

@end
@interface CRLCurrencyFormat
- (id)decimalFormatterForLocale:(id)locale;
@end

@implementation CRLCurrencyFormat

- (id)decimalFormatterForLocale:(id)locale
{
  localeCopy = locale;
  v4 = [[CRLDecimalFormatter alloc] initWithLocale:localeCopy style:2];

  return v4;
}

@end
@interface _NSPersonNameComponentsStyleFormatterShortVariantGeneral
- (id)fallbackStyleFormatter;
@end

@implementation _NSPersonNameComponentsStyleFormatterShortVariantGeneral

- (id)fallbackStyleFormatter
{
  v2 = [[_NSPersonNameComponentsStyleFormatterShortNameSimpleFallback alloc] initWithMasterFormatter:[(_NSPersonNameComponentsStyleFormatter *)self masterFormatter]];

  return v2;
}

@end
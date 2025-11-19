@interface AFRaiseToSpeakUnsupportedLocales
@end

@implementation AFRaiseToSpeakUnsupportedLocales

void ___AFRaiseToSpeakUnsupportedLocales_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"vi-VI", @"vi-VN", @"pt-PT", 0}];
  v1 = _AFRaiseToSpeakUnsupportedLocales_rtsUnsupportedLocales;
  _AFRaiseToSpeakUnsupportedLocales_rtsUnsupportedLocales = v0;
}

@end
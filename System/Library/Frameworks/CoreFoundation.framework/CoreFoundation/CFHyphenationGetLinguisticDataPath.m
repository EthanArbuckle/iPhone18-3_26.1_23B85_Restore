@interface CFHyphenationGetLinguisticDataPath
@end

@implementation CFHyphenationGetLinguisticDataPath

void ___CFHyphenationGetLinguisticDataPath_block_invoke()
{
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  CFStringAppend(Mutable, @"/System/Library/LinguisticData/");
  _CFDefaultHyphenationLinguisticDataPath = Mutable;
}

@end
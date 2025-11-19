@interface WKAttributedStringWebViewCache
@end

@implementation WKAttributedStringWebViewCache

uint64_t __58___WKAttributedStringWebViewCache_retrieveOrCreateWebView__block_invoke(WTF::MemoryPressureHandler *a1)
{
  v2 = WTF::MemoryPressureHandler::singleton(a1);
  v3 = *(a1 + 4);
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F10F4728;
  v4[1] = v3;
  result = *(v2 + 48);
  *(v2 + 48) = v4;
  if (result)
  {
    v6 = *(*result + 8);

    return v6();
  }

  return result;
}

@end
@interface APConnectivityHelperHandleDynamicStoreNetworkEntityValueChange
@end

@implementation APConnectivityHelperHandleDynamicStoreNetworkEntityValueChange

void ___APConnectivityHelperHandleDynamicStoreNetworkEntityValueChange_block_invoke(void *a1, const __CFString *a2)
{
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, a2, @"/");
  if (CFArrayGetCount(ArrayBySeparatingStrings) >= 2)
  {
    Count = CFArrayGetCount(ArrayBySeparatingStrings);
    CFArrayGetValueAtIndex(ArrayBySeparatingStrings, Count - 1);
    v5 = CFArrayGetCount(ArrayBySeparatingStrings);
    CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v5 - 2);
    v6 = *(a1[4] + 168);
    v7 = a1[5];
    v8 = a1[6];
    CFDictionaryApplyBlock();
  }

  if (ArrayBySeparatingStrings)
  {
    CFRelease(ArrayBySeparatingStrings);
  }
}

CFIndex ___APConnectivityHelperHandleDynamicStoreNetworkEntityValueChange_block_invoke_2(void *a1, CFStringRef theString, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = CFStringFind(theString, a1[4], 0xCuLL).location;
  if (result != -1)
  {
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];
    v8 = a1[8];

    return a3(v5, v6, v7, v8);
  }

  return result;
}

@end
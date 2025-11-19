@interface CFBundleCopyLimitedInfoPlistKeys
@end

@implementation CFBundleCopyLimitedInfoPlistKeys

void ___CFBundleCopyLimitedInfoPlistKeys_block_invoke_2(CFDictionaryRef *a1, CFArrayRef theArray)
{
  if (CFArrayGetCount(theArray) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    Value = CFDictionaryGetValue(a1[4], ValueAtIndex);
    if (Value && (v6 = Value, !CFEqual(ValueAtIndex, Value)))
    {
      MutableCopy = CFArrayCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, theArray);
      CFArraySetValueAtIndex(MutableCopy, 0, v6);
      CFSetAddValue(a1[5], MutableCopy);
      CFRelease(MutableCopy);
    }

    else
    {
      CFSetAddValue(a1[5], theArray);
    }

    v8 = a1[6];

    CFSetAddValue(v8, ValueAtIndex);
  }
}

@end
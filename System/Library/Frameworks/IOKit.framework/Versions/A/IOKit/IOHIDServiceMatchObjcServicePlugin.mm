@interface IOHIDServiceMatchObjcServicePlugin
@end

@implementation IOHIDServiceMatchObjcServicePlugin

CFTypeID ____IOHIDServiceMatchObjcServicePlugin_block_invoke(uint64_t a1, int a2, CFTypeRef cf)
{
  v5 = CFGetTypeID(cf);
  result = CFDictionaryGetTypeID();
  if (v5 == result)
  {
    v7 = *(a1 + 40);
    v8 = (*(*(a1 + 32) + 8) + 24);

    return IOServiceMatchPropertyTable(v7, cf, v8);
  }

  return result;
}

@end
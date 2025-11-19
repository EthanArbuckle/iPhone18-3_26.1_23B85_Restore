@interface IOHIDServiceCopyPropertiesForClient
@end

@implementation IOHIDServiceCopyPropertiesForClient

void ___IOHIDServiceCopyPropertiesForClient_block_invoke(uint64_t a1, const void *a2)
{
  v4 = _IOHIDServiceCopyPropertyForClient(*(a1 + 32), a2, *(a1 + 40));
  if (v4)
  {
    v5 = v4;
    CFDictionarySetValue(*(a1 + 48), a2, v4);

    CFRelease(v5);
  }
}

@end
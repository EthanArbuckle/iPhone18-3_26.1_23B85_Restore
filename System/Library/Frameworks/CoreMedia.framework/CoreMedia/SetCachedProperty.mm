@interface SetCachedProperty
@end

@implementation SetCachedProperty

void __remoteXPCEndpointManager_SetCachedProperty_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 24);
  v4 = a1[6];
  if (v2)
  {
    CFDictionarySetValue(v3, v4, v2);
  }

  else
  {
    CFDictionaryRemoveValue(v3, v4);
  }
}

@end
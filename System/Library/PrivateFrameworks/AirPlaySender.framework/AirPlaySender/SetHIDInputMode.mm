@interface SetHIDInputMode
@end

@implementation SetHIDInputMode

void __carEndpoint_SetHIDInputMode_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 296);
  if (v2)
  {
    if (APHIDClientSetInputModeForUUID(v2, *(a1 + 40), *(a1 + 48)) || (Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) == 0)
    {
      APSLogErrorAt();
    }

    else
    {
      v4 = Mutable;
      CFDictionarySetValue(Mutable, @"uuid", *(a1 + 40));
      CFDictionarySetValue(v4, @"hidInputMode", *(a1 + 48));
      if (carEndpoint_sendCommandInternal(*(a1 + 56), @"hidSetInputMode", v4, 0, 0))
      {
        APSLogErrorAt();
      }

      CFRelease(v4);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 56);

  CFRelease(v7);
}

@end
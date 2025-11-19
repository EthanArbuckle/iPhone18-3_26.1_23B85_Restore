@interface IOHIDCopyServiceClientInfo
@end

@implementation IOHIDCopyServiceClientInfo

void ___IOHIDCopyServiceClientInfo_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    v7 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v7)
    {
      v8 = v7;
      RegistryID = IOHIDServiceGetRegistryID(a2);
      if (RegistryID)
      {
        CFDictionaryAddValue(v6, @"ServiceID", RegistryID);
      }

      v10 = IOHIDServiceCopyProperty(a2, @"DeviceUsagePairs");
      if (v10)
      {
        v11 = v10;
        CFDictionaryAddValue(v8, @"DeviceUsagePairs", v10);
        CFRelease(v11);
      }

      v12 = IOHIDServiceCopyProperty(a2, @"PrimaryUsagePage");
      if (v12)
      {
        v13 = v12;
        CFDictionaryAddValue(v8, @"PrimaryUsagePage", v12);
        CFRelease(v13);
      }

      v14 = IOHIDServiceCopyProperty(a2, @"PrimaryUsage");
      if (v14)
      {
        v15 = v14;
        CFDictionaryAddValue(v8, @"PrimaryUsage", v14);
        CFRelease(v15);
      }

      CFDictionaryAddValue(v6, @"Properties", v8);
      CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v6);
      CFRelease(v8);
    }

    CFRelease(v6);
  }
}

@end
@interface CopyCUDNSNamesForDeviceID
@end

@implementation CopyCUDNSNamesForDeviceID

void __browser_CopyCUDNSNamesForDeviceID_block_invoke(void *a1)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v1 = a1[5];
  v2 = a1[7];
  valuePtr = a1[6];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 64);
  v22[0] = @"RAOPBonjourInfo";
  v22[1] = v4;
  v22[2] = @"AirPlayP2PBonjourInfo";
  if (!v2)
  {
    APSLogErrorAt();
    v18 = -6705;
    goto LABEL_14;
  }

  v5 = DerivedStorage;
  if (*(DerivedStorage + 245))
  {
    v18 = -6723;
    goto LABEL_14;
  }

  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    APSLogErrorAt();
    v18 = -6728;
    goto LABEL_14;
  }

  v8 = Mutable;
  v9 = CFGetAllocator(v1);
  v10 = CFNumberCreate(v9, kCFNumberSInt64Type, &valuePtr);
  if (!v10)
  {
    APSLogErrorAt();
    v18 = -6728;
    goto LABEL_20;
  }

  Value = CFDictionaryGetValue(*(v5 + 216), v10);
  if (!Value)
  {
    v18 = -6727;
LABEL_20:
    CFRelease(v8);
    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v12 = Value;
  v13 = 0;
  v14 = *MEMORY[0x277CBECF0];
  do
  {
    if (CFDictionaryGetValue(v12, v22[v13]))
    {
      v15 = BonjourDevice_CopyDNSNames();
      if (v15)
      {
        v16 = CFStringCreateWithCStringNoCopy(v6, v15, 0x8000100u, v14);
        if (v16)
        {
          v17 = v16;
          CFArrayAppendValue(v8, v16);
          CFRelease(v17);
        }
      }
    }

    ++v13;
  }

  while (v13 != 3);
  v18 = 0;
  *v2 = v8;
LABEL_13:
  CFRelease(v10);
LABEL_14:
  OUTLINED_FUNCTION_8_1();
  *(v19 + 24) = v18;
  v20 = *MEMORY[0x277D85DE8];
}

@end
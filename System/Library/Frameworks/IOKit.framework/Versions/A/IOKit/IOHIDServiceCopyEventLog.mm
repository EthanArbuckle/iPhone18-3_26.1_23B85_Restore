@interface IOHIDServiceCopyEventLog
@end

@implementation IOHIDServiceCopyEventLog

void ___IOHIDServiceCopyEventLog_block_invoke(uint64_t a1, uint64_t a2, void *cf)
{
  v6 = CFGetAllocator(cf);
  Mutable = CFDictionaryCreateMutable(v6, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return;
  }

  v8 = Mutable;
  _IOHIDDictionaryAddSInt32(Mutable, @"EventType", *a2);
  v9 = CFGetAllocator(*(a1 + 32));
  v10 = _IOHIDCreateTimeString(v9, (a2 + 8));
  if (v10)
  {
    v11 = v10;
    CFDictionaryAddValue(v8, @"EventTime", v10);
    CFRelease(v11);
  }

  v12 = *(a2 + 24);
  if (v12)
  {
    if (*a2 == 1)
    {
      _IOHIDDictionaryAddSInt32(v8, @"UsagePage", WORD1(v12));
      _IOHIDDictionaryAddSInt32(v8, @"Usage", v12);
      v16 = @"Length";
      v17 = v8;
      v15 = HIDWORD(v12);
    }

    else
    {
      if (*a2 != 3)
      {
        goto LABEL_17;
      }

      _IOHIDDictionaryAddSInt32(v8, @"Down", v12 & 1);
      _IOHIDDictionaryAddSInt32(v8, @"PressCount", (v12 >> 2));
      _IOHIDDictionaryAddSInt32(v8, @"LongPress", (v12 >> 1) & 1);
      v13 = @"ended";
      if ((v12 & 0x1000) == 0)
      {
        v13 = &stru_1F0B93200;
      }

      v14 = (v12 & 0x400) != 0 ? @"begin" : v13;
      CFDictionaryAddValue(v8, @"Phase", v14);
      if ((v12 & 0x3FFFC000000) == 0)
      {
        goto LABEL_17;
      }

      _IOHIDDictionaryAddSInt32(v8, @"Usage", (v12 >> 26));
      LODWORD(v15) = (v12 >> 42);
      v16 = @"UsagePage";
      v17 = v8;
    }

    _IOHIDDictionaryAddSInt32(v17, v16, v15);
  }

LABEL_17:
  CFArrayAppendValue(cf, v8);

  CFRelease(v8);
}

@end
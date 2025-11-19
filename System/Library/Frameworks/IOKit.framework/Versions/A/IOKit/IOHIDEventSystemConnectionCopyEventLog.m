@interface IOHIDEventSystemConnectionCopyEventLog
@end

@implementation IOHIDEventSystemConnectionCopyEventLog

void ___IOHIDEventSystemConnectionCopyEventLog_block_invoke(uint64_t a1, uint64_t a2, void *cf)
{
  v6 = CFGetAllocator(cf);
  Mutable = CFDictionaryCreateMutable(v6, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
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

    CFArrayAppendValue(cf, v8);

    CFRelease(v8);
  }
}

@end
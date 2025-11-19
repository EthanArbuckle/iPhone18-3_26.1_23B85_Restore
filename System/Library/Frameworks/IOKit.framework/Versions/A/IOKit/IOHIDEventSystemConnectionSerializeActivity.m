@interface IOHIDEventSystemConnectionSerializeActivity
@end

@implementation IOHIDEventSystemConnectionSerializeActivity

void ____IOHIDEventSystemConnectionSerializeActivity_block_invoke(uint64_t a1, uint64_t a2, void *cf)
{
  v6 = CFGetAllocator(cf);
  Mutable = CFDictionaryCreateMutable(v6, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v8 = Mutable;
    _IOHIDDictionaryAddSInt32(Mutable, @"ActivityState", *a2);
    v9 = CFGetAllocator(*(a1 + 32));
    v10 = _IOHIDCreateTimeString(v9, (a2 + 8));
    if (v10)
    {
      v11 = v10;
      CFDictionaryAddValue(v8, @"ActivityTime", v10);
      CFRelease(v11);
    }

    v12 = *(a2 + 24);
    if (v12)
    {
      _IOHIDDictionaryAddSInt64(v8, @"ServiceID", v12);
    }

    v13 = *(a2 + 32);
    if (v13)
    {
      _IOHIDDictionaryAddSInt32(v8, @"EventType", v13);
    }

    CFArrayAppendValue(cf, v8);

    CFRelease(v8);
  }
}

@end
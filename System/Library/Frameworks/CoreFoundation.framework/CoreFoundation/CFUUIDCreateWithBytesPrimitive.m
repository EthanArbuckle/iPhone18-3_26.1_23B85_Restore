@interface CFUUIDCreateWithBytesPrimitive
@end

@implementation CFUUIDCreateWithBytesPrimitive

void ____CFUUIDCreateWithBytesPrimitive_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *MEMORY[0x1E69E9840];
  Value = _uniquedUUIDs;
  if (_uniquedUUIDs)
  {
    Value = CFDictionaryGetValue(_uniquedUUIDs, (a1 + 48));
  }

  *(*(*(a1 + 32) + 8) + 24) = Value;
  v10 = *(*(*(a1 + 32) + 8) + 24);
  if (v10)
  {
    if (!*(a1 + 64))
    {
      CFRetain(v10);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = _CFRuntimeCreateInstance(*(a1 + 40), 0x22uLL, 16, 0, a5, a6, a7, a8);
    v11 = *(*(*(a1 + 32) + 8) + 24);
    if (!v11)
    {
      goto LABEL_12;
    }

    *(v11 + 16) = *(a1 + 48);
    v12 = *(*(*(a1 + 32) + 8) + 24);
    keyCallBacks = *byte_1EF066C08;
    v15 = *byte_1EF066C38;
    v13 = _uniquedUUIDs;
    if (!_uniquedUUIDs)
    {
      v13 = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &keyCallBacks, &v15);
      _uniquedUUIDs = v13;
    }

    CFDictionarySetValue(v13, (v12 + 16), v12);
  }

  if (*(a1 + 64))
  {
    __CFRuntimeSetImmortal(*(*(*(a1 + 32) + 8) + 24));
  }

LABEL_12:
  v14 = *MEMORY[0x1E69E9840];
}

@end
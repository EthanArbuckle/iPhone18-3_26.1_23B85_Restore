@interface CFStringGetInputIdentifierFormatterMappingFromDescriptor
@end

@implementation CFStringGetInputIdentifierFormatterMappingFromDescriptor

void ___CFStringGetInputIdentifierFormatterMappingFromDescriptor_block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(*(a1 + 32));
  _CFStringGetInputIdentifierFormatterMappingFromDescriptor_localizedStringFormattingFamilyInfo = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, Count, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v3 = CFDictionaryGetCount(*(a1 + 32));
  if (((v3 >> 59) & 0xF) != 0)
  {
    v19 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", 2 * v3);
    v20 = [NSException exceptionWithName:@"NSGenericException" reason:v19 userInfo:0];
    CFRelease(v19);
    objc_exception_throw(v20);
  }

  v5 = v3;
  if (v3)
  {
    v6 = 2 * v3;
  }

  else
  {
    v6 = 1;
  }

  v7 = MEMORY[0x1EEE9AC00](v6, v4);
  v9 = (&v21 - v8);
  v23[0] = 0;
  if (v10 >= 0x101)
  {
    v9 = _CFCreateArrayStorage(v7, 0, v23);
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  CFDictionaryGetKeysAndValues(*(a1 + 32), v9, &v9[v5]);
  if (v5 >= 1)
  {
    v12 = v5;
    do
    {
      v13 = *v9;
      v14 = v9[v5];
      v22 = 0;
      v15 = __CFStringCopyCharSetWithPattern(v14, &v22);
      v16 = v22;
      if (v22)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        CFDictionarySetValue(_CFStringGetInputIdentifierFormatterMappingFromDescriptor_localizedStringFormattingFamilyInfo, v13, v22);
        CFRelease(v16);
      }

      ++v9;
      --v12;
    }

    while (v12);
  }

  free(v11);
  v18 = *MEMORY[0x1E69E9840];
}

@end
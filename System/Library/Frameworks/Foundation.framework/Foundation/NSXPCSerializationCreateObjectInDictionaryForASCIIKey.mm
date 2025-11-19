@interface NSXPCSerializationCreateObjectInDictionaryForASCIIKey
@end

@implementation NSXPCSerializationCreateObjectInDictionaryForASCIIKey

uint64_t ___NSXPCSerializationCreateObjectInDictionaryForASCIIKey_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __s1[1] = *MEMORY[0x1E69E9840];
  if (*(a2 + 8) != 112)
  {
    return 1;
  }

  __s1[0] = 0;
  __n = 0;
  if (!_getASCIIStringAtMarker(*(a1 + 40), __s1, *a2, &__n, &v8))
  {
    return 1;
  }

  if (__n != *(a1 + 48))
  {
    return 1;
  }

  result = memcmp(__s1[0], *(a1 + 56), __n);
  if (result)
  {
    return 1;
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v6 = *(a1 + 64);
  *v6 = 0;
  *(v6 + 8) = 255;
  *v6 = *a3;
  *(v6 + 8) = *(a3 + 8);
  return result;
}

@end
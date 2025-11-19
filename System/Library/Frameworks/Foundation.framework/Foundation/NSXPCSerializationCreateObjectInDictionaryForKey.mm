@interface NSXPCSerializationCreateObjectInDictionaryForKey
@end

@implementation NSXPCSerializationCreateObjectInDictionaryForKey

uint64_t ___NSXPCSerializationCreateObjectInDictionaryForKey_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __s1[1] = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  if (v6 == 96)
  {
    v9 = _NSXPCSerializationStringForObject(*(a1 + 48), a2);
    if (v9 && [*(a1 + 32) isEqualToString:v9])
    {
      goto LABEL_10;
    }
  }

  else if (v6 == 112)
  {
    __s1[0] = 0;
    __n = 0;
    v7 = *(a1 + 48);
    if (_getASCIIStringAtMarker(v7, __s1, *a2, &__n, &v13))
    {
      v8 = *(a1 + 56);
      if (v8)
      {
        if (__n == *(a1 + 64) && !memcmp(__s1[0], v8, __n))
        {
          goto LABEL_10;
        }
      }

      else if ([*(a1 + 32) isEqualToString:{_NSXPCSerializationStringForObject(v7, a2)}])
      {
LABEL_10:
        result = 0;
        *(*(*(a1 + 40) + 8) + 24) = 1;
        v11 = *(a1 + 72);
        *v11 = 0;
        *(v11 + 8) = 255;
        *v11 = *a3;
        *(v11 + 8) = *(a3 + 8);
        return result;
      }
    }
  }

  return 1;
}

@end
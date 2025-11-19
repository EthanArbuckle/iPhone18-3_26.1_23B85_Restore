@interface NSXPCSerializationCreateObjectInDictionaryForGenericKey
@end

@implementation NSXPCSerializationCreateObjectInDictionaryForGenericKey

uint64_t ___NSXPCSerializationCreateObjectInDictionaryForGenericKey_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) == 224)
  {
    v4 = *(a1[4] + 8);
    v5 = *(v4 + 24);
    if (a1[6] == v5)
    {
      result = 0;
      *(*(a1[5] + 8) + 24) = 1;
      v7 = a1[7];
      *v7 = 0;
      *(v7 + 8) = 255;
      *v7 = *a3;
      *(v7 + 8) = *(a3 + 8);
      return result;
    }

    *(v4 + 24) = v5 + 1;
  }

  return 1;
}

@end
@interface NSCollectionHandleConcurrentEnumerationIfSpecified
@end

@implementation NSCollectionHandleConcurrentEnumerationIfSpecified

void *____NSCollectionHandleConcurrentEnumerationIfSpecified_block_invoke(void *result)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = atomic_load((*(result[5] + 8) + 24));
  if ((v1 & 1) == 0)
  {
    v2 = result;
    if (*(result + 48) == 1)
    {
      v3 = _CFAutoreleasePoolPush();
      (*(v2[4] + 16))();
      result = _CFAutoreleasePoolPop(v3);
    }

    else
    {
      v4 = result[4];
      result = (*(v2[4] + 16))();
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

@end
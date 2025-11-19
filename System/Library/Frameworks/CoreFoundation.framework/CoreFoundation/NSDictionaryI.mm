@interface NSDictionaryI
@end

@implementation NSDictionaryI

void ____NSDictionaryI_new_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[5];
  v5 = a1[6];
  v7 = [a2 hash] % v5;
  if (v5 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5;
  }

  v9 = 2 * v7;
  v10 = *(v6 + 16 * v7);
  if (v10)
  {
    v11 = v10 == a2;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v12 = 1;
    v13 = 1;
    do
    {
      if ([v10 isEqual:a2])
      {
        break;
      }

      v13 = v12 < v5;
      if (v8 == v12)
      {
        break;
      }

      v14 = v7 + 1;
      v15 = v7 + 1 >= v5 ? v5 : 0;
      v7 = v14 - v15;
      v9 = 2 * (v14 - v15);
      v10 = *(v6 + 16 * (v14 - v15));
      ++v12;
    }

    while (v10 && v10 != a2);
  }

  if (v13)
  {
    v17 = v9;
  }

  else
  {
    v17 = 2 * v5;
  }

  v18 = a1[5];
  v19 = (v18 + 8 * v17);
  if (*v19)
  {
    *(a1[4] + 8) = *(a1[4] + 8) & 0xFE00000000000000 | (*(a1[4] + 8) - 1) & 0x1FFFFFFFFFFFFFFLL;
    v20 = a1[7];
    if ((v20 & 8) != 0)
    {

      v20 = a1[7];
    }

    if ((v20 & 4) != 0)
    {
    }

    return;
  }

  v21 = a1[7];
  if ((v21 & 8) == 0)
  {
    if (v21)
    {
      *(a1[5] + 8 * v17) = [a2 copyWithZone:0];
      if (!*(a1[5] + 8 * v17))
      {
        v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSDictionary: -copyWithZone: for key %@ returned nil", 0);
        v25 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24), 0];
        objc_exception_throw(v25);
      }

      goto LABEL_37;
    }

    if (a2 >= 1)
    {
      v22 = a2;
      v18 = a1[5];
    }

    v19 = (v18 + 8 * v17);
  }

  *v19 = a2;
LABEL_37:
  *(a1[5] + 8 * v17 + 8) = a3;
  if (a3 >= 1 && (a1[7] & 4) == 0)
  {

    v23 = a3;
  }
}

void *__65____NSDictionaryI_enumerateKeysAndObjectsWithOptions_usingBlock___block_invoke(void *result, uint64_t a2)
{
  if (*(result[4] + 16 + 16 * a2))
  {
    v2 = result;
    v3 = 2 * a2;
    v4 = _CFAutoreleasePoolPush();
    v5 = *(v2[4] + 16 + 8 * v3 + 8);
    __NSDICTIONARY_IS_CALLING_OUT_TO_A_BLOCK__(v2[5]);

    return _CFAutoreleasePoolPop(v4);
  }

  return result;
}

void *__53____NSDictionaryI_keyOfEntryWithOptions_passingTest___block_invoke(void *result, uint64_t a2, _BYTE *a3)
{
  v3 = result[4] + 16;
  v4 = *(v3 + 16 * a2);
  if (v4)
  {
    v6 = result;
    v7 = *(v3 + 16 * a2 + 8);
    v8 = _CFAutoreleasePoolPush();
    if ((*(v6[5] + 16))())
    {
      atomic_store(v4, (*(v6[6] + 8) + 24));
      *a3 = 1;
    }

    return _CFAutoreleasePoolPop(v8);
  }

  return result;
}

void *__56____NSDictionaryI_keysOfEntriesWithOptions_passingTest___block_invoke(void *result, uint64_t a2)
{
  v2 = result[4] + 16;
  v3 = *(v2 + 16 * a2);
  if (v3)
  {
    v4 = result;
    v5 = *(v2 + 16 * a2 + 8);
    v6 = _CFAutoreleasePoolPush();
    if ((*(v4[6] + 16))())
    {
      os_unfair_lock_lock(v4[7]);
      [v4[5] addObject:v3];
      os_unfair_lock_unlock(v4[7]);
    }

    return _CFAutoreleasePoolPop(v6);
  }

  return result;
}

@end
@interface NSData(HKUUID)
- (uint64_t)hk_enumerateUUIDsWithError:()HKUUID block:;
- (unint64_t)hk_countOfUUIDs;
- (void)hk_enumerateUUIDBytesUsingBlock:()HKUUID;
- (void)hk_enumerateUUIDsUsingBlock:()HKUUID;
@end

@implementation NSData(HKUUID)

- (void)hk_enumerateUUIDsUsingBlock:()HKUUID
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__NSData_HKUUID__hk_enumerateUUIDsUsingBlock___block_invoke;
  v6[3] = &unk_1E7379DF0;
  v7 = v4;
  v5 = v4;
  [self hk_enumerateUUIDBytesUsingBlock:v6];
}

- (void)hk_enumerateUUIDBytesUsingBlock:()HKUUID
{
  v4 = a3;
  v5 = [self length];
  if ((v5 & 0xF) == 0)
  {
    v6 = v5;
    bytes = [self bytes];
    v10 = 0;
    if (v6 >= 1)
    {
      v8 = bytes;
      v9 = bytes + v6;
      do
      {
        v4[2](v4, v8, &v10);
        if (v10)
        {
          break;
        }

        v8 += 16;
      }

      while (v8 < v9);
    }
  }
}

- (unint64_t)hk_countOfUUIDs
{
  v1 = [self length];
  if ((v1 & 0xF) != 0)
  {
    return 0;
  }

  else
  {
    return v1 >> 4;
  }
}

- (uint64_t)hk_enumerateUUIDsWithError:()HKUUID block:
{
  v6 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__NSData_HKUUID__hk_enumerateUUIDsWithError_block___block_invoke;
  v13[3] = &unk_1E7379E40;
  v15 = &v17;
  v7 = v6;
  v14 = v7;
  v16 = &v23;
  [self hk_enumerateUUIDBytesUsingBlock:v13];
  v8 = v18[5];
  v9 = v8;
  if (v8)
  {
    if (a3)
    {
      v10 = v8;
      *a3 = v9;
    }

    else
    {
      _HKLogDroppedError(v8);
    }
  }

  v11 = *(v24 + 24);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  return v11;
}

@end
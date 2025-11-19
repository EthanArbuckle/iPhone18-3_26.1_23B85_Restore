@interface NSError
@end

@implementation NSError

void __73__NSError_EKAdditions___cal_serializedEntryForKey_value_outKey_outValue___block_invoke(uint64_t a1, SecCertificateRef certificate)
{
  v3 = SecCertificateCopyData(certificate);
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];

    CFRelease(v4);
  }
}

void __48__NSError_EKAdditions__cal_serializableUserInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) containsObject:v5])
  {
    v18 = 0;
    v19 = 0;
    v7 = [MEMORY[0x1E696ABC0] _cal_serializedEntryForKey:v5 value:v6 outKey:&v19 outValue:&v18];
    v8 = v19;
    v9 = v18;
    if (v7)
    {
      v10 = *(*(*(a1 + 48) + 8) + 40);
      if (!v10)
      {
        v11 = [*(a1 + 40) mutableCopy];
        v12 = *(*(a1 + 48) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        v10 = *(*(*(a1 + 48) + 8) + 40);
      }

      [v10 removeObjectForKey:v5];
      if (v8 && v9)
      {
        [*(*(*(a1 + 48) + 8) + 40) setObject:v9 forKeyedSubscript:v8];
      }
    }
  }

  else
  {
    v14 = *(*(*(a1 + 48) + 8) + 40);
    if (!v14)
    {
      v15 = [*(a1 + 40) mutableCopy];
      v16 = *(*(a1 + 48) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      v14 = *(*(*(a1 + 48) + 8) + 40);
    }

    [v14 removeObjectForKey:v5];
  }
}

@end
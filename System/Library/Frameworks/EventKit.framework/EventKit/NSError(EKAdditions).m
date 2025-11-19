@interface NSError(EKAdditions)
+ (BOOL)_cal_serializedEntryForKey:()EKAdditions value:outKey:outValue:;
- (id)cal_serializableError;
- (id)cal_serializableUserInfo;
- (uint64_t)cal_isCertificateError;
- (void)cal_trustInfoCopy;
@end

@implementation NSError(EKAdditions)

- (uint64_t)cal_isCertificateError
{
  v2 = [a1 domain];
  if ([v2 isEqualToString:*MEMORY[0x1E696A978]])
  {
    if ([a1 code] == -1203 || objc_msgSend(a1, "code") == -1201 || objc_msgSend(a1, "code") == -1204)
    {

      return 1;
    }

    v7 = [a1 code];

    if (v7 == -1202)
    {
      return 1;
    }
  }

  else
  {
  }

  v4 = [a1 domain];
  v5 = v4;
  if (v4 == @"kEKAccountErrorDomain")
  {
    v6 = [a1 code];

    if (v6 == 6)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (void)cal_trustInfoCopy
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Deserialization of trust error [%@]", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_cal_serializedEntryForKey:()EKAdditions value:outKey:outValue:
{
  v9 = a3;
  v10 = a4;
  if (![v9 isEqualToString:@"NSErrorPeerCertificateChainKey"])
  {
    if ([v9 isEqualToString:*MEMORY[0x1E696A988]])
    {
      v25 = 0;
      v16 = SecTrustSerialize();
      v17 = v16;
      v15 = v16 != 0;
      if (v16)
      {
        v18 = v16;
        *a6 = v17;
        *a5 = *MEMORY[0x1E6992E68];
      }

      else
      {
        v23 = EKLogHandle;
        if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
        {
          [NSError(EKAdditions) _cal_serializedEntryForKey:v23 value:? outKey:? outValue:?];
        }
      }
    }

    else
    {
      v19 = *MEMORY[0x1E696AA08];
      if (![v9 isEqualToString:*MEMORY[0x1E696AA08]])
      {
        v15 = 0;
        goto LABEL_14;
      }

      v17 = v10;
      v20 = [v17 cal_serializableError];
      v15 = v20 != v17;
      if (v20 != v17)
      {
        v21 = v19;
        *a5 = v19;
        v22 = v20;
        *a6 = v20;
      }
    }

    goto LABEL_14;
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __73__NSError_EKAdditions___cal_serializedEntryForKey_value_outKey_outValue___block_invoke;
  v26[3] = &unk_1E77FE0C0;
  v27 = v11;
  v12 = v11;
  [v10 enumerateObjectsUsingBlock:v26];
  v13 = v9;
  *a5 = v9;
  v14 = v12;
  *a6 = v12;

  v15 = 1;
LABEL_14:

  return v15;
}

- (id)cal_serializableUserInfo
{
  v23[7] = *MEMORY[0x1E69E9840];
  v1 = [a1 userInfo];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  v2 = MEMORY[0x1E695DFD8];
  v3 = *MEMORY[0x1E696A990];
  v23[0] = *MEMORY[0x1E696A980];
  v23[1] = v3;
  v23[2] = *MEMORY[0x1E696A988];
  v23[3] = @"NSErrorPeerCertificateChainKey";
  v4 = *MEMORY[0x1E696A598];
  v23[4] = *MEMORY[0x1E696A578];
  v23[5] = v4;
  v23[6] = *MEMORY[0x1E696AA08];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:7];
  v6 = [v2 setWithArray:v5];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__NSError_EKAdditions__cal_serializableUserInfo__block_invoke;
  v13[3] = &unk_1E77FE0E8;
  v7 = v6;
  v14 = v7;
  v16 = &v17;
  v8 = v1;
  v15 = v8;
  [v8 enumerateKeysAndObjectsUsingBlock:v13];
  v9 = v18[5];
  if (!v9)
  {
    v9 = v8;
  }

  v10 = v9;

  _Block_object_dispose(&v17, 8);
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)cal_serializableError
{
  v2 = [a1 userInfo];
  v3 = [a1 cal_serializableUserInfo];
  if (v2 == v3)
  {
    v6 = a1;
  }

  else
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = [a1 domain];
    v6 = [v4 errorWithDomain:v5 code:objc_msgSend(a1 userInfo:{"code"), v3}];
  }

  return v6;
}

+ (void)_cal_serializedEntryForKey:()EKAdditions value:outKey:outValue:.cold.1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "We were unable to serialize the trust for a certificate error [%@].", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end
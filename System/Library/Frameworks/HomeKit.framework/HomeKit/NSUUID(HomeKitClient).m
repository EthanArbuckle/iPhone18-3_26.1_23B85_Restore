@interface NSUUID(HomeKitClient)
+ (id)hm_deriveUUIDForAssistantFromBaseUUID:()HomeKitClient withSalts:;
+ (id)hm_deriveUUIDFromBaseUUID:()HomeKitClient identifierSalt:withSalts:;
+ (id)hm_deriveUUIDFromBaseUUID:()HomeKitClient withSalts:;
+ (uint64_t)hm_setAssistantIdentifierSalt:()HomeKitClient;
+ (void)hm_setIdentifierSalt:()HomeKitClient;
- (id)hm_convertToData;
@end

@implementation NSUUID(HomeKitClient)

- (id)hm_convertToData
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = 0;
  [a1 getUUIDBytes:v4];
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:16];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

+ (uint64_t)hm_setAssistantIdentifierSalt:()HomeKitClient
{
  v3 = a3;
  v4 = +[HMIdentifierSaltStore sharedIdentifierSaltStore];
  v5 = [v4 assistantIdentifierSalt];

  v6 = +[HMIdentifierSaltStore sharedIdentifierSaltStore];
  v7 = [v3 copy];
  [v6 setAssistantIdentifierSalt:v7];

  LODWORD(v6) = HMFEqualObjects();
  return v6 ^ 1;
}

+ (id)hm_deriveUUIDForAssistantFromBaseUUID:()HomeKitClient withSalts:
{
  v5 = a3;
  v6 = a4;
  v7 = +[HMIdentifierSaltStore sharedIdentifierSaltStore];
  v8 = [v7 assistantIdentifierSalt];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:v5 identifierSalt:v8 withSalts:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)hm_setIdentifierSalt:()HomeKitClient
{
  v3 = a3;
  v4 = +[HMIdentifierSaltStore sharedIdentifierSaltStore];
  [v4 setIdentifierSalt:v3];
}

+ (id)hm_deriveUUIDFromBaseUUID:()HomeKitClient withSalts:
{
  v5 = MEMORY[0x1E696AFB0];
  v6 = a4;
  v7 = a3;
  v8 = +[HMIdentifierSaltStore sharedIdentifierSaltStore];
  v9 = [v8 identifierSalt];
  v10 = [v5 hm_deriveUUIDFromBaseUUID:v7 identifierSalt:v9 withSalts:v6];

  return v10;
}

+ (id)hm_deriveUUIDFromBaseUUID:()HomeKitClient identifierSalt:withSalts:
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [MEMORY[0x1E696AFB0] hmf_UUIDWithNamespace:v8 data:v9 salts:v10];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_FAULT, "%{public}@API Misuse: requested to derive UUID from nil base UUID. Call stack: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v11;
}

@end
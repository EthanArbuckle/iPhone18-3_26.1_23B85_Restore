@interface CNVisualSimilarity
+ (BOOL)isData:(id)a3 similarTo:(id)a4;
+ (BOOL)isFingerprint:(id)a3 similarTo:(id)a4 threshold:(double)a5;
+ (id)fingerprintForData:(id)a3;
+ (id)fingerprintForImageRequestHandler:(id)a3;
+ (id)log;
@end

@implementation CNVisualSimilarity

+ (id)log
{
  if (log_cn_once_token_0_5 != -1)
  {
    +[CNVisualSimilarity log];
  }

  v3 = log_cn_once_object_0_5;

  return v3;
}

uint64_t __25__CNVisualSimilarity_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "vision");
  v1 = log_cn_once_object_0_5;
  log_cn_once_object_0_5 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (BOOL)isData:(id)a3 similarTo:(id)a4
{
  v6 = a4;
  v7 = [a1 fingerprintForData:a3];
  v8 = [a1 fingerprintForData:v6];

  LOBYTE(a1) = [a1 isFingerprint:v7 similarTo:v8];
  return a1;
}

+ (id)fingerprintForData:(id)a3
{
  v4 = MEMORY[0x1E69845B8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithData:v5 options:MEMORY[0x1E695E0F8]];

  v8 = [a1 fingerprintForImageRequestHandler:v7];

  return v8;
}

+ (id)fingerprintForImageRequestHandler:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E6984480]);
  [v4 setRevision:1];
  v5 = objc_autoreleasePoolPush();
  v16[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v15 = 0;
  v7 = [v3 performRequests:v6 error:&v15];
  v8 = v15;

  if ((v7 & 1) == 0)
  {
    v9 = [objc_opt_class() log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CNVisualSimilarity *)v8 fingerprintForImageRequestHandler:v9];
    }
  }

  objc_autoreleasePoolPop(v5);
  v10 = [v4 results];
  v11 = [v10 firstObject];

  v12 = [v11 fingerprintHashes];
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v13 = 0;
  }

  else
  {
    v13 = [[CNVisualFingerprint alloc] initWithVNFingerprintHashes:v12];
  }

  return v13;
}

+ (BOOL)isFingerprint:(id)a3 similarTo:(id)a4 threshold:(double)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [a3 hashData];
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v14 = [v7 hashData];
        v15 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v23;
          while (2)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v23 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = [v13 _cn_distanceFromData:*(*(&v22 + 1) + 8 * j)];
              if (v19 < a5)
              {

                v20 = 1;
                goto LABEL_19;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:{16, v19}];
            if (v16)
            {
              continue;
            }

            break;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      v20 = 0;
    }

    while (v10);
  }

  else
  {
    v20 = 0;
  }

LABEL_19:

  return v20;
}

+ (void)fingerprintForImageRequestHandler:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Could not generate fingerprint: %{public}@", &v2, 0xCu);
}

@end
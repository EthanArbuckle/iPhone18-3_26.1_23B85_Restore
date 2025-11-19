@interface TKMLDSAPrehasher
+ (id)prehashDataWithMessageData:(id)a3 publicKey:(id)a4 context:(id)a5;
@end

@implementation TKMLDSAPrehasher

+ (id)prehashDataWithMessageData:(id)a3 publicKey:(id)a4 context:(id)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8 && [v8 length])
  {
    v10 = [v8 length];
    ccmldsa65();
    if (v10 == ccmldsa_pubkey_nbytes_params())
    {
      ccmldsa65();
      goto LABEL_7;
    }

    v11 = [v8 length];
    ccmldsa87();
    if (v11 == ccmldsa_pubkey_nbytes_params())
    {
      ccmldsa87();
LABEL_7:
      ccmldsa_sizeof_pub_ctx();
      [v8 length];
      [v8 bytes];
      if (ccmldsa_import_pubkey())
      {
        v12 = 0;
      }

      else
      {
        v13 = ccmldsa_hash_nbytes_ctx();
        [v7 bytes];
        [v7 length];
        v14 = [MEMORY[0x1E695DF88] dataWithLength:v13];
        [v14 mutableBytes];
        if (v9)
        {
          [v9 bytes];
          v19[0] = v19;
          [v9 length];
          v15 = ccmldsa_prehash_with_context();
        }

        else
        {
          v15 = ccmldsa_prehash();
        }

        if (v15)
        {
          v16 = 0;
        }

        else
        {
          v16 = v14;
        }

        v12 = v16;
      }

      goto LABEL_17;
    }
  }

  v12 = 0;
LABEL_17:

  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

@end
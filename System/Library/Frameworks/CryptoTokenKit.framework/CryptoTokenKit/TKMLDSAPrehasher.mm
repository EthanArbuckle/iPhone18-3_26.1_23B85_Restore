@interface TKMLDSAPrehasher
+ (id)prehashDataWithMessageData:(id)data publicKey:(id)key context:(id)context;
@end

@implementation TKMLDSAPrehasher

+ (id)prehashDataWithMessageData:(id)data publicKey:(id)key context:(id)context
{
  v19[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  keyCopy = key;
  contextCopy = context;
  if (keyCopy && [keyCopy length])
  {
    v10 = [keyCopy length];
    ccmldsa65();
    if (v10 == ccmldsa_pubkey_nbytes_params())
    {
      ccmldsa65();
      goto LABEL_7;
    }

    v11 = [keyCopy length];
    ccmldsa87();
    if (v11 == ccmldsa_pubkey_nbytes_params())
    {
      ccmldsa87();
LABEL_7:
      ccmldsa_sizeof_pub_ctx();
      [keyCopy length];
      [keyCopy bytes];
      if (ccmldsa_import_pubkey())
      {
        v12 = 0;
      }

      else
      {
        v13 = ccmldsa_hash_nbytes_ctx();
        [dataCopy bytes];
        [dataCopy length];
        v14 = [MEMORY[0x1E695DF88] dataWithLength:v13];
        [v14 mutableBytes];
        if (contextCopy)
        {
          [contextCopy bytes];
          v19[0] = v19;
          [contextCopy length];
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
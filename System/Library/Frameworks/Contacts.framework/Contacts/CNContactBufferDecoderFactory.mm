@interface CNContactBufferDecoderFactory
+ (id)decoderForFetchRequest:(id)a3 posterDataStore:(id)a4;
@end

@implementation CNContactBufferDecoderFactory

+ (id)decoderForFetchRequest:(id)a3 posterDataStore:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v5 effectiveKeysToFetch];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 _cn_requiredKeys];
        [v7 unionKeyVector:v14];

        v15 = [v13 _cn_optionalKeys];
        [v7 unionKeyVector:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  [CNAccessAuthorization removeUnavailableKeysFromContactKeyVector:v7];
  v16 = -[CNContactBufferDecoder initWithKeyDescriptorToMakeAvailable:posterDataStore:mutableResults:]([CNContactBufferDecoder alloc], "initWithKeyDescriptorToMakeAvailable:posterDataStore:mutableResults:", v7, v6, [v5 mutableObjects]);

  return v16;
}

@end
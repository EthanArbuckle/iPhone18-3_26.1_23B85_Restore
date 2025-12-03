@interface CNContactBufferDecoderFactory
+ (id)decoderForFetchRequest:(id)request posterDataStore:(id)store;
@end

@implementation CNContactBufferDecoderFactory

+ (id)decoderForFetchRequest:(id)request posterDataStore:(id)store
{
  v23 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  storeCopy = store;
  v7 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  effectiveKeysToFetch = [requestCopy effectiveKeysToFetch];
  v9 = [effectiveKeysToFetch countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(effectiveKeysToFetch);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        _cn_requiredKeys = [v13 _cn_requiredKeys];
        [v7 unionKeyVector:_cn_requiredKeys];

        _cn_optionalKeys = [v13 _cn_optionalKeys];
        [v7 unionKeyVector:_cn_optionalKeys];
      }

      v10 = [effectiveKeysToFetch countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  [CNAccessAuthorization removeUnavailableKeysFromContactKeyVector:v7];
  v16 = -[CNContactBufferDecoder initWithKeyDescriptorToMakeAvailable:posterDataStore:mutableResults:]([CNContactBufferDecoder alloc], "initWithKeyDescriptorToMakeAvailable:posterDataStore:mutableResults:", v7, storeCopy, [requestCopy mutableObjects]);

  return v16;
}

@end
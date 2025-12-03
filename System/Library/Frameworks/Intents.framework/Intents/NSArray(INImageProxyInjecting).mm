@interface NSArray(INImageProxyInjecting)
- (void)_injectProxiesForImages:()INImageProxyInjecting completion:;
@end

@implementation NSArray(INImageProxyInjecting)

- (void)_injectProxiesForImages:()INImageProxyInjecting completion:
{
  v42 = *MEMORY[0x1E69E9840];
  v25 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = INImageProxyInjectionQueue();
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([self count])
    {
      v9 = objc_alloc_init(MEMORY[0x1E696ADC8]);
      v24 = v7;
      [v9 setUnderlyingQueue:v7];
      [v9 setMaxConcurrentOperationCount:1];
      [v9 setSuspended:1];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = self;
      v10 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = *v35;
        do
        {
          v14 = 0;
          v15 = v12;
          do
          {
            if (*v35 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v34 + 1) + 8 * v14);
            if ([v16 conformsToProtocol:&unk_1F02E20C8])
            {
              v12 = objc_alloc_init(INImageProxyInjectionOperation);
              [(INImageProxyInjectionOperation *)v12 setInjector:v16];
              [(INImageProxyInjectionOperation *)v12 setImageProxyRequestBlock:v25];
              v32[0] = MEMORY[0x1E69E9820];
              v32[1] = 3221225472;
              v32[2] = __69__NSArray_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_2;
              v32[3] = &unk_1E7285B78;
              v33 = v8;
              [(INImageProxyInjectionOperation *)v12 setCopyReturnBlock:v32];
              v17 = &v33;
            }

            else
            {
              v18 = MEMORY[0x1E696AAE0];
              v30[0] = MEMORY[0x1E69E9820];
              v30[1] = 3221225472;
              v30[2] = __69__NSArray_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_3;
              v30[3] = &unk_1E7287190;
              v31[0] = v8;
              v31[1] = v16;
              v12 = [v18 blockOperationWithBlock:v30];
              v17 = v31;
            }

            if (v15)
            {
              [(INImageProxyInjectionOperation *)v12 addDependency:v15];
            }

            [v9 addOperation:v12];

            ++v14;
            v15 = v12;
          }

          while (v11 != v14);
          v11 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
        }

        while (v11);
      }

      else
      {
        v12 = 0;
      }

      v19 = MEMORY[0x1E696AAE0];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __69__NSArray_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke_4;
      v27[3] = &unk_1E7287140;
      v28 = v8;
      v29 = v6;
      v20 = v8;
      v21 = [v19 blockOperationWithBlock:v27];
      v22 = v21;
      if (v12)
      {
        [v21 addDependency:v12];
      }

      [v9 addOperation:v22];
      [v9 setSuspended:0];

      v7 = v24;
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__NSArray_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
      block[3] = &unk_1E7287140;
      v39 = v8;
      v40 = v6;
      v9 = v8;
      dispatch_async(v7, block);

      v12 = v40;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

@end
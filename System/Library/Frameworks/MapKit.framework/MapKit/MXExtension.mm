@interface MXExtension
@end

@implementation MXExtension

void __104___MXExtension_ridesharing_willBeDepreicatedSoon__startExtensionServiceWithInputItems_begin_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  (*(*(a1 + 40) + 16))();
  v4 = v5;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
    v4 = v5;
  }
}

uint64_t __87___MXExtension_MXExtensionRequestHandling__handleRequest_requestDispatcher_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 disconnectExtension];
}

void __42___MXExtension_INIntent___loadCacheItems___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v10 = [v9 _identifier];
          if (!v10)
          {
            goto LABEL_14;
          }

          v11 = v10;
          v12 = [MEMORY[0x1E69DCEB0] mainScreen];
          [v12 scale];
          v14 = v13;

          v15 = [v9 _imageData];

          if (v15)
          {
            v18 = MEMORY[0x1E69DCAB8];
            v19 = [v9 _imageData];
            v20 = [v18 imageWithData:v19 scale:v14];

            v21 = [*(a1 + 32) provider];
            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __42___MXExtension_INIntent___loadCacheItems___block_invoke_2;
            v26[3] = &unk_1E76CD710;
            v27 = v20;
            v22 = v20;
            [v21 loadImageForKey:v11 withBlock:v26];

LABEL_14:
            goto LABEL_15;
          }

          v16 = [MEMORY[0x1E696E878] sharedConnection];
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __42___MXExtension_INIntent___loadCacheItems___block_invoke_3;
          v23[3] = &unk_1E76CD738;
          v25 = v14;
          v23[4] = *(a1 + 32);
          v24 = v11;
          v17 = v11;
          [v16 loadImageDataAndSizeForImage:v9 reply:v23];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

void __42___MXExtension_INIntent___loadCacheItems___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69DCAB8];
    v6 = [a2 _imageData];
    v4 = [v5 imageWithData:v6 scale:*(a1 + 48)];
  }

  v7 = [*(a1 + 32) provider];
  v8 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42___MXExtension_INIntent___loadCacheItems___block_invoke_4;
  v10[3] = &unk_1E76CD710;
  v11 = v4;
  v9 = v4;
  [v7 loadImageForKey:v8 withBlock:v10];
}

void __74___MXExtension_INIntent__handleIntent_expectResponseClass_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v12 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (_shouldDeserializeCacheItems == 1)
  {
    [*(a1 + 32) _loadCacheItems:v10];
  }

  (*(*(a1 + 56) + 16))();
  [*(a1 + 40) completeTransactionWithIntentIdentifier:*(a1 + 48) completion:0];
}

void __75___MXExtension_INIntent__confirmIntent_expectResponseClass_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v12 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (_shouldDeserializeCacheItems == 1)
  {
    [*(a1 + 32) _loadCacheItems:v10];
  }

  (*(*(a1 + 56) + 16))();
  [*(a1 + 40) completeTransactionWithIntentIdentifier:*(a1 + 48) completion:0];
}

uint64_t __70___MXExtension_INIntent__resolveIntentSlot_forIntent_completionBlock___block_invoke(void *a1)
{
  (*(a1[6] + 16))();
  v2 = a1[4];
  v3 = a1[5];

  return [v2 completeTransactionWithIntentIdentifier:v3 completion:0];
}

@end
@interface EXItemProviderCopyingLoadOperator
@end

@implementation EXItemProviderCopyingLoadOperator

void __91___EXItemProviderCopyingLoadOperator__loadItemsForTypeIdentifiers_auditToken_itemProvider___block_invoke(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = dispatch_semaphore_create(0);
  v18 = *MEMORY[0x1E696A4E0];
  v19[0] = *MEMORY[0x1E696A4D8];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91___EXItemProviderCopyingLoadOperator__loadItemsForTypeIdentifiers_auditToken_itemProvider___block_invoke_2;
  v12[3] = &unk_1E6E4E738;
  v6 = *(a1 + 72);
  v16 = *(a1 + 56);
  v17 = v6;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v12[4] = *(a1 + 40);
  v13 = v3;
  v14 = v4;
  v15 = v8;
  v9 = v4;
  v10 = v3;
  [v7 loadItemForTypeIdentifier:v10 options:v5 completionHandler:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);

  v11 = *MEMORY[0x1E69E9840];
}

void __91___EXItemProviderCopyingLoadOperator__loadItemsForTypeIdentifiers_auditToken_itemProvider___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = *(a1 + 32);
    v16 = 0;
    v9 = *(a1 + 80);
    v15[0] = *(a1 + 64);
    v15[1] = v9;
    v10 = [v8 _sandboxedResourceForItemIfNeeded:v5 auditToken:v15 error:&v16];
    v11 = v16;
    v7 = v11;
    if (v10 && !v11)
    {
      v12 = v10;

      v5 = v12;
    }
  }

  if (v7)
  {
    v19 = @"error";
    v20[0] = v7;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    if (v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v5)
  {
    v17 = @"item";
    v18 = v5;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  }

LABEL_13:
  if (v13)
  {
    [*(*(*(a1 + 56) + 8) + 40) setObject:v13 forKeyedSubscript:*(a1 + 40)];
  }

  dispatch_semaphore_signal(*(a1 + 48));

  v14 = *MEMORY[0x1E69E9840];
}

@end
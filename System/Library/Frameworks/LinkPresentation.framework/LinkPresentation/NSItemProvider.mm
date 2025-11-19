@interface NSItemProvider
@end

@implementation NSItemProvider

void __103__NSItemProvider_LPExtras___lp_loadFirstDataRepresentationMatchingMIMETypePredicate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __103__NSItemProvider_LPExtras___lp_loadFirstDataRepresentationMatchingMIMETypePredicate_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7A35CC8;
  v7 = *(a1 + 56);
  v6 = *(a1 + 48);
  v4 = [v2 loadDataRepresentationForTypeIdentifier:v3 completionHandler:v5];
}

void __103__NSItemProvider_LPExtras___lp_loadFirstDataRepresentationMatchingMIMETypePredicate_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __103__NSItemProvider_LPExtras___lp_loadFirstDataRepresentationMatchingMIMETypePredicate_completionHandler___block_invoke_4;
    v5[3] = &unk_1E7A354C8;
    v4 = &v8;
    v8 = *(a1 + 40);
    v6 = v3;
    v7 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __103__NSItemProvider_LPExtras___lp_loadFirstDataRepresentationMatchingMIMETypePredicate_completionHandler___block_invoke_3;
    block[3] = &unk_1E7A35CA0;
    v4 = &v10;
    v10 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

@end
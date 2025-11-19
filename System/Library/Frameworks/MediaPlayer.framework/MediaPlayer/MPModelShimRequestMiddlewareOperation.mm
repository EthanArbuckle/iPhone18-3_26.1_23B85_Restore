@interface MPModelShimRequestMiddlewareOperation
@end

@implementation MPModelShimRequestMiddlewareOperation

void __49___MPModelShimRequestMiddlewareOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 && ([v5 isValid] & 1) == 0)
  {
    (*(*(*(a1 + 32) + 280) + 16))();
  }

  else
  {
    v7 = _Block_copy(*(*(a1 + 32) + 280));
    v8 = [MPNotificationObserver alloc];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __49___MPModelShimRequestMiddlewareOperation_execute__block_invoke_2;
    v14[3] = &unk_1E767D7A0;
    v15 = v7;
    v9 = v7;
    v10 = [(MPNotificationObserver *)v8 initWithName:@"MPModelResponseDidInvalidateNotification" object:v5 handler:v14];
    v16[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v12 = *(a1 + 32);
    v13 = *(v12 + 272);
    *(v12 + 272) = v11;
  }

  [*(*(a1 + 32) + 288) setModelResponse:v5];
  [*(a1 + 32) finishWithError:v6];
}

@end
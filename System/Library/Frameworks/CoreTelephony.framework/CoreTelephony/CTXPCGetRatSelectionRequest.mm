@interface CTXPCGetRatSelectionRequest
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCGetRatSelectionRequest

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CTXPCSubscriptionContextRequest *)self descriptor];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__CTXPCGetRatSelectionRequest_performRequestWithHandler_completionHandler___block_invoke;
  v10[3] = &unk_1E6A48878;
  v9 = v7;
  v11 = v9;
  [v6 getRatSelectionMask:v8 completion:v10];
}

void __75__CTXPCGetRatSelectionRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = 0;
  if (v7 && !v5)
  {
    v6 = [[CTXPCGetRatSelectionResponse alloc] initWithRATSelection:v7];
  }

  (*(*(a1 + 32) + 16))();
}

@end
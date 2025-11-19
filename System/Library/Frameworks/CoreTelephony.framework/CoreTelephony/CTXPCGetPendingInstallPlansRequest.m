@interface CTXPCGetPendingInstallPlansRequest
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCGetPendingInstallPlansRequest

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__CTXPCGetPendingInstallPlansRequest_performRequestWithHandler_completionHandler___block_invoke;
  v7[3] = &unk_1E6A45F78;
  v8 = v5;
  v6 = v5;
  [a3 plansPendingInstallWithCompletion:v7];
}

void __82__CTXPCGetPendingInstallPlansRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [[CTXPCGetPendingInstallPlansResponse alloc] initWithPlanList:v7];
  (*(*(a1 + 32) + 16))();
}

@end
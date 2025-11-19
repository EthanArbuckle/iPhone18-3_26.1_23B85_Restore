@interface CTXPCGet2GUserPreferenceRequest
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCGet2GUserPreferenceRequest

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__CTXPCGet2GUserPreferenceRequest_performRequestWithHandler_completionHandler___block_invoke;
  v7[3] = &unk_1E6A460B8;
  v8 = v5;
  v6 = v5;
  [a3 get2GUserPreference:v7];
}

void __79__CTXPCGet2GUserPreferenceRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v5 = 0;
  }

  else
  {
    v5 = [[CTXPCGet2GUserPreferenceResponse alloc] initWithIsEnabled:a2];
  }

  (*(*(a1 + 32) + 16))();
}

@end
@interface CTXPCShowTravelEducationRequest
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTXPCShowTravelEducationRequest

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__CTXPCShowTravelEducationRequest_performRequestWithHandler_completionHandler___block_invoke;
  v7[3] = &unk_1E6A45E38;
  v8 = v5;
  v6 = v5;
  [a3 shouldShowTravelEducation:v7];
}

void __79__CTXPCShowTravelEducationRequest_performRequestWithHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [[CTXPCBooleanResponseMessage alloc] initWithResult:a2];
  (*(v2 + 16))(v2);
}

@end
@interface CTPXCSetUpeSIMLaunchedRequest
- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4;
@end

@implementation CTPXCSetUpeSIMLaunchedRequest

- (void)performRequestWithHandler:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__CTPXCSetUpeSIMLaunchedRequest_performRequestWithHandler_completionHandler___block_invoke;
  v7[3] = &unk_1E6A43CC8;
  v8 = v5;
  v6 = v5;
  [a3 setUpeSIMLaunched:v7];
}

@end
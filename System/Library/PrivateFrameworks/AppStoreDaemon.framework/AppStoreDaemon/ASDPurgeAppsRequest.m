@interface ASDPurgeAppsRequest
- (void)startWithCompletionBlock:(id)a3;
@end

@implementation ASDPurgeAppsRequest

- (void)startWithCompletionBlock:(id)a3
{
  v4 = a3;
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __48__ASDPurgeAppsRequest_startWithCompletionBlock___block_invoke;
  newValue[3] = &unk_1E7CDBB58;
  v7 = v4;
  v5 = v4;
  [(ASDEphemeralRequest *)self _startWithCompletionHandler:?];
}

uint64_t __48__ASDPurgeAppsRequest_startWithCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end
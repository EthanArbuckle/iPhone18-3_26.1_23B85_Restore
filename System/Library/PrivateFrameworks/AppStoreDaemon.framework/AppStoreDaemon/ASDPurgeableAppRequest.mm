@interface ASDPurgeableAppRequest
- (void)startWithCompletionBlock:(id)block;
@end

@implementation ASDPurgeableAppRequest

- (void)startWithCompletionBlock:(id)block
{
  blockCopy = block;
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __51__ASDPurgeableAppRequest_startWithCompletionBlock___block_invoke;
  newValue[3] = &unk_1E7CDBB58;
  v7 = blockCopy;
  v5 = blockCopy;
  [(ASDEphemeralRequest *)self _startWithCompletionHandler:?];
}

uint64_t __51__ASDPurgeableAppRequest_startWithCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end
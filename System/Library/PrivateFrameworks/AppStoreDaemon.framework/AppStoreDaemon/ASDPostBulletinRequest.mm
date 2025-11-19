@interface ASDPostBulletinRequest
- (void)startWithCompletionBlock:(id)a3;
@end

@implementation ASDPostBulletinRequest

- (void)startWithCompletionBlock:(id)a3
{
  v4 = a3;
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __51__ASDPostBulletinRequest_startWithCompletionBlock___block_invoke;
  newValue[3] = &unk_1E7CDBB58;
  v7 = v4;
  v5 = v4;
  [(ASDEphemeralRequest *)self _startWithCompletionHandler:?];
}

uint64_t __51__ASDPostBulletinRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

@end
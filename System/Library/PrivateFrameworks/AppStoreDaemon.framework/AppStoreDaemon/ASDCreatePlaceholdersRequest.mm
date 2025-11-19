@interface ASDCreatePlaceholdersRequest
- (void)startWithCompletionBlock:(id)a3;
@end

@implementation ASDCreatePlaceholdersRequest

- (void)startWithCompletionBlock:(id)a3
{
  v4 = a3;
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __57__ASDCreatePlaceholdersRequest_startWithCompletionBlock___block_invoke;
  newValue[3] = &unk_1E7CDBB58;
  v7 = v4;
  v5 = v4;
  [(ASDEphemeralRequest *)self _startWithCompletionHandler:?];
}

void __57__ASDCreatePlaceholdersRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = a4;
    (*(v4 + 16))(v4, [a3 success], v6);
  }
}

@end
@interface ASDAccountLookupRequest
- (void)startWithCompletionBlock:(id)block;
@end

@implementation ASDAccountLookupRequest

- (void)startWithCompletionBlock:(id)block
{
  blockCopy = block;
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __52__ASDAccountLookupRequest_startWithCompletionBlock___block_invoke;
  newValue[3] = &unk_1E7CDBB58;
  v7 = blockCopy;
  v5 = blockCopy;
  [(ASDEphemeralRequest *)self _startWithCompletionHandler:?];
}

void __52__ASDAccountLookupRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v7 = v4;
    v6 = [v4 error];
    (*(v5 + 16))(v5, v7, v6);

    v4 = v7;
  }
}

@end
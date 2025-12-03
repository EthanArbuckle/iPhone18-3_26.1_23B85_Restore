@interface ASDExternalManifestRequest
- (void)startWithCompletionBlock:(id)block;
@end

@implementation ASDExternalManifestRequest

- (void)startWithCompletionBlock:(id)block
{
  blockCopy = block;
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __55__ASDExternalManifestRequest_startWithCompletionBlock___block_invoke;
  newValue[3] = &unk_1E7CDBB58;
  v7 = blockCopy;
  v5 = blockCopy;
  [(ASDEphemeralRequest *)self _startWithCompletionHandler:?];
}

void __55__ASDExternalManifestRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v11 = v6;
    v8 = a4;
    v9 = [v11 success];
    v10 = [v11 results];
    (*(v7 + 16))(v7, v9, v10, v8);

    v6 = v11;
  }
}

@end
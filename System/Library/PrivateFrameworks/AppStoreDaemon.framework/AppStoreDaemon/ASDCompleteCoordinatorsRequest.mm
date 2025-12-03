@interface ASDCompleteCoordinatorsRequest
- (void)startWithCompletionHandler:(id)handler;
@end

@implementation ASDCompleteCoordinatorsRequest

- (void)startWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  newValue[0] = MEMORY[0x1E69E9820];
  newValue[1] = 3221225472;
  newValue[2] = __61__ASDCompleteCoordinatorsRequest_startWithCompletionHandler___block_invoke;
  newValue[3] = &unk_1E7CDBB58;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(ASDEphemeralRequest *)self _startWithCompletionHandler:?];
}

void __61__ASDCompleteCoordinatorsRequest_startWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = a4;
    (*(v4 + 16))(v4, [a3 success], v6);
  }
}

@end
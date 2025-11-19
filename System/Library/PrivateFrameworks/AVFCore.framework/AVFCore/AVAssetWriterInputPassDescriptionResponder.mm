@interface AVAssetWriterInputPassDescriptionResponder
- (AVAssetWriterInputPassDescriptionResponder)initWithCallbackQueue:(id)a3 block:(id)a4;
- (void)dealloc;
- (void)respondToNewPassDescription:(id)a3;
- (void)stopRespondingToPassDescriptions;
@end

@implementation AVAssetWriterInputPassDescriptionResponder

- (AVAssetWriterInputPassDescriptionResponder)initWithCallbackQueue:(id)a3 block:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AVAssetWriterInputPassDescriptionResponder initWithCallbackQueue:block:];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  [AVAssetWriterInputPassDescriptionResponder initWithCallbackQueue:block:];
LABEL_3:
  v11.receiver = self;
  v11.super_class = AVAssetWriterInputPassDescriptionResponder;
  v7 = [(AVAssetWriterInputPassDescriptionResponder *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_callbackQueue = a3;
    dispatch_retain(a3);
    v8->_callbackBlock = [a4 copy];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8->_serializationQueue = dispatch_queue_create("AVAssetWriterInputPassDescriptionResponder serialization queue", v9);
  }

  return v8;
}

- (void)dealloc
{
  callbackQueue = self->_callbackQueue;
  if (callbackQueue)
  {
    dispatch_release(callbackQueue);
  }

  serializationQueue = self->_serializationQueue;
  if (serializationQueue)
  {
    dispatch_release(serializationQueue);
  }

  v5.receiver = self;
  v5.super_class = AVAssetWriterInputPassDescriptionResponder;
  [(AVAssetWriterInputPassDescriptionResponder *)&v5 dealloc];
}

- (void)respondToNewPassDescription:(id)a3
{
  serializationQueue = self->_serializationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__AVAssetWriterInputPassDescriptionResponder_respondToNewPassDescription___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = a3;
  v4[5] = self;
  dispatch_async(serializationQueue, v4);
}

void __74__AVAssetWriterInputPassDescriptionResponder_respondToNewPassDescription___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = v2[5];
  v5 = [v2 _hasStoppedResponding];
  if (v3 == v4)
  {
    v6 = *(a1 + 40);
    if ((*(v6 + 32) | v5))
    {
      return;
    }
  }

  else
  {
    if (v5)
    {
      return;
    }

    v6 = *(a1 + 40);
  }

  *(*(a1 + 40) + 40) = *(a1 + 32);
  v7 = *(*(a1 + 40) + 48);
  v8 = *(a1 + 40);
  v9 = *(v8 + 8);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__AVAssetWriterInputPassDescriptionResponder_respondToNewPassDescription___block_invoke_2;
  v10[3] = &unk_1E74626C8;
  v10[4] = v8;
  v10[5] = v7;
  dispatch_async(v9, v10);
  if (!*(a1 + 32))
  {
    [*(a1 + 40) _releaseAndClearCallbackBlock_invokeOnSerializationQueue];
  }

  *(*(a1 + 40) + 32) = 1;
}

void __74__AVAssetWriterInputPassDescriptionResponder_respondToNewPassDescription___block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) _hasStoppedResponding] & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
    v2 = *(a1 + 40);
  }
}

- (void)stopRespondingToPassDescriptions
{
  FigAtomicIncrement32();
  serializationQueue = self->_serializationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__AVAssetWriterInputPassDescriptionResponder_stopRespondingToPassDescriptions__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_async(serializationQueue, block);
}

- (uint64_t)initWithCallbackQueue:block:.cold.1()
{
  OUTLINED_FUNCTION_1_8();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_10();
  return [v0 handleFailureInMethod:@"queue != NULL" object:? file:? lineNumber:? description:?];
}

- (uint64_t)initWithCallbackQueue:block:.cold.2()
{
  OUTLINED_FUNCTION_1_8();
  [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_10();
  return [v0 handleFailureInMethod:@"block != nil" object:? file:? lineNumber:? description:?];
}

@end
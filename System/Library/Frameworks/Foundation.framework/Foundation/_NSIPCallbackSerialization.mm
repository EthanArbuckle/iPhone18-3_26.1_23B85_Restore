@interface _NSIPCallbackSerialization
- (_NSIPCallbackSerialization)init;
- (void)dealloc;
- (void)sendBeginBlock:(uint64_t)block;
- (void)sendEndBlock:(uint64_t)block;
@end

@implementation _NSIPCallbackSerialization

- (_NSIPCallbackSerialization)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = _NSIPCallbackSerialization;
  v2 = [(_NSIPCallbackSerialization *)&v4 init];
  if (v2)
  {
    v2->_UUID = objc_alloc_init(NSUUID);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSIPCallbackSerialization;
  [(_NSIPCallbackSerialization *)&v3 dealloc];
}

- (void)sendBeginBlock:(uint64_t)block
{
  block[6] = *MEMORY[0x1E69E9840];
  if (block)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45___NSIPCallbackSerialization_sendBeginBlock___block_invoke;
    block[3] = &unk_1E69F5678;
    block[4] = block;
    block[5] = a2;
    _NSIPDispatchAsyncCallback(block);
  }
}

- (void)sendEndBlock:(uint64_t)block
{
  block[6] = *MEMORY[0x1E69E9840];
  if (block)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43___NSIPCallbackSerialization_sendEndBlock___block_invoke;
    block[3] = &unk_1E69F5678;
    block[4] = block;
    block[5] = a2;
    _NSIPDispatchAsyncCallback(block);
  }
}

@end
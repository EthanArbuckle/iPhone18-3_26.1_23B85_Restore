@interface _BEBurnableBlock
- (BOOL)performWithInput:(id)input;
- (_BEBurnableBlock)initWithTimeout:(double)timeout block:(id)block defaultInputProvider:(id)provider;
- (void)_cancelTimerIfNeeded;
- (void)dealloc;
@end

@implementation _BEBurnableBlock

- (_BEBurnableBlock)initWithTimeout:(double)timeout block:(id)block defaultInputProvider:(id)provider
{
  blockCopy = block;
  providerCopy = provider;
  v22.receiver = self;
  v22.super_class = _BEBurnableBlock;
  v10 = [(_BEBurnableBlock *)&v22 init];
  if (v10)
  {
    v11 = _Block_copy(blockCopy);
    block = v10->_block;
    v10->_block = v11;

    v13 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v14 = dispatch_time(0, (timeout * 1000000000.0));
    dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, (timeout * 0.1 * 1000000000.0));
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63___BEBurnableBlock_initWithTimeout_block_defaultInputProvider___block_invoke;
    v19[3] = &unk_1E762C468;
    v21 = providerCopy;
    v15 = v10;
    v20 = v15;
    dispatch_source_set_event_handler(v13, v19);
    dispatch_activate(v13);
    timer = v15->_timer;
    v15->_timer = v13;
    v17 = v13;
  }

  return v10;
}

- (BOOL)performWithInput:(id)input
{
  inputCopy = input;
  [(_BEBurnableBlock *)self _cancelTimerIfNeeded];
  block = self->_block;
  if (block)
  {
    block[2](self->_block, inputCopy);
    v6 = self->_block;
    self->_block = 0;
  }

  return block != 0;
}

- (void)dealloc
{
  [(_BEBurnableBlock *)self _cancelTimerIfNeeded];
  v3.receiver = self;
  v3.super_class = _BEBurnableBlock;
  [(_BEBurnableBlock *)&v3 dealloc];
}

- (void)_cancelTimerIfNeeded
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }
}

@end
@interface QLAsynchronousBlockOperation
- (QLAsynchronousBlockOperation)initWithBlock:(id)a3;
- (void)main;
@end

@implementation QLAsynchronousBlockOperation

- (QLAsynchronousBlockOperation)initWithBlock:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = QLAsynchronousBlockOperation;
  v5 = [(QLAsynchronousBlockOperation *)&v10 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    block = v5->_block;
    v5->_block = v6;

    v8 = v5;
  }

  return v5;
}

- (void)main
{
  if ([(QLAsynchronousBlockOperation *)self isCancelled])
  {

    [(QLAsynchronousOperation *)self finish];
  }

  else
  {
    block = self->_block;
    if (block)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __36__QLAsynchronousBlockOperation_main__block_invoke;
      v5[3] = &unk_278B57190;
      v5[4] = self;
      block[2](block, v5);
      v4 = self->_block;
      self->_block = 0;
    }
  }
}

@end
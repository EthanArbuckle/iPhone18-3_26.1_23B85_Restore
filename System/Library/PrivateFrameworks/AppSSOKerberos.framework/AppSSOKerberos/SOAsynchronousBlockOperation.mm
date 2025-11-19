@interface SOAsynchronousBlockOperation
- (SOAsynchronousBlockOperation)initWithBlock:(id)a3;
- (void)main;
@end

@implementation SOAsynchronousBlockOperation

- (SOAsynchronousBlockOperation)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SOAsynchronousBlockOperation;
  v5 = [(SOAsynchronousOperation *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x245CB7C20](v4);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (void)main
{
  v3 = [(SOAsynchronousBlockOperation *)self block];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__SOAsynchronousBlockOperation_main__block_invoke;
  v4[3] = &unk_278C93018;
  v4[4] = self;
  (v3)[2](v3, v4);
}

@end
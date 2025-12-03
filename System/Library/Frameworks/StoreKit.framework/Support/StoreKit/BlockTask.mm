@interface BlockTask
- (BlockTask)initWithBlock:(id)block;
- (void)main;
@end

@implementation BlockTask

- (BlockTask)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = BlockTask;
  v5 = [(Task *)&v9 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (void)main
{
  (*(self->_block + 2))();

  [(Task *)self completeWithSuccess];
}

@end
@interface BlockTask
- (BlockTask)initWithBlock:(id)a3;
- (void)main;
@end

@implementation BlockTask

- (BlockTask)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BlockTask;
  v5 = [(Task *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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
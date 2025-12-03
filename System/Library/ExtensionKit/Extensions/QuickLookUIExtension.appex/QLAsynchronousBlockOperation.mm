@interface QLAsynchronousBlockOperation
- (QLAsynchronousBlockOperation)initWithBlock:(id)block;
- (void)main;
@end

@implementation QLAsynchronousBlockOperation

- (QLAsynchronousBlockOperation)initWithBlock:(id)block
{
  blockCopy = block;
  v10.receiver = self;
  v10.super_class = QLAsynchronousBlockOperation;
  v5 = [(QLAsynchronousBlockOperation *)&v10 init];
  if (v5)
  {
    v6 = objc_retainBlock(blockCopy);
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

    [(QLAsynchronousBlockOperation *)self finish];
  }

  else
  {
    block = self->_block;
    if (block)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_10000B394;
      v5[3] = &unk_100024A00;
      v5[4] = self;
      block[2](block, v5);
      v4 = self->_block;
      self->_block = 0;
    }
  }
}

@end
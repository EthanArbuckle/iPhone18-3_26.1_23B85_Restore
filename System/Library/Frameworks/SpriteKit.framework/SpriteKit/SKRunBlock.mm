@interface SKRunBlock
+ (id)runBlock:(id)block queue:(id)queue;
- (SKRunBlock)init;
- (SKRunBlock)initWithCoder:(id)coder;
- (id)reversedAction;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithTarget:(id)target forTime:(double)time;
@end

@implementation SKRunBlock

- (SKRunBlock)init
{
  v7.receiver = self;
  v7.super_class = SKRunBlock;
  v2 = [(SKAction *)&v7 init];
  v3 = v2;
  if (v2)
  {
    block = v2->_block;
    v2->_block = 0;

    queue = v3->_queue;
    v3->_queue = 0;
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = SKRunBlock;
  [(SKAction *)&v5 encodeWithCoder:coderCopy];
  NSLog(&cfstr_SkactionRunBlo.isa);
}

- (SKRunBlock)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SKRunBlock;
  v5 = [(SKAction *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    block = v5->_block;
    v5->_block = 0;
  }

  NSLog(&cfstr_SkactionRunBlo_0.isa);

  return v6;
}

- (void)updateWithTarget:(id)target forTime:(double)time
{
  targetCopy = target;
  if (![(SKAction *)self finished])
  {
    block = self->_block;
    if (block)
    {
      queue = self->_queue;
      if (queue)
      {
        dispatch_async(queue, block);
      }

      else
      {
        (block)[2](self->_block);
      }
    }

    caction = [(SKAction *)self caction];
    caction->var12 = 0;
    _backingNode = [targetCopy _backingNode];
    v10.n128_f64[0] = time;
    SKCAction::didFinishWithTargetAtTime(caction, _backingNode, v10);
  }
}

+ (id)runBlock:(id)block queue:(id)queue
{
  blockCopy = block;
  queueCopy = queue;
  v7 = objc_alloc_init(SKRunBlock);
  v8 = [blockCopy copy];
  block = v7->_block;
  v7->_block = v8;

  queue = v7->_queue;
  v7->_queue = queueCopy;

  return v7;
}

- (id)reversedAction
{
  v2 = [(SKAction *)self copy];

  return v2;
}

@end
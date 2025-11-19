@interface SKRunBlock
+ (id)runBlock:(id)a3 queue:(id)a4;
- (SKRunBlock)init;
- (SKRunBlock)initWithCoder:(id)a3;
- (id)reversedAction;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithTarget:(id)a3 forTime:(double)a4;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = SKRunBlock;
  [(SKAction *)&v5 encodeWithCoder:v4];
  NSLog(&cfstr_SkactionRunBlo.isa);
}

- (SKRunBlock)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKRunBlock;
  v5 = [(SKAction *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    block = v5->_block;
    v5->_block = 0;
  }

  NSLog(&cfstr_SkactionRunBlo_0.isa);

  return v6;
}

- (void)updateWithTarget:(id)a3 forTime:(double)a4
{
  v11 = a3;
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

    v8 = [(SKAction *)self caction];
    v8->var12 = 0;
    v9 = [v11 _backingNode];
    v10.n128_f64[0] = a4;
    SKCAction::didFinishWithTargetAtTime(v8, v9, v10);
  }
}

+ (id)runBlock:(id)a3 queue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(SKRunBlock);
  v8 = [v5 copy];
  block = v7->_block;
  v7->_block = v8;

  queue = v7->_queue;
  v7->_queue = v6;

  return v7;
}

- (id)reversedAction
{
  v2 = [(SKAction *)self copy];

  return v2;
}

@end
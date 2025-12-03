@interface SCNActionRunBlock
+ (id)runBlock:(id)block queue:(id)queue;
- (SCNActionRunBlock)init;
- (SCNActionRunBlock)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)reversedAction;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithTarget:(id)target forTime:(double)time;
@end

@implementation SCNActionRunBlock

- (SCNActionRunBlock)init
{
  v3.receiver = self;
  v3.super_class = SCNActionRunBlock;
  result = [(SCNAction *)&v3 init];
  if (result)
  {
    result->_block = 0;
    result->_queue = 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SCNActionRunBlock;
  [(SCNAction *)&v3 encodeWithCoder:coder];
  NSLog(&cfstr_ScnactionRunBl.isa);
}

- (SCNActionRunBlock)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SCNActionRunBlock;
  v3 = [(SCNAction *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    v3->_block = 0;
  }

  NSLog(&cfstr_ScnactionRunBl_0.isa);
  return v4;
}

- (void)dealloc
{
  block = self->_block;
  if (block)
  {
    _Block_release(block);
  }

  v4.receiver = self;
  v4.super_class = SCNActionRunBlock;
  [(SCNAction *)&v4 dealloc];
}

- (void)updateWithTarget:(id)target forTime:(double)time
{
  if (![(SCNAction *)self finished])
  {
    block = self->_block;
    if (block)
    {
      queue = self->_queue;
      if (queue)
      {
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __46__SCNActionRunBlock_updateWithTarget_forTime___block_invoke;
        v11[3] = &unk_2782FC790;
        v11[4] = self;
        v11[5] = target;
        dispatch_async(queue, v11);
      }

      else
      {
        block[2](self->_block, target);
      }
    }

    caction = [(SCNAction *)self caction];
    caction->var11 = 0;
    v10.n128_f64[0] = time;
    SCNCAction::didFinishWithTargetAtTime(caction, target, v10);
  }
}

+ (id)runBlock:(id)block queue:(id)queue
{
  v6 = objc_alloc_init(SCNActionRunBlock);
  v6->_block = [block copy];
  v6->_queue = queue;
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SCNActionRunBlock;
  v4 = [(SCNAction *)&v6 copyWithZone:zone];
  v4[2] = [self->_block copy];
  v4[3] = self->_queue;
  return v4;
}

- (id)reversedAction
{
  v2 = [(SCNAction *)self copy];

  return v2;
}

@end
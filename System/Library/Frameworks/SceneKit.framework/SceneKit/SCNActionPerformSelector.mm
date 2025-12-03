@interface SCNActionPerformSelector
+ (id)performSelector:(SEL)selector onTarget:(id)target;
- (SCNActionPerformSelector)init;
- (SCNActionPerformSelector)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)reversedAction;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithTarget:(id)target forTime:(double)time;
@end

@implementation SCNActionPerformSelector

- (SCNActionPerformSelector)init
{
  v3.receiver = self;
  v3.super_class = SCNActionPerformSelector;
  result = [(SCNAction *)&v3 init];
  if (result)
  {
    result->_target = 0;
    result->_selector = 0;
  }

  return result;
}

- (SCNActionPerformSelector)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SCNActionPerformSelector;
  return [(SCNAction *)&v4 initWithCoder:coder];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNActionPerformSelector;
  [(SCNAction *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SCNActionPerformSelector;
  [(SCNAction *)&v3 encodeWithCoder:coder];
}

- (void)updateWithTarget:(id)target forTime:(double)time
{
  if (![(SCNAction *)self finished:target])
  {
    [(SCNAction *)self setFinished:1];
    target = self->_target;
    if (target)
    {
      selector = self->_selector;
      if (selector)
      {

        [target selector];
      }
    }
  }
}

+ (id)performSelector:(SEL)selector onTarget:(id)target
{
  v4 = 0;
  if (selector && target)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = objc_alloc_init(SCNActionPerformSelector);
      v4->_selector = selector;
      v4->_target = target;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SCNActionPerformSelector;
  v4 = [(SCNAction *)&v6 copyWithZone:zone];
  v4[2] = self->_selector;
  v4[3] = self->_target;
  return v4;
}

- (id)reversedAction
{
  v2 = [(SCNAction *)self copy];

  return v2;
}

@end
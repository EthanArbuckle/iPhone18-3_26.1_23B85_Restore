@interface SCNActionPerformSelector
+ (id)performSelector:(SEL)a3 onTarget:(id)a4;
- (SCNActionPerformSelector)init;
- (SCNActionPerformSelector)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reversedAction;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithTarget:(id)a3 forTime:(double)a4;
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

- (SCNActionPerformSelector)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SCNActionPerformSelector;
  return [(SCNAction *)&v4 initWithCoder:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNActionPerformSelector;
  [(SCNAction *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SCNActionPerformSelector;
  [(SCNAction *)&v3 encodeWithCoder:a3];
}

- (void)updateWithTarget:(id)a3 forTime:(double)a4
{
  if (![(SCNAction *)self finished:a3])
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

+ (id)performSelector:(SEL)a3 onTarget:(id)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = objc_alloc_init(SCNActionPerformSelector);
      v4->_selector = a3;
      v4->_target = a4;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = SCNActionPerformSelector;
  v4 = [(SCNAction *)&v6 copyWithZone:a3];
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
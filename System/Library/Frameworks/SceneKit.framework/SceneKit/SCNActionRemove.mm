@interface SCNActionRemove
+ (id)removeFromParentNode;
- (SCNActionRemove)init;
- (SCNActionRemove)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)reversedAction;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithTarget:(id)target forTime:(double)time;
- (void)willStartWithTarget:(id)target atTime:(double)time;
@end

@implementation SCNActionRemove

- (SCNActionRemove)init
{
  v3.receiver = self;
  v3.super_class = SCNActionRemove;
  result = [(SCNAction *)&v3 init];
  if (result)
  {
    result->_hasFired = 0;
  }

  return result;
}

- (SCNActionRemove)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SCNActionRemove;
  v4 = [(SCNAction *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_hasFired = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"_hasFired", "BOOLValue"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SCNActionRemove;
  [(SCNAction *)&v5 encodeWithCoder:?];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", self->_hasFired), @"_hasFired"}];
}

+ (id)removeFromParentNode
{
  v2 = objc_alloc_init(SCNActionRemove);

  return v2;
}

- (void)willStartWithTarget:(id)target atTime:(double)time
{
  v5.receiver = self;
  v5.super_class = SCNActionRemove;
  [(SCNAction *)&v5 willStartWithTarget:target atTime:time];
  self->_hasFired = 0;
}

- (void)updateWithTarget:(id)target forTime:(double)time
{
  if (!self->_hasFired)
  {
    [(SCNAction *)self setFinished:1, time];
    targetCopy = target;
    [target removeFromParentNode];

    targetCopy2 = target;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = +[SCNActionRemove removeFromParentNode];

  return v3;
}

- (id)reversedAction
{
  v2 = [(SCNAction *)self copy];

  return v2;
}

@end
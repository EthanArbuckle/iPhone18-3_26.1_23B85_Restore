@interface SCNActionRemove
+ (id)removeFromParentNode;
- (SCNActionRemove)init;
- (SCNActionRemove)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reversedAction;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithTarget:(id)a3 forTime:(double)a4;
- (void)willStartWithTarget:(id)a3 atTime:(double)a4;
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

- (SCNActionRemove)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SCNActionRemove;
  v4 = [(SCNAction *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->_hasFired = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"_hasFired", "BOOLValue"}];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SCNActionRemove;
  [(SCNAction *)&v5 encodeWithCoder:?];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", self->_hasFired), @"_hasFired"}];
}

+ (id)removeFromParentNode
{
  v2 = objc_alloc_init(SCNActionRemove);

  return v2;
}

- (void)willStartWithTarget:(id)a3 atTime:(double)a4
{
  v5.receiver = self;
  v5.super_class = SCNActionRemove;
  [(SCNAction *)&v5 willStartWithTarget:a3 atTime:a4];
  self->_hasFired = 0;
}

- (void)updateWithTarget:(id)a3 forTime:(double)a4
{
  if (!self->_hasFired)
  {
    [(SCNAction *)self setFinished:1, a4];
    v6 = a3;
    [a3 removeFromParentNode];

    v7 = a3;
  }
}

- (id)copyWithZone:(_NSZone *)a3
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
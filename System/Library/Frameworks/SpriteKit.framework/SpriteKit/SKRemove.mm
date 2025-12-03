@interface SKRemove
+ (id)removeFromParent;
- (SKRemove)init;
- (SKRemove)initWithCoder:(id)coder;
- (id)reversedAction;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithTarget:(id)target forTime:(double)time;
- (void)willStartWithTarget:(id)target atTime:(double)time;
@end

@implementation SKRemove

- (SKRemove)init
{
  v3.receiver = self;
  v3.super_class = SKRemove;
  result = [(SKAction *)&v3 init];
  if (result)
  {
    result->_hasFired = 0;
  }

  return result;
}

- (SKRemove)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SKRemove;
  v5 = [(SKAction *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_hasFired"];
    v5->_hasFired = [v6 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = SKRemove;
  [(SKAction *)&v6 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasFired];
  [coderCopy encodeObject:v5 forKey:@"_hasFired"];
}

+ (id)removeFromParent
{
  v2 = objc_alloc_init(SKRemove);

  return v2;
}

- (void)willStartWithTarget:(id)target atTime:(double)time
{
  v5.receiver = self;
  v5.super_class = SKRemove;
  [(SKAction *)&v5 willStartWithTarget:target atTime:time];
  self->_hasFired = 0;
}

- (void)updateWithTarget:(id)target forTime:(double)time
{
  targetCopy = target;
  if (!self->_hasFired)
  {
    [(SKAction *)self setFinished:1];
    [targetCopy removeFromParent];
  }
}

- (id)reversedAction
{
  v2 = [(SKAction *)self copy];

  return v2;
}

@end
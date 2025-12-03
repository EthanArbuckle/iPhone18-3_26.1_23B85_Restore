@interface SKWait
+ (id)waitForDuration:(double)duration;
+ (id)waitForDuration:(double)duration withRange:(double)range;
- (SKWait)init;
- (SKWait)initWithCoder:(id)coder;
- (id)reversedAction;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKWait

- (SKWait)init
{
  v3.receiver = self;
  v3.super_class = SKWait;
  if ([(SKAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SKWait)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = SKWait;
  if ([(SKAction *)&v6 initWithCoder:coderCopy])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SKWait;
  [(SKAction *)&v3 encodeWithCoder:coder];
}

+ (id)waitForDuration:(double)duration
{
  v4 = objc_alloc_init(SKWait);
  [(SKAction *)v4 setDuration:duration];

  return v4;
}

+ (id)waitForDuration:(double)duration withRange:(double)range
{
  v6 = objc_alloc_init(SKWait);
  [(SKAction *)v6 setDuration:duration];
  rangeCopy = range;
  v6->_mycaction->var9 = rangeCopy;

  return v6;
}

- (id)reversedAction
{
  [(SKAction *)self duration];

  return [SKWait waitForDuration:"waitForDuration:withRange:" withRange:?];
}

@end
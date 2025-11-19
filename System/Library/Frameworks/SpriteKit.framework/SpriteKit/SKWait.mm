@interface SKWait
+ (id)waitForDuration:(double)a3;
+ (id)waitForDuration:(double)a3 withRange:(double)a4;
- (SKWait)init;
- (SKWait)initWithCoder:(id)a3;
- (id)reversedAction;
- (void)encodeWithCoder:(id)a3;
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

- (SKWait)initWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SKWait;
  if ([(SKAction *)&v6 initWithCoder:v4])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SKWait;
  [(SKAction *)&v3 encodeWithCoder:a3];
}

+ (id)waitForDuration:(double)a3
{
  v4 = objc_alloc_init(SKWait);
  [(SKAction *)v4 setDuration:a3];

  return v4;
}

+ (id)waitForDuration:(double)a3 withRange:(double)a4
{
  v6 = objc_alloc_init(SKWait);
  [(SKAction *)v6 setDuration:a3];
  v7 = a4;
  v6->_mycaction->var9 = v7;

  return v6;
}

- (id)reversedAction
{
  [(SKAction *)self duration];

  return [SKWait waitForDuration:"waitForDuration:withRange:" withRange:?];
}

@end
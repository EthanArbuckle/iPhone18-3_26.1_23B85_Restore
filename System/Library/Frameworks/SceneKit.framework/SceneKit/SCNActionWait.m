@interface SCNActionWait
+ (id)waitForDuration:(double)a3;
+ (id)waitForDuration:(double)a3 withRange:(double)a4;
- (SCNActionWait)init;
- (SCNActionWait)initWithCoder:(id)a3;
- (id)reversedAction;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCNActionWait

- (SCNActionWait)init
{
  v3.receiver = self;
  v3.super_class = SCNActionWait;
  if ([(SCNAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SCNActionWait)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SCNActionWait;
  if ([(SCNAction *)&v4 initWithCoder:a3])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = SCNActionWait;
  [(SCNAction *)&v3 encodeWithCoder:a3];
}

+ (id)waitForDuration:(double)a3
{
  v4 = objc_alloc_init(SCNActionWait);
  [(SCNAction *)v4 setDuration:a3];
  return v4;
}

+ (id)waitForDuration:(double)a3 withRange:(double)a4
{
  v6 = objc_alloc_init(SCNActionWait);
  [(SCNAction *)v6 setDuration:a3];
  v6->_mycaction->var8 = a4;
  return v6;
}

- (id)reversedAction
{
  [(SCNAction *)self duration];

  return [SCNActionWait waitForDuration:"waitForDuration:withRange:" withRange:?];
}

@end
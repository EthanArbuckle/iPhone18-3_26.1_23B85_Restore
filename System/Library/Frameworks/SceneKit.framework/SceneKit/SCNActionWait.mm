@interface SCNActionWait
+ (id)waitForDuration:(double)duration;
+ (id)waitForDuration:(double)duration withRange:(double)range;
- (SCNActionWait)init;
- (SCNActionWait)initWithCoder:(id)coder;
- (id)reversedAction;
- (void)encodeWithCoder:(id)coder;
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

- (SCNActionWait)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SCNActionWait;
  if ([(SCNAction *)&v4 initWithCoder:coder])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = SCNActionWait;
  [(SCNAction *)&v3 encodeWithCoder:coder];
}

+ (id)waitForDuration:(double)duration
{
  v4 = objc_alloc_init(SCNActionWait);
  [(SCNAction *)v4 setDuration:duration];
  return v4;
}

+ (id)waitForDuration:(double)duration withRange:(double)range
{
  v6 = objc_alloc_init(SCNActionWait);
  [(SCNAction *)v6 setDuration:duration];
  v6->_mycaction->var8 = range;
  return v6;
}

- (id)reversedAction
{
  [(SCNAction *)self duration];

  return [SCNActionWait waitForDuration:"waitForDuration:withRange:" withRange:?];
}

@end
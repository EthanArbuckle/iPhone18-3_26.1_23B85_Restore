@interface SCNActionCustom
+ (id)customActionWithDuration:(double)duration actionBlock:(id)block;
- (SCNActionCustom)init;
- (SCNActionCustom)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)reversedAction;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCNActionCustom

- (SCNActionCustom)init
{
  v3.receiver = self;
  v3.super_class = SCNActionCustom;
  if ([(SCNAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SCNActionCustom;
  [(SCNAction *)&v2 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SCNActionCustom;
  [(SCNAction *)&v4 encodeWithCoder:coder];
  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [SCNActionCustom encodeWithCoder:v3];
  }
}

- (SCNActionCustom)initWithCoder:(id)coder
{
  v4 = scn_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [SCNActionCustom initWithCoder:v4];
  }

  return [(SCNActionCustom *)self init];
}

+ (id)customActionWithDuration:(double)duration actionBlock:(id)block
{
  v6 = objc_alloc_init(SCNActionCustom);
  caction = [(SCNAction *)v6 caction];
  *(caction + 144) = _Block_copy(block);
  durationCopy = 1.79769313e308;
  if (fabs(duration) != INFINITY)
  {
    durationCopy = duration;
  }

  [(SCNAction *)v6 setDuration:durationCopy];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SCNActionCustom;
  v4 = [(SCNAction *)&v8 copyWithZone:zone];
  caction = [(SCNAction *)self caction];
  caction2 = [v4 caction];
  *(caction2 + 144) = _Block_copy(caction[1].var0);
  return v4;
}

- (id)reversedAction
{
  v2 = [(SCNAction *)self copy];

  return v2;
}

@end
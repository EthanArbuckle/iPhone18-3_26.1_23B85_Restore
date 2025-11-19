@interface SCNActionCustom
+ (id)customActionWithDuration:(double)a3 actionBlock:(id)a4;
- (SCNActionCustom)init;
- (SCNActionCustom)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reversedAction;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SCNActionCustom;
  [(SCNAction *)&v4 encodeWithCoder:a3];
  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [SCNActionCustom encodeWithCoder:v3];
  }
}

- (SCNActionCustom)initWithCoder:(id)a3
{
  v4 = scn_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [SCNActionCustom initWithCoder:v4];
  }

  return [(SCNActionCustom *)self init];
}

+ (id)customActionWithDuration:(double)a3 actionBlock:(id)a4
{
  v6 = objc_alloc_init(SCNActionCustom);
  v7 = [(SCNAction *)v6 caction];
  *(v7 + 144) = _Block_copy(a4);
  v8 = 1.79769313e308;
  if (fabs(a3) != INFINITY)
  {
    v8 = a3;
  }

  [(SCNAction *)v6 setDuration:v8];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SCNActionCustom;
  v4 = [(SCNAction *)&v8 copyWithZone:a3];
  v5 = [(SCNAction *)self caction];
  v6 = [v4 caction];
  *(v6 + 144) = _Block_copy(v5[1].var0);
  return v4;
}

- (id)reversedAction
{
  v2 = [(SCNAction *)self copy];

  return v2;
}

@end
@interface BKSRestartAction
+ (id)actionWithOptions:(unint64_t)a3;
- (unint64_t)options;
@end

@implementation BKSRestartAction

+ (id)actionWithOptions:(unint64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E698E700]);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v4 setObject:v5 forSetting:1];

  v6 = [objc_alloc(objc_opt_class()) initWithInfo:v4 responder:0];

  return v6;
}

- (unint64_t)options
{
  v2 = [(BKSRestartAction *)self info];
  v3 = [v2 objectForSetting:1];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

@end
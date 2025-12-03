@interface ARUICelebrationFactory
+ (id)celebrationOfType:(unint64_t)type;
@end

@implementation ARUICelebrationFactory

+ (id)celebrationOfType:(unint64_t)type
{
  if (type)
  {
  }

  else
  {
    self = objc_alloc_init(_TtC15ActivityRingsUI17SparksCelebration);
  }

  return self;
}

@end
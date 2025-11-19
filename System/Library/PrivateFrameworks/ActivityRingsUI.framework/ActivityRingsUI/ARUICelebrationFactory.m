@interface ARUICelebrationFactory
+ (id)celebrationOfType:(unint64_t)a3;
@end

@implementation ARUICelebrationFactory

+ (id)celebrationOfType:(unint64_t)a3
{
  if (a3)
  {
  }

  else
  {
    a1 = objc_alloc_init(_TtC15ActivityRingsUI17SparksCelebration);
  }

  return a1;
}

@end
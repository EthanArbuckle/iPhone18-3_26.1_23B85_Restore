@interface RCNoAnimateLayerHelper
+ (id)sharedNoAnimationHelper;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
@end

@implementation RCNoAnimateLayerHelper

+ (id)sharedNoAnimationHelper
{
  if (qword_1002D7040 != -1)
  {
    sub_1001B783C();
  }

  v3 = qword_1002D7038;

  return v3;
}

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  v4 = [NSNull null:a3];

  return v4;
}

@end
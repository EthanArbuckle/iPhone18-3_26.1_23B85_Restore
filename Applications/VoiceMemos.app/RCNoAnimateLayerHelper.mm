@interface RCNoAnimateLayerHelper
+ (id)sharedNoAnimationHelper;
- (id)actionForLayer:(id)layer forKey:(id)key;
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

- (id)actionForLayer:(id)layer forKey:(id)key
{
  v4 = [NSNull null:layer];

  return v4;
}

@end
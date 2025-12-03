@interface RCNoAnimateLayerHelper
+ (id)sharedNoAnimationHelper;
- (id)actionForLayer:(id)layer forKey:(id)key;
@end

@implementation RCNoAnimateLayerHelper

+ (id)sharedNoAnimationHelper
{
  if (qword_822E8 != -1)
  {
    sub_41E94();
  }

  v3 = qword_822E0;

  return v3;
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  v4 = [NSNull null:layer];

  return v4;
}

@end
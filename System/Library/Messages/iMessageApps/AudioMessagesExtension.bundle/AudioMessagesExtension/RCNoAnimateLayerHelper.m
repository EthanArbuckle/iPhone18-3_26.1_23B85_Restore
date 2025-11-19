@interface RCNoAnimateLayerHelper
+ (id)sharedNoAnimationHelper;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
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

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  v4 = [NSNull null:a3];

  return v4;
}

@end
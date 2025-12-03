@interface VKTimedAnimation(MapKitAdditions)
+ (id)animationMatchingCurrentAnimationParametersWithName:()MapKitAdditions;
@end

@implementation VKTimedAnimation(MapKitAdditions)

+ (id)animationMatchingCurrentAnimationParametersWithName:()MapKitAdditions
{
  v3 = a3;
  if ([MEMORY[0x1E69DD250] _mapkit_shouldAdoptImplicitAnimationParameters])
  {
    v4 = objc_alloc(MEMORY[0x1E69DF4A0]);
    [MEMORY[0x1E69DD250] _mapkit_currentAnimationDuration];
    v5 = [v4 initWithDuration:v3 name:?];
    _mapkit_currentAnimationTimingFunction = [MEMORY[0x1E69DD250] _mapkit_currentAnimationTimingFunction];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __89__VKTimedAnimation_MapKitAdditions__animationMatchingCurrentAnimationParametersWithName___block_invoke;
    v9[3] = &unk_1E76C9988;
    v10 = _mapkit_currentAnimationTimingFunction;
    v7 = _mapkit_currentAnimationTimingFunction;
    [v5 setTimingFunction:v9];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
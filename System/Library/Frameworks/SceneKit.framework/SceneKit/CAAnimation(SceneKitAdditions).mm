@interface CAAnimation(SceneKitAdditions)
- (uint64_t)commitsOnCompletion;
- (uint64_t)setCommitsOnCompletion:()SceneKitAdditions;
- (uint64_t)setFadeInDuration:()SceneKitAdditions;
- (uint64_t)setFadeOutDuration:()SceneKitAdditions;
- (uint64_t)setUsesSceneTimeBase:()SceneKitAdditions;
- (uint64_t)usesSceneTimeBase;
- (void)setAnimationEvents:()SceneKitAdditions;
@end

@implementation CAAnimation(SceneKitAdditions)

- (uint64_t)usesSceneTimeBase
{
  v1 = [a1 valueForKey:@"SCNAnimationAnimatesUsingSceneTimeKey"];

  return [v1 BOOLValue];
}

- (uint64_t)setUsesSceneTimeBase:()SceneKitAdditions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];

  return [a1 setValue:v2 forKey:@"SCNAnimationAnimatesUsingSceneTimeKey"];
}

- (uint64_t)setFadeInDuration:()SceneKitAdditions
{
  *&a2 = a2;
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:a2];

  return [a1 setValue:v3 forKey:@"SCNAnimationFadeInDurationKey"];
}

- (uint64_t)setFadeOutDuration:()SceneKitAdditions
{
  *&a2 = a2;
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:a2];

  return [a1 setValue:v3 forKey:@"SCNAnimationFadeOutDurationKey"];
}

- (uint64_t)commitsOnCompletion
{
  v1 = [a1 valueForKey:@"SCNAnimationCommitOnCompletion"];

  return [v1 BOOLValue];
}

- (uint64_t)setCommitsOnCompletion:()SceneKitAdditions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];

  return [a1 setValue:v2 forKey:@"SCNAnimationCommitOnCompletion"];
}

- (void)setAnimationEvents:()SceneKitAdditions
{
  v4 = [a3 copy];
  [a1 setValue:v4 forKey:@"SCNAnimationEventsKey"];
}

@end
@interface ARUIAnimationKeyCoordinator
+ (id)animationKeyCache;
+ (id)animationKeyForType:(unint64_t)type ringIndex:(int64_t)index;
+ (id)animationKeyFormatForType:(unint64_t)type;
@end

@implementation ARUIAnimationKeyCoordinator

+ (id)animationKeyForType:(unint64_t)type ringIndex:(int64_t)index
{
  if (index > 2)
  {
    v9 = MEMORY[0x1E696AEC0];
    animationKeyCache = [self animationKeyFormatForType:type];
    index = [v9 stringWithFormat:animationKeyCache, index];
  }

  else
  {
    animationKeyCache = [self animationKeyCache];
    v7 = [animationKeyCache objectAtIndexedSubscript:type];
    index = [v7 objectAtIndexedSubscript:index];
  }

  return index;
}

+ (id)animationKeyCache
{
  if (animationKeyCache_onceToken != -1)
  {
    +[ARUIAnimationKeyCoordinator animationKeyCache];
  }

  v3 = animationKeyCache___animationKeyCache;

  return v3;
}

void __48__ARUIAnimationKeyCoordinator_animationKeyCache__block_invoke()
{
  v0 = animationKeyCache___animationKeyCache;
  animationKeyCache___animationKeyCache = &unk_1F4C88000;
}

+ (id)animationKeyFormatForType:(unint64_t)type
{
  if (type - 1 > 5)
  {
    return @"percentage-%lu";
  }

  else
  {
    return off_1E83CE080[type - 1];
  }
}

@end
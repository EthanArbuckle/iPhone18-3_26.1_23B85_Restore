@interface ARUIAnimationKeyCoordinator
+ (id)animationKeyCache;
+ (id)animationKeyForType:(unint64_t)a3 ringIndex:(int64_t)a4;
+ (id)animationKeyFormatForType:(unint64_t)a3;
@end

@implementation ARUIAnimationKeyCoordinator

+ (id)animationKeyForType:(unint64_t)a3 ringIndex:(int64_t)a4
{
  if (a4 > 2)
  {
    v9 = MEMORY[0x1E696AEC0];
    v6 = [a1 animationKeyFormatForType:a3];
    v8 = [v9 stringWithFormat:v6, a4];
  }

  else
  {
    v6 = [a1 animationKeyCache];
    v7 = [v6 objectAtIndexedSubscript:a3];
    v8 = [v7 objectAtIndexedSubscript:a4];
  }

  return v8;
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

+ (id)animationKeyFormatForType:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return @"percentage-%lu";
  }

  else
  {
    return off_1E83CE080[a3 - 1];
  }
}

@end
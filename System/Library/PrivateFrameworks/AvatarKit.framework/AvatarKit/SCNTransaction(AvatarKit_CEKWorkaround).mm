@interface SCNTransaction(AvatarKit_CEKWorkaround)
+ (uint64_t)begin_CEKWorkaround;
+ (uint64_t)commit_CEKWorkaround;
+ (uint64_t)flush_CEKWorkaround;
+ (uint64_t)setAnimationDuration_CEKWorkaround:()AvatarKit_CEKWorkaround;
+ (void)_implementCEKWorkaroundIfNeeded;
@end

@implementation SCNTransaction(AvatarKit_CEKWorkaround)

+ (void)_implementCEKWorkaroundIfNeeded
{
  if (_implementCEKWorkaroundIfNeeded_onceToken != -1)
  {
    +[SCNTransaction(AvatarKit_CEKWorkaround) _implementCEKWorkaroundIfNeeded];
  }
}

+ (uint64_t)begin_CEKWorkaround
{
  [self begin_CEKWorkaround];
  v1 = MEMORY[0x1E69DF378];

  return [v1 begin];
}

+ (uint64_t)commit_CEKWorkaround
{
  [MEMORY[0x1E69DF378] commit];

  return [self commit_CEKWorkaround];
}

+ (uint64_t)flush_CEKWorkaround
{
  [MEMORY[0x1E69DF378] flush];

  return [self flush_CEKWorkaround];
}

+ (uint64_t)setAnimationDuration_CEKWorkaround:()AvatarKit_CEKWorkaround
{
  [self setAnimationDuration_CEKWorkaround:?];
  v3 = MEMORY[0x1E69DF378];

  return [v3 setDuration:a2];
}

@end
@interface MTLibraryLegacyUtil
+ (int64_t)legacyPlayCountForPlayState:(int64_t)state playCount:(int64_t)count;
+ (int64_t)playStateFromHasBeenPlayed:(BOOL)played andPlayCount:(int64_t)count;
@end

@implementation MTLibraryLegacyUtil

+ (int64_t)playStateFromHasBeenPlayed:(BOOL)played andPlayCount:(int64_t)count
{
  v4 = 1;
  if (!played)
  {
    v4 = 2;
  }

  if (count <= 0)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)legacyPlayCountForPlayState:(int64_t)state playCount:(int64_t)count
{
  if (count <= 1)
  {
    countCopy = 1;
  }

  else
  {
    countCopy = count;
  }

  if (state)
  {
    return 0;
  }

  else
  {
    return countCopy;
  }
}

@end
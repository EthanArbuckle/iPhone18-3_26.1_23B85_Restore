@interface MTLibraryLegacyUtil
+ (int64_t)legacyPlayCountForPlayState:(int64_t)a3 playCount:(int64_t)a4;
+ (int64_t)playStateFromHasBeenPlayed:(BOOL)a3 andPlayCount:(int64_t)a4;
@end

@implementation MTLibraryLegacyUtil

+ (int64_t)playStateFromHasBeenPlayed:(BOOL)a3 andPlayCount:(int64_t)a4
{
  v4 = 1;
  if (!a3)
  {
    v4 = 2;
  }

  if (a4 <= 0)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)legacyPlayCountForPlayState:(int64_t)a3 playCount:(int64_t)a4
{
  if (a4 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a4;
  }

  if (a3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

@end
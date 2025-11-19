@interface MusicKit_SoftLinking_MPModelSong
+ (int64_t)cloudStatusForRawValue:(int64_t)a3;
+ (int64_t)rawValueForCloudStatus:(int64_t)a3;
@end

@implementation MusicKit_SoftLinking_MPModelSong

+ (int64_t)cloudStatusForRawValue:(int64_t)a3
{
  if ((a3 - 1) >= 9)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)rawValueForCloudStatus:(int64_t)a3
{
  if ((a3 - 1) >= 9)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

@end
@interface MusicKit_SoftLinking_MPModelSong
+ (int64_t)cloudStatusForRawValue:(int64_t)value;
+ (int64_t)rawValueForCloudStatus:(int64_t)status;
@end

@implementation MusicKit_SoftLinking_MPModelSong

+ (int64_t)cloudStatusForRawValue:(int64_t)value
{
  if ((value - 1) >= 9)
  {
    return 0;
  }

  else
  {
    return value;
  }
}

+ (int64_t)rawValueForCloudStatus:(int64_t)status
{
  if ((status - 1) >= 9)
  {
    return 0;
  }

  else
  {
    return status;
  }
}

@end
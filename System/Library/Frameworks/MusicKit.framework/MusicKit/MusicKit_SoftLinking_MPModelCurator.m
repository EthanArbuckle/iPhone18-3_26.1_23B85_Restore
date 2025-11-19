@interface MusicKit_SoftLinking_MPModelCurator
+ (int64_t)kindForRawValue:(int64_t)a3;
+ (int64_t)rawValueForKind:(int64_t)a3;
+ (int64_t)rawValueForSubKind:(int64_t)a3;
+ (int64_t)subKindForRawValue:(int64_t)a3;
@end

@implementation MusicKit_SoftLinking_MPModelCurator

+ (int64_t)kindForRawValue:(int64_t)a3
{
  if ((a3 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)rawValueForKind:(int64_t)a3
{
  if ((a3 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)subKindForRawValue:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int64_t)rawValueForSubKind:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

@end
@interface MusicKit_SoftLinking_MPModelCurator
+ (int64_t)kindForRawValue:(int64_t)value;
+ (int64_t)rawValueForKind:(int64_t)kind;
+ (int64_t)rawValueForSubKind:(int64_t)kind;
+ (int64_t)subKindForRawValue:(int64_t)value;
@end

@implementation MusicKit_SoftLinking_MPModelCurator

+ (int64_t)kindForRawValue:(int64_t)value
{
  if ((value - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return value;
  }
}

+ (int64_t)rawValueForKind:(int64_t)kind
{
  if ((kind - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return kind;
  }
}

+ (int64_t)subKindForRawValue:(int64_t)value
{
  if ((value - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return value;
  }
}

+ (int64_t)rawValueForSubKind:(int64_t)kind
{
  if ((kind - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return kind;
  }
}

@end
@interface CIPhotoEffectMono
- (int)_defaultVersion;
@end

@implementation CIPhotoEffectMono

- (int)_defaultVersion
{
  if (dyld_program_sdk_at_least())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end
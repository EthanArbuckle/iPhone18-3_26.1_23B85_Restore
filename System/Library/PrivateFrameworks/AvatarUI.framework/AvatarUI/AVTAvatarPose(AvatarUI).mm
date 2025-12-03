@interface AVTAvatarPose(AvatarUI)
- (__CFString)_avtui_identifier;
@end

@implementation AVTAvatarPose(AvatarUI)

- (__CFString)_avtui_identifier
{
  if ([self isNeutralPose])
  {
    return @"neutral";
  }

  if ([self isFriendlyPose])
  {
    return @"friendly2";
  }

  return @"custom";
}

@end
@interface AVTAvatarPose(AvatarUI)
- (__CFString)_avtui_identifier;
@end

@implementation AVTAvatarPose(AvatarUI)

- (__CFString)_avtui_identifier
{
  if ([a1 isNeutralPose])
  {
    return @"neutral";
  }

  if ([a1 isFriendlyPose])
  {
    return @"friendly2";
  }

  return @"custom";
}

@end
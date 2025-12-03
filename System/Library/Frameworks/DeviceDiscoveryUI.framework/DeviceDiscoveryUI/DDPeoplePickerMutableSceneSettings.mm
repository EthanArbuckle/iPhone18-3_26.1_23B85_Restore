@interface DDPeoplePickerMutableSceneSettings
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation DDPeoplePickerMutableSceneSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DDPeoplePickerSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end
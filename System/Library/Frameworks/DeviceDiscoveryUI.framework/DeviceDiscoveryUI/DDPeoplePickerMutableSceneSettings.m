@interface DDPeoplePickerMutableSceneSettings
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation DDPeoplePickerMutableSceneSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DDPeoplePickerSceneSettings alloc];

  return [(FBSSettings *)v4 initWithSettings:self];
}

@end
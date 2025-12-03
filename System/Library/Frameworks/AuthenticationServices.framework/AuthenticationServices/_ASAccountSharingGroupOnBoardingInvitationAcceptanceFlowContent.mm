@interface _ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent
+ (UIImage)firstBulletImageForWelcomeView;
+ (UIImage)headerImageForMovingCredentialsToGroup;
+ (UIImage)headerImageForRemovingDuplicateCredentialsInGroup;
+ (UIImage)headerImageForWelcomeView;
+ (UIImage)secondBulletImageForWelcomeView;
+ (UIImage)thirdBulletImageForWelcomeView;
+ (id)_bulletListItemImageConfiguration;
+ (id)_headerImageForString:(id)string;
+ (id)descriptionForMovingCredentialsToGroup:(id)group;
+ (id)descriptionForRemovingDuplicateCredentialsInGroup:(id)group;
+ (id)headerSubtitleForRemovingDuplicateCredentialsInGroup:(id)group;
+ (id)headerTitleForWelcomeViewWithGroupName:(id)name;
@end

@implementation _ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent

+ (UIImage)headerImageForWelcomeView
{
  headerImageNameForWelcomeView = [self headerImageNameForWelcomeView];
  v4 = [self _headerImageForString:headerImageNameForWelcomeView];

  return v4;
}

+ (id)headerTitleForWelcomeViewWithGroupName:(id)name
{
  v3 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  v5 = _WBSLocalizedString();
  nameCopy = [v3 stringWithFormat:v5, nameCopy];

  return nameCopy;
}

+ (UIImage)firstBulletImageForWelcomeView
{
  v3 = MEMORY[0x1E69DCAB8];
  firstBulletImageNameForWelcomeView = [self firstBulletImageNameForWelcomeView];
  v5 = [v3 systemImageNamed:firstBulletImageNameForWelcomeView];
  _bulletListItemImageConfiguration = [self _bulletListItemImageConfiguration];
  v7 = [v5 imageWithConfiguration:_bulletListItemImageConfiguration];

  return v7;
}

+ (UIImage)secondBulletImageForWelcomeView
{
  v3 = MEMORY[0x1E69DCAB8];
  secondBulletImageNameForWelcomeView = [self secondBulletImageNameForWelcomeView];
  v5 = [v3 systemImageNamed:secondBulletImageNameForWelcomeView];
  _bulletListItemImageConfiguration = [self _bulletListItemImageConfiguration];
  v7 = [v5 imageWithConfiguration:_bulletListItemImageConfiguration];

  return v7;
}

+ (UIImage)thirdBulletImageForWelcomeView
{
  v3 = MEMORY[0x1E69DCAB8];
  thirdBulletImageNameForWelcomeView = [self thirdBulletImageNameForWelcomeView];
  v5 = [v3 systemImageNamed:thirdBulletImageNameForWelcomeView];
  _bulletListItemImageConfiguration = [self _bulletListItemImageConfiguration];
  v7 = [v5 imageWithConfiguration:_bulletListItemImageConfiguration];

  return v7;
}

+ (id)_bulletListItemImageConfiguration
{
  if (_bulletListItemImageConfiguration_onceToken_0 != -1)
  {
    +[_ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent _bulletListItemImageConfiguration];
  }

  v3 = _bulletListItemImageConfiguration_imageConfiguration_0;

  return v3;
}

+ (id)descriptionForMovingCredentialsToGroup:(id)group
{
  v3 = MEMORY[0x1E696AEC0];
  groupCopy = group;
  v5 = _WBSLocalizedString();
  groupCopy = [v3 localizedStringWithFormat:v5, groupCopy];

  return groupCopy;
}

+ (UIImage)headerImageForMovingCredentialsToGroup
{
  headerImageNameForMovingCredentialsToGroup = [self headerImageNameForMovingCredentialsToGroup];
  v4 = [self _headerImageForString:headerImageNameForMovingCredentialsToGroup];

  return v4;
}

+ (id)descriptionForRemovingDuplicateCredentialsInGroup:(id)group
{
  v3 = MEMORY[0x1E696AEC0];
  groupCopy = group;
  v5 = _WBSLocalizedString();
  groupCopy = [v3 localizedStringWithFormat:v5, groupCopy];

  return groupCopy;
}

+ (UIImage)headerImageForRemovingDuplicateCredentialsInGroup
{
  headerImageNameForRemovingDuplicateCredentialsInGroup = [self headerImageNameForRemovingDuplicateCredentialsInGroup];
  v4 = [self _headerImageForString:headerImageNameForRemovingDuplicateCredentialsInGroup];

  return v4;
}

+ (id)headerSubtitleForRemovingDuplicateCredentialsInGroup:(id)group
{
  v3 = MEMORY[0x1E696AEC0];
  groupCopy = group;
  v5 = _WBSLocalizedString();
  groupCopy = [v3 localizedStringWithFormat:v5, groupCopy];

  return groupCopy;
}

+ (id)_headerImageForString:(id)string
{
  v3 = MEMORY[0x1E69DCAD8];
  v4 = MEMORY[0x1E69DC888];
  stringCopy = string;
  tintColor = [v4 tintColor];
  v7 = [v3 configurationWithHierarchicalColor:tintColor];

  v8 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:48.0];
  v9 = [v7 configurationByApplyingConfiguration:v8];

  v10 = [MEMORY[0x1E69DCAB8] _systemImageNamed:stringCopy];

  v11 = [v10 imageWithConfiguration:v9];

  return v11;
}

@end
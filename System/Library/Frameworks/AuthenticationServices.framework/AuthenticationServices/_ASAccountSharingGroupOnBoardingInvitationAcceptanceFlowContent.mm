@interface _ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent
+ (UIImage)firstBulletImageForWelcomeView;
+ (UIImage)headerImageForMovingCredentialsToGroup;
+ (UIImage)headerImageForRemovingDuplicateCredentialsInGroup;
+ (UIImage)headerImageForWelcomeView;
+ (UIImage)secondBulletImageForWelcomeView;
+ (UIImage)thirdBulletImageForWelcomeView;
+ (id)_bulletListItemImageConfiguration;
+ (id)_headerImageForString:(id)a3;
+ (id)descriptionForMovingCredentialsToGroup:(id)a3;
+ (id)descriptionForRemovingDuplicateCredentialsInGroup:(id)a3;
+ (id)headerSubtitleForRemovingDuplicateCredentialsInGroup:(id)a3;
+ (id)headerTitleForWelcomeViewWithGroupName:(id)a3;
@end

@implementation _ASAccountSharingGroupOnBoardingInvitationAcceptanceFlowContent

+ (UIImage)headerImageForWelcomeView
{
  v3 = [a1 headerImageNameForWelcomeView];
  v4 = [a1 _headerImageForString:v3];

  return v4;
}

+ (id)headerTitleForWelcomeViewWithGroupName:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = _WBSLocalizedString();
  v6 = [v3 stringWithFormat:v5, v4];

  return v6;
}

+ (UIImage)firstBulletImageForWelcomeView
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = [a1 firstBulletImageNameForWelcomeView];
  v5 = [v3 systemImageNamed:v4];
  v6 = [a1 _bulletListItemImageConfiguration];
  v7 = [v5 imageWithConfiguration:v6];

  return v7;
}

+ (UIImage)secondBulletImageForWelcomeView
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = [a1 secondBulletImageNameForWelcomeView];
  v5 = [v3 systemImageNamed:v4];
  v6 = [a1 _bulletListItemImageConfiguration];
  v7 = [v5 imageWithConfiguration:v6];

  return v7;
}

+ (UIImage)thirdBulletImageForWelcomeView
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = [a1 thirdBulletImageNameForWelcomeView];
  v5 = [v3 systemImageNamed:v4];
  v6 = [a1 _bulletListItemImageConfiguration];
  v7 = [v5 imageWithConfiguration:v6];

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

+ (id)descriptionForMovingCredentialsToGroup:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = _WBSLocalizedString();
  v6 = [v3 localizedStringWithFormat:v5, v4];

  return v6;
}

+ (UIImage)headerImageForMovingCredentialsToGroup
{
  v3 = [a1 headerImageNameForMovingCredentialsToGroup];
  v4 = [a1 _headerImageForString:v3];

  return v4;
}

+ (id)descriptionForRemovingDuplicateCredentialsInGroup:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = _WBSLocalizedString();
  v6 = [v3 localizedStringWithFormat:v5, v4];

  return v6;
}

+ (UIImage)headerImageForRemovingDuplicateCredentialsInGroup
{
  v3 = [a1 headerImageNameForRemovingDuplicateCredentialsInGroup];
  v4 = [a1 _headerImageForString:v3];

  return v4;
}

+ (id)headerSubtitleForRemovingDuplicateCredentialsInGroup:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = _WBSLocalizedString();
  v6 = [v3 localizedStringWithFormat:v5, v4];

  return v6;
}

+ (id)_headerImageForString:(id)a3
{
  v3 = MEMORY[0x1E69DCAD8];
  v4 = MEMORY[0x1E69DC888];
  v5 = a3;
  v6 = [v4 tintColor];
  v7 = [v3 configurationWithHierarchicalColor:v6];

  v8 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:48.0];
  v9 = [v7 configurationByApplyingConfiguration:v8];

  v10 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v5];

  v11 = [v10 imageWithConfiguration:v9];

  return v11;
}

@end
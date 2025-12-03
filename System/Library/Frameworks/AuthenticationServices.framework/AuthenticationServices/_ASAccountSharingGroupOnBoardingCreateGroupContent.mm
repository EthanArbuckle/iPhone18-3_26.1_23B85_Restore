@interface _ASAccountSharingGroupOnBoardingCreateGroupContent
+ (UIImage)firstBulletImage;
+ (UIImage)headerImage;
+ (UIImage)secondBulletImage;
+ (UIImage)thirdBulletImage;
+ (id)_bulletListItemImageConfiguration;
@end

@implementation _ASAccountSharingGroupOnBoardingCreateGroupContent

+ (UIImage)headerImage
{
  v3 = MEMORY[0x1E69DCAD8];
  tintColor = [MEMORY[0x1E69DC888] tintColor];
  v5 = [v3 configurationWithHierarchicalColor:tintColor];

  v6 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:48.0];
  v7 = [v5 configurationByApplyingConfiguration:v6];

  v8 = MEMORY[0x1E69DCAB8];
  headerImageName = [self headerImageName];
  v10 = [v8 _systemImageNamed:headerImageName];
  v11 = [v10 imageWithConfiguration:v7];

  return v11;
}

+ (UIImage)firstBulletImage
{
  v3 = MEMORY[0x1E69DCAB8];
  firstBulletImageName = [self firstBulletImageName];
  v5 = [v3 systemImageNamed:firstBulletImageName];
  _bulletListItemImageConfiguration = [self _bulletListItemImageConfiguration];
  v7 = [v5 imageWithConfiguration:_bulletListItemImageConfiguration];

  return v7;
}

+ (UIImage)secondBulletImage
{
  v3 = MEMORY[0x1E69DCAB8];
  secondBulletImageName = [self secondBulletImageName];
  v5 = [v3 systemImageNamed:secondBulletImageName];
  _bulletListItemImageConfiguration = [self _bulletListItemImageConfiguration];
  v7 = [v5 imageWithConfiguration:_bulletListItemImageConfiguration];

  return v7;
}

+ (UIImage)thirdBulletImage
{
  v3 = MEMORY[0x1E69DCAB8];
  thirdBulletImageName = [self thirdBulletImageName];
  v5 = [v3 systemImageNamed:thirdBulletImageName];
  _bulletListItemImageConfiguration = [self _bulletListItemImageConfiguration];
  v7 = [v5 imageWithConfiguration:_bulletListItemImageConfiguration];

  return v7;
}

+ (id)_bulletListItemImageConfiguration
{
  if (_bulletListItemImageConfiguration_onceToken != -1)
  {
    +[_ASAccountSharingGroupOnBoardingCreateGroupContent _bulletListItemImageConfiguration];
  }

  v3 = _bulletListItemImageConfiguration_imageConfiguration;

  return v3;
}

@end
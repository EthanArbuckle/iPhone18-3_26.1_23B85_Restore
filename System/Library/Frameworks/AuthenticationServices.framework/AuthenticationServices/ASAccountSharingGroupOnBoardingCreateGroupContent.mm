@interface ASAccountSharingGroupOnBoardingCreateGroupContent
@end

@implementation ASAccountSharingGroupOnBoardingCreateGroupContent

void __87___ASAccountSharingGroupOnBoardingCreateGroupContent__bulletListItemImageConfiguration__block_invoke()
{
  v0 = MEMORY[0x1E69DCAD8];
  v3 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD58] weight:*MEMORY[0x1E69DB980]];
  v1 = [v0 configurationWithFont:v3];
  v2 = _bulletListItemImageConfiguration_imageConfiguration;
  _bulletListItemImageConfiguration_imageConfiguration = v1;
}

@end
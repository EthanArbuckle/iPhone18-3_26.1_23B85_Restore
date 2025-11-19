@interface LPFaceTimeInvitePresentationSpecialization
+ (id)captionButtonProperties;
+ (id)collapsedButtonIcon;
@end

@implementation LPFaceTimeInvitePresentationSpecialization

+ (id)captionButtonProperties
{
  v2 = objc_alloc_init(LPCaptionButtonPresentationProperties);
  v3 = LPLocalizedString(@"Join");
  [(LPCaptionButtonPresentationProperties *)v2 setText:v3];

  [(LPCaptionButtonPresentationProperties *)v2 setType:1];
  v4 = objc_alloc_init(LPCaptionButtonCollapsedPresentationProperties);
  v5 = [objc_opt_class() collapsedButtonIcon];
  [(LPCaptionButtonCollapsedPresentationProperties *)v4 setIcon:v5];

  [(LPCaptionButtonCollapsedPresentationProperties *)v4 setLayoutRatioThreshold:0.349999994];
  [(LPCaptionButtonCollapsedPresentationProperties *)v4 setShouldHideIconsWhenCollapsed:1];
  [(LPCaptionButtonPresentationProperties *)v2 setCollapsedButton:v4];

  return v2;
}

+ (id)collapsedButtonIcon
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69DDD58];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:v2 scale:2];
  v4 = MEMORY[0x1E69DCAD8];
  v5 = [MEMORY[0x1E69DC888] whiteColor];
  v12[0] = v5;
  v6 = [MEMORY[0x1E69DC888] systemGreenColor];
  v12[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v8 = [v4 configurationWithPaletteColors:v7];
  v9 = [v3 configurationByApplyingConfiguration:v8];

  v10 = [LPImage _systemImageNamed:@"video.circle.fill" withSymbolConfiguration:v9];

  return v10;
}

@end
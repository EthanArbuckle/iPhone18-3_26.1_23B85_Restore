@interface LPGameActivityPresentationSpecialization
+ (id)captionButtonProperties;
@end

@implementation LPGameActivityPresentationSpecialization

+ (id)captionButtonProperties
{
  v2 = objc_alloc_init(LPCaptionButtonPresentationProperties);
  v3 = LPLocalizedString(@"Join");
  [(LPCaptionButtonPresentationProperties *)v2 setText:v3];

  [(LPCaptionButtonPresentationProperties *)v2 setType:1];
  v4 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.08];
  [(LPCaptionButtonPresentationProperties *)v2 setBackgroundColor:v4];

  return v2;
}

@end
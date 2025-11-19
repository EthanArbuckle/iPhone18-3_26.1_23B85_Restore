@interface LPPasswordsInvitePresentationSpecialization
+ (LPCaptionButtonPresentationProperties)captionButtonProperties;
@end

@implementation LPPasswordsInvitePresentationSpecialization

+ (LPCaptionButtonPresentationProperties)captionButtonProperties
{
  v2 = objc_alloc_init(LPCaptionButtonPresentationProperties);
  v3 = LPLocalizedString(@"View");
  [(LPCaptionButtonPresentationProperties *)v2 setText:v3];

  [(LPCaptionButtonPresentationProperties *)v2 setType:1];

  return v2;
}

@end
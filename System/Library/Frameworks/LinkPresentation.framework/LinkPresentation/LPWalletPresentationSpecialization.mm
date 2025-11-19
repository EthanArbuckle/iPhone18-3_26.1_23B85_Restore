@interface LPWalletPresentationSpecialization
+ (id)captionButtonPropertiesForOrders;
+ (id)captionButtonPropertiesForPasses;
@end

@implementation LPWalletPresentationSpecialization

+ (id)captionButtonPropertiesForPasses
{
  v2 = objc_alloc_init(LPCaptionButtonPresentationProperties);
  v3 = LPLocalizedString(@"Add");
  [(LPCaptionButtonPresentationProperties *)v2 setText:v3];

  v4 = [LPImage _PNGImageNamed:@"Wallet"];
  [(LPCaptionButtonPresentationProperties *)v2 setIcon:v4];

  [(LPCaptionButtonPresentationProperties *)v2 setType:1];

  return v2;
}

+ (id)captionButtonPropertiesForOrders
{
  v2 = objc_alloc_init(LPCaptionButtonPresentationProperties);
  v3 = LPLocalizedString(@"Track");
  [(LPCaptionButtonPresentationProperties *)v2 setText:v3];

  v4 = [LPImage _PNGImageNamed:@"Wallet"];
  [(LPCaptionButtonPresentationProperties *)v2 setIcon:v4];

  [(LPCaptionButtonPresentationProperties *)v2 setType:1];

  return v2;
}

@end
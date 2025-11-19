@interface AXAlertBannerSystemAperturePresentable
- (AXAlertBannerSystemAperturePresentable)initWithAlertContent:(id)a3 requesterID:(id)a4;
- (NSString)requestIdentifier;
@end

@implementation AXAlertBannerSystemAperturePresentable

- (AXAlertBannerSystemAperturePresentable)initWithAlertContent:(id)a3 requesterID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = AXAlertBannerSystemAperturePresentable;
  v8 = [(AXAlertBannerSystemAperturePresentable *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(AXAlertBannerSystemAperturePresentable *)v8 setAlertContent:v6];
    [(AXAlertBannerSystemAperturePresentable *)v9 setRequesterID:v7];
    v10 = [[AXAlertBannerSystemApertureViewController alloc] initWithAlertBannerContent:v6];
    [(AXAlertBannerSystemAperturePresentable *)v9 setBannerViewController:v10];
  }

  return v9;
}

- (NSString)requestIdentifier
{
  v2 = [(AXAlertBannerSystemAperturePresentable *)self alertContent];
  v3 = [v2 identifier];

  return v3;
}

@end
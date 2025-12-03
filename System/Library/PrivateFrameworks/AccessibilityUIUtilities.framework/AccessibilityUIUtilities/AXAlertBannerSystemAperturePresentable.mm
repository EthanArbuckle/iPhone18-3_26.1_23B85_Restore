@interface AXAlertBannerSystemAperturePresentable
- (AXAlertBannerSystemAperturePresentable)initWithAlertContent:(id)content requesterID:(id)d;
- (NSString)requestIdentifier;
@end

@implementation AXAlertBannerSystemAperturePresentable

- (AXAlertBannerSystemAperturePresentable)initWithAlertContent:(id)content requesterID:(id)d
{
  contentCopy = content;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = AXAlertBannerSystemAperturePresentable;
  v8 = [(AXAlertBannerSystemAperturePresentable *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(AXAlertBannerSystemAperturePresentable *)v8 setAlertContent:contentCopy];
    [(AXAlertBannerSystemAperturePresentable *)v9 setRequesterID:dCopy];
    v10 = [[AXAlertBannerSystemApertureViewController alloc] initWithAlertBannerContent:contentCopy];
    [(AXAlertBannerSystemAperturePresentable *)v9 setBannerViewController:v10];
  }

  return v9;
}

- (NSString)requestIdentifier
{
  alertContent = [(AXAlertBannerSystemAperturePresentable *)self alertContent];
  identifier = [alertContent identifier];

  return identifier;
}

@end
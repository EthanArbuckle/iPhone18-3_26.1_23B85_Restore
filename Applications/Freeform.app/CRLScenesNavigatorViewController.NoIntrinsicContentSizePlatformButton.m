@interface CRLScenesNavigatorViewController.NoIntrinsicContentSizePlatformButton
- (CGSize)intrinsicContentSize;
- (_TtCC8Freeform32CRLScenesNavigatorViewControllerP33_05C0AAD711D75A114ED1933B2A36B55D36NoIntrinsicContentSizePlatformButton)initWithCoder:(id)a3;
- (_TtCC8Freeform32CRLScenesNavigatorViewControllerP33_05C0AAD711D75A114ED1933B2A36B55D36NoIntrinsicContentSizePlatformButton)initWithFrame:(CGRect)a3;
@end

@implementation CRLScenesNavigatorViewController.NoIntrinsicContentSizePlatformButton

- (CGSize)intrinsicContentSize
{
  v2 = UIViewNoIntrinsicMetric;
  v3 = UIViewNoIntrinsicMetric;
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtCC8Freeform32CRLScenesNavigatorViewControllerP33_05C0AAD711D75A114ED1933B2A36B55D36NoIntrinsicContentSizePlatformButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLScenesNavigatorViewController.NoIntrinsicContentSizePlatformButton();
  return [(CRLScenesNavigatorViewController.NoIntrinsicContentSizePlatformButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC8Freeform32CRLScenesNavigatorViewControllerP33_05C0AAD711D75A114ED1933B2A36B55D36NoIntrinsicContentSizePlatformButton)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLScenesNavigatorViewController.NoIntrinsicContentSizePlatformButton();
  v4 = a3;
  v5 = [(CRLScenesNavigatorViewController.NoIntrinsicContentSizePlatformButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
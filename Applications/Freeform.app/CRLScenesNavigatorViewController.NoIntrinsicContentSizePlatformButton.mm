@interface CRLScenesNavigatorViewController.NoIntrinsicContentSizePlatformButton
- (CGSize)intrinsicContentSize;
- (_TtCC8Freeform32CRLScenesNavigatorViewControllerP33_05C0AAD711D75A114ED1933B2A36B55D36NoIntrinsicContentSizePlatformButton)initWithCoder:(id)coder;
- (_TtCC8Freeform32CRLScenesNavigatorViewControllerP33_05C0AAD711D75A114ED1933B2A36B55D36NoIntrinsicContentSizePlatformButton)initWithFrame:(CGRect)frame;
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

- (_TtCC8Freeform32CRLScenesNavigatorViewControllerP33_05C0AAD711D75A114ED1933B2A36B55D36NoIntrinsicContentSizePlatformButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLScenesNavigatorViewController.NoIntrinsicContentSizePlatformButton();
  return [(CRLScenesNavigatorViewController.NoIntrinsicContentSizePlatformButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC8Freeform32CRLScenesNavigatorViewControllerP33_05C0AAD711D75A114ED1933B2A36B55D36NoIntrinsicContentSizePlatformButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLScenesNavigatorViewController.NoIntrinsicContentSizePlatformButton();
  coderCopy = coder;
  v5 = [(CRLScenesNavigatorViewController.NoIntrinsicContentSizePlatformButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
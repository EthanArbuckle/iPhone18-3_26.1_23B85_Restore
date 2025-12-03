@interface ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholderP33_EEB742A6F4A819A60C1AA395BCD7BC6222PlaceholderOfferButton)initWithCoder:(id)coder;
- (_TtCC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholderP33_EEB742A6F4A819A60C1AA395BCD7BC6222PlaceholderOfferButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = sub_100333564();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100331A88();
}

- (_TtCC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholderP33_EEB742A6F4A819A60C1AA395BCD7BC6222PlaceholderOfferButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholderP33_EEB742A6F4A819A60C1AA395BCD7BC6222PlaceholderOfferButton)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
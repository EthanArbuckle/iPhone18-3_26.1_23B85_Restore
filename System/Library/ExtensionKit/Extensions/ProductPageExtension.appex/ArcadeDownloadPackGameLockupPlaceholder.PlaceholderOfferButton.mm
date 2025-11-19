@interface ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtCC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholderP33_EEB742A6F4A819A60C1AA395BCD7BC6222PlaceholderOfferButton)initWithCoder:(id)a3;
- (_TtCC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholderP33_EEB742A6F4A819A60C1AA395BCD7BC6222PlaceholderOfferButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
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
  v2 = self;
  sub_100331A88();
}

- (_TtCC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholderP33_EEB742A6F4A819A60C1AA395BCD7BC6222PlaceholderOfferButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholderP33_EEB742A6F4A819A60C1AA395BCD7BC6222PlaceholderOfferButton)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
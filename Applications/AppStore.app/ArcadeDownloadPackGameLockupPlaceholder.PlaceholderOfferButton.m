@interface ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtCC8AppStore39ArcadeDownloadPackGameLockupPlaceholderP33_7EC85A07D4EE06E56D762B445D3F2D9D22PlaceholderOfferButton)initWithCoder:(id)a3;
- (_TtCC8AppStore39ArcadeDownloadPackGameLockupPlaceholderP33_7EC85A07D4EE06E56D762B445D3F2D9D22PlaceholderOfferButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = sub_100645224();
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
  sub_1006437A0();
}

- (_TtCC8AppStore39ArcadeDownloadPackGameLockupPlaceholderP33_7EC85A07D4EE06E56D762B445D3F2D9D22PlaceholderOfferButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC8AppStore39ArcadeDownloadPackGameLockupPlaceholderP33_7EC85A07D4EE06E56D762B445D3F2D9D22PlaceholderOfferButton)initWithCoder:(id)a3
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
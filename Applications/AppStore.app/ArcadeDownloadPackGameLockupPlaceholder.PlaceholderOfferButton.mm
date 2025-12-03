@interface ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCC8AppStore39ArcadeDownloadPackGameLockupPlaceholderP33_7EC85A07D4EE06E56D762B445D3F2D9D22PlaceholderOfferButton)initWithCoder:(id)coder;
- (_TtCC8AppStore39ArcadeDownloadPackGameLockupPlaceholderP33_7EC85A07D4EE06E56D762B445D3F2D9D22PlaceholderOfferButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
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
  selfCopy = self;
  sub_1006437A0();
}

- (_TtCC8AppStore39ArcadeDownloadPackGameLockupPlaceholderP33_7EC85A07D4EE06E56D762B445D3F2D9D22PlaceholderOfferButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC8AppStore39ArcadeDownloadPackGameLockupPlaceholderP33_7EC85A07D4EE06E56D762B445D3F2D9D22PlaceholderOfferButton)initWithCoder:(id)coder
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
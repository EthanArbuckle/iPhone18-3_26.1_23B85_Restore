@interface ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholderP33_6CEF76E38F5CB667DC93C3F3789776FD22PlaceholderOfferButton)initWithCoder:(id)coder;
- (_TtCC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholderP33_6CEF76E38F5CB667DC93C3F3789776FD22PlaceholderOfferButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  v4 = sub_DFE00();
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
  sub_DE378();
}

- (_TtCC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholderP33_6CEF76E38F5CB667DC93C3F3789776FD22PlaceholderOfferButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC18ASMessagesProvider39ArcadeDownloadPackGameLockupPlaceholderP33_6CEF76E38F5CB667DC93C3F3789776FD22PlaceholderOfferButton)initWithCoder:(id)coder
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
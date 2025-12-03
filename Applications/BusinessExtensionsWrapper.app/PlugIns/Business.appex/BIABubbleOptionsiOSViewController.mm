@interface BIABubbleOptionsiOSViewController
- (_TtC8Business33BIABubbleOptionsiOSViewController)initWithCoder:(id)coder;
- (void)_handleBubbleTapped;
- (void)loadView;
@end

@implementation BIABubbleOptionsiOSViewController

- (void)loadView
{
  selfCopy = self;
  sub_10009A758();
}

- (void)_handleBubbleTapped
{
  selfCopy = self;
  sub_10009B4AC();
}

- (_TtC8Business33BIABubbleOptionsiOSViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController____lazy_storage___optionsLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController_containingViewGestureRecognizer) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BIABubbleOptionsiOSViewController();
  coderCopy = coder;
  v5 = [(BIABubbleOptionsViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
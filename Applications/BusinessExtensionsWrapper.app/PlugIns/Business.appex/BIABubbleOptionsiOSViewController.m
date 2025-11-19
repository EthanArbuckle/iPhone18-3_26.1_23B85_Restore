@interface BIABubbleOptionsiOSViewController
- (_TtC8Business33BIABubbleOptionsiOSViewController)initWithCoder:(id)a3;
- (void)_handleBubbleTapped;
- (void)loadView;
@end

@implementation BIABubbleOptionsiOSViewController

- (void)loadView
{
  v2 = self;
  sub_10009A758();
}

- (void)_handleBubbleTapped
{
  v2 = self;
  sub_10009B4AC();
}

- (_TtC8Business33BIABubbleOptionsiOSViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController____lazy_storage___optionsLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController_containingViewGestureRecognizer) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BIABubbleOptionsiOSViewController();
  v4 = a3;
  v5 = [(BIABubbleOptionsViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
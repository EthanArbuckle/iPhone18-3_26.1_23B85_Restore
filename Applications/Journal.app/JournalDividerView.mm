@interface JournalDividerView
- (CGSize)intrinsicContentSize;
- (_TtC7Journal18JournalDividerView)initWithCoder:(id)coder;
- (_TtC7Journal18JournalDividerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation JournalDividerView

- (_TtC7Journal18JournalDividerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC7Journal18JournalDividerView_dividerView;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(UIView) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for JournalDividerView();
  height = [(JournalDividerView *)&v11 initWithFrame:x, y, width, height];
  sub_100054650();

  return height;
}

- (CGSize)intrinsicContentSize
{
  v2 = UIViewNoIntrinsicMetric;
  v3 = 1.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10009503C();
}

- (_TtC7Journal18JournalDividerView)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC7Journal18JournalDividerView_dividerView;
  v6 = objc_allocWithZone(UIView);
  coderCopy = coder;
  *(&self->super.super.super.isa + v5) = [v6 init];
  v12.receiver = self;
  v12.super_class = type metadata accessor for JournalDividerView();
  v8 = [(JournalDividerView *)&v12 initWithCoder:coderCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_100054650();
  }

  return v9;
}

@end
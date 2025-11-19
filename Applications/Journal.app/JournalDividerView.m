@interface JournalDividerView
- (CGSize)intrinsicContentSize;
- (_TtC7Journal18JournalDividerView)initWithCoder:(id)a3;
- (_TtC7Journal18JournalDividerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation JournalDividerView

- (_TtC7Journal18JournalDividerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC7Journal18JournalDividerView_dividerView;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(UIView) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for JournalDividerView();
  v9 = [(JournalDividerView *)&v11 initWithFrame:x, y, width, height];
  sub_100054650();

  return v9;
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
  v2 = self;
  sub_10009503C();
}

- (_TtC7Journal18JournalDividerView)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC7Journal18JournalDividerView_dividerView;
  v6 = objc_allocWithZone(UIView);
  v7 = a3;
  *(&self->super.super.super.isa + v5) = [v6 init];
  v12.receiver = self;
  v12.super_class = type metadata accessor for JournalDividerView();
  v8 = [(JournalDividerView *)&v12 initWithCoder:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_100054650();
  }

  return v9;
}

@end
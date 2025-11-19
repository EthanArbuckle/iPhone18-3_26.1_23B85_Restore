@interface TimelineTextView
- (CGSize)intrinsicContentSize;
- (_TtC7Journal16TimelineTextView)initWithCoder:(id)a3;
- (_TtC7Journal16TimelineTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (void)layoutSubviews;
@end

@implementation TimelineTextView

- (_TtC7Journal16TimelineTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  return sub_1000494F4(a4, x, y, width, height);
}

- (CGSize)intrinsicContentSize
{
  ObjectType = swift_getObjectType();
  v4 = self;
  v5 = [(TimelineTextView *)v4 textStorage];
  v6 = [v5 length];

  if (v6)
  {
    v13.receiver = v4;
    v13.super_class = ObjectType;
    [(JournalTextView *)&v13 intrinsicContentSize];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = UIViewNoIntrinsicMetric;

    v10 = 0.0;
  }

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10022CBFC();
}

- (_TtC7Journal16TimelineTextView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal16TimelineTextView_isAlwaysTruncated) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal16TimelineTextView____lazy_storage___truncationFade) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal16TimelineTextView_truncationFadeLength) = 0x4044000000000000;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end
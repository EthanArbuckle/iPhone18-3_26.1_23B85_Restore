@interface TimelineTextView
- (CGSize)intrinsicContentSize;
- (_TtC7Journal16TimelineTextView)initWithCoder:(id)coder;
- (_TtC7Journal16TimelineTextView)initWithFrame:(CGRect)frame textContainer:(id)container;
- (void)layoutSubviews;
@end

@implementation TimelineTextView

- (_TtC7Journal16TimelineTextView)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  containerCopy = container;
  return sub_1000494F4(container, x, y, width, height);
}

- (CGSize)intrinsicContentSize
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  textStorage = [(TimelineTextView *)selfCopy textStorage];
  v6 = [textStorage length];

  if (v6)
  {
    v13.receiver = selfCopy;
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
  selfCopy = self;
  sub_10022CBFC();
}

- (_TtC7Journal16TimelineTextView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal16TimelineTextView_isAlwaysTruncated) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal16TimelineTextView____lazy_storage___truncationFade) = 0;
  *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal16TimelineTextView_truncationFadeLength) = 0x4044000000000000;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end
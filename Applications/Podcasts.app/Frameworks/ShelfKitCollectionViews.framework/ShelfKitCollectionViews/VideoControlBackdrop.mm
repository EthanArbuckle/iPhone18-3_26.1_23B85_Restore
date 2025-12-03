@interface VideoControlBackdrop
- (_TtC23ShelfKitCollectionViews20VideoControlBackdrop)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews20VideoControlBackdrop)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation VideoControlBackdrop

- (_TtC23ShelfKitCollectionViews20VideoControlBackdrop)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20VideoControlBackdrop_primaryBackgroundView) = 0;
  v8 = [objc_allocWithZone(UIView) initWithFrame:{frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20VideoControlBackdrop_contentView) = v8;
  v11.receiver = self;
  v11.super_class = type metadata accessor for VideoControlBackdrop();
  height = [(VideoControlBackdrop *)&v11 initWithFrame:x, y, width, height];
  [(VideoControlBackdrop *)height setClipsToBounds:1];
  [(VideoControlBackdrop *)height addSubview:*(&height->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20VideoControlBackdrop_contentView)];

  return height;
}

- (_TtC23ShelfKitCollectionViews20VideoControlBackdrop)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20VideoControlBackdrop_primaryBackgroundView) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2F863C();
}

@end
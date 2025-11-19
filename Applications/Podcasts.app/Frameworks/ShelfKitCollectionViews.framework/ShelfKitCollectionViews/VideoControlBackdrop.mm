@interface VideoControlBackdrop
- (_TtC23ShelfKitCollectionViews20VideoControlBackdrop)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews20VideoControlBackdrop)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation VideoControlBackdrop

- (_TtC23ShelfKitCollectionViews20VideoControlBackdrop)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20VideoControlBackdrop_primaryBackgroundView) = 0;
  v8 = [objc_allocWithZone(UIView) initWithFrame:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20VideoControlBackdrop_contentView) = v8;
  v11.receiver = self;
  v11.super_class = type metadata accessor for VideoControlBackdrop();
  v9 = [(VideoControlBackdrop *)&v11 initWithFrame:x, y, width, height];
  [(VideoControlBackdrop *)v9 setClipsToBounds:1];
  [(VideoControlBackdrop *)v9 addSubview:*(&v9->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20VideoControlBackdrop_contentView)];

  return v9;
}

- (_TtC23ShelfKitCollectionViews20VideoControlBackdrop)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews20VideoControlBackdrop_primaryBackgroundView) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_2F863C();
}

@end
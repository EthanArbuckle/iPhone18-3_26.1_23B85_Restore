@interface CardRim
- (_TtC23ShelfKitCollectionViews7CardRim)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews7CardRim)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CardRim

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_932D0(change);
}

- (_TtC23ShelfKitCollectionViews7CardRim)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews7CardRim_innerRim;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(CALayer) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews7CardRim_rimWidth) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(CardRim *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews7CardRim_innerRim];
  [v2 bounds];
  v6 = CGRectInset(v5, *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews7CardRim_rimWidth], *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews7CardRim_rimWidth]);
  [v3 setFrame:{v6.origin.x, v6.origin.y, v6.size.width, v6.size.height}];
}

- (_TtC23ShelfKitCollectionViews7CardRim)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
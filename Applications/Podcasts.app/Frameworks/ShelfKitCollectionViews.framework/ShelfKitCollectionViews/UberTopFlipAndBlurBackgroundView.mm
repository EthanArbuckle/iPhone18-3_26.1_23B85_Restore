@interface UberTopFlipAndBlurBackgroundView
- (_TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation UberTopFlipAndBlurBackgroundView

- (_TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_mirrorBackgroundView);
  *v3 = 0;
  v3[1] = 0;
  v4 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_backgroundImageView;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_offset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView_mirrorAmount) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1571C4();
}

- (_TtC23ShelfKitCollectionViews32UberTopFlipAndBlurBackgroundView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
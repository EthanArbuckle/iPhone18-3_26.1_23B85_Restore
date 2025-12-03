@interface EpisodePlayProgressView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC23ShelfKitCollectionViews23EpisodePlayProgressView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation EpisodePlayProgressView

- (_TtC23ShelfKitCollectionViews23EpisodePlayProgressView)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView__progress;
  *v3 = 0;
  v3[4] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_borderColor) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews23EpisodePlayProgressView_barHeight;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  EpisodePlayProgressView.layoutSubviews()();
}

@end
@interface _PodcastsBackgroundExtensionView
- (BOOL)disableBlurEffects;
- (_TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setContentView:(id)a3;
- (void)setDisableAutomaticLayout:(BOOL)a3;
- (void)setDisableBlurEffects:(BOOL)a3;
@end

@implementation _PodcastsBackgroundExtensionView

- (void)setContentView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_151738(a3);
}

- (BOOL)disableBlurEffects
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_30CEF8();

  return v5;
}

- (void)setDisableBlurEffects:(BOOL)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView_effectsView);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_30CF08();
}

- (void)setDisableAutomaticLayout:(BOOL)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView_disableAutomaticLayout) = a3;
  if (!a3)
  {
    [(_PodcastsBackgroundExtensionView *)self setNeedsLayout];
  }
}

- (_TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView_disableAutomaticLayout) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView_effectsView) = [objc_allocWithZone(type metadata accessor for _UIBackgroundExtensionEffectsView()) initWithFrame:{0.0, 0.0, a3.size.width, a3.size.height}];
  v10.receiver = self;
  v10.super_class = type metadata accessor for _PodcastsBackgroundExtensionView();
  v8 = [(_PodcastsBackgroundExtensionView *)&v10 initWithFrame:x, y, width, height];
  [(_PodcastsBackgroundExtensionView *)v8 addSubview:*(&v8->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView_effectsView)];
  return v8;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_151C4C();
}

@end
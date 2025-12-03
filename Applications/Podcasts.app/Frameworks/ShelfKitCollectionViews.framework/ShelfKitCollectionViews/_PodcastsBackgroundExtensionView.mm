@interface _PodcastsBackgroundExtensionView
- (BOOL)disableBlurEffects;
- (_TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setContentView:(id)view;
- (void)setDisableAutomaticLayout:(BOOL)layout;
- (void)setDisableBlurEffects:(BOOL)effects;
@end

@implementation _PodcastsBackgroundExtensionView

- (void)setContentView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_151738(view);
}

- (BOOL)disableBlurEffects
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_30CEF8();

  return v5;
}

- (void)setDisableBlurEffects:(BOOL)effects
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView_effectsView);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_30CF08();
}

- (void)setDisableAutomaticLayout:(BOOL)layout
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView_disableAutomaticLayout) = layout;
  if (!layout)
  {
    [(_PodcastsBackgroundExtensionView *)self setNeedsLayout];
  }
}

- (_TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView_disableAutomaticLayout) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView_effectsView) = [objc_allocWithZone(type metadata accessor for _UIBackgroundExtensionEffectsView()) initWithFrame:{0.0, 0.0, frame.size.width, frame.size.height}];
  v10.receiver = self;
  v10.super_class = type metadata accessor for _PodcastsBackgroundExtensionView();
  height = [(_PodcastsBackgroundExtensionView *)&v10 initWithFrame:x, y, width, height];
  [(_PodcastsBackgroundExtensionView *)height addSubview:*(&height->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews32_PodcastsBackgroundExtensionView_effectsView)];
  return height;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_151C4C();
}

@end
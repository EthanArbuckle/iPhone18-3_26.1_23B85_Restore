@interface EpisodeInfoView
- (_TtC23ShelfKitCollectionViews15EpisodeInfoView)initWithFrame:(CGRect)a3;
- (_TtC23ShelfKitCollectionViews16DynamicTypeLabel)accessibilityTitleLabel;
- (void)didMoveToWindow;
- (void)titleTapped;
- (void)willMoveToWindow:(id)a3;
@end

@implementation EpisodeInfoView

- (void)willMoveToWindow:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  v5 = a3;
  [(EpisodeInfoView *)&v6 willMoveToWindow:v5];
  if (v5)
  {
    EpisodeInfoView.beginUpdates()();
  }
}

- (void)didMoveToWindow
{
  v2 = self;
  EpisodeInfoView.didMoveToWindow()();
}

- (_TtC23ShelfKitCollectionViews15EpisodeInfoView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC23ShelfKitCollectionViews16DynamicTypeLabel)accessibilityTitleLabel
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews15EpisodeInfoView_titleLabel;
  swift_beginAccess();
  return *(&self->super.super.super.super.isa + v3);
}

- (void)titleTapped
{
  v2 = self;
  sub_EC4E8();
}

@end
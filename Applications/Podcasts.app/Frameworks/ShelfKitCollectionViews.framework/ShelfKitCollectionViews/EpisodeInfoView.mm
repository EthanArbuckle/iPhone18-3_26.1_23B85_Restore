@interface EpisodeInfoView
- (_TtC23ShelfKitCollectionViews15EpisodeInfoView)initWithFrame:(CGRect)frame;
- (_TtC23ShelfKitCollectionViews16DynamicTypeLabel)accessibilityTitleLabel;
- (void)didMoveToWindow;
- (void)titleTapped;
- (void)willMoveToWindow:(id)window;
@end

@implementation EpisodeInfoView

- (void)willMoveToWindow:(id)window
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  windowCopy = window;
  [(EpisodeInfoView *)&v6 willMoveToWindow:windowCopy];
  if (windowCopy)
  {
    EpisodeInfoView.beginUpdates()();
  }
}

- (void)didMoveToWindow
{
  selfCopy = self;
  EpisodeInfoView.didMoveToWindow()();
}

- (_TtC23ShelfKitCollectionViews15EpisodeInfoView)initWithFrame:(CGRect)frame
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
  selfCopy = self;
  sub_EC4E8();
}

@end
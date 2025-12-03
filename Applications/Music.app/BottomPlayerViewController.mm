@interface BottomPlayerViewController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_TtC5Music26BottomPlayerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)interaction:(id)interaction didChangeWithContext:(id)context;
- (void)loadView;
- (void)setArtworkView:(id)view;
- (void)setPlayPauseButton:(id)button;
- (void)setReverseButton:(id)button;
- (void)setRouteLabel:(id)label;
- (void)setSharedListeningParticipantsLabel:(id)label;
- (void)setSkipButton:(id)button;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation BottomPlayerViewController

- (void)loadView
{
  type metadata accessor for BottomPlayerViewController.View();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  selfCopy = self;
  v4 = [v3 init];
  [(BottomPlayerViewController *)selfCopy setView:v4];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100044500();
}

- (void)setArtworkView:(id)view
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkView);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkView) = view;
  viewCopy = view;
  selfCopy = self;
  sub_10004EBAC(v6);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100056578();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(BottomPlayerViewController *)&v5 viewWillAppear:appearCopy];
  sub_100059B3C(sub_1002B7FB8, sub_100059EDC, &off_1010A3F18, sub_100059EDC);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10006C090(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1002B2D4C(disappear);
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(BottomPlayerViewController *)&v15 viewWillLayoutSubviews];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = &v2[OBJC_IVAR____TtC5Music26BottomPlayerViewController_lastKnownViewBounds];
    v14 = *&v2[OBJC_IVAR____TtC5Music26BottomPlayerViewController_lastKnownViewBounds + 16];
    v16[0] = *&v2[OBJC_IVAR____TtC5Music26BottomPlayerViewController_lastKnownViewBounds];
    v16[1] = v14;
    v17 = v2[OBJC_IVAR____TtC5Music26BottomPlayerViewController_lastKnownViewBounds + 32];
    *v13 = v6;
    *(v13 + 1) = v8;
    *(v13 + 2) = v10;
    *(v13 + 3) = v12;
    v13[32] = 0;
    sub_1002B2F5C(v16);
  }

  else
  {
    __break(1u);
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_1002B6778(touchCopy);

  return v9 & 1;
}

- (void)setRouteLabel:(id)label
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeLabel);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeLabel) = label;
  labelCopy = label;
}

- (void)setSkipButton:(id)button
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButton);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButton) = button;
  buttonCopy = button;
}

- (void)setPlayPauseButton:(id)button
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButton);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButton) = button;
  buttonCopy = button;
}

- (void)setReverseButton:(id)button
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButton);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButton) = button;
  buttonCopy = button;
}

- (void)setSharedListeningParticipantsLabel:(id)label
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsLabel);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsLabel) = label;
  labelCopy = label;
}

- (_TtC5Music26BottomPlayerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)interaction:(id)interaction didChangeWithContext:(id)context
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1002B688C(context);

  swift_unknownObjectRelease();
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1002B7184(animator);

  swift_unknownObjectRelease();
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  x = location.x;
  interactionCopy = interaction;
  selfCopy = self;
  v8 = sub_1002B7294(x);

  return v8;
}

@end
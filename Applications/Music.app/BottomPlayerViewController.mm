@interface BottomPlayerViewController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (_TtC5Music26BottomPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)interaction:(id)a3 didChangeWithContext:(id)a4;
- (void)loadView;
- (void)setArtworkView:(id)a3;
- (void)setPlayPauseButton:(id)a3;
- (void)setReverseButton:(id)a3;
- (void)setRouteLabel:(id)a3;
- (void)setSharedListeningParticipantsLabel:(id)a3;
- (void)setSkipButton:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation BottomPlayerViewController

- (void)loadView
{
  type metadata accessor for BottomPlayerViewController.View();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = self;
  v4 = [v3 init];
  [(BottomPlayerViewController *)v5 setView:v4];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100044500();
}

- (void)setArtworkView:(id)a3
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkView);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkView) = a3;
  v4 = a3;
  v5 = self;
  sub_10004EBAC(v6);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_100056578();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(BottomPlayerViewController *)&v5 viewWillAppear:v3];
  sub_100059B3C(sub_1002B7FB8, sub_100059EDC, &off_1010A3F18, sub_100059EDC);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10006C090(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1002B2D4C(a3);
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(BottomPlayerViewController *)&v15 viewWillLayoutSubviews];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1002B6778(v7);

  return v9 & 1;
}

- (void)setRouteLabel:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeLabel);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeLabel) = a3;
  v3 = a3;
}

- (void)setSkipButton:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButton);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButton) = a3;
  v3 = a3;
}

- (void)setPlayPauseButton:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButton);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButton) = a3;
  v3 = a3;
}

- (void)setReverseButton:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButton);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButton) = a3;
  v3 = a3;
}

- (void)setSharedListeningParticipantsLabel:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsLabel);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsLabel) = a3;
  v3 = a3;
}

- (_TtC5Music26BottomPlayerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)interaction:(id)a3 didChangeWithContext:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1002B688C(a4);

  swift_unknownObjectRelease();
}

- (void)contextMenuInteraction:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_1002B7184(a5);

  swift_unknownObjectRelease();
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  x = a4.x;
  v6 = a3;
  v7 = self;
  v8 = sub_1002B7294(x);

  return v8;
}

@end
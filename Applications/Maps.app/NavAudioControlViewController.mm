@interface NavAudioControlViewController
- (_TtC4Maps29NavAudioControlViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)heightForLayout:(unint64_t)layout;
- (id)dismissHandler;
- (id)volumeLevelChangeHandler;
- (void)setDismissHandler:(id)handler;
- (void)setVolumeLevelChangeHandler:(id)handler;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NavAudioControlViewController

- (id)volumeLevelChangeHandler
{
  if (*(self + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_volumeLevelChangeHandler))
  {
    v2 = *(self + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_volumeLevelChangeHandler + 8);
    v5[4] = *(self + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_volumeLevelChangeHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100105468;
    v5[3] = &unk_101603980;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setVolumeLevelChangeHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1000D2C9C;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_volumeLevelChangeHandler);
  v8 = *(self + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_volumeLevelChangeHandler);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_1000588AC(v8);
}

- (id)dismissHandler
{
  if (*(self + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_dismissHandler))
  {
    v2 = *(self + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_dismissHandler + 8);
    v5[4] = *(self + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_dismissHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100039C64;
    v5[3] = &unk_101603930;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDismissHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1000FA694;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_dismissHandler);
  v8 = *(self + OBJC_IVAR____TtC4Maps29NavAudioControlViewController_dismissHandler);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_1000588AC(v8);
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(MapsHostingContaineeViewController *)&v5 viewDidLoad];
  cardPresentationController = [v2 cardPresentationController];
  if (cardPresentationController)
  {
    v4 = cardPresentationController;
    [cardPresentationController setEdgeAttachedRegularHeightDimmingBehavior:2];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(MapsHostingContaineeViewController *)&v7 viewWillAppear:appearCopy];
  cardPresentationController = [v4 cardPresentationController];
  if (cardPresentationController)
  {
    v6 = cardPresentationController;
    [cardPresentationController setHideGrabber:1];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(MapsHostingContaineeViewController *)&v5 viewDidAppear:appearCopy];
  sub_100106794();
}

- (double)heightForLayout:(unint64_t)layout
{
  selfCopy = self;
  sub_100106BA0(layout);
  v6 = v5;

  return v6;
}

- (_TtC4Maps29NavAudioControlViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
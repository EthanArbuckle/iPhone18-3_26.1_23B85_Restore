@interface NavAudioControlViewController
- (_TtC4Maps29NavAudioControlViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)heightForLayout:(unint64_t)a3;
- (id)dismissHandler;
- (id)volumeLevelChangeHandler;
- (void)setDismissHandler:(id)a3;
- (void)setVolumeLevelChangeHandler:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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

- (void)setVolumeLevelChangeHandler:(id)a3
{
  v4 = _Block_copy(a3);
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
  v9 = self;
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

- (void)setDismissHandler:(id)a3
{
  v4 = _Block_copy(a3);
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
  v9 = self;
  sub_1000588AC(v8);
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(MapsHostingContaineeViewController *)&v5 viewDidLoad];
  v3 = [v2 cardPresentationController];
  if (v3)
  {
    v4 = v3;
    [v3 setEdgeAttachedRegularHeightDimmingBehavior:2];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(MapsHostingContaineeViewController *)&v7 viewWillAppear:v3];
  v5 = [v4 cardPresentationController];
  if (v5)
  {
    v6 = v5;
    [v5 setHideGrabber:1];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(MapsHostingContaineeViewController *)&v5 viewDidAppear:v3];
  sub_100106794();
}

- (double)heightForLayout:(unint64_t)a3
{
  v4 = self;
  sub_100106BA0(a3);
  v6 = v5;

  return v6;
}

- (_TtC4Maps29NavAudioControlViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
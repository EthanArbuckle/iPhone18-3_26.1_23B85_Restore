@interface SVSHomePodIDViewController
- (_TtC14HDSViewService26SVSHomePodIDViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)handler;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)configureEngine;
- (void)setHandler:(id)handler;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SVSHomePodIDViewController

- (id)handler
{
  if (*(self + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_handler))
  {
    v2 = *(self + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_handler + 8);
    v5[4] = *(self + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_handler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100091194;
    v5[3] = &unk_1000F1A70;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1000935D8;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_handler);
  v8 = *(self + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_handler);
  v9 = *(self + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_handler + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_100061714(v8);
}

- (void)viewDidLoad
{
  selfCopy = self;
  SVSHomePodIDViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  SVSHomePodIDViewController.viewWillAppear(_:)(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  SVSHomePodIDViewController.viewDidDisappear(_:)(disappear);
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for SVSHomePodIDViewController();
  v2 = v14.receiver;
  [(SVSHomePodIDViewController *)&v14 viewDidLayoutSubviews];
  layer = [*&v2[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_preView] layer];
  view = [v2 view];
  if (view)
  {
    v5 = view;
    [view bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [layer setFrame:{v7, v9, v11, v13}];
  }

  else
  {
    __break(1u);
  }
}

- (void)configureEngine
{
  selfCopy = self;
  SVSHomePodIDViewController.configureEngine()();
}

- (_TtC14HDSViewService26SVSHomePodIDViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  if (*(self + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_startIngesting) == 1)
  {
    v5 = *(self + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine);
    if (v5)
    {
      [v5 ingestVideoFrame:buffer];
    }
  }
}

@end
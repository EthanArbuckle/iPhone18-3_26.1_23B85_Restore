@interface AudioAppContentViewController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC22AudioMessagesExtension29AudioAppContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)displayLinkFiredFrom:(id)a3;
- (void)longPressFrom:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation AudioAppContentViewController

- (void)viewDidLoad
{
  v2 = self;
  AudioAppContentViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AudioAppContentViewController();
  v4 = v7.receiver;
  [(AudioAppContentViewController *)&v7 viewDidAppear:v3];
  v5 = *&v4[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_displayLink];
  if (v5)
  {
    v6 = v5;
    [v6 setPaused:{0, v7.receiver, v7.super_class}];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  AudioAppContentViewController.viewWillDisappear(_:)(a3);
}

- (void)willMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.super.isa = a3;
  AudioAppContentViewController.willMove(toParent:)(v9);
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AudioAppContentViewController();
  v2 = v3.receiver;
  [(AudioAppContentViewController *)&v3 viewWillLayoutSubviews];
  sub_350BC();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  AudioAppContentViewController.traitCollectionDidChange(_:)(v9);
}

- (void)displayLinkFiredFrom:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_42AA8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_361C4();

  sub_2E3A0(v6, &unk_82040);
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = AudioAppContentViewController.gestureRecognizerShouldBegin(_:)(v4);

  return self & 1;
}

- (void)longPressFrom:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_38250(v4);
}

- (_TtC22AudioMessagesExtension29AudioAppContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
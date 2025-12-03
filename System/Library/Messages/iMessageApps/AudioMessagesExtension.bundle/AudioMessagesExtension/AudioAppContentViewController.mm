@interface AudioAppContentViewController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtC22AudioMessagesExtension29AudioAppContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)displayLinkFiredFrom:(id)from;
- (void)longPressFrom:(id)from;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation AudioAppContentViewController

- (void)viewDidLoad
{
  selfCopy = self;
  AudioAppContentViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AudioAppContentViewController();
  v4 = v7.receiver;
  [(AudioAppContentViewController *)&v7 viewDidAppear:appearCopy];
  v5 = *&v4[OBJC_IVAR____TtC22AudioMessagesExtension29AudioAppContentViewController_displayLink];
  if (v5)
  {
    v6 = v5;
    [v6 setPaused:{0, v7.receiver, v7.super_class}];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  AudioAppContentViewController.viewWillDisappear(_:)(disappear);
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.super.isa = controller;
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  AudioAppContentViewController.traitCollectionDidChange(_:)(v9);
}

- (void)displayLinkFiredFrom:(id)from
{
  if (from)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_42AA8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_361C4();

  sub_2E3A0(v6, &unk_82040);
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = AudioAppContentViewController.gestureRecognizerShouldBegin(_:)(beginCopy);

  return self & 1;
}

- (void)longPressFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  sub_38250(fromCopy);
}

- (_TtC22AudioMessagesExtension29AudioAppContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
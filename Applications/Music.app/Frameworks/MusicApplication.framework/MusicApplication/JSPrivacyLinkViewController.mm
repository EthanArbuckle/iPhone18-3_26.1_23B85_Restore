@interface JSPrivacyLinkViewController
- (_TtC16MusicApplication27JSPrivacyLinkViewController)initWithCoder:(id)coder;
- (_TtC16MusicApplication27JSPrivacyLinkViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)systemLayoutFittingSizeDidChangeForChildViewController:(id)controller;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation JSPrivacyLinkViewController

- (_TtC16MusicApplication27JSPrivacyLinkViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSPrivacyLinkViewController_privacyLinkViewController) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  JSPrivacyLinkViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  JSPrivacyLinkViewController.viewDidLayoutSubviews()();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(JSPrivacyLinkViewController *)&v12 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v11[4] = sub_456240;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_CF24C;
  v11[3] = &block_descriptor_7;
  v9 = _Block_copy(v11);
  v10 = v7;

  [coordinator animateAlongsideTransition:v9 completion:0];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  JSPrivacyLinkViewController.traitCollectionDidChange(_:)(v9);
}

- (void)systemLayoutFittingSizeDidChangeForChildViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  controllerCopy = controller;
  v5 = v6.receiver;
  [(JSPrivacyLinkViewController *)&v6 systemLayoutFittingSizeDidChangeForChildViewController:controllerCopy];
  sub_45592C();
}

- (_TtC16MusicApplication27JSPrivacyLinkViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface JSPrivacyLinkViewController
- (_TtC16MusicApplication27JSPrivacyLinkViewController)initWithCoder:(id)a3;
- (_TtC16MusicApplication27JSPrivacyLinkViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)systemLayoutFittingSizeDidChangeForChildViewController:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation JSPrivacyLinkViewController

- (_TtC16MusicApplication27JSPrivacyLinkViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication27JSPrivacyLinkViewController_privacyLinkViewController) = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  JSPrivacyLinkViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  JSPrivacyLinkViewController.viewDidLayoutSubviews()();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = v12.receiver;
  [(JSPrivacyLinkViewController *)&v12 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
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

  [a4 animateAlongsideTransition:v9 completion:0];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  JSPrivacyLinkViewController.traitCollectionDidChange(_:)(v9);
}

- (void)systemLayoutFittingSizeDidChangeForChildViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(JSPrivacyLinkViewController *)&v6 systemLayoutFittingSizeDidChangeForChildViewController:v4];
  sub_45592C();
}

- (_TtC16MusicApplication27JSPrivacyLinkViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
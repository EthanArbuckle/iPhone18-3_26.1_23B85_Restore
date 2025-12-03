@interface ActionViewController
- (UIButton)actionButton;
- (UILabel)descriptionLabel;
- (_TtC26GameCenterMessageExtension20ActionViewController)initWithCoder:(id)coder;
- (_TtC26GameCenterMessageExtension20ActionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)openSettings;
- (void)viewDidLoad;
@end

@implementation ActionViewController

- (UILabel)descriptionLabel
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIButton)actionButton
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100039A14();
}

- (void)openSettings
{
  v3 = objc_allocWithZone(GKReporter);
  selfCopy = self;
  v5 = [v3 init];
  [v5 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestOpenSettings];

  defaultWorkspace = [objc_opt_self() defaultWorkspace];
  if (defaultWorkspace)
  {
    v7 = defaultWorkspace;
    [defaultWorkspace openGameCenterSettings];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC26GameCenterMessageExtension20ActionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_100041B20();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    bundleCopy = bundle;
    v7 = sub_100041AF0();
  }

  else
  {
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ActionViewController();
  v9 = [(ActionViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC26GameCenterMessageExtension20ActionViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for ActionViewController();
  coderCopy = coder;
  v6 = [(ActionViewController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end
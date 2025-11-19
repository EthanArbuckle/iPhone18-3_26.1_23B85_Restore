@interface ActionViewController
- (UIButton)actionButton;
- (UILabel)descriptionLabel;
- (_TtC26GameCenterMessageExtension20ActionViewController)initWithCoder:(id)a3;
- (_TtC26GameCenterMessageExtension20ActionViewController)initWithNibName:(id)a3 bundle:(id)a4;
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
  v2 = self;
  sub_100039A14();
}

- (void)openSettings
{
  v3 = objc_allocWithZone(GKReporter);
  v4 = self;
  v5 = [v3 init];
  [v5 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestOpenSettings];

  v6 = [objc_opt_self() defaultWorkspace];
  if (v6)
  {
    v7 = v6;
    [v6 openGameCenterSettings];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC26GameCenterMessageExtension20ActionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_100041B20();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v6 = a4;
    v7 = sub_100041AF0();
  }

  else
  {
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ActionViewController();
  v9 = [(ActionViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC26GameCenterMessageExtension20ActionViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for ActionViewController();
  v5 = a3;
  v6 = [(ActionViewController *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end
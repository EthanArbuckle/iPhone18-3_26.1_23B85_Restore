@interface CompanionAutoLaunchSettingsViewController
- (_TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController)initWithCoder:(id)coder;
- (_TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController)initWithConfiguration:(id)configuration;
- (_TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation CompanionAutoLaunchSettingsViewController

- (_TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController)initWithConfiguration:(id)configuration
{
  v5 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController_iconFetcher;
  v6 = objc_allocWithZone(CSLPRFIconFetcher);
  configurationCopy = configuration;
  *(&self->super.super.super.isa + v5) = [v6 init];
  v8 = configurationCopy;
  v9 = sub_1A984(v8);
  v11 = v10;
  v13 = v12;

  v14 = (self + OBJC_IVAR____TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController_model);
  *v14 = v9;
  v14[1] = v11;
  v14[2] = v13;
  v17.receiver = self;
  v17.super_class = type metadata accessor for CompanionAutoLaunchSettingsViewController();
  v15 = [(CompanionAutoLaunchSettingsViewController *)&v17 initWithNibName:0 bundle:0];

  return v15;
}

- (_TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController_iconFetcher;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(CSLPRFIconFetcher) init];
  result = sub_26AE4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_19D68();
}

- (_TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
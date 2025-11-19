@interface DetailedConsentNavigationController
- (_TtC11Diagnostics35DetailedConsentNavigationController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC11Diagnostics35DetailedConsentNavigationController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)agreeButtonClicked;
- (void)disagreeButtonClicked;
- (void)viewDidLoad;
@end

@implementation DetailedConsentNavigationController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DetailedConsentNavigationController();
  v2 = v6.receiver;
  [(DetailedConsentNavigationController *)&v6 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];

    sub_100045444();
  }

  else
  {
    __break(1u);
  }
}

- (void)agreeButtonClicked
{
  v2 = self;
  sub_100045624();
}

- (void)disagreeButtonClicked
{
  v2 = qword_1001FC7E8;
  v6 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.cancel()();
  }

  v3 = [(DetailedConsentNavigationController *)v6 parentViewController];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100125854(1, 0, 1, 0, 0);
      v5 = v4;
    }

    else
    {
      v5 = v6;
      v6 = v4;
    }
  }
}

- (_TtC11Diagnostics35DetailedConsentNavigationController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics35DetailedConsentNavigationController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface DetailedConsentNavigationController
- (_TtC11Diagnostics35DetailedConsentNavigationController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC11Diagnostics35DetailedConsentNavigationController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
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
  view = [v2 view];
  if (view)
  {
    v4 = view;
    clearColor = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:clearColor];

    sub_100045444();
  }

  else
  {
    __break(1u);
  }
}

- (void)agreeButtonClicked
{
  selfCopy = self;
  sub_100045624();
}

- (void)disagreeButtonClicked
{
  v2 = qword_1001FC7E8;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.cancel()();
  }

  parentViewController = [(DetailedConsentNavigationController *)selfCopy parentViewController];
  if (parentViewController)
  {
    v4 = parentViewController;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100125854(1, 0, 1, 0, 0);
      v5 = v4;
    }

    else
    {
      v5 = selfCopy;
      selfCopy = v4;
    }
  }
}

- (_TtC11Diagnostics35DetailedConsentNavigationController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11Diagnostics35DetailedConsentNavigationController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
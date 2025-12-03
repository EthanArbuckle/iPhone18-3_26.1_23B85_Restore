@interface BCConfigurationViewController
- (BCConfigurationViewController)initWithMode:(int64_t)mode dismissHandler:(id)handler;
- (BCConfigurationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)actionSelectorViewController:(id)controller didSelectItemAtIndex:(int64_t)index;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BCConfigurationViewController

- (BCConfigurationViewController)initWithMode:(int64_t)mode dismissHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return ConfigurationViewController.init(mode:dismissHandler:)(mode, sub_23DDD6F48, v6);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_23DDD2CF4();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_23DDD2E94(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_23DDD3038(disappear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_23DDD31B4(appear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_23DDD3340();
}

- (void)actionSelectorViewController:(id)controller didSelectItemAtIndex:(int64_t)index
{
  controllerCopy = controller;
  selfCopy = self;
  sub_23DDD680C(index);
}

- (BCConfigurationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
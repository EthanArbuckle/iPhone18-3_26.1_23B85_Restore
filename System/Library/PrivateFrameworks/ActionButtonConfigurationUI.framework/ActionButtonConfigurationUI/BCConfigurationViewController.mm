@interface BCConfigurationViewController
- (BCConfigurationViewController)initWithMode:(int64_t)a3 dismissHandler:(id)a4;
- (BCConfigurationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)actionSelectorViewController:(id)a3 didSelectItemAtIndex:(int64_t)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation BCConfigurationViewController

- (BCConfigurationViewController)initWithMode:(int64_t)a3 dismissHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return ConfigurationViewController.init(mode:dismissHandler:)(a3, sub_23DDD6F48, v6);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_23DDD2CF4();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_23DDD2E94(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_23DDD3038(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_23DDD31B4(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_23DDD3340();
}

- (void)actionSelectorViewController:(id)a3 didSelectItemAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_23DDD680C(a4);
}

- (BCConfigurationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
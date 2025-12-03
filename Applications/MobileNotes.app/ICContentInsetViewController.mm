@interface ICContentInsetViewController
- (ICContentInsetViewController)initWithCoder:(id)coder;
- (ICContentInsetViewController)initWithContentViewController:(id)controller;
- (ICContentInsetViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setConfiguration:(id)configuration;
- (void)viewDidLoad;
@end

@implementation ICContentInsetViewController

- (void)setConfiguration:(id)configuration
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___ICContentInsetViewController_configuration);
  *(&self->super.super.super.isa + OBJC_IVAR___ICContentInsetViewController_configuration) = configuration;
  configurationCopy = configuration;
  selfCopy = self;
  sub_100481B78();
}

- (ICContentInsetViewController)initWithContentViewController:(id)controller
{
  v5 = OBJC_IVAR___ICContentInsetViewController_configuration;
  v6 = type metadata accessor for ContentInsetViewController.Configuration();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___ICContentInsetViewControllerConfiguration_insets];
  v9 = *&NSDirectionalEdgeInsetsZero.bottom;
  *v8 = *&NSDirectionalEdgeInsetsZero.top;
  v8[1] = v9;
  v7[OBJC_IVAR___ICContentInsetViewControllerConfiguration_usesSafeAreaLayoutGuide] = 0;
  *&v7[OBJC_IVAR___ICContentInsetViewControllerConfiguration_cornerRadius] = 0;
  v13.receiver = v7;
  v13.super_class = v6;
  controllerCopy = controller;
  *(&self->super.super.super.isa + v5) = [(ICContentInsetViewController *)&v13 init];
  *(&self->super.super.super.isa + OBJC_IVAR___ICContentInsetViewController_contentViewController) = controllerCopy;
  v12.receiver = self;
  v12.super_class = type metadata accessor for ContentInsetViewController();
  return [(ICContentInsetViewController *)&v12 initWithNibName:0 bundle:0];
}

- (ICContentInsetViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR___ICContentInsetViewController_configuration;
  v5 = type metadata accessor for ContentInsetViewController.Configuration();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR___ICContentInsetViewControllerConfiguration_insets];
  v8 = *&NSDirectionalEdgeInsetsZero.bottom;
  *v7 = *&NSDirectionalEdgeInsetsZero.top;
  v7[1] = v8;
  v6[OBJC_IVAR___ICContentInsetViewControllerConfiguration_usesSafeAreaLayoutGuide] = 0;
  *&v6[OBJC_IVAR___ICContentInsetViewControllerConfiguration_cornerRadius] = 0;
  v10.receiver = v6;
  v10.super_class = v5;
  *(&self->super.super.super.isa + v4) = [(ICContentInsetViewController *)&v10 init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ContentInsetViewController();
  v2 = v3.receiver;
  [(ICContentInsetViewController *)&v3 viewDidLoad];
  sub_100481EBC();
}

- (ICContentInsetViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
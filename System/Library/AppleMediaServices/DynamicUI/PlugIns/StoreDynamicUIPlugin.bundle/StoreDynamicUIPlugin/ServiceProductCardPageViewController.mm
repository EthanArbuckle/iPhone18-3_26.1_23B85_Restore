@interface ServiceProductCardPageViewController
- (_TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ServiceProductCardPageViewController

- (void)loadView
{
  selfCopy = self;
  sub_102D8C();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_103240(&selRef_viewDidLoad, &ViewControllerPresenter.viewDidLoad());
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_102EE4(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10300C(disappear, &selRef_viewDidDisappear_, &ViewControllerPresenter.viewDidDisappear());
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10300C(appear, &selRef_viewWillAppear_, &ViewControllerPresenter.viewWillAppear());
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1030F4(disappear);
}

- (void)didReceiveMemoryWarning
{
  selfCopy = self;
  sub_103240(&selRef_didReceiveMemoryWarning, &ViewControllerPresenter.viewDidReceiveMemoryWarning());
}

- (_TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_13BB84();
  }

  bundleCopy = bundle;
  sub_103B50();
}

@end
@interface ServiceProductCardPageViewController
- (_TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ServiceProductCardPageViewController

- (void)loadView
{
  v2 = self;
  sub_102D8C();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_103240(&selRef_viewDidLoad, &ViewControllerPresenter.viewDidLoad());
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_102EE4(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_10300C(a3, &selRef_viewDidDisappear_, &ViewControllerPresenter.viewDidDisappear());
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10300C(a3, &selRef_viewWillAppear_, &ViewControllerPresenter.viewWillAppear());
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1030F4(a3);
}

- (void)didReceiveMemoryWarning
{
  v2 = self;
  sub_103240(&selRef_didReceiveMemoryWarning, &ViewControllerPresenter.viewDidReceiveMemoryWarning());
}

- (_TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_13BB84();
  }

  v5 = a4;
  sub_103B50();
}

@end
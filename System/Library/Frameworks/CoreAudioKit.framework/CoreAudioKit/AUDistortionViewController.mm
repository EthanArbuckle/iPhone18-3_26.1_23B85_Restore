@interface AUDistortionViewController
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AUDistortionViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_237187290();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = self;
  sub_23718A0DC();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_self();
  v6 = self;
  v7 = [v5 defaultCenter];
  [v7 removeObserver_];

  v8.receiver = v6;
  v8.super_class = type metadata accessor for AUDistortionViewController();
  [(AUAppleViewControllerBase *)&v8 viewWillDisappear:v3];
}

@end
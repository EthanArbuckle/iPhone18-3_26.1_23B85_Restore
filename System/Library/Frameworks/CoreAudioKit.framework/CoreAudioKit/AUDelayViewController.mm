@interface AUDelayViewController
- (void)modeControlChanged;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)zoomIn;
- (void)zoomOut;
@end

@implementation AUDelayViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_23716E744();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = objc_opt_self();
  v7 = self;
  v5 = [v4 defaultCenter];
  v6 = sub_23719653C();
  [v5 addObserver:v7 selector:sel_auParameterValueChangedWithNotification_ name:v6 object:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_self();
  v6 = self;
  v7 = [v5 defaultCenter];
  [v7 removeObserver_];

  v8.receiver = v6;
  v8.super_class = type metadata accessor for AUDelayViewController();
  [(AUAppleViewControllerBase *)&v8 viewWillDisappear:v3];
}

- (void)zoomIn
{
  v2 = self;
  sub_2371708A0();
}

- (void)zoomOut
{
  v2 = self;
  sub_237170988();
}

- (void)modeControlChanged
{
  v2 = self;
  sub_237170A74();
}

@end
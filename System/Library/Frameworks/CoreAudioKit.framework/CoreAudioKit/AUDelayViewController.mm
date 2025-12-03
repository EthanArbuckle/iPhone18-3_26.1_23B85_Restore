@interface AUDelayViewController
- (void)modeControlChanged;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)zoomIn;
- (void)zoomOut;
@end

@implementation AUDelayViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_23716E744();
}

- (void)viewWillAppear:(BOOL)appear
{
  v4 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v4 defaultCenter];
  v6 = sub_23719653C();
  [defaultCenter addObserver:selfCopy selector:sel_auParameterValueChangedWithNotification_ name:v6 object:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v5 defaultCenter];
  [defaultCenter removeObserver_];

  v8.receiver = selfCopy;
  v8.super_class = type metadata accessor for AUDelayViewController();
  [(AUAppleViewControllerBase *)&v8 viewWillDisappear:disappearCopy];
}

- (void)zoomIn
{
  selfCopy = self;
  sub_2371708A0();
}

- (void)zoomOut
{
  selfCopy = self;
  sub_237170988();
}

- (void)modeControlChanged
{
  selfCopy = self;
  sub_237170A74();
}

@end
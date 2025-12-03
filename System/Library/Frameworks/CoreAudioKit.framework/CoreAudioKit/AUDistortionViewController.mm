@interface AUDistortionViewController
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AUDistortionViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_237187290();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_23718A0DC();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v5 defaultCenter];
  [defaultCenter removeObserver_];

  v8.receiver = selfCopy;
  v8.super_class = type metadata accessor for AUDistortionViewController();
  [(AUAppleViewControllerBase *)&v8 viewWillDisappear:disappearCopy];
}

@end
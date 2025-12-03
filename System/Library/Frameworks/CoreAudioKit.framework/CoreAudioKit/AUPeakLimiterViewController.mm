@interface AUPeakLimiterViewController
- (void)knobReleasedWithNotification:(id)notification;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation AUPeakLimiterViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_23715C0E0();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2371605F0();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v5 defaultCenter];
  [defaultCenter removeObserver_];

  v8.receiver = selfCopy;
  v8.super_class = type metadata accessor for AUPeakLimiterViewController();
  [(AUAppleViewControllerBase *)&v8 viewWillDisappear:disappearCopy];
}

- (void)knobReleasedWithNotification:(id)notification
{
  v4 = sub_23719631C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371962FC();
  selfCopy = self;
  v10 = sub_23715BD9C();
  sub_23717E58C();

  (*(v5 + 8))(v8, v4);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_23715FB0C();
}

@end
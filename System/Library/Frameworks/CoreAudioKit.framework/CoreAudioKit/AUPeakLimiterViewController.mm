@interface AUPeakLimiterViewController
- (void)knobReleasedWithNotification:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation AUPeakLimiterViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_23715C0E0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = self;
  sub_2371605F0();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_self();
  v6 = self;
  v7 = [v5 defaultCenter];
  [v7 removeObserver_];

  v8.receiver = v6;
  v8.super_class = type metadata accessor for AUPeakLimiterViewController();
  [(AUAppleViewControllerBase *)&v8 viewWillDisappear:v3];
}

- (void)knobReleasedWithNotification:(id)a3
{
  v4 = sub_23719631C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371962FC();
  v9 = self;
  v10 = sub_23715BD9C();
  sub_23717E58C();

  (*(v5 + 8))(v8, v4);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_23715FB0C();
}

@end
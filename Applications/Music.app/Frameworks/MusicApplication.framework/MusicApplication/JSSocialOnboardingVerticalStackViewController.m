@interface JSSocialOnboardingVerticalStackViewController
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation JSSocialOnboardingVerticalStackViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_179B1C(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for JSSocialOnboardingVerticalStackViewController();
  v4 = v8.receiver;
  [(VerticalStackViewController *)&v8 viewDidAppear:v3];
  v5 = [v4 presentingViewController];
  if (v5)
  {

    v6 = [v4 navigationController];
    if (v6)
    {
      v7 = v6;
      [v6 setModalInPresentation:1];

      v4 = v7;
    }
  }
}

- (void)viewDidLoad
{
  v2 = self;
  sub_179D64();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_17AEDC();
}

@end
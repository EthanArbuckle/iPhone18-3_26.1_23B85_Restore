@interface FMMainViewController
- (BOOL)shouldAutorotate;
- (unint64_t)supportedInterfaceOrientations;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FMMainViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10001DFAC();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100026E9C(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10004C0B4();
}

- (void)viewLayoutMarginsDidChange
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMMainViewController();
  v2 = v7.receiver;
  [(FMMainViewController *)&v7 viewLayoutMarginsDidChange];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 layoutMargins];
    v6 = v5;

    qword_1006D4798 = v6;
  }

  else
  {
    __break(1u);
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1000569D0(a3);
}

- (BOOL)shouldAutorotate
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return v3 == 1;
}

@end
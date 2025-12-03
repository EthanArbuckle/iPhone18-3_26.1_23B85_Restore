@interface FMMainViewController
- (BOOL)shouldAutorotate;
- (unint64_t)supportedInterfaceOrientations;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FMMainViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10001DFAC();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100026E9C(appear);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
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

  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view layoutMargins];
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
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000569D0(appear);
}

- (BOOL)shouldAutorotate
{
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return userInterfaceIdiom == 1;
}

@end
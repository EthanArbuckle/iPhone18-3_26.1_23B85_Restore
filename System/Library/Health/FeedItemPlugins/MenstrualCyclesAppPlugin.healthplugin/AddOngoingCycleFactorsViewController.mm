@interface AddOngoingCycleFactorsViewController
- (void)doneButtonTapped;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AddOngoingCycleFactorsViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_29E244AF8(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_29E244C44();
}

- (void)doneButtonTapped
{
  v2 = self;
  sub_29E246864();
}

@end
@interface AddOngoingCycleFactorsViewController
- (void)doneButtonTapped;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AddOngoingCycleFactorsViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_29E244AF8(appear);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29E244C44();
}

- (void)doneButtonTapped
{
  selfCopy = self;
  sub_29E246864();
}

@end
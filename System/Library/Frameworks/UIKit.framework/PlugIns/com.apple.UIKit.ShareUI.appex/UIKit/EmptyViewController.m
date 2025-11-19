@interface EmptyViewController
- (void)didReceiveMemoryWarning;
- (void)viewDidLoad;
@end

@implementation EmptyViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = EmptyViewController;
  [(EmptyViewController *)&v2 viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = EmptyViewController;
  [(EmptyViewController *)&v2 didReceiveMemoryWarning];
}

@end
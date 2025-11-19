@interface ViewController
- (void)didReceiveMemoryWarning;
- (void)viewDidLoad;
@end

@implementation ViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = ViewController;
  [(ViewController *)&v2 viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = ViewController;
  [(ViewController *)&v2 didReceiveMemoryWarning];
}

@end
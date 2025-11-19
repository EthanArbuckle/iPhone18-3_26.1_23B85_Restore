@interface ViewController
- (void)viewDidLoad;
@end

@implementation ViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = ViewController;
  [(ViewController *)&v2 viewDidLoad];
}

@end
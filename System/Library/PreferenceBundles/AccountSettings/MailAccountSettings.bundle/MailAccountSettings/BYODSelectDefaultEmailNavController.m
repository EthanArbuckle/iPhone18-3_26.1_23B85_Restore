@interface BYODSelectDefaultEmailNavController
- (BYODSelectDefaultEmailDelegate)byodDelegate;
- (void)viewDidLoad;
@end

@implementation BYODSelectDefaultEmailNavController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = BYODSelectDefaultEmailNavController;
  [(BYODSelectDefaultEmailNavController *)&v2 viewDidLoad];
}

- (BYODSelectDefaultEmailDelegate)byodDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_byodDelegate);

  return WeakRetained;
}

@end
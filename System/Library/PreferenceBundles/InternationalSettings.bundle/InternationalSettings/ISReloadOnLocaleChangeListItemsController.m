@interface ISReloadOnLocaleChangeListItemsController
- (void)viewDidLoad;
@end

@implementation ISReloadOnLocaleChangeListItemsController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ISReloadOnLocaleChangeListItemsController;
  [(ISReloadOnLocaleChangeListItemsController *)&v4 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"reloadSpecifiers" name:NSCurrentLocaleDidChangeNotification object:0];
}

@end
@interface ContactsCardNavigationController
- (ContactsCardNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation ContactsCardNavigationController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ContactsCardNavigationController;
  [(ContactsCardNavigationController *)&v5 viewDidLoad];
  v3 = +[CNUIColorRepository contactStyleDefaultBackgroundColor];
  view = [(ContactsCardNavigationController *)self view];
  [view setBackgroundColor:v3];
}

- (ContactsCardNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = ContactsCardNavigationController;
  v4 = [(ContactsCardNavigationController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(ContactsCardNavigationController *)v4 setRestorationIdentifier:@"ContactsCardNavigationController"];
  }

  return v5;
}

@end
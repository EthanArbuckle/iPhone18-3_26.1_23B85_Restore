@interface ContactsCardNavigationController
- (ContactsCardNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation ContactsCardNavigationController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ContactsCardNavigationController;
  [(ContactsCardNavigationController *)&v5 viewDidLoad];
  v3 = +[CNUIColorRepository contactStyleDefaultBackgroundColor];
  v4 = [(ContactsCardNavigationController *)self view];
  [v4 setBackgroundColor:v3];
}

- (ContactsCardNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = ContactsCardNavigationController;
  v4 = [(ContactsCardNavigationController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(ContactsCardNavigationController *)v4 setRestorationIdentifier:@"ContactsCardNavigationController"];
  }

  return v5;
}

@end
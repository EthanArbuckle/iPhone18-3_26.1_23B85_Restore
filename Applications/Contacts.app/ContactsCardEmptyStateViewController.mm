@interface ContactsCardEmptyStateViewController
- (ContactsCardEmptyStateViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIViewController)emptyStateViewController;
- (void)viewDidLoad;
@end

@implementation ContactsCardEmptyStateViewController

- (ContactsCardEmptyStateViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = ContactsCardEmptyStateViewController;
  v4 = [(ContactsCardEmptyStateViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(ContactsCardEmptyStateViewController *)v4 setRestorationIdentifier:@"ContactsCardEmptyStateViewController"];
  }

  return v5;
}

- (UIViewController)emptyStateViewController
{
  emptyStateViewController = self->_emptyStateViewController;
  if (!emptyStateViewController)
  {
    v4 = objc_alloc_init(UIViewController);
    v5 = self->_emptyStateViewController;
    self->_emptyStateViewController = v4;

    v6 = +[UIContentUnavailableConfiguration emptyConfiguration];
    v7 = CNContactsUIBundle();
    v8 = [v7 localizedStringForKey:@"NO_CONTACT_SELECTED" value:&stru_100020AC8 table:@"Localized"];
    [v6 setText:v8];

    v9 = +[UIBackgroundConfiguration clearConfiguration];
    [v6 setBackground:v9];

    v10 = +[UIColor tertiarySystemGroupedBackgroundColor];
    background = [v6 background];
    [background setBackgroundColor:v10];

    background2 = [v6 background];
    [background2 setCornerRadius:26.0];

    [(UIViewController *)self->_emptyStateViewController setContentUnavailableConfiguration:v6];
    emptyStateViewController = self->_emptyStateViewController;
  }

  return emptyStateViewController;
}

- (void)viewDidLoad
{
  v38.receiver = self;
  v38.super_class = ContactsCardEmptyStateViewController;
  [(ContactsCardEmptyStateViewController *)&v38 viewDidLoad];
  emptyStateViewController = [(ContactsCardEmptyStateViewController *)self emptyStateViewController];
  [emptyStateViewController willMoveToParentViewController:self];

  view = [(ContactsCardEmptyStateViewController *)self view];
  emptyStateViewController2 = [(ContactsCardEmptyStateViewController *)self emptyStateViewController];
  view2 = [emptyStateViewController2 view];
  [view addSubview:view2];

  emptyStateViewController3 = [(ContactsCardEmptyStateViewController *)self emptyStateViewController];
  [emptyStateViewController3 didMoveToParentViewController:self];

  emptyStateViewController4 = [(ContactsCardEmptyStateViewController *)self emptyStateViewController];
  view3 = [emptyStateViewController4 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  emptyStateViewController5 = [(ContactsCardEmptyStateViewController *)self emptyStateViewController];
  view4 = [emptyStateViewController5 view];
  topAnchor = [view4 topAnchor];
  view5 = [(ContactsCardEmptyStateViewController *)self view];
  safeAreaLayoutGuide = [view5 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  v39[0] = v31;
  emptyStateViewController6 = [(ContactsCardEmptyStateViewController *)self emptyStateViewController];
  view6 = [emptyStateViewController6 view];
  leadingAnchor = [view6 leadingAnchor];
  view7 = [(ContactsCardEmptyStateViewController *)self view];
  leadingAnchor2 = [view7 leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:5.0];
  v39[1] = v25;
  emptyStateViewController7 = [(ContactsCardEmptyStateViewController *)self emptyStateViewController];
  view8 = [emptyStateViewController7 view];
  bottomAnchor = [view8 bottomAnchor];
  view9 = [(ContactsCardEmptyStateViewController *)self view];
  bottomAnchor2 = [view9 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
  v39[2] = v11;
  emptyStateViewController8 = [(ContactsCardEmptyStateViewController *)self emptyStateViewController];
  view10 = [emptyStateViewController8 view];
  trailingAnchor = [view10 trailingAnchor];
  view11 = [(ContactsCardEmptyStateViewController *)self view];
  trailingAnchor2 = [view11 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
  v39[3] = v17;
  v18 = [NSArray arrayWithObjects:v39 count:4];
  [NSLayoutConstraint activateConstraints:v18];

  v19 = +[CNUIColorRepository contactStyleDefaultBackgroundColor];
  view12 = [(ContactsCardEmptyStateViewController *)self view];
  [view12 setBackgroundColor:v19];
}

@end
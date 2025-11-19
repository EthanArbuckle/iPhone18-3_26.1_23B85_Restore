@interface ContactsCardEmptyStateViewController
- (ContactsCardEmptyStateViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIViewController)emptyStateViewController;
- (void)viewDidLoad;
@end

@implementation ContactsCardEmptyStateViewController

- (ContactsCardEmptyStateViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = ContactsCardEmptyStateViewController;
  v4 = [(ContactsCardEmptyStateViewController *)&v7 initWithNibName:a3 bundle:a4];
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
    v11 = [v6 background];
    [v11 setBackgroundColor:v10];

    v12 = [v6 background];
    [v12 setCornerRadius:26.0];

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
  v3 = [(ContactsCardEmptyStateViewController *)self emptyStateViewController];
  [v3 willMoveToParentViewController:self];

  v4 = [(ContactsCardEmptyStateViewController *)self view];
  v5 = [(ContactsCardEmptyStateViewController *)self emptyStateViewController];
  v6 = [v5 view];
  [v4 addSubview:v6];

  v7 = [(ContactsCardEmptyStateViewController *)self emptyStateViewController];
  [v7 didMoveToParentViewController:self];

  v8 = [(ContactsCardEmptyStateViewController *)self emptyStateViewController];
  v9 = [v8 view];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v37 = [(ContactsCardEmptyStateViewController *)self emptyStateViewController];
  v36 = [v37 view];
  v34 = [v36 topAnchor];
  v35 = [(ContactsCardEmptyStateViewController *)self view];
  v33 = [v35 safeAreaLayoutGuide];
  v32 = [v33 topAnchor];
  v31 = [v34 constraintEqualToAnchor:v32 constant:0.0];
  v39[0] = v31;
  v30 = [(ContactsCardEmptyStateViewController *)self emptyStateViewController];
  v29 = [v30 view];
  v27 = [v29 leadingAnchor];
  v28 = [(ContactsCardEmptyStateViewController *)self view];
  v26 = [v28 leadingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26 constant:5.0];
  v39[1] = v25;
  v24 = [(ContactsCardEmptyStateViewController *)self emptyStateViewController];
  v23 = [v24 view];
  v21 = [v23 bottomAnchor];
  v22 = [(ContactsCardEmptyStateViewController *)self view];
  v10 = [v22 bottomAnchor];
  v11 = [v21 constraintEqualToAnchor:v10 constant:-10.0];
  v39[2] = v11;
  v12 = [(ContactsCardEmptyStateViewController *)self emptyStateViewController];
  v13 = [v12 view];
  v14 = [v13 trailingAnchor];
  v15 = [(ContactsCardEmptyStateViewController *)self view];
  v16 = [v15 trailingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16 constant:-10.0];
  v39[3] = v17;
  v18 = [NSArray arrayWithObjects:v39 count:4];
  [NSLayoutConstraint activateConstraints:v18];

  v19 = +[CNUIColorRepository contactStyleDefaultBackgroundColor];
  v20 = [(ContactsCardEmptyStateViewController *)self view];
  [v20 setBackgroundColor:v19];
}

@end
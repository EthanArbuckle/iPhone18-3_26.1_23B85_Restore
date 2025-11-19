@interface NavContactSearchViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (NavActionCoordination)navActionCoordinator;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_contactValuesSelected:(id)a3;
- (void)loadContaineeHeaderView;
- (void)viewDidLoad;
@end

@implementation NavContactSearchViewController

- (NavActionCoordination)navActionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_navActionCoordinator);

  return WeakRetained;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ContactSearchViewController *)self contactValues];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

  v13.receiver = self;
  v13.super_class = NavContactSearchViewController;
  v10 = [(ContactSearchViewController *)&v13 tableView:v7 cellForRowAtIndexPath:v6];

  if ([(NSOrderedSet *)self->_activeContactsValues containsObject:v9])
  {
    v11 = +[UIColor secondaryLabelColor];
    [v10 setCapabilityColor:v11];
  }

  return v10;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ContactSearchViewController *)self contactValues];
  v7 = [v5 row];

  v8 = [v6 objectAtIndexedSubscript:v7];

  LOBYTE(self) = [(NSOrderedSet *)self->_activeContactsValues containsObject:v8];
  return self ^ 1;
}

- (void)_contactValuesSelected:(id)a3
{
  v4 = a3;
  v5 = [(ContactSearchViewController *)self suggestionDataSource];
  [v5 toggleContact:v4];

  [(ContaineeViewController *)self handleDismissAction:0];
}

- (void)loadContaineeHeaderView
{
  v6 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(ContainerHeaderView *)v6 setDelegate:self];
  [(ContainerHeaderView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[SharedETA] Contacts Title" value:@"localized string not found" table:0];
  [(ContainerHeaderView *)v6 setTitle:v4];

  v5 = [(NavContactSearchViewController *)self view];
  [v5 addSubview:v6];

  [(ContactSearchViewController *)self setTitleHeaderView:v6];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = NavContactSearchViewController;
  [(ContactSearchViewController *)&v11 viewDidLoad];
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 setBlurInCardView:0];

  v4 = [UIColor colorNamed:@"NavigationMaterialColor"];
  v5 = [(ContaineeViewController *)self cardPresentationController];
  [v5 setCardColor:v4];

  v6 = [NSOrderedSet alloc];
  v7 = +[MSPSharedTripService sharedInstance];
  v8 = [v7 receivers];
  v9 = [v6 initWithArray:v8];
  activeContactsValues = self->_activeContactsValues;
  self->_activeContactsValues = v9;
}

@end
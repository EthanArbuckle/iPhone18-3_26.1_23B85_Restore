@interface NavContactSearchViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (NavActionCoordination)navActionCoordinator;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_contactValuesSelected:(id)selected;
- (void)loadContaineeHeaderView;
- (void)viewDidLoad;
@end

@implementation NavContactSearchViewController

- (NavActionCoordination)navActionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_navActionCoordinator);

  return WeakRetained;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  contactValues = [(ContactSearchViewController *)self contactValues];
  v9 = [contactValues objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v13.receiver = self;
  v13.super_class = NavContactSearchViewController;
  v10 = [(ContactSearchViewController *)&v13 tableView:viewCopy cellForRowAtIndexPath:pathCopy];

  if ([(NSOrderedSet *)self->_activeContactsValues containsObject:v9])
  {
    v11 = +[UIColor secondaryLabelColor];
    [v10 setCapabilityColor:v11];
  }

  return v10;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  contactValues = [(ContactSearchViewController *)self contactValues];
  v7 = [pathCopy row];

  v8 = [contactValues objectAtIndexedSubscript:v7];

  LOBYTE(self) = [(NSOrderedSet *)self->_activeContactsValues containsObject:v8];
  return self ^ 1;
}

- (void)_contactValuesSelected:(id)selected
{
  selectedCopy = selected;
  suggestionDataSource = [(ContactSearchViewController *)self suggestionDataSource];
  [suggestionDataSource toggleContact:selectedCopy];

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

  view = [(NavContactSearchViewController *)self view];
  [view addSubview:v6];

  [(ContactSearchViewController *)self setTitleHeaderView:v6];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = NavContactSearchViewController;
  [(ContactSearchViewController *)&v11 viewDidLoad];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setBlurInCardView:0];

  v4 = [UIColor colorNamed:@"NavigationMaterialColor"];
  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController2 setCardColor:v4];

  v6 = [NSOrderedSet alloc];
  v7 = +[MSPSharedTripService sharedInstance];
  receivers = [v7 receivers];
  v9 = [v6 initWithArray:receivers];
  activeContactsValues = self->_activeContactsValues;
  self->_activeContactsValues = v9;
}

@end
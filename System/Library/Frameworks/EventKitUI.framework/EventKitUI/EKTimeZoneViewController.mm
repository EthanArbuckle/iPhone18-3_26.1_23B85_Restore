@interface EKTimeZoneViewController
- (CGSize)preferredContentSize;
- (EKTimeZoneViewController)initWithChooserStyle:(int)style;
- (EKTimeZoneViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willDismissSearchController:(id)controller;
@end

@implementation EKTimeZoneViewController

- (EKTimeZoneViewController)initWithChooserStyle:(int)style
{
  v8.receiver = self;
  v8.super_class = EKTimeZoneViewController;
  v4 = [(EKTimeZoneViewController *)&v8 initWithStyle:0];
  if (v4)
  {
    v5 = EventKitUIBundle();
    v6 = [v5 localizedStringForKey:@"Time Zone" value:&stru_1F4EF6790 table:0];
    [(EKTimeZoneViewController *)v4 setTitle:v6];

    v4->_style = style;
  }

  return v4;
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = EKTimeZoneViewController;
  [(EKTimeZoneViewController *)&v18 viewDidLoad];
  v3 = [(EKTimeZoneViewController *)[EKTimeZoneSearchResultsController alloc] initWithChooserStyle:[(EKTimeZoneViewController *)self chooserStyle]];
  delegate = [(EKTimeZoneViewController *)self delegate];
  [(EKTimeZoneViewController *)v3 setDelegate:delegate];

  timeZone = [(EKTimeZoneViewController *)self timeZone];
  [(EKTimeZoneViewController *)v3 setTimeZone:timeZone];

  v6 = [objc_alloc(MEMORY[0x1E69DCF10]) initWithSearchResultsController:v3];
  searchController = self->_searchController;
  self->_searchController = v6;

  [(UISearchController *)self->_searchController setSearchResultsUpdater:v3];
  navigationItem = [(EKTimeZoneViewController *)self navigationItem];
  [navigationItem setPreferredSearchBarPlacement:2];

  v9 = self->_searchController;
  navigationItem2 = [(EKTimeZoneViewController *)self navigationItem];
  [navigationItem2 setSearchController:v9];

  navigationItem3 = [(EKTimeZoneViewController *)self navigationItem];
  [navigationItem3 setHidesSearchBarWhenScrolling:0];

  v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v12 lineHeight];
  v14 = v13;
  tableView = [(EKTimeZoneViewController *)self tableView];
  [tableView setEstimatedRowHeight:v14];

  v16 = *MEMORY[0x1E69DE3D0];
  tableView2 = [(EKTimeZoneViewController *)self tableView];
  [tableView2 setRowHeight:v16];

  [(EKTimeZoneViewController *)self setDefinesPresentationContext:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = EKTimeZoneViewController;
  [(EKTimeZoneViewController *)&v11 viewWillAppear:appear];
  timeZone = self->_timeZone;
  if (timeZone)
  {
    cityName = [(NSTimeZone *)timeZone cityName];
    searchBar = [(UISearchController *)self->_searchController searchBar];
    [searchBar setText:cityName];

    mEMORY[0x1E698B670] = [MEMORY[0x1E698B670] sharedManager];
    v8 = [mEMORY[0x1E698B670] citiesMatchingName:cityName];
    cities = self->_cities;
    self->_cities = v8;
  }

  else
  {
    cityName = [MEMORY[0x1E698B670] sharedManager];
    allCities = [cityName allCities];
    mEMORY[0x1E698B670] = self->_cities;
    self->_cities = allCities;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  view = [(EKTimeZoneViewController *)self view];
  if (!EKUICurrentHeightSizeClassIsRegular(view))
  {
    goto LABEL_6;
  }

  view2 = [(EKTimeZoneViewController *)self view];
  if (!EKUICurrentWidthSizeClassIsRegularInViewHierarchy(view2))
  {

LABEL_6:
    goto LABEL_7;
  }

  isPresentedInsidePopover = [(UIViewController *)self isPresentedInsidePopover];

  if (!isPresentedInsidePopover)
  {
    [(UISearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
    [(UISearchController *)self->_searchController setHidesNavigationBarDuringPresentation:0];
  }

LABEL_7:
  v8.receiver = self;
  v8.super_class = EKTimeZoneViewController;
  [(EKTimeZoneViewController *)&v8 viewDidAppear:appearCopy];
}

- (CGSize)preferredContentSize
{
  v2 = EKUIContainedControllerIdealWidth();
  v3 = 600.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [[EKUITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"TimeZone"];
  cities = self->_cities;
  v8 = [pathCopy row];

  v9 = [(NSArray *)cities objectAtIndexedSubscript:v8];
  v10 = [v9 displayNameIncludingCountry:1];
  textLabel = [(EKUITableViewCell *)v6 textLabel];
  [textLabel setText:v10];

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v11 = -[NSArray objectAtIndexedSubscript:](self->_cities, "objectAtIndexedSubscript:", [path row]);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v6 = MEMORY[0x1E695DFE8];
    timeZone = [v11 timeZone];
    v8 = [v6 timeZoneWithName:timeZone];

    name = [v11 name];
    [v8 setCityName:name];

    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 timeZoneViewController:self didSelectTimeZone:v8];
  }
}

- (void)willDismissSearchController:(id)controller
{
  mEMORY[0x1E698B670] = [MEMORY[0x1E698B670] sharedManager];
  allCities = [mEMORY[0x1E698B670] allCities];
  cities = self->_cities;
  self->_cities = allCities;

  tableView = [(EKTimeZoneViewController *)self tableView];
  [tableView reloadData];
}

- (EKTimeZoneViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface ParkedCarInfoCardViewController
- (ParkedCarInfoCardViewControllerDelegate)actionDelegate;
- (ShareDelegate)shareDelegate;
- (void)_loadParkedCarViewControllerIfNeeded;
- (void)didBecomeCurrent;
- (void)didResignCurrent;
- (void)handleDismissAction:(id)action;
- (void)parkedCarViewControllerDidBeginEditing:(id)editing;
- (void)parkedCarViewControllerDidRequestDismissal:(id)dismissal;
- (void)parkedCarViewControllerDidSelectShare:(id)share;
- (void)parkerCarViewControllerDidSelectDoDirections:(id)directions transportType:(int64_t)type;
- (void)setParkedCar:(id)car;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willChangeLayout:(unint64_t)layout;
@end

@implementation ParkedCarInfoCardViewController

- (ParkedCarInfoCardViewControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (ShareDelegate)shareDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_shareDelegate);

  return WeakRetained;
}

- (void)parkedCarViewControllerDidBeginEditing:(id)editing
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController wantsLayout:3];
}

- (void)parkedCarViewControllerDidRequestDismissal:(id)dismissal
{
  actionDelegate = [(ParkedCarInfoCardViewController *)self actionDelegate];
  [actionDelegate parkedCarInfoCardViewControllerWantsDismiss:self];
}

- (void)parkerCarViewControllerDidSelectDoDirections:(id)directions transportType:(int64_t)type
{
  v6 = objc_alloc_init(SearchFieldItem);
  v7 = +[SearchResult currentLocationSearchResult];
  [(SearchFieldItem *)v6 setSearchResult:v7];

  v8 = objc_alloc_init(SearchFieldItem);
  v9 = [SearchResult alloc];
  parkedCar = [(ParkedCarInfoCardViewController *)self parkedCar];
  v11 = [(SearchResult *)v9 initWithParkedCar:parkedCar];
  [(SearchFieldItem *)v8 setSearchResult:v11];

  v12 = [DirectionItem alloc];
  v19[0] = v6;
  v19[1] = v8;
  v13 = [NSArray arrayWithObjects:v19 count:2];
  v14 = [(DirectionItem *)v12 initWithItems:v13 transportType:type];

  v17 = @"DirectionsSessionInitiatorKey";
  v18 = &off_1016E6860;
  v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  actionDelegate = [(ParkedCarInfoCardViewController *)self actionDelegate];
  [actionDelegate parkedCarInfoCardViewController:self showDirectionsForItem:v14 userInfo:v15];
}

- (void)parkedCarViewControllerDidSelectShare:(id)share
{
  shareCopy = share;
  v5 = [SearchResult alloc];
  parkedCar = [(ParkedCarInfoCardViewController *)self parkedCar];
  v12 = [(SearchResult *)v5 initWithParkedCar:parkedCar];

  [(SearchResult *)v12 setReverseGeocoded:1];
  contactForSharingToMessages = [(SearchResult *)v12 contactForSharingToMessages];
  v8 = [ShareItem shareItemWithSearchResult:v12 contact:contactForSharingToMessages includePrintActivity:0];

  view = [shareCopy view];

  v10 = [MUPresentationOptions optionsWithSender:view];

  shareDelegate = [(ParkedCarInfoCardViewController *)self shareDelegate];
  [shareDelegate shareItem:v8 presentationOptions:v10 completion:0];
}

- (void)willChangeLayout:(unint64_t)layout
{
  v5.receiver = self;
  v5.super_class = ParkedCarInfoCardViewController;
  [(InfoCardViewController *)&v5 willChangeLayout:?];
  if (layout - 1 <= 1)
  {
    [(ParkedCarViewController *)self->_parkedCarViewController dismissTextField];
  }
}

- (void)setParkedCar:(id)car
{
  carCopy = car;
  [(ParkedCarInfoCardViewController *)self _loadParkedCarViewControllerIfNeeded];
  [(ParkedCarViewController *)self->_parkedCarViewController setParkedCar:carCopy];
  title = [carCopy title];

  [(InfoCardViewController *)self setHeaderTitle:title];
}

- (void)handleDismissAction:(id)action
{
  [(ParkedCarViewController *)self->_parkedCarViewController instrumentDismissAction];
  actionDelegate = [(ParkedCarInfoCardViewController *)self actionDelegate];
  [actionDelegate parkedCarInfoCardViewControllerWantsDismiss:self];
}

- (void)_loadParkedCarViewControllerIfNeeded
{
  if (!self->_parkedCarViewController)
  {
    v3 = objc_alloc_init(ParkedCarViewController);
    parkedCarViewController = self->_parkedCarViewController;
    self->_parkedCarViewController = v3;

    [(ParkedCarViewController *)self->_parkedCarViewController setParkedCarDelegate:self];
    v5 = self->_parkedCarViewController;

    [(InfoCardViewController *)self setContentViewController:v5];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = ParkedCarInfoCardViewController;
  [(InfoCardViewController *)&v4 viewDidDisappear:disappear];
  [(ParkedCarViewController *)self->_parkedCarViewController setActive:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ParkedCarInfoCardViewController;
  [(ContaineeViewController *)&v4 viewWillAppear:appear];
  [(ParkedCarViewController *)self->_parkedCarViewController setActive:1];
}

- (void)didResignCurrent
{
  [(ParkedCarViewController *)self->_parkedCarViewController setActive:0];
  v3.receiver = self;
  v3.super_class = ParkedCarInfoCardViewController;
  [(ContaineeViewController *)&v3 didResignCurrent];
}

- (void)didBecomeCurrent
{
  v3.receiver = self;
  v3.super_class = ParkedCarInfoCardViewController;
  [(ContaineeViewController *)&v3 didBecomeCurrent];
  [(ParkedCarViewController *)self->_parkedCarViewController setActive:1];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ParkedCarInfoCardViewController;
  [(InfoCardViewController *)&v3 viewDidLoad];
  [(ParkedCarInfoCardViewController *)self _loadParkedCarViewControllerIfNeeded];
}

@end
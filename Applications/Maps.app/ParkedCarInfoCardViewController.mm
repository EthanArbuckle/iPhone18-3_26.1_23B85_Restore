@interface ParkedCarInfoCardViewController
- (ParkedCarInfoCardViewControllerDelegate)actionDelegate;
- (ShareDelegate)shareDelegate;
- (void)_loadParkedCarViewControllerIfNeeded;
- (void)didBecomeCurrent;
- (void)didResignCurrent;
- (void)handleDismissAction:(id)a3;
- (void)parkedCarViewControllerDidBeginEditing:(id)a3;
- (void)parkedCarViewControllerDidRequestDismissal:(id)a3;
- (void)parkedCarViewControllerDidSelectShare:(id)a3;
- (void)parkerCarViewControllerDidSelectDoDirections:(id)a3 transportType:(int64_t)a4;
- (void)setParkedCar:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willChangeLayout:(unint64_t)a3;
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

- (void)parkedCarViewControllerDidBeginEditing:(id)a3
{
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 wantsLayout:3];
}

- (void)parkedCarViewControllerDidRequestDismissal:(id)a3
{
  v4 = [(ParkedCarInfoCardViewController *)self actionDelegate];
  [v4 parkedCarInfoCardViewControllerWantsDismiss:self];
}

- (void)parkerCarViewControllerDidSelectDoDirections:(id)a3 transportType:(int64_t)a4
{
  v6 = objc_alloc_init(SearchFieldItem);
  v7 = +[SearchResult currentLocationSearchResult];
  [(SearchFieldItem *)v6 setSearchResult:v7];

  v8 = objc_alloc_init(SearchFieldItem);
  v9 = [SearchResult alloc];
  v10 = [(ParkedCarInfoCardViewController *)self parkedCar];
  v11 = [(SearchResult *)v9 initWithParkedCar:v10];
  [(SearchFieldItem *)v8 setSearchResult:v11];

  v12 = [DirectionItem alloc];
  v19[0] = v6;
  v19[1] = v8;
  v13 = [NSArray arrayWithObjects:v19 count:2];
  v14 = [(DirectionItem *)v12 initWithItems:v13 transportType:a4];

  v17 = @"DirectionsSessionInitiatorKey";
  v18 = &off_1016E6860;
  v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v16 = [(ParkedCarInfoCardViewController *)self actionDelegate];
  [v16 parkedCarInfoCardViewController:self showDirectionsForItem:v14 userInfo:v15];
}

- (void)parkedCarViewControllerDidSelectShare:(id)a3
{
  v4 = a3;
  v5 = [SearchResult alloc];
  v6 = [(ParkedCarInfoCardViewController *)self parkedCar];
  v12 = [(SearchResult *)v5 initWithParkedCar:v6];

  [(SearchResult *)v12 setReverseGeocoded:1];
  v7 = [(SearchResult *)v12 contactForSharingToMessages];
  v8 = [ShareItem shareItemWithSearchResult:v12 contact:v7 includePrintActivity:0];

  v9 = [v4 view];

  v10 = [MUPresentationOptions optionsWithSender:v9];

  v11 = [(ParkedCarInfoCardViewController *)self shareDelegate];
  [v11 shareItem:v8 presentationOptions:v10 completion:0];
}

- (void)willChangeLayout:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = ParkedCarInfoCardViewController;
  [(InfoCardViewController *)&v5 willChangeLayout:?];
  if (a3 - 1 <= 1)
  {
    [(ParkedCarViewController *)self->_parkedCarViewController dismissTextField];
  }
}

- (void)setParkedCar:(id)a3
{
  v4 = a3;
  [(ParkedCarInfoCardViewController *)self _loadParkedCarViewControllerIfNeeded];
  [(ParkedCarViewController *)self->_parkedCarViewController setParkedCar:v4];
  v5 = [v4 title];

  [(InfoCardViewController *)self setHeaderTitle:v5];
}

- (void)handleDismissAction:(id)a3
{
  [(ParkedCarViewController *)self->_parkedCarViewController instrumentDismissAction];
  v4 = [(ParkedCarInfoCardViewController *)self actionDelegate];
  [v4 parkedCarInfoCardViewControllerWantsDismiss:self];
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

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ParkedCarInfoCardViewController;
  [(InfoCardViewController *)&v4 viewDidDisappear:a3];
  [(ParkedCarViewController *)self->_parkedCarViewController setActive:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ParkedCarInfoCardViewController;
  [(ContaineeViewController *)&v4 viewWillAppear:a3];
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
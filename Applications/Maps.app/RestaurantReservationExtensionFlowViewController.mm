@interface RestaurantReservationExtensionFlowViewController
- (RestaurantReservationExtensionFlowViewController)initWithRestaurantReservationRequester:(id)requester;
- (void)restaurantReservationRequestControllerDidComplete:(id)complete contentRefresh:(BOOL)refresh;
- (void)viewDidLoad;
- (void)willResignCurrent:(BOOL)current;
@end

@implementation RestaurantReservationExtensionFlowViewController

- (void)restaurantReservationRequestControllerDidComplete:(id)complete contentRefresh:(BOOL)refresh
{
  if (refresh)
  {
    contentUpdateDelegate = [(ExtensionFlowViewController *)self contentUpdateDelegate];
    [contentUpdateDelegate extensionContentDidChange];
  }

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController dismiss:1];
}

- (void)willResignCurrent:(BOOL)current
{
  currentCopy = current;
  restaurantRequestController = [(RestaurantReservationExtensionFlowViewController *)self restaurantRequestController];
  [restaurantRequestController willResignCurrent:currentCopy];

  v6.receiver = self;
  v6.super_class = RestaurantReservationExtensionFlowViewController;
  [(ContaineeViewController *)&v6 willResignCurrent:currentCopy];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = RestaurantReservationExtensionFlowViewController;
  [(ExtensionFlowViewController *)&v10 viewDidLoad];
  v3 = [RestaurantReservationRequestController alloc];
  reservationRequester = [(RestaurantReservationExtensionFlowViewController *)self reservationRequester];
  v5 = [(RestaurantReservationRequestController *)v3 initWithFlowController:self reservationRequester:reservationRequester];
  [(RestaurantReservationExtensionFlowViewController *)self setRestaurantRequestController:v5];

  restaurantRequestController = [(RestaurantReservationExtensionFlowViewController *)self restaurantRequestController];
  [restaurantRequestController setDelegate:self];

  bookingSession = [(RestaurantReservationExtensionFlowViewController *)self bookingSession];
  restaurantRequestController2 = [(RestaurantReservationExtensionFlowViewController *)self restaurantRequestController];
  [restaurantRequestController2 setAnalyticsBookingSession:bookingSession];

  restaurantRequestController3 = [(RestaurantReservationExtensionFlowViewController *)self restaurantRequestController];
  [restaurantRequestController3 present];
}

- (RestaurantReservationExtensionFlowViewController)initWithRestaurantReservationRequester:(id)requester
{
  requesterCopy = requester;
  v8.receiver = self;
  v8.super_class = RestaurantReservationExtensionFlowViewController;
  v5 = [(ExtensionFlowViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(RestaurantReservationExtensionFlowViewController *)v5 setReservationRequester:requesterCopy];
  }

  return v6;
}

@end
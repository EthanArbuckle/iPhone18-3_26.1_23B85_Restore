@interface RestaurantReservationExtensionFlowViewController
- (RestaurantReservationExtensionFlowViewController)initWithRestaurantReservationRequester:(id)a3;
- (void)restaurantReservationRequestControllerDidComplete:(id)a3 contentRefresh:(BOOL)a4;
- (void)viewDidLoad;
- (void)willResignCurrent:(BOOL)a3;
@end

@implementation RestaurantReservationExtensionFlowViewController

- (void)restaurantReservationRequestControllerDidComplete:(id)a3 contentRefresh:(BOOL)a4
{
  if (a4)
  {
    v5 = [(ExtensionFlowViewController *)self contentUpdateDelegate];
    [v5 extensionContentDidChange];
  }

  v6 = [(ContaineeViewController *)self cardPresentationController];
  [v6 dismiss:1];
}

- (void)willResignCurrent:(BOOL)a3
{
  v3 = a3;
  v5 = [(RestaurantReservationExtensionFlowViewController *)self restaurantRequestController];
  [v5 willResignCurrent:v3];

  v6.receiver = self;
  v6.super_class = RestaurantReservationExtensionFlowViewController;
  [(ContaineeViewController *)&v6 willResignCurrent:v3];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = RestaurantReservationExtensionFlowViewController;
  [(ExtensionFlowViewController *)&v10 viewDidLoad];
  v3 = [RestaurantReservationRequestController alloc];
  v4 = [(RestaurantReservationExtensionFlowViewController *)self reservationRequester];
  v5 = [(RestaurantReservationRequestController *)v3 initWithFlowController:self reservationRequester:v4];
  [(RestaurantReservationExtensionFlowViewController *)self setRestaurantRequestController:v5];

  v6 = [(RestaurantReservationExtensionFlowViewController *)self restaurantRequestController];
  [v6 setDelegate:self];

  v7 = [(RestaurantReservationExtensionFlowViewController *)self bookingSession];
  v8 = [(RestaurantReservationExtensionFlowViewController *)self restaurantRequestController];
  [v8 setAnalyticsBookingSession:v7];

  v9 = [(RestaurantReservationExtensionFlowViewController *)self restaurantRequestController];
  [v9 present];
}

- (RestaurantReservationExtensionFlowViewController)initWithRestaurantReservationRequester:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RestaurantReservationExtensionFlowViewController;
  v5 = [(ExtensionFlowViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(RestaurantReservationExtensionFlowViewController *)v5 setReservationRequester:v4];
  }

  return v6;
}

@end
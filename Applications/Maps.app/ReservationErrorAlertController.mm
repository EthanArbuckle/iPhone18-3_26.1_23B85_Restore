@interface ReservationErrorAlertController
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ReservationErrorAlertController

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = ReservationErrorAlertController;
  [(ReservationErrorAlertController *)&v7 viewWillAppear:appear];
  displayView = [(ReservationErrorAlertController *)self displayView];
  bookingSession = [(ReservationErrorAlertController *)self bookingSession];
  [bookingSession setCurrentView:displayView];

  bookingSession2 = [(ReservationErrorAlertController *)self bookingSession];
  [bookingSession2 beginSessionIfNeeded];
}

@end
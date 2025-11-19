@interface ReservationErrorAlertController
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ReservationErrorAlertController

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = ReservationErrorAlertController;
  [(ReservationErrorAlertController *)&v7 viewWillAppear:a3];
  v4 = [(ReservationErrorAlertController *)self displayView];
  v5 = [(ReservationErrorAlertController *)self bookingSession];
  [v5 setCurrentView:v4];

  v6 = [(ReservationErrorAlertController *)self bookingSession];
  [v6 beginSessionIfNeeded];
}

@end
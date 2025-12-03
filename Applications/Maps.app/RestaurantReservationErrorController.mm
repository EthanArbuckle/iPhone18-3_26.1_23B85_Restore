@interface RestaurantReservationErrorController
- (RestaurantReservationErrorController)initWithAppName:(id)name restaurantName:(id)restaurantName cancelAction:(id)action activityAction:(id)activityAction;
- (id)alertActionsForAvailableBookingsIntentResponse:(id)response error:(id)error;
- (id)alertActionsForBookReservationIntentResponse:(id)response error:(id)error;
- (id)alertControllerForAvailableBookingsResponse:(id)response error:(id)error;
- (id)alertControllerForBookReservationResponse:(id)response error:(id)error;
- (id)cancelAlertAction;
- (id)errorBodyForAvailableBookingsIntentCode:(int64_t)code;
- (id)errorBodyForBookReservationIntentCode:(int64_t)code;
- (id)punchOutAlertActionForIntentResponse:(id)response;
@end

@implementation RestaurantReservationErrorController

- (id)errorBodyForBookReservationIntentCode:(int64_t)code
{
  v4 = 0;
  if (code > 2)
  {
    if (code != 3)
    {
      if (code == 4)
      {
        v5 = +[NSBundle mainBundle];
        v6 = v5;
        v7 = @"reservation_book_reservation_alert_body_error_failed_credentials_key");
        goto LABEL_10;
      }

      if (code != 5)
      {
        goto LABEL_14;
      }
    }

    v5 = +[NSBundle mainBundle];
    v6 = v5;
    v7 = @"reservation_book_reservation_alert_body_error_failed_app_launch_key");
LABEL_10:
    v11 = [v5 localizedStringForKey:v7 value:@"localized string not found" table:0];

    v12 = [NSString alloc];
    restaurantName = [(RestaurantReservationErrorController *)self restaurantName];
    appName = [(RestaurantReservationErrorController *)self appName];
    v4 = [v12 initWithFormat:v11, restaurantName, appName];

    goto LABEL_13;
  }

  if (code == 1)
  {
    v8 = +[NSBundle mainBundle];
    v9 = v8;
    v10 = @"reservation_book_reservation_alert_body_error_denied_key");
  }

  else
  {
    if (code != 2)
    {
      goto LABEL_14;
    }

    v8 = +[NSBundle mainBundle];
    v9 = v8;
    v10 = @"reservation_book_reservation_alert_body_error_failed_key");
  }

  v11 = [v8 localizedStringForKey:v10 value:@"localized string not found" table:0];

  v15 = [NSString alloc];
  restaurantName = [(RestaurantReservationErrorController *)self restaurantName];
  v4 = [v15 initWithFormat:v11, restaurantName];
LABEL_13:

LABEL_14:

  return v4;
}

- (id)errorBodyForAvailableBookingsIntentCode:(int64_t)code
{
  if ((code - 1) > 2)
  {
    v9 = 0;
  }

  else
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"reservation_get_available_bookings_alert_body_error_failure_key" value:@"localized string not found" table:0];

    v6 = [NSString alloc];
    restaurantName = [(RestaurantReservationErrorController *)self restaurantName];
    appName = [(RestaurantReservationErrorController *)self appName];
    v9 = [v6 initWithFormat:v5, restaurantName, appName];
  }

  return v9;
}

- (id)alertActionsForBookReservationIntentResponse:(id)response error:(id)error
{
  responseCopy = response;
  v7 = [(RestaurantReservationErrorController *)self punchOutAlertActionForIntentResponse:responseCopy];
  cancelAlertAction = [(RestaurantReservationErrorController *)self cancelAlertAction];
  if (!responseCopy || error || (v9 = [responseCopy code], (v9 - 3) < 3))
  {
    v14 = v7;
    v15 = cancelAlertAction;
    v10 = &v14;
    v11 = 2;
LABEL_5:
    v12 = [NSArray arrayWithObjects:v10 count:v11, v14, v15, v16];
    goto LABEL_6;
  }

  if ((v9 - 1) <= 1)
  {
    v16 = cancelAlertAction;
    v10 = &v16;
    v11 = 1;
    goto LABEL_5;
  }

  v12 = &__NSArray0__struct;
LABEL_6:

  return v12;
}

- (id)alertActionsForAvailableBookingsIntentResponse:(id)response error:(id)error
{
  responseCopy = response;
  v7 = [(RestaurantReservationErrorController *)self punchOutAlertActionForIntentResponse:responseCopy];
  cancelAlertAction = [(RestaurantReservationErrorController *)self cancelAlertAction];
  if (responseCopy && !error && [responseCopy code] - 1 > 2)
  {
    v9 = &__NSArray0__struct;
  }

  else
  {
    v11[0] = v7;
    v11[1] = cancelAlertAction;
    v9 = [NSArray arrayWithObjects:v11 count:2];
  }

  return v9;
}

- (id)cancelAlertAction
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"reservation_error_cancel_key" value:@"localized string not found" table:0];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100A6052C;
  v7[3] = &unk_10165F220;
  v7[4] = self;
  v5 = [UIAlertAction actionWithTitle:v4 style:1 handler:v7];

  return v5;
}

- (id)punchOutAlertActionForIntentResponse:(id)response
{
  responseCopy = response;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"reservation_error_continue_in_key" value:@"localized string not found" table:0];

  v7 = [NSString alloc];
  appName = [(RestaurantReservationErrorController *)self appName];
  v9 = [v7 initWithFormat:v6, appName];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100A606C4;
  v13[3] = &unk_1016383E0;
  v13[4] = self;
  v14 = responseCopy;
  v10 = responseCopy;
  v11 = [UIAlertAction actionWithTitle:v9 style:0 handler:v13];

  return v11;
}

- (id)alertControllerForBookReservationResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  v8 = errorCopy;
  code = 3;
  if (responseCopy && !errorCopy)
  {
    code = [responseCopy code];
  }

  if ([RestaurantReservationErrorController shouldDisplayAlertForResponseWithBookReservationIntentCode:code])
  {
    v10 = [(RestaurantReservationErrorController *)self errorBodyForBookReservationIntentCode:code];
    v11 = [UIAlertController alertControllerWithTitle:0 message:v10 preferredStyle:1];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = [(RestaurantReservationErrorController *)self alertActionsForBookReservationIntentResponse:responseCopy error:v8, 0];
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v11 addAction:*(*(&v18 + 1) + 8 * i)];
        }

        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)alertControllerForAvailableBookingsResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  v8 = errorCopy;
  code = 3;
  if (responseCopy && !errorCopy)
  {
    code = [responseCopy code];
  }

  if ([RestaurantReservationErrorController shouldDisplayAlertForResponseWithAvailableBookingsIntentCode:code])
  {
    v10 = [(RestaurantReservationErrorController *)self errorBodyForAvailableBookingsIntentCode:code];
    v11 = [UIAlertController alertControllerWithTitle:0 message:v10 preferredStyle:1];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = [(RestaurantReservationErrorController *)self alertActionsForAvailableBookingsIntentResponse:responseCopy error:v8, 0];
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v11 addAction:*(*(&v18 + 1) + 8 * i)];
        }

        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (RestaurantReservationErrorController)initWithAppName:(id)name restaurantName:(id)restaurantName cancelAction:(id)action activityAction:(id)activityAction
{
  nameCopy = name;
  restaurantNameCopy = restaurantName;
  actionCopy = action;
  activityActionCopy = activityAction;
  v24.receiver = self;
  v24.super_class = RestaurantReservationErrorController;
  v14 = [(RestaurantReservationErrorController *)&v24 init];
  if (v14)
  {
    v15 = [nameCopy copy];
    appName = v14->_appName;
    v14->_appName = v15;

    v17 = [restaurantNameCopy copy];
    restaurantName = v14->_restaurantName;
    v14->_restaurantName = v17;

    v19 = objc_retainBlock(actionCopy);
    cancelAction = v14->_cancelAction;
    v14->_cancelAction = v19;

    v21 = objc_retainBlock(activityActionCopy);
    activityAction = v14->_activityAction;
    v14->_activityAction = v21;
  }

  return v14;
}

@end
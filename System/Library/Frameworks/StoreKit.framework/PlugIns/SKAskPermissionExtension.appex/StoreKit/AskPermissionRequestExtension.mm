@interface AskPermissionRequestExtension
- (void)requestUpdatedWithResult:(id)a3 completion:(id)a4;
@end

@implementation AskPermissionRequestExtension

- (void)requestUpdatedWithResult:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Request updated. Result: %{public}@", &v12, 0xCu);
  }

  v7 = [v5 productType];
  v8 = [v7 isEqualToString:@"A"];

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Processing result with StoreKit service.", &v12, 2u);
    }

    v9 = +[SKServiceBroker defaultBroker];
    v10 = [v9 storeKitServiceWithErrorHandler:&stru_10000C648];

    v11 = [v5 buyParams];
    [v10 processPaymentWithBuyParamsString:v11 reply:&stru_10000C688];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000463C(v5);
  }
}

@end
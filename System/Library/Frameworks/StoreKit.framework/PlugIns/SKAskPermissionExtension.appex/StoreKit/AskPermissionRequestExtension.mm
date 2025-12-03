@interface AskPermissionRequestExtension
- (void)requestUpdatedWithResult:(id)result completion:(id)completion;
@end

@implementation AskPermissionRequestExtension

- (void)requestUpdatedWithResult:(id)result completion:(id)completion
{
  resultCopy = result;
  completionCopy = completion;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = resultCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Request updated. Result: %{public}@", &v12, 0xCu);
  }

  productType = [resultCopy productType];
  v8 = [productType isEqualToString:@"A"];

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Processing result with StoreKit service.", &v12, 2u);
    }

    v9 = +[SKServiceBroker defaultBroker];
    v10 = [v9 storeKitServiceWithErrorHandler:&stru_10000C648];

    buyParams = [resultCopy buyParams];
    [v10 processPaymentWithBuyParamsString:buyParams reply:&stru_10000C688];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10000463C(resultCopy);
  }
}

@end
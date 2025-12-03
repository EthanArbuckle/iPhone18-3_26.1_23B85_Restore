@interface UIAlertController
+ (id)hkhr_bradycardiaConfirmationControllerWithValue:(int64_t)value confirmHandler:(id)handler cancelHandler:(id)cancelHandler;
@end

@implementation UIAlertController

+ (id)hkhr_bradycardiaConfirmationControllerWithValue:(int64_t)value confirmHandler:(id)handler cancelHandler:(id)cancelHandler
{
  handlerCopy = handler;
  cancelHandlerCopy = cancelHandler;
  v9 = HKHeartRateLocalizedString();
  v10 = HKHeartRateLocalizedString();
  value = [NSString localizedStringWithFormat:v10, value];

  v12 = [UIAlertController alertControllerWithTitle:v9 message:value preferredStyle:1];
  v13 = HKHeartRateLocalizedString();
  value2 = [NSString localizedStringWithFormat:v13, value];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1490;
  v23[3] = &unk_18658;
  v24 = handlerCopy;
  valueCopy = value;
  v15 = handlerCopy;
  v16 = [UIAlertAction actionWithTitle:value2 style:0 handler:v23];
  v17 = HKHeartRateLocalizedString();
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_14A4;
  v21[3] = &unk_18680;
  v22 = cancelHandlerCopy;
  v18 = cancelHandlerCopy;
  v19 = [UIAlertAction actionWithTitle:v17 style:1 handler:v21];

  [v12 addAction:v16];
  [v12 addAction:v19];

  return v12;
}

@end
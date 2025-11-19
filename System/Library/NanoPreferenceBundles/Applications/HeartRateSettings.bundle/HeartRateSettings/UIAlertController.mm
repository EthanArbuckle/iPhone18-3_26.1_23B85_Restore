@interface UIAlertController
+ (id)hkhr_bradycardiaConfirmationControllerWithValue:(int64_t)a3 confirmHandler:(id)a4 cancelHandler:(id)a5;
@end

@implementation UIAlertController

+ (id)hkhr_bradycardiaConfirmationControllerWithValue:(int64_t)a3 confirmHandler:(id)a4 cancelHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = HKHeartRateLocalizedString();
  v10 = HKHeartRateLocalizedString();
  v11 = [NSString localizedStringWithFormat:v10, a3];

  v12 = [UIAlertController alertControllerWithTitle:v9 message:v11 preferredStyle:1];
  v13 = HKHeartRateLocalizedString();
  v14 = [NSString localizedStringWithFormat:v13, a3];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1490;
  v23[3] = &unk_18658;
  v24 = v7;
  v25 = a3;
  v15 = v7;
  v16 = [UIAlertAction actionWithTitle:v14 style:0 handler:v23];
  v17 = HKHeartRateLocalizedString();
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_14A4;
  v21[3] = &unk_18680;
  v22 = v8;
  v18 = v8;
  v19 = [UIAlertAction actionWithTitle:v17 style:1 handler:v21];

  [v12 addAction:v16];
  [v12 addAction:v19];

  return v12;
}

@end
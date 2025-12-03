@interface AlertControllerFactory
+ (id)_actionForErrorType:(int64_t)type completion:(id)completion;
+ (id)_messageForErrorType:(int64_t)type;
+ (id)_titleForErrorType:(int64_t)type;
+ (id)alertControllerWithBiometryType:(int64_t)type forCarrier:(id)carrier completion:(id)completion;
+ (id)alertControllerWithError:(int64_t)error completion:(id)completion;
@end

@implementation AlertControllerFactory

+ (id)_actionForErrorType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  if ((type - 1) > 1)
  {
    v8 = 0;
  }

  else
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"OK" value:&stru_1000109B8 table:@"Localizable"];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100002600;
    v10[3] = &unk_100010378;
    v11 = completionCopy;
    v8 = [UIAlertAction actionWithTitle:v7 style:0 handler:v10];
  }

  return v8;
}

+ (id)_messageForErrorType:(int64_t)type
{
  if (type == 1)
  {
    v3 = @"CONNECTION_LOST_MESSAGE";
    goto LABEL_5;
  }

  if (type == 2)
  {
    v3 = @"USER_AUTHENTICATION_FAILURE_MESSAGE";
LABEL_5:
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_1000109B8 table:@"Localizable"];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)_titleForErrorType:(int64_t)type
{
  if (type == 1)
  {
    v3 = @"CONNECTION_FAILURE_TITLE";
    goto LABEL_5;
  }

  if (type == 2)
  {
    v3 = @"AUTHENTICATION_FAILURE_TITLE";
LABEL_5:
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_1000109B8 table:@"Localizable"];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)alertControllerWithError:(int64_t)error completion:(id)completion
{
  v6 = [self _actionForErrorType:error completion:completion];
  if (v6)
  {
    v7 = [self _messageForErrorType:error];
    v8 = [self _titleForErrorType:error];
    v9 = [UIAlertController alertControllerWithTitle:v8 message:v7 preferredStyle:1];
    [v9 addAction:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)alertControllerWithBiometryType:(int64_t)type forCarrier:(id)carrier completion:(id)completion
{
  completionCopy = completion;
  carrierCopy = carrier;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"USE_TOUCH_ID" value:&stru_1000109B8 table:@"Localizable"];

  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"ENABLE_TOUCH_ID" value:&stru_1000109B8 table:@"Localizable"];

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"TOUCH_ID_LOGIN_ENABLE_MESSAGE" value:&stru_1000109B8 table:@"Localizable"];

  if (type == 2)
  {
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"USE_FACE_ID" value:&stru_1000109B8 table:@"Localizable"];

    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"ENABLE_FACE_ID" value:&stru_1000109B8 table:@"Localizable"];

    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"FACE_ID_LOGIN_ENABLE_MESSAGE" value:&stru_1000109B8 table:@"Localizable"];

    v13 = v19;
    v11 = v17;
    v9 = v15;
  }

  v20 = [v11 stringByReplacingOccurrencesOfString:@"%@" withString:{carrierCopy, v13}];
  v21 = [v13 stringByReplacingOccurrencesOfString:@"%@" withString:carrierCopy];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100002C20;
  v34[3] = &unk_100010378;
  v22 = completionCopy;
  v35 = v22;
  v23 = [UIAlertAction actionWithTitle:v9 style:0 handler:v34];
  v24 = [NSBundle bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"NOT_NOW" value:&stru_1000109B8 table:@"Localizable"];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100002C34;
  v32[3] = &unk_100010378;
  v33 = v22;
  v26 = v22;
  v27 = [UIAlertAction actionWithTitle:v25 style:0 handler:v32];

  v28 = [UIAlertController alertControllerWithTitle:v20 message:v21 preferredStyle:1];
  [v28 addAction:v27];
  [v28 addAction:v23];

  return v28;
}

@end
@interface FMAddFriendsUtilities
+ (id)alertPresenterViewController;
+ (id)sharedInstance;
+ (void)showGenericErrorAlert;
+ (void)showNotifySelfError;
+ (void)showOfferSuccessForHandles:(id)a3;
+ (void)showOfferToSelfErrorInViewController:(id)a3 completion:(id)a4;
+ (void)showSimpleAlertWithTitle:(id)a3 message:(id)a4;
+ (void)showSimpleAlertWithTitle:(id)a3 message:(id)a4 handler:(id)a5;
+ (void)showSimpleAlertWithTitle:(id)a3 message:(id)a4 okButtonTitle:(id)a5;
+ (void)showSimpleAlertWithTitle:(id)a3 message:(id)a4 okButtonTitle:(id)a5 sender:(id)a6 handler:(id)a7;
+ (void)showSimpleAlertWithTitle:(id)a3 message:(id)a4 sender:(id)a5;
- (UIAlertController)shareActionsheet;
- (id)showOfferActionSheetInViewController:(id)a3 popoverAnchoredAtView:(id)a4 orAnchoredOnBarButtonItem:(id)a5 fromEmail:(id)a6 withCompletion:(id)a7 cancelHandler:(id)a8 showAlert:(BOOL)a9;
- (id)showOfferAlertInViewController:(id)a3 withTitle:(id)a4 message:(id)a5 popoverAnchoredAtView:(id)a6 orAnchoredOnBarButtonItem:(id)a7 withCompletion:(id)a8 cancelHandler:(id)a9 showAlert:(BOOL)a10;
- (id)showOfferAlertStyleInViewController:(id)a3 withTitle:(id)a4 message:(id)a5 popoverAnchoredAtView:(id)a6 orAnchoredOnBarButtonItem:(id)a7 withCompletion:(id)a8 cancelButtonTitle:(id)a9 cancelHandler:(id)a10 withStyle:(int64_t)a11 showAlert:(BOOL)a12;
- (id)showStopOfferActionSheetInViewController:(id)a3 popoverAnchoredAtView:(id)a4 orAnchoredOnBarButtonItem:(id)a5 completion:(id)a6;
- (void)dismissShareActionSheet;
@end

@implementation FMAddFriendsUtilities

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007B024;
  block[3] = &unk_1006219D0;
  block[4] = a1;
  if (qword_1006C4078 != -1)
  {
    dispatch_once(&qword_1006C4078, block);
  }

  v2 = qword_1006C4070;

  return v2;
}

- (id)showOfferAlertInViewController:(id)a3 withTitle:(id)a4 message:(id)a5 popoverAnchoredAtView:(id)a6 orAnchoredOnBarButtonItem:(id)a7 withCompletion:(id)a8 cancelHandler:(id)a9 showAlert:(BOOL)a10
{
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = sub_10007AF08(@"DONT_SHARE_BUTTON_TITLE");
  LOBYTE(v27) = a10;
  v25 = [(FMAddFriendsUtilities *)self showOfferAlertStyleInViewController:v23 withTitle:v22 message:v21 popoverAnchoredAtView:v20 orAnchoredOnBarButtonItem:v19 withCompletion:v18 cancelButtonTitle:v24 cancelHandler:v17 withStyle:1 showAlert:v27];

  return v25;
}

- (id)showOfferActionSheetInViewController:(id)a3 popoverAnchoredAtView:(id)a4 orAnchoredOnBarButtonItem:(id)a5 fromEmail:(id)a6 withCompletion:(id)a7 cancelHandler:(id)a8 showAlert:(BOOL)a9
{
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = sub_10007AF08(@"SHARING_FROM");
  v22 = [NSString stringWithFormat:v21, v17];

  v23 = sub_10007AF08(@"CANCEL_BUTTON_TITLE");
  LOBYTE(v26) = a9;
  v24 = [(FMAddFriendsUtilities *)self showOfferAlertStyleInViewController:v20 withTitle:0 message:v22 popoverAnchoredAtView:v19 orAnchoredOnBarButtonItem:v18 withCompletion:v16 cancelButtonTitle:v23 cancelHandler:v15 withStyle:0 showAlert:v26];

  return v24;
}

- (id)showOfferAlertStyleInViewController:(id)a3 withTitle:(id)a4 message:(id)a5 popoverAnchoredAtView:(id)a6 orAnchoredOnBarButtonItem:(id)a7 withCompletion:(id)a8 cancelButtonTitle:(id)a9 cancelHandler:(id)a10 withStyle:(int64_t)a11 showAlert:(BOOL)a12
{
  v40 = a3;
  *&v36 = a6;
  *(&v36 + 1) = a7;
  v17 = a8;
  v18 = a10;
  v38 = a9;
  v19 = [UIAlertController alertControllerWithTitle:a4 message:a5 preferredStyle:a11];
  v20 = sub_10007AF08(@"SHARE_ONE_HOUR_BUTTON_TITLE");
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10007B6B0;
  v47[3] = &unk_1006219F8;
  v21 = v17;
  v48 = v21;
  v22 = [UIAlertAction actionWithTitle:v20 style:0 handler:v47];

  v23 = sub_10007AF08(@"SHARE_EOD_BUTTON_TITLE");
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10007B6CC;
  v45[3] = &unk_1006219F8;
  v24 = v21;
  v46 = v24;
  v25 = [UIAlertAction actionWithTitle:v23 style:0 handler:v45];

  v26 = sub_10007AF08(@"SHARE_FOREVER_BUTTON_TITLE");
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10007B6E8;
  v43[3] = &unk_1006219F8;
  v27 = v24;
  v44 = v27;
  v28 = [UIAlertAction actionWithTitle:v26 style:0 handler:v43];

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10007B704;
  v41[3] = &unk_1006219F8;
  v42 = v18;
  v29 = v18;
  v30 = [UIAlertAction actionWithTitle:v38 style:1 handler:v41];

  v39 = v22;
  [v19 addAction:v22];
  [v19 addAction:v25];
  [v19 addAction:v28];
  [v19 addAction:v30];
  if (v36 == 0)
  {
    [(FMAddFriendsUtilities *)self setShareActionsheet:0];
    v33 = v40;
    goto LABEL_9;
  }

  v31 = [v19 popoverPresentationController];
  v32 = v31;
  v33 = v40;
  if (*(&v36 + 1))
  {
    [v31 setBarButtonItem:*(&v36 + 1)];
    v34 = 1;
LABEL_7:
    [v32 setPermittedArrowDirections:v34];
    goto LABEL_8;
  }

  if (v36)
  {
    [v31 setSourceView:v36];
    [v36 bounds];
    [v32 setSourceRect:?];
    v34 = 15;
    goto LABEL_7;
  }

LABEL_8:
  [(FMAddFriendsUtilities *)self setShareActionsheet:v19];

LABEL_9:
  if (a12)
  {
    [v33 presentViewController:v19 animated:1 completion:0];
  }

  return v19;
}

- (id)showStopOfferActionSheetInViewController:(id)a3 popoverAnchoredAtView:(id)a4 orAnchoredOnBarButtonItem:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  v14 = sub_10007AF08(@"CANCEL_BUTTON_TITLE");
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:0];
  [v13 addAction:v15];

  v16 = sub_10007AF08(@"STOP_SHARE_LOCATION_BUTTON_TITLE");
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10007B930;
  v22[3] = &unk_1006219F8;
  v23 = v12;
  v17 = v12;
  v18 = [UIAlertAction actionWithTitle:v16 style:2 handler:v22];
  [v13 addAction:v18];

  if (v10 | v11)
  {
    v19 = [v13 popoverPresentationController];
    v20 = v19;
    if (v11)
    {
      [v19 setBarButtonItem:v11];
      [v20 setPermittedArrowDirections:1];
    }

    else if (v10)
    {
      [v19 setSourceView:v10];
      [v10 bounds];
      [v20 setSourceRect:?];
    }

    [v20 setPermittedArrowDirections:2];
  }

  [v9 presentViewController:v13 animated:1 completion:0];

  return v13;
}

- (void)dismissShareActionSheet
{
  v2 = [(FMAddFriendsUtilities *)self shareActionsheet];
  [v2 dismissViewControllerAnimated:0 completion:0];
}

+ (id)alertPresenterViewController
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 keyWindow];
  v4 = [v3 rootViewController];

  v5 = [v4 presentedViewController];

  if (v5)
  {
    do
    {
      v6 = [v4 presentedViewController];

      v7 = [v6 presentedViewController];

      v4 = v6;
    }

    while (v7);
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

+ (void)showOfferToSelfErrorInViewController:(id)a3 completion:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = sub_10007AF08(@"OFFER_TO_SELF_TITLE");
  v8 = sub_10007AF08(@"OFFER_TO_SELF_MESSAGE");
  v9 = [UIAlertController alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v10 = sub_10007AF08(@"OK_BUTTON_TITLE");
  v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:0];
  [v9 addAction:v11];

  if (v13)
  {
    [v13 presentViewController:v9 animated:1 completion:v6];
  }

  else
  {
    v12 = [a1 alertPresenterViewController];
    [v12 presentViewController:v9 animated:1 completion:v6];
  }
}

+ (void)showNotifySelfError
{
  v3 = sub_10007AF08(@"NOTIFY_SELF_TITLE");
  v4 = sub_10007AF08(@"NOTIFY_SELF_MESSAGE");
  v8 = [UIAlertController alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v5 = sub_10007AF08(@"OK_BUTTON_TITLE");
  v6 = [UIAlertAction actionWithTitle:v5 style:0 handler:0];
  [v8 addAction:v6];

  v7 = [a1 alertPresenterViewController];
  [v7 presentViewController:v8 animated:1 completion:0];
}

+ (void)showGenericErrorAlert
{
  v3 = sub_10007AF08(@"GENERIC_ERROR_ALERT_TITLE");
  v4 = sub_10007AF08(@"GENERIC_ERROR_ALERT_TEXT");
  v8 = [UIAlertController alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v5 = sub_10007AF08(@"OK_BUTTON_TITLE");
  v6 = [UIAlertAction actionWithTitle:v5 style:0 handler:0];
  [v8 addAction:v6];

  v7 = [a1 alertPresenterViewController];
  [v7 presentViewController:v8 animated:1 completion:0];
}

+ (void)showSimpleAlertWithTitle:(id)a3 message:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = sub_10007AF08(@"OK_BUTTON_TITLE");
  v8 = [a1 alertPresenterViewController];
  [a1 showSimpleAlertWithTitle:v7 message:v6 okButtonTitle:v9 sender:v8];
}

+ (void)showSimpleAlertWithTitle:(id)a3 message:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = sub_10007AF08(@"OK_BUTTON_TITLE");
  v11 = [a1 alertPresenterViewController];
  [a1 showSimpleAlertWithTitle:v10 message:v9 okButtonTitle:v12 sender:v11 handler:v8];
}

+ (void)showSimpleAlertWithTitle:(id)a3 message:(id)a4 okButtonTitle:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 alertPresenterViewController];
  [a1 showSimpleAlertWithTitle:v10 message:v9 okButtonTitle:v8 sender:v11];
}

+ (void)showSimpleAlertWithTitle:(id)a3 message:(id)a4 sender:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = sub_10007AF08(@"OK_BUTTON_TITLE");
  [a1 showSimpleAlertWithTitle:v10 message:v9 okButtonTitle:v11 sender:v8];
}

+ (void)showSimpleAlertWithTitle:(id)a3 message:(id)a4 okButtonTitle:(id)a5 sender:(id)a6 handler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v14)
  {
    if ([v14 isBeingDismissed])
    {
      v16 = [v14 presentingViewController];

      v14 = v16;
    }

    if ([v11 length] || objc_msgSend(v12, "length"))
    {
      v17 = +[UIApplication sharedApplication];
      v18 = [v17 preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v18);

      if (IsAccessibilityCategory)
      {
        v20 = [v11 stringByReplacingOccurrencesOfString:@" " withString:@" "];

        v21 = [v12 stringByReplacingOccurrencesOfString:@" " withString:@" "];

        v12 = v21;
        v11 = v20;
      }

      v22 = [UIAlertController alertControllerWithTitle:v11 message:v12 preferredStyle:1];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10007C254;
      v24[3] = &unk_1006219F8;
      v25 = v15;
      v23 = [UIAlertAction actionWithTitle:v13 style:0 handler:v24];
      [v22 addAction:v23];

      [v14 presentViewController:v22 animated:1 completion:0];
    }
  }
}

+ (void)showOfferSuccessForHandles:(id)a3
{
  v12 = a3;
  v4 = [v12 count];
  v5 = v12;
  if (v4)
  {
    if ([v12 count] == 1)
    {
      v6 = [v12 firstObject];
      v7 = [_TtC6FindMy19FMContactsUtilities contactFor:v6];
      if (!v7 || ([_TtC6FindMy12FMCoreBridge displayNameFor:v7], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        if ([_TtC6FindMy17FMPhoneNumberUtil isEmailValidWithEmail:v6]|| ![_TtC6FindMy17FMPhoneNumberUtil isPhoneNumberValidWithPhoneNumber:v6])
        {
          v9 = v6;
        }

        else
        {
          v9 = [_TtC6FindMy17FMPhoneNumberUtil formatWithPhoneNumber:v6];
        }

        v8 = v9;
      }

      v11 = sub_10007AF08(@"OFFER_SUCCESS");
      v10 = [NSString stringWithFormat:v11, v8];
    }

    else
    {
      v6 = sub_10007AF08(@"OFFER_SUCCESS_MULTIPLE_FRIENDS");
      v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 count]);
      v8 = [NSNumberFormatter localizedStringFromNumber:v7 numberStyle:0];
      v10 = [NSString stringWithFormat:v6, v8];
    }

    [a1 showSimpleAlertWithTitle:v10 message:0];
    v5 = v12;
  }
}

- (UIAlertController)shareActionsheet
{
  WeakRetained = objc_loadWeakRetained(&self->_shareActionsheet);

  return WeakRetained;
}

@end
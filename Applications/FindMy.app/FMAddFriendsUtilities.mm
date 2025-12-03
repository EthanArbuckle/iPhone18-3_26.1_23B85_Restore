@interface FMAddFriendsUtilities
+ (id)alertPresenterViewController;
+ (id)sharedInstance;
+ (void)showGenericErrorAlert;
+ (void)showNotifySelfError;
+ (void)showOfferSuccessForHandles:(id)handles;
+ (void)showOfferToSelfErrorInViewController:(id)controller completion:(id)completion;
+ (void)showSimpleAlertWithTitle:(id)title message:(id)message;
+ (void)showSimpleAlertWithTitle:(id)title message:(id)message handler:(id)handler;
+ (void)showSimpleAlertWithTitle:(id)title message:(id)message okButtonTitle:(id)buttonTitle;
+ (void)showSimpleAlertWithTitle:(id)title message:(id)message okButtonTitle:(id)buttonTitle sender:(id)sender handler:(id)handler;
+ (void)showSimpleAlertWithTitle:(id)title message:(id)message sender:(id)sender;
- (UIAlertController)shareActionsheet;
- (id)showOfferActionSheetInViewController:(id)controller popoverAnchoredAtView:(id)view orAnchoredOnBarButtonItem:(id)item fromEmail:(id)email withCompletion:(id)completion cancelHandler:(id)handler showAlert:(BOOL)alert;
- (id)showOfferAlertInViewController:(id)controller withTitle:(id)title message:(id)message popoverAnchoredAtView:(id)view orAnchoredOnBarButtonItem:(id)item withCompletion:(id)completion cancelHandler:(id)handler showAlert:(BOOL)self0;
- (id)showOfferAlertStyleInViewController:(id)controller withTitle:(id)title message:(id)message popoverAnchoredAtView:(id)view orAnchoredOnBarButtonItem:(id)item withCompletion:(id)completion cancelButtonTitle:(id)buttonTitle cancelHandler:(id)self0 withStyle:(int64_t)self1 showAlert:(BOOL)self2;
- (id)showStopOfferActionSheetInViewController:(id)controller popoverAnchoredAtView:(id)view orAnchoredOnBarButtonItem:(id)item completion:(id)completion;
- (void)dismissShareActionSheet;
@end

@implementation FMAddFriendsUtilities

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007B024;
  block[3] = &unk_1006219D0;
  block[4] = self;
  if (qword_1006C4078 != -1)
  {
    dispatch_once(&qword_1006C4078, block);
  }

  v2 = qword_1006C4070;

  return v2;
}

- (id)showOfferAlertInViewController:(id)controller withTitle:(id)title message:(id)message popoverAnchoredAtView:(id)view orAnchoredOnBarButtonItem:(id)item withCompletion:(id)completion cancelHandler:(id)handler showAlert:(BOOL)self0
{
  handlerCopy = handler;
  completionCopy = completion;
  itemCopy = item;
  viewCopy = view;
  messageCopy = message;
  titleCopy = title;
  controllerCopy = controller;
  v24 = sub_10007AF08(@"DONT_SHARE_BUTTON_TITLE");
  LOBYTE(v27) = alert;
  v25 = [(FMAddFriendsUtilities *)self showOfferAlertStyleInViewController:controllerCopy withTitle:titleCopy message:messageCopy popoverAnchoredAtView:viewCopy orAnchoredOnBarButtonItem:itemCopy withCompletion:completionCopy cancelButtonTitle:v24 cancelHandler:handlerCopy withStyle:1 showAlert:v27];

  return v25;
}

- (id)showOfferActionSheetInViewController:(id)controller popoverAnchoredAtView:(id)view orAnchoredOnBarButtonItem:(id)item fromEmail:(id)email withCompletion:(id)completion cancelHandler:(id)handler showAlert:(BOOL)alert
{
  handlerCopy = handler;
  completionCopy = completion;
  emailCopy = email;
  itemCopy = item;
  viewCopy = view;
  controllerCopy = controller;
  v21 = sub_10007AF08(@"SHARING_FROM");
  emailCopy = [NSString stringWithFormat:v21, emailCopy];

  v23 = sub_10007AF08(@"CANCEL_BUTTON_TITLE");
  LOBYTE(v26) = alert;
  v24 = [(FMAddFriendsUtilities *)self showOfferAlertStyleInViewController:controllerCopy withTitle:0 message:emailCopy popoverAnchoredAtView:viewCopy orAnchoredOnBarButtonItem:itemCopy withCompletion:completionCopy cancelButtonTitle:v23 cancelHandler:handlerCopy withStyle:0 showAlert:v26];

  return v24;
}

- (id)showOfferAlertStyleInViewController:(id)controller withTitle:(id)title message:(id)message popoverAnchoredAtView:(id)view orAnchoredOnBarButtonItem:(id)item withCompletion:(id)completion cancelButtonTitle:(id)buttonTitle cancelHandler:(id)self0 withStyle:(int64_t)self1 showAlert:(BOOL)self2
{
  controllerCopy = controller;
  *&v36 = view;
  *(&v36 + 1) = item;
  completionCopy = completion;
  handlerCopy = handler;
  buttonTitleCopy = buttonTitle;
  v19 = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:style];
  v20 = sub_10007AF08(@"SHARE_ONE_HOUR_BUTTON_TITLE");
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10007B6B0;
  v47[3] = &unk_1006219F8;
  v21 = completionCopy;
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
  v42 = handlerCopy;
  v29 = handlerCopy;
  v30 = [UIAlertAction actionWithTitle:buttonTitleCopy style:1 handler:v41];

  v39 = v22;
  [v19 addAction:v22];
  [v19 addAction:v25];
  [v19 addAction:v28];
  [v19 addAction:v30];
  if (v36 == 0)
  {
    [(FMAddFriendsUtilities *)self setShareActionsheet:0];
    v33 = controllerCopy;
    goto LABEL_9;
  }

  popoverPresentationController = [v19 popoverPresentationController];
  v32 = popoverPresentationController;
  v33 = controllerCopy;
  if (*(&v36 + 1))
  {
    [popoverPresentationController setBarButtonItem:*(&v36 + 1)];
    v34 = 1;
LABEL_7:
    [v32 setPermittedArrowDirections:v34];
    goto LABEL_8;
  }

  if (v36)
  {
    [popoverPresentationController setSourceView:v36];
    [v36 bounds];
    [v32 setSourceRect:?];
    v34 = 15;
    goto LABEL_7;
  }

LABEL_8:
  [(FMAddFriendsUtilities *)self setShareActionsheet:v19];

LABEL_9:
  if (alert)
  {
    [v33 presentViewController:v19 animated:1 completion:0];
  }

  return v19;
}

- (id)showStopOfferActionSheetInViewController:(id)controller popoverAnchoredAtView:(id)view orAnchoredOnBarButtonItem:(id)item completion:(id)completion
{
  controllerCopy = controller;
  viewCopy = view;
  itemCopy = item;
  completionCopy = completion;
  v13 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  v14 = sub_10007AF08(@"CANCEL_BUTTON_TITLE");
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:0];
  [v13 addAction:v15];

  v16 = sub_10007AF08(@"STOP_SHARE_LOCATION_BUTTON_TITLE");
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10007B930;
  v22[3] = &unk_1006219F8;
  v23 = completionCopy;
  v17 = completionCopy;
  v18 = [UIAlertAction actionWithTitle:v16 style:2 handler:v22];
  [v13 addAction:v18];

  if (viewCopy | itemCopy)
  {
    popoverPresentationController = [v13 popoverPresentationController];
    v20 = popoverPresentationController;
    if (itemCopy)
    {
      [popoverPresentationController setBarButtonItem:itemCopy];
      [v20 setPermittedArrowDirections:1];
    }

    else if (viewCopy)
    {
      [popoverPresentationController setSourceView:viewCopy];
      [viewCopy bounds];
      [v20 setSourceRect:?];
    }

    [v20 setPermittedArrowDirections:2];
  }

  [controllerCopy presentViewController:v13 animated:1 completion:0];

  return v13;
}

- (void)dismissShareActionSheet
{
  shareActionsheet = [(FMAddFriendsUtilities *)self shareActionsheet];
  [shareActionsheet dismissViewControllerAnimated:0 completion:0];
}

+ (id)alertPresenterViewController
{
  v2 = +[UIApplication sharedApplication];
  keyWindow = [v2 keyWindow];
  rootViewController = [keyWindow rootViewController];

  presentedViewController = [rootViewController presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [rootViewController presentedViewController];

      v6PresentedViewController = [presentedViewController2 presentedViewController];

      rootViewController = presentedViewController2;
    }

    while (v6PresentedViewController);
  }

  else
  {
    presentedViewController2 = rootViewController;
  }

  return presentedViewController2;
}

+ (void)showOfferToSelfErrorInViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v7 = sub_10007AF08(@"OFFER_TO_SELF_TITLE");
  v8 = sub_10007AF08(@"OFFER_TO_SELF_MESSAGE");
  v9 = [UIAlertController alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v10 = sub_10007AF08(@"OK_BUTTON_TITLE");
  v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:0];
  [v9 addAction:v11];

  if (controllerCopy)
  {
    [controllerCopy presentViewController:v9 animated:1 completion:completionCopy];
  }

  else
  {
    alertPresenterViewController = [self alertPresenterViewController];
    [alertPresenterViewController presentViewController:v9 animated:1 completion:completionCopy];
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

  alertPresenterViewController = [self alertPresenterViewController];
  [alertPresenterViewController presentViewController:v8 animated:1 completion:0];
}

+ (void)showGenericErrorAlert
{
  v3 = sub_10007AF08(@"GENERIC_ERROR_ALERT_TITLE");
  v4 = sub_10007AF08(@"GENERIC_ERROR_ALERT_TEXT");
  v8 = [UIAlertController alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v5 = sub_10007AF08(@"OK_BUTTON_TITLE");
  v6 = [UIAlertAction actionWithTitle:v5 style:0 handler:0];
  [v8 addAction:v6];

  alertPresenterViewController = [self alertPresenterViewController];
  [alertPresenterViewController presentViewController:v8 animated:1 completion:0];
}

+ (void)showSimpleAlertWithTitle:(id)title message:(id)message
{
  messageCopy = message;
  titleCopy = title;
  v9 = sub_10007AF08(@"OK_BUTTON_TITLE");
  alertPresenterViewController = [self alertPresenterViewController];
  [self showSimpleAlertWithTitle:titleCopy message:messageCopy okButtonTitle:v9 sender:alertPresenterViewController];
}

+ (void)showSimpleAlertWithTitle:(id)title message:(id)message handler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  titleCopy = title;
  v12 = sub_10007AF08(@"OK_BUTTON_TITLE");
  alertPresenterViewController = [self alertPresenterViewController];
  [self showSimpleAlertWithTitle:titleCopy message:messageCopy okButtonTitle:v12 sender:alertPresenterViewController handler:handlerCopy];
}

+ (void)showSimpleAlertWithTitle:(id)title message:(id)message okButtonTitle:(id)buttonTitle
{
  buttonTitleCopy = buttonTitle;
  messageCopy = message;
  titleCopy = title;
  alertPresenterViewController = [self alertPresenterViewController];
  [self showSimpleAlertWithTitle:titleCopy message:messageCopy okButtonTitle:buttonTitleCopy sender:alertPresenterViewController];
}

+ (void)showSimpleAlertWithTitle:(id)title message:(id)message sender:(id)sender
{
  senderCopy = sender;
  messageCopy = message;
  titleCopy = title;
  v11 = sub_10007AF08(@"OK_BUTTON_TITLE");
  [self showSimpleAlertWithTitle:titleCopy message:messageCopy okButtonTitle:v11 sender:senderCopy];
}

+ (void)showSimpleAlertWithTitle:(id)title message:(id)message okButtonTitle:(id)buttonTitle sender:(id)sender handler:(id)handler
{
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  senderCopy = sender;
  handlerCopy = handler;
  if (senderCopy)
  {
    if ([senderCopy isBeingDismissed])
    {
      presentingViewController = [senderCopy presentingViewController];

      senderCopy = presentingViewController;
    }

    if ([titleCopy length] || objc_msgSend(messageCopy, "length"))
    {
      v17 = +[UIApplication sharedApplication];
      preferredContentSizeCategory = [v17 preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

      if (IsAccessibilityCategory)
      {
        v20 = [titleCopy stringByReplacingOccurrencesOfString:@" " withString:@" "];

        v21 = [messageCopy stringByReplacingOccurrencesOfString:@" " withString:@" "];

        messageCopy = v21;
        titleCopy = v20;
      }

      v22 = [UIAlertController alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10007C254;
      v24[3] = &unk_1006219F8;
      v25 = handlerCopy;
      v23 = [UIAlertAction actionWithTitle:buttonTitleCopy style:0 handler:v24];
      [v22 addAction:v23];

      [senderCopy presentViewController:v22 animated:1 completion:0];
    }
  }
}

+ (void)showOfferSuccessForHandles:(id)handles
{
  handlesCopy = handles;
  v4 = [handlesCopy count];
  v5 = handlesCopy;
  if (v4)
  {
    if ([handlesCopy count] == 1)
    {
      firstObject = [handlesCopy firstObject];
      v7 = [_TtC6FindMy19FMContactsUtilities contactFor:firstObject];
      if (!v7 || ([_TtC6FindMy12FMCoreBridge displayNameFor:v7], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        if ([_TtC6FindMy17FMPhoneNumberUtil isEmailValidWithEmail:firstObject]|| ![_TtC6FindMy17FMPhoneNumberUtil isPhoneNumberValidWithPhoneNumber:firstObject])
        {
          v9 = firstObject;
        }

        else
        {
          v9 = [_TtC6FindMy17FMPhoneNumberUtil formatWithPhoneNumber:firstObject];
        }

        v8 = v9;
      }

      v11 = sub_10007AF08(@"OFFER_SUCCESS");
      v10 = [NSString stringWithFormat:v11, v8];
    }

    else
    {
      firstObject = sub_10007AF08(@"OFFER_SUCCESS_MULTIPLE_FRIENDS");
      v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [handlesCopy count]);
      v8 = [NSNumberFormatter localizedStringFromNumber:v7 numberStyle:0];
      v10 = [NSString stringWithFormat:firstObject, v8];
    }

    [self showSimpleAlertWithTitle:v10 message:0];
    v5 = handlesCopy;
  }
}

- (UIAlertController)shareActionsheet
{
  WeakRetained = objc_loadWeakRetained(&self->_shareActionsheet);

  return WeakRetained;
}

@end
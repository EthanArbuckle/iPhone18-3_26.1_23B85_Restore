@interface MailHandoffAlertControllerFactory
+ (id)mailAlertControllerForHandoffError:(id)error acknowledgmentObserver:(id)observer;
@end

@implementation MailHandoffAlertControllerFactory

+ (id)mailAlertControllerForHandoffError:(id)error acknowledgmentObserver:(id)observer
{
  errorCopy = error;
  observerCopy = observer;
  mf_mailHandoffActivityType = [errorCopy mf_mailHandoffActivityType];
  if (mf_mailHandoffActivityType)
  {
    v8 = errorCopy;
    mf_activitySource = [v8 mf_activitySource];
    if (mf_activitySource == 2)
    {
      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"SIRI_SHORTCUT_FAILED_ERROR_TITLE" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      if (mf_activitySource == 3)
      {
        v10 = [NSBundle bundleForClass:objc_opt_class()];
        [v10 localizedStringForKey:@"SELECTED_MESSAGE_NOT_FOUND_ERROR_TITLE" value:&stru_100662A88 table:@"Main"];
      }

      else
      {
        v10 = [NSBundle bundleForClass:objc_opt_class()];
        [v10 localizedStringForKey:@"HANDOFF_FAILED_ERROR_TITLE" value:&stru_100662A88 table:@"Main"];
      }
      v11 = ;
    }

    v13 = v11;

    v14 = v8;
    domain = [v14 domain];
    if ([domain isEqualToString:MFHandoffErrorDomain])
    {
    }

    else
    {
      localizedDescription = [v14 localizedDescription];

      if (localizedDescription)
      {
        domain = [v14 localizedDescription];
        goto LABEL_23;
      }
    }

    mf_activityErrorReason = [v14 mf_activityErrorReason];
    if (mf_activityErrorReason == 1)
    {
      v20 = [NSBundle bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"SELECTED_MESSAGE_NOT_FOUND_ERROR_BODY" value:&stru_100662A88 table:@"Main"];
LABEL_22:
      domain = v21;

      goto LABEL_23;
    }

    if (!mf_activityErrorReason)
    {
      mf_activitySource2 = [v14 mf_activitySource];
      v19 = [NSBundle bundleForClass:objc_opt_class()];
      v20 = v19;
      if (mf_activitySource2 == 3)
      {
        v21 = [v19 localizedStringForKey:@"SELECTED_MESSAGE_NOT_FOUND_ERROR_BODY" value:&stru_100662A88 table:@"Main"];
      }

      else
      {
        if (mf_activitySource2 == 2)
        {
          [v19 localizedStringForKey:@"SIRI_SHORTCUT_FAILED_ERROR_BODY" value:&stru_100662A88 table:@"Main"];
        }

        else
        {
          [v19 localizedStringForKey:@"HANDOFF_FAILED_ERROR_BODY" value:&stru_100662A88 table:@"Main"];
        }
        v21 = ;
      }

      goto LABEL_22;
    }

LABEL_23:

    v12 = [UIAlertController alertControllerWithTitle:v13 message:domain preferredStyle:1];
    if (observerCopy)
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1001132D4;
      v27[3] = &unk_100650850;
      v28 = observerCopy;
      v29 = v14;
      v22 = objc_retainBlock(v27);
    }

    else
    {
      v22 = 0;
    }

    v23 = [NSBundle bundleForClass:objc_opt_class()];
    v24 = [v23 localizedStringForKey:@"OK" value:&stru_100662A88 table:@"Main"];
    v25 = [UIAlertAction actionWithTitle:v24 style:0 handler:v22];

    [v12 addAction:v25];
    goto LABEL_27;
  }

  v12 = 0;
LABEL_27:

  return v12;
}

@end
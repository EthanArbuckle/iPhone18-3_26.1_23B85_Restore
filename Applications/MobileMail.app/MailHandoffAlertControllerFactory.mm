@interface MailHandoffAlertControllerFactory
+ (id)mailAlertControllerForHandoffError:(id)a3 acknowledgmentObserver:(id)a4;
@end

@implementation MailHandoffAlertControllerFactory

+ (id)mailAlertControllerForHandoffError:(id)a3 acknowledgmentObserver:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 mf_mailHandoffActivityType];
  if (v7)
  {
    v8 = v5;
    v9 = [v8 mf_activitySource];
    if (v9 == 2)
    {
      v10 = [NSBundle bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"SIRI_SHORTCUT_FAILED_ERROR_TITLE" value:&stru_100662A88 table:@"Main"];
    }

    else
    {
      if (v9 == 3)
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
    v15 = [v14 domain];
    if ([v15 isEqualToString:MFHandoffErrorDomain])
    {
    }

    else
    {
      v16 = [v14 localizedDescription];

      if (v16)
      {
        v15 = [v14 localizedDescription];
        goto LABEL_23;
      }
    }

    v17 = [v14 mf_activityErrorReason];
    if (v17 == 1)
    {
      v20 = [NSBundle bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"SELECTED_MESSAGE_NOT_FOUND_ERROR_BODY" value:&stru_100662A88 table:@"Main"];
LABEL_22:
      v15 = v21;

      goto LABEL_23;
    }

    if (!v17)
    {
      v18 = [v14 mf_activitySource];
      v19 = [NSBundle bundleForClass:objc_opt_class()];
      v20 = v19;
      if (v18 == 3)
      {
        v21 = [v19 localizedStringForKey:@"SELECTED_MESSAGE_NOT_FOUND_ERROR_BODY" value:&stru_100662A88 table:@"Main"];
      }

      else
      {
        if (v18 == 2)
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

    v12 = [UIAlertController alertControllerWithTitle:v13 message:v15 preferredStyle:1];
    if (v6)
    {
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1001132D4;
      v27[3] = &unk_100650850;
      v28 = v6;
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
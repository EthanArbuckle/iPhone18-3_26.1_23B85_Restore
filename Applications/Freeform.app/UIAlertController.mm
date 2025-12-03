@interface UIAlertController
+ (id)crl_alertControllerWithError:(id)error preferredStyle:(int64_t)style additionalActions:(id)actions usesOKButton:(BOOL)button completion:(id)completion;
+ (id)crl_alertControllerWithError:(id)error preferredStyle:(int64_t)style completion:(id)completion;
+ (id)crl_progressAlertControllerWithTitle:(id)title message:(id)message preferredStyle:(int64_t)style progress:(id)progress;
- (void)crl_addSimpleOKButtonWithHandler:(id)handler;
@end

@implementation UIAlertController

+ (id)crl_alertControllerWithError:(id)error preferredStyle:(int64_t)style completion:(id)completion
{
  completionCopy = completion;
  errorCopy = error;
  localizedRecoveryOptions = [errorCopy localizedRecoveryOptions];
  v11 = [localizedRecoveryOptions count] == 0;

  v12 = [self crl_alertControllerWithError:errorCopy preferredStyle:style additionalActions:0 usesOKButton:v11 completion:completionCopy];

  return v12;
}

+ (id)crl_alertControllerWithError:(id)error preferredStyle:(int64_t)style additionalActions:(id)actions usesOKButton:(BOOL)button completion:(id)completion
{
  buttonCopy = button;
  errorCopy = error;
  actionsCopy = actions;
  completionCopy = completion;
  crl_localizedAlertTitle = [errorCopy crl_localizedAlertTitle];
  v13 = crl_localizedAlertTitle;
  if (crl_localizedAlertTitle)
  {
    localizedDescription = crl_localizedAlertTitle;
  }

  else
  {
    localizedDescription = [errorCopy localizedDescription];
  }

  v15 = localizedDescription;

  crl_localizedAlertMessage = [errorCopy crl_localizedAlertMessage];
  v17 = crl_localizedAlertMessage;
  if (crl_localizedAlertMessage)
  {
    localizedFailureReason = crl_localizedAlertMessage;
  }

  else
  {
    localizedFailureReason = [errorCopy localizedFailureReason];
  }

  v19 = localizedFailureReason;

  v46 = v15;
  v44 = v19;
  v20 = [self alertControllerWithTitle:v15 message:v19 preferredStyle:style];
  [v20 crl_updateWithInternalTimestampAndError:errorCopy];
  recoveryAttempter = [errorCopy recoveryAttempter];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v50 = errorCopy;
  obj = [errorCopy localizedRecoveryOptions];
  v21 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    v24 = *v63;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v63 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v62 + 1) + 8 * i);
        v57[0] = _NSConcreteStackBlock;
        v57[1] = 3221225472;
        v57[2] = sub_100151334;
        v57[3] = &unk_101840448;
        v57[4] = recoveryAttempter;
        v27 = v50;
        v61 = v23;
        v58 = v27;
        v59 = v20;
        v60 = completionCopy;
        v28 = [UIAlertAction actionWithTitle:v26 style:0 handler:v57];
        [v20 addAction:v28];

        ++v23;
      }

      v22 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
    }

    while (v22);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v29 = actionsCopy;
  v30 = [v29 countByEnumeratingWithState:&v53 objects:v66 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v54;
    do
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v54 != v32)
        {
          objc_enumerationMutation(v29);
        }

        [v20 addAction:{*(*(&v53 + 1) + 8 * j), actionsCopy}];
      }

      v31 = [v29 countByEnumeratingWithState:&v53 objects:v66 count:16];
    }

    while (v31);
  }

  v34 = style == 1 && buttonCopy;
  v35 = +[NSBundle mainBundle];
  v36 = v35;
  if (buttonCopy)
  {
    v37 = @"OK";
  }

  else
  {
    v37 = @"Cancel";
  }

  v38 = [v35 localizedStringForKey:v37 value:0 table:0];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_1001513A4;
  v51[3] = &unk_101840470;
  v52 = completionCopy;
  v39 = completionCopy;
  v40 = [UIAlertAction actionWithTitle:v38 style:!v34 handler:v51];

  [v20 addAction:v40];
  if (buttonCopy)
  {
    [v20 setPreferredAction:v40];
  }

  v41 = v20;

  return v20;
}

- (void)crl_addSimpleOKButtonWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"OK" value:0 table:0];
  v7 = [UIAlertAction actionWithTitle:v6 style:1 handler:handlerCopy];

  [(UIAlertController *)self addAction:v7];
}

+ (id)crl_progressAlertControllerWithTitle:(id)title message:(id)message preferredStyle:(int64_t)style progress:(id)progress
{
  messageCopy = message;
  if (title)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (messageCopy)
    {
LABEL_3:
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      messageCopy = v13;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v11 = 0;
    if (message)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  progressCopy = progress;
  v15 = sub_1006FDF0C(v9, v11, v12, messageCopy, style, progressCopy);

  return v15;
}

@end
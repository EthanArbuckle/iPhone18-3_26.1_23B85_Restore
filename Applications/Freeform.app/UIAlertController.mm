@interface UIAlertController
+ (id)crl_alertControllerWithError:(id)a3 preferredStyle:(int64_t)a4 additionalActions:(id)a5 usesOKButton:(BOOL)a6 completion:(id)a7;
+ (id)crl_alertControllerWithError:(id)a3 preferredStyle:(int64_t)a4 completion:(id)a5;
+ (id)crl_progressAlertControllerWithTitle:(id)a3 message:(id)a4 preferredStyle:(int64_t)a5 progress:(id)a6;
- (void)crl_addSimpleOKButtonWithHandler:(id)a3;
@end

@implementation UIAlertController

+ (id)crl_alertControllerWithError:(id)a3 preferredStyle:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v9 localizedRecoveryOptions];
  v11 = [v10 count] == 0;

  v12 = [a1 crl_alertControllerWithError:v9 preferredStyle:a4 additionalActions:0 usesOKButton:v11 completion:v8];

  return v12;
}

+ (id)crl_alertControllerWithError:(id)a3 preferredStyle:(int64_t)a4 additionalActions:(id)a5 usesOKButton:(BOOL)a6 completion:(id)a7
{
  v45 = a6;
  v11 = a3;
  v43 = a5;
  v49 = a7;
  v12 = [v11 crl_localizedAlertTitle];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v11 localizedDescription];
  }

  v15 = v14;

  v16 = [v11 crl_localizedAlertMessage];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = [v11 localizedFailureReason];
  }

  v19 = v18;

  v46 = v15;
  v44 = v19;
  v20 = [a1 alertControllerWithTitle:v15 message:v19 preferredStyle:a4];
  [v20 crl_updateWithInternalTimestampAndError:v11];
  v48 = [v11 recoveryAttempter];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v50 = v11;
  obj = [v11 localizedRecoveryOptions];
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
        v57[4] = v48;
        v27 = v50;
        v61 = v23;
        v58 = v27;
        v59 = v20;
        v60 = v49;
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
  v29 = v43;
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

        [v20 addAction:{*(*(&v53 + 1) + 8 * j), v43}];
      }

      v31 = [v29 countByEnumeratingWithState:&v53 objects:v66 count:16];
    }

    while (v31);
  }

  v34 = a4 == 1 && v45;
  v35 = +[NSBundle mainBundle];
  v36 = v35;
  if (v45)
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
  v52 = v49;
  v39 = v49;
  v40 = [UIAlertAction actionWithTitle:v38 style:!v34 handler:v51];

  [v20 addAction:v40];
  if (v45)
  {
    [v20 setPreferredAction:v40];
  }

  v41 = v20;

  return v20;
}

- (void)crl_addSimpleOKButtonWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"OK" value:0 table:0];
  v7 = [UIAlertAction actionWithTitle:v6 style:1 handler:v4];

  [(UIAlertController *)self addAction:v7];
}

+ (id)crl_progressAlertControllerWithTitle:(id)a3 message:(id)a4 preferredStyle:(int64_t)a5 progress:(id)a6
{
  v8 = a4;
  if (a3)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (v8)
    {
LABEL_3:
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v13;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v14 = a6;
  v15 = sub_1006FDF0C(v9, v11, v12, v8, a5, v14);

  return v15;
}

@end
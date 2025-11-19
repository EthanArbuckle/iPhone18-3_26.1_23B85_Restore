@interface GEORPProblemStatusResponse
+ (GEORPProblemStatusResponse)problemStatusResponseWithNotificationID:(id)a3;
- (BOOL)getSingleServerSideAlertTitle:(id *)a3 message:(id *)a4 messageIsSameAsNotificationTitle:(BOOL *)a5;
- (BOOL)writeToDisk:(id)a3 error:(id *)a4;
- (void)_displayDedicatedFixedProblemViewController:(id)a3;
- (void)displayAdditionalUIOnViewController:(id)a3;
- (void)getDefaultAlertTitle:(id *)a3 alertMessage:(id *)a4;
@end

@implementation GEORPProblemStatusResponse

- (void)_displayDedicatedFixedProblemViewController:(id)a3
{
  v4 = a3;
  if (MapsFeature_IsEnabled_RAPSydney())
  {
    v5 = [_TtC4Maps31RAPNotificationDetailsViewModel alloc];
    v6 = [(GEORPProblemStatusResponse *)self problemStatus];
    v7 = [v6 firstObject];
    v8 = [(RAPNotificationDetailsViewModel *)v5 initWithProblemStatus:v7];

    v9 = [[RAPNotificationDetailsViewController alloc] initWithViewModel:v8 report:0 question:0];
    v10 = [[UINavigationController alloc] initWithRootViewController:v9];
    [v10 setModalPresentationStyle:2];
    [v4 _maps_topMostPresentViewController:v10 animated:1 completion:0];
  }

  else
  {
    v8 = [RAPFixedProblemNavigationController fixedProblemNavigationControllerWithProblemStatusResponse:self];
    [(RAPNotificationDetailsViewModel *)v8 setModalPresentationStyle:2];
    objc_initWeak(&location, v8);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1007DC690;
    v14 = &unk_101661B98;
    objc_copyWeak(&v15, &location);
    [(RAPNotificationDetailsViewModel *)v8 setDoneHandler:&v11];
    [v4 _maps_topMostPresentViewController:v8 animated:1 completion:{0, v11, v12, v13, v14}];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)displayAdditionalUIOnViewController:(id)a3
{
  v4 = a3;
  if ([(GEORPProblemStatusResponse *)self canDisplayAdditionalUI]&& [(GEORPProblemStatusResponse *)self problemStatusCount]== 1)
  {
    [(GEORPProblemStatusResponse *)self _displayDedicatedFixedProblemViewController:v4];
  }
}

- (BOOL)getSingleServerSideAlertTitle:(id *)a3 message:(id *)a4 messageIsSameAsNotificationTitle:(BOOL *)a5
{
  if ([(GEORPProblemStatusResponse *)self problemStatusCount]== 1)
  {
    v9 = [(GEORPProblemStatusResponse *)self problemStatusAtIndex:0];
    v10 = [v9 notification];
    v11 = [v10 localizedText];

    v12 = [v11 length];
    v13 = v12 != 0;
    if (v12)
    {
      if (a3)
      {
        v14 = [v9 notification];
        *a3 = [v14 localizedTitle];
      }

      if (a4)
      {
        v15 = v11;
        *a4 = v11;
      }

      if (a5)
      {
        v16 = [v9 notification];
        v17 = [v16 localizedText];
        *a5 = [v11 isEqual:v17];
      }
    }
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    if (a3)
    {
      *a3 = 0;
    }

    v13 = 0;
    if (a4)
    {
      *a4 = 0;
    }
  }

  return v13;
}

- (void)getDefaultAlertTitle:(id *)a3 alertMessage:(id *)a4
{
  if (a3)
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Your Reported Issues [push]" value:@"localized string not found" table:0];

    v9 = v8;
    *a3 = v8;
  }

  if (!a4)
  {
    return;
  }

  v57 = a4;
  v60 = +[NSMutableArray array];
  v59 = +[NSMutableArray array];
  v58 = +[NSMutableArray array];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v10 = [(GEORPProblemStatusResponse *)self problemStatus];
  v11 = [v10 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v62;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v62 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v61 + 1) + 8 * i);
        v16 = +[MKMapService sharedService];
        v17 = [v15 details];
        v18 = [v16 mapItemsForPlacesInDetails:v17];

        v19 = [v18 firstObject];
        if (v19)
        {
          [v60 addObject:v19];
          v20 = [v19 name];

          if (v20)
          {
            v21 = [v19 name];
            [v59 addObject:v21];
          }
        }

        if ([v15 hasCreationDate])
        {
          [v15 creationDate];
          v23 = CFDateCreate(kCFAllocatorDefault, v22);
          v24 = [NSDateFormatter localizedStringFromDate:v23 dateStyle:2 timeStyle:0];
          CFRelease(v23);
          if (v24)
          {
            [v58 addObject:v24];
          }
        }

        if (a3)
        {
          v25 = [v15 details];
          v26 = [v25 localizedTitle];

          if (v26)
          {
            v27 = [v15 notification];
            *a3 = [v27 localizedTitle];
          }

          v28 = [v15 notification];
          v29 = [v28 localizedText];

          if (v29)
          {
            v37 = [v15 notification];
            *v57 = [v37 localizedText];

            v30 = v58;
            v36 = v10;
            goto LABEL_48;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v61 objects:v65 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v30 = v58;
  if ([v58 count])
  {
    v31 = [v58 objectAtIndexedSubscript:0];
    if ([v58 count] - 3 > 0xFFFFFFFFFFFFFFFDLL)
    {
      v36 = v31;
    }

    else
    {
      v32 = 1;
      do
      {
        v33 = +[NSBundle mainBundle];
        v34 = [v33 localizedStringForKey:@" value:<date>" table:{@"localized string not found", 0}];
        v35 = [v58 objectAtIndexedSubscript:v32];
        v36 = [v31 stringByAppendingFormat:v34, v35];

        ++v32;
        v31 = v36;
      }

      while (v32 < [v58 count] - 1);
    }

    if ([v58 count] > 1)
    {
      v38 = +[NSBundle mainBundle];
      v39 = [v38 localizedStringForKey:@" and <date>" value:@"localized string not found" table:0];
      v40 = [v58 lastObject];
      v41 = [v36 stringByAppendingFormat:v39, v40];

      v36 = v41;
    }
  }

  else
  {
    v36 = 0;
  }

  v42 = [v59 count];
  if (v42 > 1)
  {
    if (v42 == 2)
    {
      v43 = +[NSBundle mainBundle];
      v44 = [v43 localizedStringForKey:@"The issue reports related to <place1> and <place2> have been addressed. [push]" value:@"localized string not found" table:0];
      v45 = [v59 objectAtIndexedSubscript:0];
      v46 = [v59 objectAtIndexedSubscript:1];
      v47 = [NSString stringWithFormat:v44, v45, v46];
      goto LABEL_45;
    }

    if (v42 == 3)
    {
      v43 = +[NSBundle mainBundle];
      v44 = [v43 localizedStringForKey:@"The issue reports related to <place1> value:<place2> and <count> other location have been addressed. [push]" table:{@"localized string not found", 0}];
      v45 = [v59 objectAtIndexedSubscript:0];
      v46 = [v59 objectAtIndexedSubscript:1];
      [NSString localizedStringWithFormat:v44, v45, v46, 1];
      v47 = LABEL_40:;
LABEL_45:
      v18 = v47;

      goto LABEL_46;
    }

LABEL_39:
    v43 = +[NSBundle mainBundle];
    v44 = [v43 localizedStringForKey:@"The issue reports related to <place1> value:<place2> and <count> other locations have been addressed. [push]" table:{@"localized string not found", 0}];
    v45 = [v59 objectAtIndexedSubscript:0];
    v46 = [v59 objectAtIndexedSubscript:1];
    +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v44, v45, v46, [v59 count] - 2);
    goto LABEL_40;
  }

  if (v42)
  {
    if (v42 == 1)
    {
      v43 = +[NSBundle mainBundle];
      v44 = [v43 localizedStringForKey:@"The issue report related to <place> has been addressed. [push]" value:@"localized string not found" table:0];
      v45 = [v59 objectAtIndexedSubscript:0];
      v18 = [NSString stringWithFormat:v44, v45];
LABEL_46:

      v50 = v57;
      goto LABEL_47;
    }

    goto LABEL_39;
  }

  v48 = [v58 count];
  v49 = [v60 count];
  v50 = v57;
  if (v48)
  {
    v51 = +[NSBundle mainBundle];
    v43 = v51;
    if (v49 < 2)
    {
      v52 = @"The issue reported on <date> has been addressed. [push]";
    }

    else
    {
      v52 = @"The issues reported on <date> have been addressed. [push]";
    }

    v56 = [v51 localizedStringForKey:v52 value:@"localized string not found" table:0];
    v18 = [NSString stringWithFormat:v56, v36];
  }

  else
  {
    v54 = +[NSBundle mainBundle];
    v43 = v54;
    if (v49 < 2)
    {
      v55 = @"The issue reported has been addressed. [push]";
    }

    else
    {
      v55 = @"The issues reported have been addressed. [push]";
    }

    v18 = [v54 localizedStringForKey:v55 value:@"localized string not found" table:0];
  }

LABEL_47:

  v53 = v18;
  *v50 = v18;
LABEL_48:
}

- (BOOL)writeToDisk:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([RAPNotification isValidNotificationID:v6])
  {
    v7 = [RAPNotification filenameForNotificationID:v6];
    v8 = +[RAPNotification notificationCachePath];
    v9 = [v8 stringByAppendingPathComponent:v7];

    if (v9)
    {
      v10 = [(GEORPProblemStatusResponse *)self data];
      v11 = [v10 writeToFile:v9 options:1 error:a4];
    }

    else
    {
      if (!a4)
      {
        v11 = 0;
        goto LABEL_9;
      }

      v10 = +[RAPNotification errorDomain];
      [NSError errorWithDomain:v10 code:-1 userInfo:0];
      *a4 = v11 = 0;
    }

LABEL_9:
    goto LABEL_10;
  }

  if (!a4)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v7 = +[RAPNotification errorDomain];
  [NSError errorWithDomain:v7 code:-2 userInfo:0];
  *a4 = v11 = 0;
LABEL_10:

LABEL_11:
  return v11;
}

+ (GEORPProblemStatusResponse)problemStatusResponseWithNotificationID:(id)a3
{
  v3 = a3;
  if ([RAPNotification isValidNotificationID:v3])
  {
    v4 = [RAPNotification filenameForNotificationID:v3];
    v5 = +[RAPNotification notificationCachePath];
    v6 = [v5 stringByAppendingPathComponent:v4];

    if (v6)
    {
      v7 = [[NSData alloc] initWithContentsOfFile:v6];
      if (v7)
      {
        v8 = [[GEORPProblemStatusResponse alloc] initWithData:v7];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
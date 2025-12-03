@interface GEORPProblemStatusResponse
+ (GEORPProblemStatusResponse)problemStatusResponseWithNotificationID:(id)d;
- (BOOL)getSingleServerSideAlertTitle:(id *)title message:(id *)message messageIsSameAsNotificationTitle:(BOOL *)notificationTitle;
- (BOOL)writeToDisk:(id)disk error:(id *)error;
- (void)_displayDedicatedFixedProblemViewController:(id)controller;
- (void)displayAdditionalUIOnViewController:(id)controller;
- (void)getDefaultAlertTitle:(id *)title alertMessage:(id *)message;
@end

@implementation GEORPProblemStatusResponse

- (void)_displayDedicatedFixedProblemViewController:(id)controller
{
  controllerCopy = controller;
  if (MapsFeature_IsEnabled_RAPSydney())
  {
    v5 = [_TtC4Maps31RAPNotificationDetailsViewModel alloc];
    problemStatus = [(GEORPProblemStatusResponse *)self problemStatus];
    firstObject = [problemStatus firstObject];
    v8 = [(RAPNotificationDetailsViewModel *)v5 initWithProblemStatus:firstObject];

    v9 = [[RAPNotificationDetailsViewController alloc] initWithViewModel:v8 report:0 question:0];
    v10 = [[UINavigationController alloc] initWithRootViewController:v9];
    [v10 setModalPresentationStyle:2];
    [controllerCopy _maps_topMostPresentViewController:v10 animated:1 completion:0];
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
    [controllerCopy _maps_topMostPresentViewController:v8 animated:1 completion:{0, v11, v12, v13, v14}];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)displayAdditionalUIOnViewController:(id)controller
{
  controllerCopy = controller;
  if ([(GEORPProblemStatusResponse *)self canDisplayAdditionalUI]&& [(GEORPProblemStatusResponse *)self problemStatusCount]== 1)
  {
    [(GEORPProblemStatusResponse *)self _displayDedicatedFixedProblemViewController:controllerCopy];
  }
}

- (BOOL)getSingleServerSideAlertTitle:(id *)title message:(id *)message messageIsSameAsNotificationTitle:(BOOL *)notificationTitle
{
  if ([(GEORPProblemStatusResponse *)self problemStatusCount]== 1)
  {
    v9 = [(GEORPProblemStatusResponse *)self problemStatusAtIndex:0];
    notification = [v9 notification];
    localizedText = [notification localizedText];

    v12 = [localizedText length];
    v13 = v12 != 0;
    if (v12)
    {
      if (title)
      {
        notification2 = [v9 notification];
        *title = [notification2 localizedTitle];
      }

      if (message)
      {
        v15 = localizedText;
        *message = localizedText;
      }

      if (notificationTitle)
      {
        notification3 = [v9 notification];
        localizedText2 = [notification3 localizedText];
        *notificationTitle = [localizedText isEqual:localizedText2];
      }
    }
  }

  else
  {
    if (notificationTitle)
    {
      *notificationTitle = 0;
    }

    if (title)
    {
      *title = 0;
    }

    v13 = 0;
    if (message)
    {
      *message = 0;
    }
  }

  return v13;
}

- (void)getDefaultAlertTitle:(id *)title alertMessage:(id *)message
{
  if (title)
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Your Reported Issues [push]" value:@"localized string not found" table:0];

    v9 = v8;
    *title = v8;
  }

  if (!message)
  {
    return;
  }

  messageCopy = message;
  v60 = +[NSMutableArray array];
  v59 = +[NSMutableArray array];
  v58 = +[NSMutableArray array];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  problemStatus = [(GEORPProblemStatusResponse *)self problemStatus];
  v11 = [problemStatus countByEnumeratingWithState:&v61 objects:v65 count:16];
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
          objc_enumerationMutation(problemStatus);
        }

        v15 = *(*(&v61 + 1) + 8 * i);
        v16 = +[MKMapService sharedService];
        details = [v15 details];
        v18 = [v16 mapItemsForPlacesInDetails:details];

        firstObject = [v18 firstObject];
        if (firstObject)
        {
          [v60 addObject:firstObject];
          name = [firstObject name];

          if (name)
          {
            name2 = [firstObject name];
            [v59 addObject:name2];
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

        if (title)
        {
          details2 = [v15 details];
          localizedTitle = [details2 localizedTitle];

          if (localizedTitle)
          {
            notification = [v15 notification];
            *title = [notification localizedTitle];
          }

          notification2 = [v15 notification];
          localizedText = [notification2 localizedText];

          if (localizedText)
          {
            notification3 = [v15 notification];
            *messageCopy = [notification3 localizedText];

            v30 = v58;
            v36 = problemStatus;
            goto LABEL_48;
          }
        }
      }

      v12 = [problemStatus countByEnumeratingWithState:&v61 objects:v65 count:16];
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
      lastObject = [v58 lastObject];
      v41 = [v36 stringByAppendingFormat:v39, lastObject];

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

      v50 = messageCopy;
      goto LABEL_47;
    }

    goto LABEL_39;
  }

  v48 = [v58 count];
  v49 = [v60 count];
  v50 = messageCopy;
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

- (BOOL)writeToDisk:(id)disk error:(id *)error
{
  diskCopy = disk;
  if ([RAPNotification isValidNotificationID:diskCopy])
  {
    v7 = [RAPNotification filenameForNotificationID:diskCopy];
    v8 = +[RAPNotification notificationCachePath];
    v9 = [v8 stringByAppendingPathComponent:v7];

    if (v9)
    {
      data = [(GEORPProblemStatusResponse *)self data];
      v11 = [data writeToFile:v9 options:1 error:error];
    }

    else
    {
      if (!error)
      {
        v11 = 0;
        goto LABEL_9;
      }

      data = +[RAPNotification errorDomain];
      [NSError errorWithDomain:data code:-1 userInfo:0];
      *error = v11 = 0;
    }

LABEL_9:
    goto LABEL_10;
  }

  if (!error)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v7 = +[RAPNotification errorDomain];
  [NSError errorWithDomain:v7 code:-2 userInfo:0];
  *error = v11 = 0;
LABEL_10:

LABEL_11:
  return v11;
}

+ (GEORPProblemStatusResponse)problemStatusResponseWithNotificationID:(id)d
{
  dCopy = d;
  if ([RAPNotification isValidNotificationID:dCopy])
  {
    v4 = [RAPNotification filenameForNotificationID:dCopy];
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
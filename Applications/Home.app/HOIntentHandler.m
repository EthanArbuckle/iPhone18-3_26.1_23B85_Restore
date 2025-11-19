@interface HOIntentHandler
+ (id)intentHandlerWithNavigator:(id)a3;
+ (void)handleIntent:(id)a3 withNavigator:(id)a4;
- (BOOL)_shouldHandleMostRecentCameraClipForFilter:(id)a3 timeRange:(id)a4;
- (id)_serviceTypeFromFilter:(id)a3;
- (id)entityOfType:(int64_t)a3 inEntities:(id)a4;
- (void)handleConfigureIntent:(id)a3;
- (void)handleShowHomeIntent:(id)a3;
- (void)showHomeForFilter:(id)a3 withTimeRange:(id)a4;
- (void)showRoomForFilter:(id)a3 withTimeRange:(id)a4;
- (void)showServiceForFilter:(id)a3 withTimeRange:(id)a4;
@end

@implementation HOIntentHandler

+ (id)intentHandlerWithNavigator:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setNavigator:v3];

  return v4;
}

+ (void)handleIntent:(id)a3 withNavigator:(id)a4
{
  v7 = a3;
  v6 = [a1 intentHandlerWithNavigator:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 handleConfigureIntent:v7];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 handleShowHomeIntent:v7];
    }
  }
}

- (void)showServiceForFilter:(id)a3 withTimeRange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 entityName];
  v9 = [v8 description];

  v10 = [v6 home];
  v11 = [v10 description];

  v12 = [v6 room];
  v13 = [v12 description];

  if (!v9)
  {
    v14 = +[HFHomeKitDispatcher sharedDispatcher];
    v15 = [v14 home];

    v16 = [v15 hf_unitaryCameraProfile];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 accessory];
      v9 = [v18 name];
    }

    else
    {
      v9 = 0;
    }
  }

  v19 = [(HOIntentHandler *)self _serviceTypeFromFilter:v6];
  if ([v19 isEqual:HMServiceTypeCameraControl])
  {
    v31 = v11;
    v20 = +[NSDate hf_sharedCalendar];
    [v7 startDateComponents];
    v22 = v21 = v7;
    v23 = [v20 dateFromComponents:v22];

    v24 = [v21 endDateComponents];
    v25 = [v20 dateFromComponents:v24];

    v32 = v21;
    if ([(HOIntentHandler *)self _shouldHandleMostRecentCameraClipForFilter:v6 timeRange:v21])
    {
      v26 = +[NSDate date];

      v27 = HFLogForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v34 = v9;
        v35 = 2112;
        v36 = v26;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Adjusted camera:%@ startDate: %@", buf, 0x16u);
      }
    }

    else
    {
      v26 = v23;
    }

    v11 = v31;
    v29 = HFLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v34 = v9;
      v35 = 2112;
      v36 = v26;
      v37 = 2112;
      v38 = v25;
      v39 = 2112;
      v40 = v31;
      v41 = 2112;
      v42 = v13;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Launch camera:%@, startDate:%@, endDate:%@, home:%@, room:%@", buf, 0x34u);
    }

    v30 = [(HOIntentHandler *)self navigator];
    [v30 showCameraWithName:v9 homeName:v31 startDate:v26 endDate:v25 roomName:v13];

    v7 = v32;
  }

  else
  {
    v28 = [(HOIntentHandler *)self navigator];
    [v28 showServiceWithName:v9 serviceType:v19 homeName:v11 roomName:v13];
  }
}

- (void)showRoomForFilter:(id)a3 withTimeRange:(id)a4
{
  v6 = a4;
  v7 = [a3 entityName];
  v8 = [v7 description];

  v9 = +[HFHomeKitDispatcher sharedDispatcher];
  v10 = [v9 home];

  v11 = [v10 hf_roomWithName:v8];
  v12 = [v11 hf_unitaryCameraProfile];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 accessory];
    v15 = [v14 name];

    v16 = +[NSDate hf_sharedCalendar];
    v17 = [v6 startDateComponents];
    v18 = [v16 dateFromComponents:v17];

    v26 = v6;
    v19 = [v6 endDateComponents];
    v20 = [v16 dateFromComponents:v19];

    v21 = HFLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v28 = v8;
      v29 = 2112;
      v30 = v15;
      v31 = 2112;
      v32 = v18;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Displaying unitary camera in room:%@ with one camera:%@ startDate:%@ endDate:%@", buf, 0x2Au);
    }

    v22 = [(HOIntentHandler *)self navigator];
    v23 = [v10 name];
    [v22 showCameraWithName:v15 homeName:v23 startDate:v18 endDate:v20 roomName:v8];

    v6 = v26;
  }

  else
  {
    v24 = [(HOIntentHandler *)self navigator];
    v25 = [v24 showRoomWithName:v8];
  }
}

- (void)showHomeForFilter:(id)a3 withTimeRange:(id)a4
{
  v5 = [a3 home];
  v7 = [v5 description];

  v6 = [(HOIntentHandler *)self navigator];
  [v6 showHomeForName:v7];
}

- (void)handleShowHomeIntent:(id)a3
{
  v4 = a3;
  v5 = [v4 filters];
  v6 = [v5 count];

  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Handle intent: %@", &v12, 0xCu);
    }

    v9 = [v4 filters];
    v7 = [v9 objectAtIndexedSubscript:0];

    v10 = [v7 entityType];
    v11 = [v4 time];
    if (v10 == 1)
    {
      goto LABEL_10;
    }

    if (v10 == 3)
    {
      [(HOIntentHandler *)self showRoomForFilter:v7 withTimeRange:v11];
      goto LABEL_12;
    }

    if (v10 != 7)
    {
LABEL_10:
      [(HOIntentHandler *)self showHomeForFilter:v7 withTimeRange:v11];
    }

    else
    {
      [(HOIntentHandler *)self showServiceForFilter:v7 withTimeRange:v11];
    }

LABEL_12:

    goto LABEL_13;
  }

  if (v8)
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received Intent with missing filter : %@", &v12, 0xCu);
  }

LABEL_13:
}

- (void)handleConfigureIntent:(id)a3
{
  v4 = [a3 entities];
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = +[HFHomeKitDispatcher sharedDispatcher];
    v7 = [v6 homeFuture];
    v8 = [(HOIntentHandler *)self entityOfType:1 inEntities:v5];
    if (v8)
    {
      v9 = [v6 allHomesFuture];
      v31 = _NSConcreteStackBlock;
      v32 = 3221225472;
      v33 = sub_100045EFC;
      v34 = &unk_1000C3C00;
      v10 = v8;
      v35 = v10;
      v11 = [v9 flatMap:&v31];

      v12 = [(HOIntentHandler *)self navigator];
      v13 = [v10 entityName];
      v14 = [v13 description];
      [v12 createOrShowHomeWithName:v14 home:v11];

      v7 = v11;
    }

    v15 = [(HOIntentHandler *)self entityOfType:3 inEntities:v5];
    v16 = [NSError hf_errorWithCode:30];
    v17 = [NAFuture futureWithError:v16];

    v29 = v15;
    if (v15)
    {
      v18 = [(HOIntentHandler *)self navigator];
      v19 = [v15 entityName];
      [v19 description];
      v20 = v8;
      v22 = v21 = v6;
      v23 = [v18 createOrShowRoomWithName:v22 home:v7];

      v6 = v21;
      v8 = v20;

      v17 = v23;
    }

    v24 = [(HOIntentHandler *)self entityOfType:5 inEntities:v5, v29, v31, v32, v33, v34];
    if (v24)
    {
      v25 = [(HOIntentHandler *)self navigator];
      v26 = [v24 entityName];
      v27 = [v26 description];
      v28 = [v25 createOrEditActionSetWithName:v27 home:v7 switchToHomeTab:0];
    }
  }
}

- (id)entityOfType:(int64_t)a3 inEntities:(id)a4
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 type] == a3)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)_serviceTypeFromFilter:(id)a3
{
  v3 = [a3 deviceType] - 1;
  if (v3 <= 0x2A && ((0x6EFFFFFFFFFuLL >> v3) & 1) != 0)
  {
    v4 = **(&off_1000C4380 + v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_shouldHandleMostRecentCameraClipForFilter:(id)a3 timeRange:(id)a4
{
  v5 = a4;
  if ([a3 deviceType] == 42)
  {
    v6 = [v5 startDateComponents];
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
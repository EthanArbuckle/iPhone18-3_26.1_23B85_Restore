@interface HOIntentHandler
+ (id)intentHandlerWithNavigator:(id)navigator;
+ (void)handleIntent:(id)intent withNavigator:(id)navigator;
- (BOOL)_shouldHandleMostRecentCameraClipForFilter:(id)filter timeRange:(id)range;
- (id)_serviceTypeFromFilter:(id)filter;
- (id)entityOfType:(int64_t)type inEntities:(id)entities;
- (void)handleConfigureIntent:(id)intent;
- (void)handleShowHomeIntent:(id)intent;
- (void)showHomeForFilter:(id)filter withTimeRange:(id)range;
- (void)showRoomForFilter:(id)filter withTimeRange:(id)range;
- (void)showServiceForFilter:(id)filter withTimeRange:(id)range;
@end

@implementation HOIntentHandler

+ (id)intentHandlerWithNavigator:(id)navigator
{
  navigatorCopy = navigator;
  v4 = objc_opt_new();
  [v4 setNavigator:navigatorCopy];

  return v4;
}

+ (void)handleIntent:(id)intent withNavigator:(id)navigator
{
  intentCopy = intent;
  v6 = [self intentHandlerWithNavigator:navigator];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 handleConfigureIntent:intentCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 handleShowHomeIntent:intentCopy];
    }
  }
}

- (void)showServiceForFilter:(id)filter withTimeRange:(id)range
{
  filterCopy = filter;
  rangeCopy = range;
  entityName = [filterCopy entityName];
  name = [entityName description];

  home = [filterCopy home];
  v11 = [home description];

  room = [filterCopy room];
  v13 = [room description];

  if (!name)
  {
    v14 = +[HFHomeKitDispatcher sharedDispatcher];
    home2 = [v14 home];

    hf_unitaryCameraProfile = [home2 hf_unitaryCameraProfile];
    v17 = hf_unitaryCameraProfile;
    if (hf_unitaryCameraProfile)
    {
      accessory = [hf_unitaryCameraProfile accessory];
      name = [accessory name];
    }

    else
    {
      name = 0;
    }
  }

  v19 = [(HOIntentHandler *)self _serviceTypeFromFilter:filterCopy];
  if ([v19 isEqual:HMServiceTypeCameraControl])
  {
    v31 = v11;
    v20 = +[NSDate hf_sharedCalendar];
    [rangeCopy startDateComponents];
    v22 = v21 = rangeCopy;
    v23 = [v20 dateFromComponents:v22];

    endDateComponents = [v21 endDateComponents];
    v25 = [v20 dateFromComponents:endDateComponents];

    v32 = v21;
    if ([(HOIntentHandler *)self _shouldHandleMostRecentCameraClipForFilter:filterCopy timeRange:v21])
    {
      v26 = +[NSDate date];

      v27 = HFLogForCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v34 = name;
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
      v34 = name;
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

    navigator = [(HOIntentHandler *)self navigator];
    [navigator showCameraWithName:name homeName:v31 startDate:v26 endDate:v25 roomName:v13];

    rangeCopy = v32;
  }

  else
  {
    navigator2 = [(HOIntentHandler *)self navigator];
    [navigator2 showServiceWithName:name serviceType:v19 homeName:v11 roomName:v13];
  }
}

- (void)showRoomForFilter:(id)filter withTimeRange:(id)range
{
  rangeCopy = range;
  entityName = [filter entityName];
  v8 = [entityName description];

  v9 = +[HFHomeKitDispatcher sharedDispatcher];
  home = [v9 home];

  v11 = [home hf_roomWithName:v8];
  hf_unitaryCameraProfile = [v11 hf_unitaryCameraProfile];
  v13 = hf_unitaryCameraProfile;
  if (hf_unitaryCameraProfile)
  {
    accessory = [hf_unitaryCameraProfile accessory];
    name = [accessory name];

    v16 = +[NSDate hf_sharedCalendar];
    startDateComponents = [rangeCopy startDateComponents];
    v18 = [v16 dateFromComponents:startDateComponents];

    v26 = rangeCopy;
    endDateComponents = [rangeCopy endDateComponents];
    v20 = [v16 dateFromComponents:endDateComponents];

    v21 = HFLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v28 = v8;
      v29 = 2112;
      v30 = name;
      v31 = 2112;
      v32 = v18;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Displaying unitary camera in room:%@ with one camera:%@ startDate:%@ endDate:%@", buf, 0x2Au);
    }

    navigator = [(HOIntentHandler *)self navigator];
    name2 = [home name];
    [navigator showCameraWithName:name homeName:name2 startDate:v18 endDate:v20 roomName:v8];

    rangeCopy = v26;
  }

  else
  {
    navigator2 = [(HOIntentHandler *)self navigator];
    v25 = [navigator2 showRoomWithName:v8];
  }
}

- (void)showHomeForFilter:(id)filter withTimeRange:(id)range
{
  home = [filter home];
  v7 = [home description];

  navigator = [(HOIntentHandler *)self navigator];
  [navigator showHomeForName:v7];
}

- (void)handleShowHomeIntent:(id)intent
{
  intentCopy = intent;
  filters = [intentCopy filters];
  v6 = [filters count];

  v7 = HFLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v12 = 138412290;
      v13 = intentCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Handle intent: %@", &v12, 0xCu);
    }

    filters2 = [intentCopy filters];
    v7 = [filters2 objectAtIndexedSubscript:0];

    entityType = [v7 entityType];
    time = [intentCopy time];
    if (entityType == 1)
    {
      goto LABEL_10;
    }

    if (entityType == 3)
    {
      [(HOIntentHandler *)self showRoomForFilter:v7 withTimeRange:time];
      goto LABEL_12;
    }

    if (entityType != 7)
    {
LABEL_10:
      [(HOIntentHandler *)self showHomeForFilter:v7 withTimeRange:time];
    }

    else
    {
      [(HOIntentHandler *)self showServiceForFilter:v7 withTimeRange:time];
    }

LABEL_12:

    goto LABEL_13;
  }

  if (v8)
  {
    v12 = 138412290;
    v13 = intentCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received Intent with missing filter : %@", &v12, 0xCu);
  }

LABEL_13:
}

- (void)handleConfigureIntent:(id)intent
{
  entities = [intent entities];
  v5 = entities;
  if (entities && [entities count])
  {
    v6 = +[HFHomeKitDispatcher sharedDispatcher];
    homeFuture = [v6 homeFuture];
    v8 = [(HOIntentHandler *)self entityOfType:1 inEntities:v5];
    if (v8)
    {
      allHomesFuture = [v6 allHomesFuture];
      v31 = _NSConcreteStackBlock;
      v32 = 3221225472;
      v33 = sub_100045EFC;
      v34 = &unk_1000C3C00;
      v10 = v8;
      v35 = v10;
      v11 = [allHomesFuture flatMap:&v31];

      navigator = [(HOIntentHandler *)self navigator];
      entityName = [v10 entityName];
      v14 = [entityName description];
      [navigator createOrShowHomeWithName:v14 home:v11];

      homeFuture = v11;
    }

    v15 = [(HOIntentHandler *)self entityOfType:3 inEntities:v5];
    v16 = [NSError hf_errorWithCode:30];
    v17 = [NAFuture futureWithError:v16];

    v29 = v15;
    if (v15)
    {
      navigator2 = [(HOIntentHandler *)self navigator];
      entityName2 = [v15 entityName];
      [entityName2 description];
      v20 = v8;
      v22 = v21 = v6;
      v23 = [navigator2 createOrShowRoomWithName:v22 home:homeFuture];

      v6 = v21;
      v8 = v20;

      v17 = v23;
    }

    v24 = [(HOIntentHandler *)self entityOfType:5 inEntities:v5, v29, v31, v32, v33, v34];
    if (v24)
    {
      navigator3 = [(HOIntentHandler *)self navigator];
      entityName3 = [v24 entityName];
      v27 = [entityName3 description];
      v28 = [navigator3 createOrEditActionSetWithName:v27 home:homeFuture switchToHomeTab:0];
    }
  }
}

- (id)entityOfType:(int64_t)type inEntities:(id)entities
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  entitiesCopy = entities;
  v6 = [entitiesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(entitiesCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 type] == type)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [entitiesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)_serviceTypeFromFilter:(id)filter
{
  v3 = [filter deviceType] - 1;
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

- (BOOL)_shouldHandleMostRecentCameraClipForFilter:(id)filter timeRange:(id)range
{
  rangeCopy = range;
  if ([filter deviceType] == 42)
  {
    startDateComponents = [rangeCopy startDateComponents];
    v7 = startDateComponents == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
@interface ADHomeDataSharingRepromptManager
+ (id)sharedManager;
- (ADHomeDataSharingRepromptManager)initWithPropagationDelay:(unint64_t)delay;
- (void)_clearPropagationStatusFromLocalStorage;
- (void)_homeKitDataSyncHasFinished:(id)finished;
- (void)_kickOffInitialPropagationWithCompletion:(id)completion;
- (void)_loadStoredPropagationStatus;
- (void)_propagateDataSharingStatusToAccessoriesWithPropagationEvent:(int64_t)event propagationReason:(id)reason completion:(id)completion;
- (void)_propagateSiriDataSharingToAccessory:(id)accessory home:(id)home homeManager:(id)manager propagationEvent:(int64_t)event propagationReason:(id)reason completion:(id)completion;
- (void)_propagateToAllHomeAccessoriesAfterReprompt:(int64_t)reprompt completion:(id)completion;
- (void)_writePropagationStatusToLocalStorage;
- (void)propagateDataSharingStatusToAccessoriesWithCompletion:(id)completion;
- (void)propagateToAllHomeAccessoriesAfterReprompt:(int64_t)reprompt source:(int64_t)source reason:(id)reason completion:(id)completion;
- (void)removeAccessoryFromPropagationList:(id)list;
@end

@implementation ADHomeDataSharingRepromptManager

- (void)removeAccessoryFromPropagationList:(id)list
{
  listCopy = list;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007F658;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = listCopy;
  v6 = listCopy;
  dispatch_async(queue, v7);
}

- (void)_clearPropagationStatusFromLocalStorage
{
  v2 = +[AFPreferences sharedPreferences];
  [v2 setHomeAccessoriesRepromptStatus:0];
}

- (void)_writePropagationStatusToLocalStorage
{
  if (!self->_logEventIdentifier)
  {
    v3 = +[NSUUID UUID];
    uUIDString = [v3 UUIDString];
    logEventIdentifier = self->_logEventIdentifier;
    self->_logEventIdentifier = uUIDString;
  }

  v11[0] = @"Target HomeKit Siri Data Sharing status";
  v11[1] = @"Accessories that need propagation";
  accessoryIdsThatNeedPropagation = self->_accessoryIdsThatNeedPropagation;
  v12[0] = self->_targetHomeKitOptInStatus;
  v12[1] = accessoryIdsThatNeedPropagation;
  v11[2] = @"Retry counter";
  v7 = [NSNumber numberWithInt:self->_retryCounter];
  v11[3] = @"Log Event Identifier";
  v8 = self->_logEventIdentifier;
  v12[2] = v7;
  v12[3] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];

  v10 = +[AFPreferences sharedPreferences];
  [v10 setHomeAccessoriesRepromptStatus:v9];
}

- (void)_loadStoredPropagationStatus
{
  v3 = +[AFPreferences sharedPreferences];
  getHomeAccessoriesRepromptStatus = [v3 getHomeAccessoriesRepromptStatus];

  v4 = [getHomeAccessoriesRepromptStatus valueForKey:@"Target HomeKit Siri Data Sharing status"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_targetHomeKitOptInStatus, v4);
  }

  v5 = [getHomeAccessoriesRepromptStatus valueForKey:@"Accessories that need propagation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_accessoryIdsThatNeedPropagation, v5);
  }

  v6 = [getHomeAccessoriesRepromptStatus valueForKey:@"Retry counter"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_retryCounter = [v6 intValue];
  }

  v7 = [getHomeAccessoriesRepromptStatus valueForKey:@"Log Event Identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_logEventIdentifier, v7);
  }
}

- (void)_homeKitDataSyncHasFinished:(id)finished
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007FBAC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_propagateSiriDataSharingToAccessory:(id)accessory home:(id)home homeManager:(id)manager propagationEvent:(int64_t)event propagationReason:(id)reason completion:(id)completion
{
  accessoryCopy = accessory;
  homeCopy = home;
  managerCopy = manager;
  reasonCopy = reason;
  completionCopy = completion;
  if (self->_targetHomeKitOptInStatus)
  {
    uniqueIdentifier = [accessoryCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];

    [(ADHomeAccessorySiriDataSharingLogger *)self->_homeAccessorySiriDataSharingLogger logSiriDataSharingPropagationAccessoryIdentifier:uUIDString propagationEvent:event propagationReason:reasonCopy associatedLogEventIdentifier:self->_logEventIdentifier];
    category = [accessoryCopy category];
    categoryType = [category categoryType];
    v23 = [categoryType isEqual:HMAccessoryCategoryTypeHomePod];

    if (v23)
    {
      settings = [accessoryCopy settings];
      rootGroup = [settings rootGroup];
      v26 = [ADHomeInfoManager findSettingWithKeyPath:@"root.general.analytics.shareSiriAnalytics" group:rootGroup];

      if (v26)
      {
        targetHomeKitOptInStatus = self->_targetHomeKitOptInStatus;
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_100080388;
        v38[3] = &unk_10051D2F0;
        v39 = completionCopy;
        [v26 updateValue:targetHomeKitOptInStatus completionHandler:v38];
        v28 = v39;
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }

      v33 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315395;
        v41 = "[ADHomeDataSharingRepromptManager _propagateSiriDataSharingToAccessory:home:homeManager:propagationEvent:propagationReason:completion:]";
        v42 = 2113;
        v43 = accessoryCopy;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s Siri Data Sharing setting not found when attempting propagation to accessory %{private}@", buf, 0x16u);
        if (completionCopy)
        {
          goto LABEL_12;
        }
      }

      else if (completionCopy)
      {
LABEL_12:
        v34 = @"Siri Data Sharing setting is not found on HomePod.";
LABEL_16:
        v28 = [AFError errorWithCode:47 description:v34];
        (*(completionCopy + 2))(completionCopy, v28);
        v26 = 0;
        goto LABEL_17;
      }

LABEL_26:
      v26 = 0;
      goto LABEL_18;
    }

    settings = [[HMSettingBooleanValue alloc] initWithBoolValue:{-[NSNumber BOOLValue](self->_targetHomeKitOptInStatus, "BOOLValue")}];
    createAccessorySettingsController = [managerCopy createAccessorySettingsController];
    if (createAccessorySettingsController)
    {
      v26 = createAccessorySettingsController;
      uniqueIdentifier2 = [homeCopy uniqueIdentifier];
      uniqueIdentifier3 = [accessoryCopy uniqueIdentifier];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000803A0;
      v36[3] = &unk_10051D2F0;
      v37 = completionCopy;
      [v26 updateAccessorySettingWithHomeIdentifier:uniqueIdentifier2 accessoryIdentifier:uniqueIdentifier3 keyPath:@"root.general.analytics.shareSiriAnalytics" settingValue:settings completionHandler:v36];

      v28 = v37;
      goto LABEL_17;
    }

    v35 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315395;
      v41 = "[ADHomeDataSharingRepromptManager _propagateSiriDataSharingToAccessory:home:homeManager:propagationEvent:propagationReason:completion:]";
      v42 = 2113;
      v43 = accessoryCopy;
      _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s Nil HMAccessorySettingsController when attempting propagation to accessory %{private}@", buf, 0x16u);
      if (!completionCopy)
      {
        goto LABEL_26;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_26;
    }

    v34 = @"HMAccessorySettingsController is unexpectedly nil.";
    goto LABEL_16;
  }

  v29 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315395;
    v41 = "[ADHomeDataSharingRepromptManager _propagateSiriDataSharingToAccessory:home:homeManager:propagationEvent:propagationReason:completion:]";
    v42 = 2113;
    v43 = accessoryCopy;
    _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s Siri Data Sharing value to propagate to accessory is unexpectedly nil.  Cancelling propagation attempt to accessory %{private}@.", buf, 0x16u);
    if (!completionCopy)
    {
      goto LABEL_20;
    }

    goto LABEL_7;
  }

  if (completionCopy)
  {
LABEL_7:
    uUIDString = [AFError errorWithCode:47 description:@"Siri Data Sharing value to propagate is unexpectedly nil."];
    (*(completionCopy + 2))(completionCopy, uUIDString);
LABEL_19:
  }

LABEL_20:
}

- (void)_propagateDataSharingStatusToAccessoriesWithPropagationEvent:(int64_t)event propagationReason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  targetHomeKitOptInStatus = self->_targetHomeKitOptInStatus;
  if (!targetHomeKitOptInStatus || (accessoryIdsThatNeedPropagation = self->_accessoryIdsThatNeedPropagation) == 0)
  {
    [(ADHomeDataSharingRepromptManager *)self _loadStoredPropagationStatus];
    targetHomeKitOptInStatus = self->_targetHomeKitOptInStatus;
    if (!targetHomeKitOptInStatus || (accessoryIdsThatNeedPropagation = self->_accessoryIdsThatNeedPropagation) == 0)
    {
      v14 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v22 = "[ADHomeDataSharingRepromptManager _propagateDataSharingStatusToAccessoriesWithPropagationEvent:propagationReason:completion:]";
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Required propgation information is not available.  Cancelling Siri Data Sharing propagation to home accessories.", buf, 0xCu);
        if (!completionCopy)
        {
          goto LABEL_11;
        }
      }

      else if (!completionCopy)
      {
        goto LABEL_11;
      }

      v15 = [AFError errorWithCode:47 description:@"Required propagation information is not available."];
      completionCopy[2](completionCopy, v15);

      goto LABEL_11;
    }
  }

  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315651;
    v22 = "[ADHomeDataSharingRepromptManager _propagateDataSharingStatusToAccessoriesWithPropagationEvent:propagationReason:completion:]";
    v23 = 2113;
    v24 = targetHomeKitOptInStatus;
    v25 = 2113;
    v26 = accessoryIdsThatNeedPropagation;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Will propagate Siri Data Sharing opt-in status=%{private}@ to accessoriesIds=%{private}@", buf, 0x20u);
  }

  v13 = +[ADHomeInfoManager sharedInfoManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100080614;
  v16[3] = &unk_10050F8E8;
  v16[4] = self;
  eventCopy = event;
  v17 = reasonCopy;
  v20 = 6;
  v18 = completionCopy;
  [v13 getHomeManagerWithCompletion:v16];

LABEL_11:
}

- (void)propagateDataSharingStatusToAccessoriesWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100081274;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)_kickOffInitialPropagationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v11 = "[ADHomeDataSharingRepromptManager _kickOffInitialPropagationWithCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Starting Siri Data Sharing propagation to all HomePods and SideKicks.", buf, 0xCu);
  }

  v6 = +[ADHomeInfoManager sharedInfoManager];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100081774;
  v8[3] = &unk_10050F870;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 getHomeManagerWithCompletion:v8];
}

- (void)_propagateToAllHomeAccessoriesAfterReprompt:(int64_t)reprompt completion:(id)completion
{
  completionCopy = completion;
  sub_100287080(0);
  if (reprompt == 1)
  {
    v7 = &off_100533770;
  }

  else
  {
    v7 = &off_100533788;
  }

  objc_storeStrong(&self->_targetHomeKitOptInStatus, v7);
  v8 = +[ADHomeInfoManager sharedInfoManager];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100081C1C;
  v10[3] = &unk_10050F870;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 getHomeManagerWithCompletion:v10];
}

- (void)propagateToAllHomeAccessoriesAfterReprompt:(int64_t)reprompt source:(int64_t)source reason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  completionCopy = completion;
  v12 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315395;
    v22 = "[ADHomeDataSharingRepromptManager propagateToAllHomeAccessoriesAfterReprompt:source:reason:completion:]";
    v23 = 2049;
    repromptCopy = reprompt;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Will propagate Siri Data Sharing opt-in status=%{private}ld to home accessories.", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008205C;
  block[3] = &unk_10051BA90;
  repromptCopy2 = reprompt;
  sourceCopy = source;
  block[4] = self;
  v17 = reasonCopy;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = reasonCopy;
  dispatch_async(queue, block);
}

- (ADHomeDataSharingRepromptManager)initWithPropagationDelay:(unint64_t)delay
{
  v12.receiver = self;
  v12.super_class = ADHomeDataSharingRepromptManager;
  v4 = [(ADHomeDataSharingRepromptManager *)&v12 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("ADHomeDataSharingRepromptManager", v5);

    queue = v4->_queue;
    v4->_queue = v6;

    v8 = [[ADHomeAccessorySiriDataSharingLogger alloc] initWithTargetQueue:v4->_queue];
    homeAccessorySiriDataSharingLogger = v4->_homeAccessorySiriDataSharingLogger;
    v4->_homeAccessorySiriDataSharingLogger = v8;

    v4->_propagationDelayInSeconds = delay;
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v4 selector:"_homeKitDataSyncHasFinished:" name:@"ADHomeInfoCurrentHomeIsReady" object:0];
  }

  return v4;
}

+ (id)sharedManager
{
  if (qword_10058FDF8 != -1)
  {
    dispatch_once(&qword_10058FDF8, &stru_10050F848);
  }

  v3 = qword_10058FDF0;

  return v3;
}

@end
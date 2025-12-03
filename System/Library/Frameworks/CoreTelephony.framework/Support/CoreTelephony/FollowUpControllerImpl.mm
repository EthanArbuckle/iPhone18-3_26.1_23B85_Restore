@interface FollowUpControllerImpl
- (FollowUpControllerImpl)initWithRegistry:(const void *)registry;
- (id).cxx_construct;
- (id)_createCellularPlanFollowUpItemWithReason:(int)reason userInfo:(id)info uniqueIdentifier:(id)identifier;
- (id)_createInstallReplaceFollowUpItemWithReason:(int)reason userInfo:(id)info uniqueIdentifier:(id)identifier;
- (id)_createTurnOnWifiCallingFollowUp:(id)up userInfo:(id)info;
- (id)_localize:(id)_localize keyName:(id)name;
- (id)_textForReason:(int)reason carrierName:(id)name;
- (id)_titleForReason:(int)reason carrierName:(id)name isNotification:(BOOL)notification;
- (id)getPendingFollowUpItems;
- (void)_clearFollowUpForCategory:(id)category;
- (void)_clearFollowUpForIdentifier:(id)identifier;
- (void)_createNoteForFollowupItem:(id)item withAction:(id)action reason:(int)reason carrierName:(id)name;
- (void)clearFollowUp:(int)up;
- (void)clearFollowUpWithUID:(id)d;
- (void)hideNotificationWithIdentifier:(id)identifier;
- (void)publishNotificationWithIdentifier:(id)identifier header:(id)header title:(id)title body:(id)body userInfo:(id)info url:(id)url shouldBackgroundDefaultAction:(BOOL)action;
- (void)showFollowUp:(int)up userInfo:(id)info withUniqueIdentifier:(id)identifier;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation FollowUpControllerImpl

- (FollowUpControllerImpl)initWithRegistry:(const void *)registry
{
  v15.receiver = self;
  v15.super_class = FollowUpControllerImpl;
  v4 = [(FollowUpControllerImpl *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v7 = *registry;
    v6 = *(registry + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->fRegistry.__cntrl_;
    v5->fRegistry.__ptr_ = v7;
    v5->fRegistry.__cntrl_ = v6;
    if (cntrl)
    {
      sub_100004A34(cntrl);
    }

    v9 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.SIMSetupUIService"];
    fUserNotificationCenter = v5->fUserNotificationCenter;
    v5->fUserNotificationCenter = v9;

    [(UNUserNotificationCenter *)v5->fUserNotificationCenter setDelegate:v5];
    [(UNUserNotificationCenter *)v5->fUserNotificationCenter setWantsNotificationResponsesDelivered];
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v12 = dispatch_queue_create("user.notification", v11);
    fObj = v5->fUserNotificationQueue.fObj.fObj;
    v5->fUserNotificationQueue.fObj.fObj = v12;
  }

  return v5;
}

- (void)showFollowUp:(int)up userInfo:(id)info withUniqueIdentifier:(id)identifier
{
  v6 = *&up;
  infoCopy = info;
  identifierCopy = identifier;
  v9 = objc_autoreleasePoolPush();
  if ((v6 - 3) >= 5)
  {
    if (v6 == 8)
    {
      v10 = [(FollowUpControllerImpl *)self _createInstallReplaceFollowUpItemWithReason:8 userInfo:infoCopy uniqueIdentifier:identifierCopy];
    }

    else
    {
      if (v6 != 1)
      {
        v11 = 0;
        goto LABEL_7;
      }

      v10 = [(FollowUpControllerImpl *)self _createTurnOnWifiCallingFollowUp:identifierCopy userInfo:infoCopy];
    }
  }

  else
  {
    v10 = [(FollowUpControllerImpl *)self _createCellularPlanFollowUpItemWithReason:v6 userInfo:infoCopy uniqueIdentifier:identifierCopy];
  }

  v11 = v10;
  if (v10)
  {
    fFollowUpController = self->fFollowUpController;
    if (!fFollowUpController)
    {
      v13 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.CoreTelephony"];
      v14 = self->fFollowUpController;
      self->fFollowUpController = v13;

      fFollowUpController = self->fFollowUpController;
    }

    [(FLFollowUpController *)fFollowUpController postFollowUpItem:v11 error:0];
  }

LABEL_7:

  objc_autoreleasePoolPop(v9);
}

- (void)clearFollowUp:(int)up
{
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1014F9C70(up);
  if ((up - 1) > 7)
  {
    [(FollowUpControllerImpl *)self _clearFollowUpForIdentifier:v6];
  }

  else
  {
    [(FollowUpControllerImpl *)self _clearFollowUpForCategory:v6];

    if (up == 4)
    {
      v7 = self->fUserNotificationCenter;
      v8 = sub_100032AC8(&self->fUserNotificationQueue.fObj.fObj);
      operator new();
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)clearFollowUpWithUID:(id)d
{
  dCopy = d;
  v4 = objc_autoreleasePoolPush();
  [(FollowUpControllerImpl *)self _clearFollowUpForIdentifier:dCopy];
  objc_autoreleasePoolPop(v4);
}

- (id)getPendingFollowUpItems
{
  v3 = objc_autoreleasePoolPush();
  fFollowUpController = self->fFollowUpController;
  if (!fFollowUpController)
  {
    v5 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.CoreTelephony"];
    v6 = self->fFollowUpController;
    self->fFollowUpController = v5;

    fFollowUpController = self->fFollowUpController;
  }

  v9 = 0;
  v7 = [(FLFollowUpController *)fFollowUpController pendingFollowUpItems:&v9];
  objc_autoreleasePoolPop(v3);

  return v7;
}

- (id)_titleForReason:(int)reason carrierName:(id)name isNotification:(BOOL)notification
{
  notificationCopy = notification;
  nameCopy = name;
  ServiceMap = Registry::getServiceMap(self->fRegistry.__ptr_);
  v10 = ServiceMap;
  if ((v11 & 0x8000000000000000) != 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  v30 = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &v30);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
LABEL_9:
  v19 = (*(*v17 + 72))(v17);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  v20 = 0;
  v21 = @"CTUF_CELLULAR_PLAN_SIMSETUP_TITLE";
  if (reason > 3)
  {
    if (reason > 5)
    {
      if (reason == 6)
      {
        v22 = @"Set Up Cellular";
      }

      else
      {
        if (reason != 7)
        {
          goto LABEL_34;
        }

        v22 = @"Finish Setting Up Cellular";
      }

LABEL_33:
      v20 = [(FollowUpControllerImpl *)self _localize:v22 keyName:v21];
LABEL_34:
      if (!nameCopy)
      {
        goto LABEL_43;
      }

      goto LABEL_35;
    }

    if (reason == 4)
    {
      if (!nameCopy)
      {
        v26 = @"CTUF_FINISH_CELLULAR_PLAN_SETTING_UP_TITLE";
        v27 = @"Finish Setting up your Cellular Plan";
        goto LABEL_41;
      }

      v23 = @"CTUF_FINISH_CELLULAR_PLAN_SETTING_UP_TITLE_@";
      v24 = @"Finish Setting up your %@ Cellular Plan";
    }

    else
    {
      if (!nameCopy)
      {
        v26 = @"CTUF_CELLULAR_PLAN_FAILED_TO_TRANSFER_TITLE";
        v27 = @"Failed to transfer Cellular Plan";
        goto LABEL_41;
      }

      v23 = @"CTUF_CELLULAR_PLAN_FAILED_TO_TRANSFER_TITLE_@";
      v24 = @"Failed to transfer %@ Cellular Plan";
    }

    v20 = [(FollowUpControllerImpl *)self _localize:v24 keyName:v23];
LABEL_35:
    v25 = [(__CFString *)v20 stringByReplacingOccurrencesOfString:@"%@" withString:nameCopy];

    v20 = v25;
    goto LABEL_43;
  }

  if (reason < 2)
  {
    v20 = &stru_101F6AFB8;
    goto LABEL_43;
  }

  if (reason != 2)
  {
    if (reason != 3)
    {
      goto LABEL_34;
    }

    if (notificationCopy)
    {
      v22 = @"Finish Cellular Setup";
    }

    else
    {
      v22 = @"Finish Setting Up Cellular";
    }

    if (notificationCopy)
    {
      v21 = @"CTUF_PENDING_PLAN_NOTIFICATION_TITLE";
    }

    goto LABEL_33;
  }

  if (v19)
  {
    v26 = @"CTUF_WLANCALL_UP_TITLE";
    v27 = @"WLAN Calling Enabled";
LABEL_41:
    v28 = [(FollowUpControllerImpl *)self _localize:v27 keyName:v26];
    goto LABEL_42;
  }

  v28 = [(FollowUpControllerImpl *)self _localize:@"Wi-Fi Calling Enabled" keyName:@"CTUF_WIFICALL_UP_TITLE"];
LABEL_42:
  v20 = v28;
LABEL_43:

  return v20;
}

- (id)_textForReason:(int)reason carrierName:(id)name
{
  nameCopy = name;
  ServiceMap = Registry::getServiceMap(self->fRegistry.__ptr_);
  v8 = ServiceMap;
  v10 = v9;
  if ((v9 & 0x8000000000000000) != 0)
  {
    v11 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v40 = v10;
  v14 = sub_100009510(&v8[1].__m_.__sig, &v40);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v8);
  v15 = 0;
  v17 = 1;
LABEL_9:
  v18 = (*(*v16 + 72))(v16);
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  v19 = Registry::getServiceMap(self->fRegistry.__ptr_);
  v20 = v19;
  if ((v9 & 0x8000000000000000) != 0)
  {
    v21 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v22 = 5381;
    do
    {
      v9 = v22;
      v23 = *v21++;
      v22 = (33 * v22) ^ v23;
    }

    while (v23);
  }

  std::mutex::lock(v19);
  v40 = v9;
  v24 = sub_100009510(&v20[1].__m_.__sig, &v40);
  if (v24)
  {
    v26 = v24[3];
    v25 = v24[4];
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v20);
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v25);
      v27 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v26 = 0;
  }

  std::mutex::unlock(v20);
  v25 = 0;
  v27 = 1;
LABEL_19:
  isIPad = GestaltUtilityInterface::isIPad(v26);
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  v29 = @"CTUF_CELLULAR_PLAN_READY_TO_INSTALL_TEXT";
  v30 = @"Tap this notification to finish your cellular plan set up.";
  v31 = &stru_101F6AFB8;
  if (reason > 4)
  {
    if (reason == 5)
    {
      v29 = @"CTUF_CELLULAR_PLAN_FAILED_TO_TRANSFER_TEXT";
      v30 = @"Tap this notification to see the details";
    }

    else if (reason != 6)
    {
      if (reason != 7)
      {
        goto LABEL_35;
      }

      v29 = @"CTFU_CELLULAR_PLAN_SETUP_REQUIRED_TEXT";
      v30 = @"You can transfer your phone number from another device or set up this iPhone with a new number.";
    }

    goto LABEL_33;
  }

  if (reason == 2)
  {
    if ((v18 & 1) == 0)
    {
      v32 = [(FollowUpControllerImpl *)self _localize:@"Address on file is used for Emergency calls over Wi-Fi. You can update it via provided link." keyName:@"CTFU_TEXT_WIFICALL_ACTIVATED"];
      goto LABEL_34;
    }

    v29 = @"CTFU_TEXT_WLANCALL_ACTIVATED";
    v30 = @"Address on file is used for Emergency calls over WLAN. You can update it via provided link.";
LABEL_33:
    v32 = [(FollowUpControllerImpl *)self _localize:v30 keyName:v29];
LABEL_34:
    v31 = v32;
    goto LABEL_35;
  }

  if (reason != 3)
  {
    if (reason != 4)
    {
LABEL_35:
      if (nameCopy)
      {
LABEL_36:
        v33 = [(__CFString *)v31 stringByReplacingOccurrencesOfString:@"%@" withString:nameCopy];
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    goto LABEL_33;
  }

  if (nameCopy)
  {
    if (isIPad)
    {
      v34 = @"CTFU_IPAD_ESIM_READY_TO_INSTALL_@";
    }

    else
    {
      v34 = @"CTFU_IPHONE_ESIM_READY_TO_INSTALL_@";
    }

    if (isIPad)
    {
      v35 = @"An eSIM from %@ is ready to be set up on this iPad.";
    }

    else
    {
      v35 = @"An eSIM from %@ is ready to be set up on this iPhone.";
    }

    v31 = [(FollowUpControllerImpl *)self _localize:v35 keyName:v34];
    goto LABEL_36;
  }

  if (isIPad)
  {
    v36 = @"CTFU_IPAD_ESIM_READY_TO_INSTALL";
  }

  else
  {
    v36 = @"CTFU_IPHONE_ESIM_READY_TO_INSTALL";
  }

  if (isIPad)
  {
    v37 = @"An eSIM is ready to be set up on this iPad.";
  }

  else
  {
    v37 = @"An eSIM is ready to be set up on this iPhone.";
  }

  v31 = [(FollowUpControllerImpl *)self _localize:v37 keyName:v36];
LABEL_53:
  v33 = v31;
  v31 = v33;
LABEL_54:
  v38 = v33;

  return v38;
}

- (id)_localize:(id)_localize keyName:(id)name
{
  _localizeCopy = _localize;
  nameCopy = name;
  v22 = _localizeCopy;
  if (_localizeCopy)
  {
    CFRetain(_localizeCopy);
  }

  ServiceMap = Registry::getServiceMap(self->fRegistry.__ptr_);
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v23 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v23);
  if (!v14)
  {
    v16 = 0;
LABEL_11:
    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    if (!v16)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (!v15)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v15);
  v17 = 0;
  if (v16)
  {
LABEL_12:
    (*(*v16 + 40))(&v21, v16, kAlertDialogLocalizationTable, nameCopy, v22);
    v18 = v22;
    v22 = v21;
    v23 = v18;
    v21 = 0;
    sub_100005978(&v23);
    sub_100005978(&v21);
  }

LABEL_13:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  v19 = v22;
  sub_100005978(&v22);

  return v19;
}

- (void)_clearFollowUpForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  fFollowUpController = self->fFollowUpController;
  if (!fFollowUpController)
  {
    v7 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.CoreTelephony"];
    v8 = self->fFollowUpController;
    self->fFollowUpController = v7;

    fFollowUpController = self->fFollowUpController;
  }

  v10 = identifierCopy;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  [(FLFollowUpController *)fFollowUpController clearPendingFollowUpItemsWithUniqueIdentifiers:v9 error:0];

  objc_autoreleasePoolPop(v5);
}

- (void)_clearFollowUpForCategory:(id)category
{
  categoryCopy = category;
  fFollowUpController = self->fFollowUpController;
  if (!fFollowUpController)
  {
    v6 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.CoreTelephony"];
    v7 = self->fFollowUpController;
    self->fFollowUpController = v6;

    fFollowUpController = self->fFollowUpController;
  }

  v17 = [(FLFollowUpController *)fFollowUpController pendingFollowUpItems:0];
  v8 = objc_alloc_init(NSMutableArray);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v17;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        categoryIdentifier = [v13 categoryIdentifier];
        v15 = [categoryIdentifier isEqualToString:categoryCopy];

        if (v15)
        {
          uniqueIdentifier = [v13 uniqueIdentifier];
          [v8 addObject:uniqueIdentifier];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if ([v8 count])
  {
    [(FLFollowUpController *)self->fFollowUpController clearPendingFollowUpItemsWithUniqueIdentifiers:v8 error:0];
  }
}

- (id)_createTurnOnWifiCallingFollowUp:(id)up userInfo:(id)info
{
  upCopy = up;
  infoCopy = info;
  ServiceMap = Registry::getServiceMap(self->fRegistry.__ptr_);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v31 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v31);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_9:
  v18 = (*(*v16 + 72))(v16);
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  v19 = objc_opt_new();
  [v19 setUniqueIdentifier:upCopy];
  if (v18)
  {
    [(FollowUpControllerImpl *)self _localize:@"Turn on WLAN Calling" keyName:@"CTUF_TITLE_WLANCALL_NEED_ACTION"];
  }

  else
  {
    [(FollowUpControllerImpl *)self _localize:@"Turn on Wi-Fi Calling" keyName:@"CTUF_TITLE_WIFICALL_NEED_ACTION"];
  }
  v20 = ;
  [v19 setTitle:v20];

  if (v18)
  {
    [(FollowUpControllerImpl *)self _localize:@"WLAN Calling can't be turned on due to missing T&C or address on file." keyName:@"CTFU_TEXT_WLANCALL_NEED_ACTION"];
  }

  else
  {
    [(FollowUpControllerImpl *)self _localize:@"Wi-Fi Calling can't be turned on due to missing T&C or address on file." keyName:@"CTFU_TEXT_WIFICALL_NEED_ACTION"];
  }
  v21 = ;
  [v19 setInformativeText:v21];

  [v19 setExtensionIdentifier:@"com.apple.CoreTelephony.CTFollowUpExtension"];
  [v19 setDisplayStyle:1];
  [v19 setGroupIdentifier:FLGroupIdentifierAccount];
  [v19 setCategoryIdentifier:@"com.apple.coretelephony.wificalling-default.need-action"];
  [v19 setUserInfo:infoCopy];
  v22 = objc_opt_new();
  [v22 setIdentifier:@"com.followup.showurl"];
  if (v18)
  {
    [(FollowUpControllerImpl *)self _localize:@"Turn On WLAN Calling" keyName:@"CTFU_LABEL_ACTION_TURN_ON_WLAN"];
  }

  else
  {
    [(FollowUpControllerImpl *)self _localize:@"Turn On Wi-Fi Calling" keyName:@"CTFU_LABEL_ACTION_TURN_ON_WIFI"];
  }
  v23 = ;
  [v22 setLabel:v23];

  v24 = objc_opt_new();
  [v24 setIdentifier:@"com.followup.dismiss"];
  v25 = [(FollowUpControllerImpl *)self _localize:@"Not Now" keyName:@"CTFU_LABEL_ACTION_NOTNOW"];
  [v24 setLabel:v25];

  v32[0] = v22;
  v32[1] = v24;
  v26 = [NSArray arrayWithObjects:v32 count:2];
  [v19 setActions:v26];

  v27 = objc_opt_new();
  if (v18)
  {
    [(FollowUpControllerImpl *)self _localize:@"Turn on WLAN Calling" keyName:@"CTUF_TITLE_WLANCALL_NEED_ACTION"];
  }

  else
  {
    [(FollowUpControllerImpl *)self _localize:@"Turn on Wi-Fi Calling" keyName:@"CTUF_TITLE_WIFICALL_NEED_ACTION"];
  }
  v28 = ;
  [v27 setTitle:v28];

  if (v18)
  {
    [(FollowUpControllerImpl *)self _localize:@"WLAN Calling can't be turned on due to missing T&C or address on file." keyName:@"CTFU_TEXT_WLANCALL_NEED_ACTION"];
  }

  else
  {
    [(FollowUpControllerImpl *)self _localize:@"Wi-Fi Calling can't be turned on due to missing T&C or address on file." keyName:@"CTFU_TEXT_WIFICALL_NEED_ACTION"];
  }
  v29 = ;
  [v27 setInformativeText:v29];

  [v27 setFrequency:3600.0];
  [v27 setActivateAction:v22];
  [v27 setClearAction:v24];
  [v27 setFirstNotificationDelay:60.0];
  [v19 setNotification:v27];

  return v19;
}

- (void)_createNoteForFollowupItem:(id)item withAction:(id)action reason:(int)reason carrierName:(id)name
{
  v7 = *&reason;
  itemCopy = item;
  actionCopy = action;
  nameCopy = name;
  v12 = objc_opt_new();
  v13 = [(FollowUpControllerImpl *)self _titleForReason:v7 carrierName:nameCopy isNotification:1];
  [v12 setTitle:v13];

  v14 = [(FollowUpControllerImpl *)self _textForReason:v7 carrierName:nameCopy];
  [v12 setInformativeText:v14];

  [v12 setActivateAction:actionCopy];
  v15 = +[FLFollowUpNotification defaultOptions];
  v16 = [v15 setByAddingObject:FLNotificationOptionExtensionActions];
  [v12 setOptions:v16];

  [itemCopy setNotification:v12];
}

- (id)_createInstallReplaceFollowUpItemWithReason:(int)reason userInfo:(id)info uniqueIdentifier:(id)identifier
{
  infoCopy = info;
  identifierCopy = identifier;
  if ((reason - 3) > 5)
  {
    v21 = 0;
    goto LABEL_30;
  }

  [infoCopy objectForKeyedSubscript:@"CarrierName"];
  v57 = v9 = &kLocationPopupShown_ptr;
  if ([v57 length])
  {
    v10 = @"An update for your %@ eSIM is available for your";
  }

  else
  {
    v10 = @"An update for your eSIM is available for your";
  }

  ServiceMap = Registry::getServiceMap(self->fRegistry.__ptr_);
  v12 = ServiceMap;
  if ((v13 & 0x8000000000000000) != 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  v58 = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, &v58);
  if (!v17)
  {
    v19 = 0;
    goto LABEL_13;
  }

  v19 = v17[3];
  v18 = v17[4];
  if (!v18)
  {
LABEL_13:
    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v12);
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = &kLocationPopupShown_ptr;
  sub_100004A34(v18);
  v20 = 0;
LABEL_14:
  isIPad = GestaltUtilityInterface::isIPad(v19);
  v23 = @"iPhone.";
  if (isIPad)
  {
    v23 = @"iPad.";
  }

  v54 = [NSString stringWithFormat:@"%@ %@ %@", v10, v23, @"You can choose to install it now, or you can update your eSIM later from Settings."];
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  v24 = [v57 length];
  v25 = [v57 length];
  if (v24)
  {
    v26 = @"A critical update for your %@ eSIM is available. It is recommended to update now. You can also update your eSIM later in Settings.";
  }

  else
  {
    v26 = @"A critical update for your eSIM is available. It is recommended to update now. You can also update your eSIM later in Settings.";
  }

  if (v25)
  {
    v27 = @"INSTALL_REPLACE_ESIM_LAST_DAY_MESSAGE_%@";
  }

  else
  {
    v27 = @"INSTALL_REPLACE_ESIM_LAST_DAY_MESSAGE";
  }

  v56 = [(FollowUpControllerImpl *)self _localize:v26 keyName:v27];
  v21 = objc_opt_new();
  v28 = [(FollowUpControllerImpl *)self _localize:@"eSIM Update" keyName:@"INSTALL_REPLACE_ESIM_TITLE"];
  [v21 setTitle:v28];

  if ([v57 length])
  {
    v29 = @"INSTALL_REPLACE_ESIM_FIRST_DAY_MESSAGE_%@";
  }

  else
  {
    v29 = @"INSTALL_REPLACE_ESIM_FIRST_DAY_MESSAGE";
  }

  v30 = [(FollowUpControllerImpl *)self _localize:v54 keyName:v29];
  [v21 setInformativeText:v30];

  if ([v57 length])
  {
    informativeText = [v21 informativeText];
    v32 = [informativeText stringByReplacingOccurrencesOfString:@"%@" withString:v57];
    [v21 setInformativeText:v32];

    v33 = [v56 stringByReplacingOccurrencesOfString:@"%@" withString:v57];

    v56 = v33;
  }

  [v21 setExtensionIdentifier:@"com.apple.CoreTelephony.CTFollowUpExtension"];
  [v21 setGroupIdentifier:FLGroupIdentifierDevice];
  v34 = sub_1014F9C70(reason);
  [v21 setCategoryIdentifier:v34];

  v35 = objc_opt_new();
  [v35 setUserInfo:infoCopy];
  v36 = [(FollowUpControllerImpl *)self _localize:@"Update" keyName:@"CBMessageAcceptButton"];
  [v35 setLabel:v36];

  [v35 setIdentifier:@"com.followup.install-replace"];
  v37 = v9[245];
  v38 = sub_1014F9C70(reason);
  v39 = [infoCopy objectForKeyedSubscript:@"IccidHash"];
  v40 = [v37 stringWithFormat:@"%@.%@", v38, v39];
  [v21 setUniqueIdentifier:v40];

  v59 = v35;
  v41 = [NSArray arrayWithObjects:&v59 count:1];
  [v21 setActions:v41];

  v42 = objc_opt_new();
  [v42 setUserInfo:infoCopy];
  label = [v35 label];
  [v42 setLabel:label];

  [v42 setIdentifier:@"com.followup.install-replace-action"];
  v44 = objc_opt_new();
  [v44 setUserInfo:infoCopy];
  [v44 setIdentifier:@"com.apple.coretelephony.cellularplan-default.plan-installreplace-dismiss"];
  v45 = [(FollowUpControllerImpl *)self _localize:@"Not Now" keyName:@"CTFU_LABEL_ACTION_NOTNOW"];
  [v44 setLabel:v45];

  v46 = [NSMutableDictionary dictionaryWithDictionary:infoCopy];
  [v46 setValue:v56 forKey:@"LastDayInformativeText"];
  v47 = [NSSet setWithObjects:FLNotificationOptionForce, FLNotificationOptionSpringboardAlert, FLNotificationOptionNotificationCenter, FLNotificationOptionExtensionActions, 0];
  v48 = objc_opt_new();
  title = [v21 title];
  [v48 setTitle:title];

  informativeText2 = [v21 informativeText];
  [v48 setInformativeText:informativeText2];

  [v48 setActivateAction:v42];
  [v48 setClearAction:v44];
  options = [v48 options];
  v52 = [options setByAddingObjectsFromSet:v47];
  [v48 setOptions:v52];

  [v48 setFrequency:10.0];
  [v21 setUserInfo:v46];
  [v21 setNotification:v48];

LABEL_30:

  return v21;
}

- (id)_createCellularPlanFollowUpItemWithReason:(int)reason userInfo:(id)info uniqueIdentifier:(id)identifier
{
  v6 = *&reason;
  infoCopy = info;
  identifierCopy = identifier;
  if ((v6 - 3) > 5)
  {
    v10 = 0;
    goto LABEL_18;
  }

  v10 = objc_opt_new();
  v11 = [infoCopy objectForKeyedSubscript:@"CarrierName"];
  v12 = [(FollowUpControllerImpl *)self _titleForReason:v6 carrierName:v11 isNotification:0];
  [v10 setTitle:v12];

  v13 = [(FollowUpControllerImpl *)self _textForReason:v6 carrierName:v11];
  [v10 setInformativeText:v13];

  [v10 setExtensionIdentifier:@"com.apple.CoreTelephony.CTFollowUpExtension"];
  [v10 setGroupIdentifier:FLGroupIdentifierDevice];
  v14 = sub_1014F9C70(v6);
  [v10 setCategoryIdentifier:v14];

  if (v6 != 7)
  {
    [v10 setDisplayStyle:2];
  }

  v15 = objc_opt_new();
  v28 = objc_opt_new();
  [v15 setUserInfo:infoCopy];
  if (v6 <= 5)
  {
    if (v6 == 3)
    {
      v24 = [(FollowUpControllerImpl *)self _localize:@"Install Cellular Plan" keyName:@"CTFU_LABEL_ACTION_CELLULAR_PLAN_INSTALL"];
      [v15 setLabel:v24];

      [v15 setIdentifier:@"com.followup.install"];
      uniqueIdentifier = [infoCopy objectForKeyedSubscript:@"CarrierName"];
      [(FollowUpControllerImpl *)self _createNoteForFollowupItem:v10 withAction:v15 reason:3 carrierName:uniqueIdentifier];
    }

    else
    {
      if (v6 != 4)
      {
        goto LABEL_16;
      }

      v16 = [(FollowUpControllerImpl *)self _localize:@"Install Cellular Plan" keyName:@"CTFU_LABEL_ACTION_CELLULAR_PLAN_INSTALL"];
      [v15 setLabel:v16];

      [v15 setIdentifier:@"com.followup.transfer-websheet"];
      uniqueIdentifier = [v10 uniqueIdentifier];
      v18 = [(FollowUpControllerImpl *)self _localize:@"Settings" keyName:@"SETTINGS"];
      title = [v10 title];
      informativeText = [v10 informativeText];
      LOBYTE(v27) = 1;
      [(FollowUpControllerImpl *)self publishNotificationWithIdentifier:uniqueIdentifier header:v18 title:title body:informativeText userInfo:infoCopy url:0 shouldBackgroundDefaultAction:v27];
    }

LABEL_16:
    v30 = v15;
    v23 = [NSArray arrayWithObjects:&v30 count:1];
    [v10 setActions:v23];
    goto LABEL_17;
  }

  if (v6 == 6)
  {
    v25 = [(FollowUpControllerImpl *)self _localize:@"Set Up Cellular" keyName:@"CTUF_CELLULAR_PLAN_SIMSETUP_TITLE"];
    [v15 setLabel:v25];

    [v15 setIdentifier:@"com.followup.setup"];
    [(FollowUpControllerImpl *)self _createNoteForFollowupItem:v10 withAction:v15 reason:6 carrierName:&stru_101F6AFB8];
    goto LABEL_16;
  }

  if (v6 != 7)
  {
    goto LABEL_16;
  }

  v21 = [(FollowUpControllerImpl *)self _localize:@"Install Cellular Plan" keyName:@"CTFU_LABEL_ACTION_CELLULAR_PLAN_INSTALL"];
  [v15 setLabel:v21];

  [v15 setIdentifier:@"com.apple.coretelephony.cellularplan-default.setup-required"];
  v22 = [(FollowUpControllerImpl *)self _localize:@"Don't Install Cellular Plan" keyName:@"CTFU_LABEL_ACTION_CELLULAR_PLAN_NOT_INSTALL"];
  [v28 setLabel:v22];

  [v10 setUniqueIdentifier:identifierCopy];
  v29[0] = v15;
  v29[1] = v28;
  v23 = [NSArray arrayWithObjects:v29 count:2];
  [v10 setActions:v23];
LABEL_17:

LABEL_18:

  return v10;
}

- (void)publishNotificationWithIdentifier:(id)identifier header:(id)header title:(id)title body:(id)body userInfo:(id)info url:(id)url shouldBackgroundDefaultAction:(BOOL)action
{
  identifierCopy = identifier;
  headerCopy = header;
  titleCopy = title;
  bodyCopy = body;
  infoCopy = info;
  urlCopy = url;
  v21 = objc_opt_new();
  [v21 setHeader:headerCopy];
  v22 = [UNNotificationIcon iconForApplicationIdentifier:@"com.apple.Preferences"];
  [v21 setIcon:v22];

  [v21 setTitle:titleCopy];
  [v21 setBody:bodyCopy];
  [v21 setUserInfo:infoCopy];
  v23 = +[UNNotificationSound defaultSound];
  [v21 setSound:v23];

  [v21 setShouldBackgroundDefaultAction:action];
  [v21 setDefaultActionURL:urlCopy];
  v24 = [UNNotificationRequest requestWithIdentifier:identifierCopy content:v21 trigger:0];
  v25 = self->fUserNotificationCenter;
  v26 = v24;
  v27 = sub_100032AC8(&self->fUserNotificationQueue.fObj.fObj);
  operator new();
}

- (void)hideNotificationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = self->fUserNotificationCenter;
  v6 = identifierCopy;
  v7 = sub_100032AC8(&self->fUserNotificationQueue.fObj.fObj);
  operator new();
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v8 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.SIMSetupUIService" viewControllerClassName:@"TSSIMSetupSupportViewController"];
  v9 = objc_opt_new();
  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];

  v14 = objc_opt_new();
  [v14 setObject:&off_101F91290 forKey:@"FlowTypeKey"];
  [v14 setObject:&off_101F91290 forKey:@"RequestTypeKey"];
  v15 = [userInfo objectForKeyedSubscript:@"CarrierName"];
  [v14 setObject:v15 forKey:@"CarrierName"];

  v16 = [userInfo objectForKeyedSubscript:@"ServerURL"];
  [v14 setObject:v16 forKey:@"WebsheetURLKey"];

  v17 = [userInfo objectForKeyedSubscript:@"PostData"];

  if (v17)
  {
    v18 = [userInfo objectForKeyedSubscript:@"PostData"];
    [v14 setObject:v18 forKey:@"WebsheetPostdataKey"];
  }

  [v9 setUserInfo:v14];
  [(SBSRemoteAlertHandle *)self->fRemoteAlertHandle invalidate];
  v19 = [SBSRemoteAlertHandle newHandleWithDefinition:v8 configurationContext:v9];
  fRemoteAlertHandle = self->fRemoteAlertHandle;
  self->fRemoteAlertHandle = v19;

  v21 = objc_opt_new();
  [v21 setReason:@"Transfer Websheet"];
  [(SBSRemoteAlertHandle *)self->fRemoteAlertHandle activateWithContext:v21];
  notification2 = [responseCopy notification];
  request2 = [notification2 request];
  identifier = [request2 identifier];
  [(FollowUpControllerImpl *)self _clearFollowUpForIdentifier:identifier];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 6) = 0;
  return self;
}

@end
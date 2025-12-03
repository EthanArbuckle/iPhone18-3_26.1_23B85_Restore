@interface HUCCControlCenterModule
- (BOOL)isDeviceUnlockedForControlCenterModuleViewController:(id)controller;
- (BOOL)isDeviceUnlockedForSmartGridContentViewController:(id)controller;
- (HUCCControlCenterModule)init;
- (id)contentViewControllerForContext:(id)context;
- (id)homeKitActiveAssertionReason;
- (void)addStateSubscriptionReasonToDataModel;
- (void)cancelRegistration:(id)registration;
- (void)cancelScheduledCharacteristicDeregistration;
- (void)controlCenterModuleViewController:(id)controller didChangeDisplayedItems:(id)items;
- (void)controlCenterModuleViewController:(id)controller didStartDisplayingHome:(id)home;
- (void)controlCenterModuleViewController:(id)controller moduleDidDisappear:(BOOL)disappear;
- (void)controlCenterModuleViewController:(id)controller moduleWillAppear:(BOOL)appear;
- (void)dealloc;
- (void)endHomeKitActiveAssertion;
- (void)launchHomeAppForControlCenterModuleViewController:(id)controller;
- (void)launchHomeAppForSmartGridContentViewController:(id)controller;
- (void)registerForAnalytics;
- (void)registerForItems:(NSSet *)items inHome:(HMHome *)home currentRegistration:(id)registration completionBlock:(id)block;
- (void)removeStateSubscriptionReasonFromDataModel;
- (void)resetFetchedMediaItems;
- (void)scheduleCharacteristicDeregistration;
- (void)setContentModuleContext:(id)context;
- (void)setupHomeKitActiveAssertionIfNeeded;
@end

@implementation HUCCControlCenterModule

- (HUCCControlCenterModule)init
{
  v19.receiver = self;
  v19.super_class = HUCCControlCenterModule;
  v2 = [(HUCCControlCenterModule *)&v19 init];
  if (v2)
  {
    if (_os_feature_enabled_impl())
    {
      v5 = objc_msgSend_sharedManager(MEMORY[0x29EDC54A8], v3, v4);
      objc_msgSend_bootstrap(v5, v6, v7);

      objc_msgSend_registerForAnalytics(v2, v8, v9);
    }

    else
    {
      HUCCPerformCommonInitialization();
    }

    v12 = objc_msgSend_UUID(MEMORY[0x29EDBA140], v10, v11);
    moduleUniqueIdentifier = v2->_moduleUniqueIdentifier;
    v2->_moduleUniqueIdentifier = v12;

    v14 = [HUCCLockStateHandler alloc];
    v16 = objc_msgSend_initWithDelegate_(v14, v15, v2);
    lockStateHandler = v2->_lockStateHandler;
    v2->_lockStateHandler = v16;

    if (qword_2A1A12860 != -1)
    {
      sub_29C9AB980();
    }
  }

  return v2;
}

- (void)dealloc
{
  v4 = objc_msgSend_sharedManager(MEMORY[0x29EDC54A8], a2, v2);
  v7 = objc_msgSend_moduleUniqueIdentifier(self, v5, v6);
  objc_msgSend_setModuleWithIdentifier_subscribedToHome_(v4, v8, v7, 0);

  objc_msgSend_endHomeKitActiveAssertion(self, v9, v10);
  v11.receiver = self;
  v11.super_class = HUCCControlCenterModule;
  [(HUCCControlCenterModule *)&v11 dealloc];
}

- (id)contentViewControllerForContext:(id)context
{
  v19[3] = *MEMORY[0x29EDCA608];
  contextCopy = context;
  v7 = objc_msgSend_viewController(self, v5, v6);

  if (!v7)
  {
    if (_os_feature_enabled_impl())
    {
      sub_29C9AB9A8(self, v19);
    }

    else
    {
      v10 = HFLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_29C992000, v10, OS_LOG_TYPE_DEFAULT, "HUCCControlCenterModule will initialize: HUCCSmartGridContentViewController", v18, 2u);
      }

      v11 = [HUCCSmartGridContentViewController alloc];
      v13 = objc_msgSend_initWithDelegate_(v11, v12, self);
      objc_msgSend_setViewController_(self, v14, v13);
    }
  }

  v15 = objc_msgSend_viewController(self, v8, v9);

  v16 = *MEMORY[0x29EDCA608];

  return v15;
}

- (void)setContentModuleContext:(id)context
{
  objc_storeStrong(&self->_contentModuleContext, context);
  contextCopy = context;
  objc_opt_class();
  v8 = objc_msgSend_viewController(self, v6, v7);
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v14 = v9;

  v10 = [HUCCOpenURLHandler alloc];
  v12 = objc_msgSend_initWithCCModuleContext_(v10, v11, contextCopy);

  objc_msgSend_setURLHandler_(v14, v13, v12);
}

- (void)launchHomeAppForSmartGridContentViewController:(id)controller
{
  controllerCopy = controller;
  v7 = objc_msgSend_contentModuleContext(self, v5, v6);
  launchHomeAppForModuleViewController(controllerCopy, v7);
}

- (BOOL)isDeviceUnlockedForSmartGridContentViewController:(id)controller
{
  v3 = objc_msgSend_lockStateHandler(self, a2, controller);
  isDeviceUnlocked = objc_msgSend_isDeviceUnlocked(v3, v4, v5);

  return isDeviceUnlocked;
}

- (void)controlCenterModuleViewController:(id)controller moduleWillAppear:(BOOL)appear
{
  v26 = *MEMORY[0x29EDCA608];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v22 = 138412546;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_29C992000, v6, OS_LOG_TYPE_DEFAULT, "%@-%@ delegate called", &v22, 0x16u);
  }

  v12 = objc_msgSend_sharedManager(MEMORY[0x29EDC54A8], v10, v11);
  objc_msgSend_enterModuleViewWillAppear(v12, v13, v14);

  objc_msgSend_cancelScheduledCharacteristicDeregistration(self, v15, v16);
  objc_msgSend_setupHomeKitActiveAssertionIfNeeded(self, v17, v18);
  objc_msgSend_addStateSubscriptionReasonToDataModel(self, v19, v20);
  v21 = *MEMORY[0x29EDCA608];
}

- (void)controlCenterModuleViewController:(id)controller moduleDidDisappear:(BOOL)disappear
{
  v26 = *MEMORY[0x29EDCA608];
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v22 = 138412546;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_29C992000, v6, OS_LOG_TYPE_DEFAULT, "%@-%@ delegate called", &v22, 0x16u);
  }

  v12 = objc_msgSend_sharedManager(MEMORY[0x29EDC54A8], v10, v11);
  objc_msgSend_exitModuleViewDidDisappear(v12, v13, v14);

  objc_msgSend_scheduleCharacteristicDeregistration(self, v15, v16);
  objc_msgSend_resetFetchedMediaItems(self, v17, v18);
  objc_msgSend_removeStateSubscriptionReasonFromDataModel(self, v19, v20);
  v21 = *MEMORY[0x29EDCA608];
}

- (void)controlCenterModuleViewController:(id)controller didChangeDisplayedItems:(id)items
{
  v45 = *MEMORY[0x29EDCA608];
  controllerCopy = controller;
  itemsCopy = items;
  if (!objc_msgSend_allowsCharacteristicNotifications(controllerCopy, v9, v10))
  {
    goto LABEL_4;
  }

  v13 = objc_msgSend_itemManager(controllerCopy, v11, v12);
  v16 = objc_msgSend_home(v13, v14, v15);
  v19 = objc_msgSend_uuid(v16, v17, v18);

  if (v19)
  {
    objc_initWeak(location, self);
    v22 = objc_msgSend_itemManager(controllerCopy, v20, v21);
    v25 = objc_msgSend_home(v22, v23, v24);
    v28 = objc_msgSend_characteristicRegistrationObject(self, v26, v27);
    v40[0] = MEMORY[0x29EDCA5F8];
    v40[1] = 3221225472;
    v40[2] = sub_29C99684C;
    v40[3] = &unk_29F33A8D0;
    objc_copyWeak(&v41, location);
    objc_msgSend_registerForItems_inHome_currentRegistration_completionBlock_(self, v29, itemsCopy, v25, v28, v40);

    objc_destroyWeak(&v41);
    objc_destroyWeak(location);
  }

  else
  {
LABEL_4:
    v30 = HFLogForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = NSStringFromSelector(a2);
      *location = 138412546;
      *&location[4] = v32;
      v43 = 2112;
      v44 = v33;
      _os_log_impl(&dword_29C992000, v30, OS_LOG_TYPE_DEFAULT, "%@-%@ delegate called while view controller had characteristic notifications disabled. Clearing registration", location, 0x16u);
    }

    v36 = objc_msgSend_characteristicRegistrationObject(self, v34, v35);
    objc_msgSend_cancelRegistration_(self, v37, v36);

    objc_msgSend_setCharacteristicRegistrationObject_(self, v38, 0);
  }

  v39 = *MEMORY[0x29EDCA608];
}

- (void)controlCenterModuleViewController:(id)controller didStartDisplayingHome:(id)home
{
  v34 = *MEMORY[0x29EDCA608];
  controllerCopy = controller;
  homeCopy = home;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_msgSend_uuid(homeCopy, v9, v10);
    v26 = 138413058;
    selfCopy = self;
    v28 = 2112;
    v29 = controllerCopy;
    v30 = 2112;
    v31 = v11;
    v32 = 1024;
    v33 = objc_msgSend_allowsCharacteristicNotifications(controllerCopy, v12, v13);
    _os_log_impl(&dword_29C992000, v8, OS_LOG_TYPE_DEFAULT, "%@:controlCenterModuleViewController %@ didStartDisplayingHome %@ allowsCharacteristicNotifications:%{BOOL}d", &v26, 0x26u);
  }

  if (!objc_msgSend_allowsCharacteristicNotifications(controllerCopy, v14, v15) || (objc_msgSend_uuid(homeCopy, v16, v17), v18 = objc_claimAutoreleasedReturnValue(), v18, v19 = homeCopy, !v18))
  {
    v19 = 0;
  }

  v20 = objc_msgSend_sharedManager(MEMORY[0x29EDC54A8], v16, v17);
  v23 = objc_msgSend_moduleUniqueIdentifier(self, v21, v22);
  objc_msgSend_setModuleWithIdentifier_subscribedToHome_(v20, v24, v23, v19);

  v25 = *MEMORY[0x29EDCA608];
}

- (void)cancelScheduledCharacteristicDeregistration
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_registrationScheduledCancelation(self, a2, v2);

  if (v4)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_29C992000, v7, OS_LOG_TYPE_DEFAULT, "%@:CharacteristicRegistration canceling scheduled characteristic deregistration", &v13, 0xCu);
    }
  }

  v8 = objc_msgSend_registrationScheduledCancelation(self, v5, v6);
  objc_msgSend_cancel(v8, v9, v10);

  objc_msgSend_setRegistrationScheduledCancelation_(self, v11, 0);
  v12 = *MEMORY[0x29EDCA608];
}

- (void)scheduleCharacteristicDeregistration
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = objc_msgSend_registrationScheduledCancelation(self, a2, v2);
  objc_msgSend_cancel(v4, v5, v6);

  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_29C992000, v7, OS_LOG_TYPE_DEFAULT, "%@:CharacteristicRegistration scheduling characteristic deregistration", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v10 = objc_msgSend_mainThreadScheduler(MEMORY[0x29EDC5E58], v8, v9);
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = sub_29C996D70;
  v15[3] = &unk_29F33A8F8;
  objc_copyWeak(&v16, buf);
  v12 = objc_msgSend_afterDelay_performBlock_(v10, v11, v15, 5.0);
  objc_msgSend_setRegistrationScheduledCancelation_(self, v13, v12);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v14 = *MEMORY[0x29EDCA608];
}

- (void)launchHomeAppForControlCenterModuleViewController:(id)controller
{
  v18 = *MEMORY[0x29EDCA608];
  controllerCopy = controller;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v14 = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_29C992000, v6, OS_LOG_TYPE_DEFAULT, "%@-%@ delegate called", &v14, 0x16u);
  }

  v12 = objc_msgSend_contentModuleContext(self, v10, v11);
  launchHomeAppForModuleViewController(controllerCopy, v12);

  v13 = *MEMORY[0x29EDCA608];
}

- (BOOL)isDeviceUnlockedForControlCenterModuleViewController:(id)controller
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v17 = 138412546;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_29C992000, v5, OS_LOG_TYPE_DEFAULT, "%@-%@ delegate called", &v17, 0x16u);
  }

  v11 = objc_msgSend_lockStateHandler(self, v9, v10);
  isDeviceUnlocked = objc_msgSend_isDeviceUnlocked(v11, v12, v13);

  v15 = *MEMORY[0x29EDCA608];
  return isDeviceUnlocked;
}

- (void)setupHomeKitActiveAssertionIfNeeded
{
  v4 = objc_msgSend_homeKitActiveAssertion(self, a2, v2);

  if (!v4)
  {
    v7 = objc_msgSend_sharedDispatcher(MEMORY[0x29EDC5390], v5, v6);
    v16 = objc_msgSend_homeManager(v7, v8, v9);

    v12 = objc_msgSend_homeKitActiveAssertionReason(self, v10, v11);
    v14 = objc_msgSend__beginActiveAssertionWithReason_(v16, v13, v12);
    objc_msgSend_setHomeKitActiveAssertion_(self, v15, v14);
  }
}

- (void)endHomeKitActiveAssertion
{
  v4 = objc_msgSend_homeKitActiveAssertion(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_sharedDispatcher(MEMORY[0x29EDC5390], v5, v6);
    v10 = objc_msgSend_homeManager(v7, v8, v9);

    v13 = objc_msgSend_homeKitActiveAssertion(self, v11, v12);
    objc_msgSend__endActiveAssertion_(v10, v14, v13);
  }

  objc_msgSend_setHomeKitActiveAssertion_(self, v5, 0);
}

- (id)homeKitActiveAssertionReason
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"%@:%@", v5, self);

  return v7;
}

- (void)addStateSubscriptionReasonToDataModel
{
  v2 = (*(*(sub_29C9A4A3C(&qword_2A179ADA0, &qword_29C9AE930) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v4 = &v8 - v3;
  v5 = sub_29C9AC3C8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  sub_29C9A6AC4(0, 0, v4, &unk_29C9AEA78, v7);
}

- (void)removeStateSubscriptionReasonFromDataModel
{
  selfCopy = self;
  HUCCControlCenterModule.removeStateSubscriptionReasonFromDataModel()();
}

- (void)registerForItems:(NSSet *)items inHome:(HMHome *)home currentRegistration:(id)registration completionBlock:(id)block
{
  v11 = sub_29C9A4A3C(&qword_2A179ADA0, &qword_29C9AE930);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(block);
  v16 = swift_allocObject();
  v16[2] = items;
  v16[3] = home;
  v16[4] = registration;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_29C9AC3C8();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_29C9AEA38;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_29C9AE8F8;
  v19[5] = v18;
  itemsCopy = items;
  homeCopy = home;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_29C9AA764(0, 0, v14, &unk_29C9AE900, v19);
}

- (void)cancelRegistration:(id)registration
{
  v3 = sub_29C9A4A3C(&qword_2A179ADA0, &qword_29C9AE930);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v11 - v5;
  sub_29C9AC1F8();
  swift_unknownObjectRetain_n();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = sub_29C9AC3C8();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    sub_29C9A6AC4(0, 0, v6, &unk_29C9AEA28, v10);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease_n();
  }
}

- (void)resetFetchedMediaItems
{
  v2 = sub_29C9A4A3C(&qword_2A179ADA0, &qword_29C9AE930);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v8 - v4;
  v6 = sub_29C9AC3C8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_29C9A6AC4(0, 0, v5, &unk_29C9AEA18, v7);
}

- (void)registerForAnalytics
{
  v3 = sub_29C9A4A3C(&qword_2A179ADA0, &qword_29C9AE930);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_29C9AC3C8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  selfCopy = self;
  sub_29C9A6AC4(0, 0, v6, &unk_29C9AEA10, v8);
}

@end
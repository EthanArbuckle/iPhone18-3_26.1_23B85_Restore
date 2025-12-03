@interface ACCUserNotification
- (ACCUserNotification)init;
- (void)createBackingUserNotification;
- (void)setUserNotificationCF:(__CFUserNotification *)f;
- (void)updateBackingUserNotification;
@end

@implementation ACCUserNotification

- (ACCUserNotification)init
{
  v20.receiver = self;
  v20.super_class = ACCUserNotification;
  v2 = [(ACCUserNotification *)&v20 init];
  v3 = v2;
  if (v2)
  {
    v2->_userNotificationCF = 0;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    uuid = v3->_uuid;
    v3->_uuid = uUIDString;

    v3->_type = 0;
    title = v3->_title;
    v3->_title = 0;

    message = v3->_message;
    v3->_message = 0;

    lockScreenTitle = v3->_lockScreenTitle;
    v3->_lockScreenTitle = 0;

    lockScreenMessage = v3->_lockScreenMessage;
    v3->_lockScreenMessage = 0;

    defaultButtonName = v3->_defaultButtonName;
    v3->_defaultButtonName = 0;

    otherButtonName = v3->_otherButtonName;
    v3->_otherButtonName = 0;

    iconURL = v3->_iconURL;
    v3->_iconURL = 0;

    *&v3->_isModal = 0;
    systemSoundID = v3->_systemSoundID;
    v3->_systemSoundID = 0;

    identifier = v3->_identifier;
    v3->_identifier = 0;

    groupIdentifier = v3->_groupIdentifier;
    v3->_groupIdentifier = 0;

    v3->_allowLockScreenDismissal = 1;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    iconConfiguration = v3->_iconConfiguration;
    v3->_iconConfiguration = dictionary;
  }

  return v3;
}

- (void)createBackingUserNotification
{
  v43[9] = *MEMORY[0x277D85DE8];
  if ([(ACCUserNotification *)self userNotificationCF])
  {
    [(ACCUserNotification *)self setUserNotificationCF:0];
  }

  [(ACCUserNotification *)self isModal];
  v42[0] = *MEMORY[0x277CBF188];
  title = [(ACCUserNotification *)self title];
  v41 = title;
  if (title)
  {
    v5 = title;
  }

  else
  {
    v5 = &stru_2848F31C8;
  }

  v43[0] = v5;
  v42[1] = *MEMORY[0x277CBF198];
  message = [(ACCUserNotification *)self message];
  v7 = message;
  if (message)
  {
    v8 = message;
  }

  else
  {
    v8 = &stru_2848F31C8;
  }

  v43[1] = v8;
  v42[2] = *MEMORY[0x277CBF1B0];
  v40 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v43[2] = v40;
  v42[3] = *MEMORY[0x277D67320];
  v39 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v43[3] = v39;
  v42[4] = *MEMORY[0x277D67340];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCUserNotification dismissOnUnlock](self, "dismissOnUnlock") ^ 1}];
  v43[4] = v9;
  v42[5] = *MEMORY[0x277D673B0];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCUserNotification ignoreQuietMode](self, "ignoreQuietMode")}];
  v43[5] = v10;
  v42[6] = *MEMORY[0x277D673B8];
  lockScreenTitle = [(ACCUserNotification *)self lockScreenTitle];
  v12 = lockScreenTitle;
  if (!lockScreenTitle)
  {
    title2 = [(ACCUserNotification *)self title];
    v37 = title2;
    if (title2)
    {
      v12 = title2;
    }

    else
    {
      v12 = &stru_2848F31C8;
    }
  }

  v43[6] = v12;
  v42[7] = *MEMORY[0x277D673C8];
  lockScreenMessage = [(ACCUserNotification *)self lockScreenMessage];
  v15 = lockScreenMessage;
  if (!lockScreenMessage)
  {
    message2 = [(ACCUserNotification *)self message];
    v2 = message2;
    if (message2)
    {
      v15 = message2;
    }

    else
    {
      v15 = &stru_2848F31C8;
    }
  }

  v43[7] = v15;
  v42[8] = *MEMORY[0x277D67290];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCUserNotification allowLockScreenDismissal](self, "allowLockScreenDismissal")}];
  v43[8] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:9];
  v19 = [v18 mutableCopy];

  if (!lockScreenMessage)
  {
  }

  if (!lockScreenTitle)
  {
  }

  defaultButtonName = [(ACCUserNotification *)self defaultButtonName];
  if (defaultButtonName)
  {
    v21 = defaultButtonName;
    defaultButtonName2 = [(ACCUserNotification *)self defaultButtonName];
    v23 = [defaultButtonName2 length];

    if (v23)
    {
      defaultButtonName3 = [(ACCUserNotification *)self defaultButtonName];
      [v19 setObject:defaultButtonName3 forKey:*MEMORY[0x277CBF1E8]];
    }
  }

  otherButtonName = [(ACCUserNotification *)self otherButtonName];
  if (otherButtonName)
  {
    v26 = otherButtonName;
    otherButtonName2 = [(ACCUserNotification *)self otherButtonName];
    v28 = [otherButtonName2 length];

    if (v28)
    {
      otherButtonName3 = [(ACCUserNotification *)self otherButtonName];
      [v19 setObject:otherButtonName3 forKey:*MEMORY[0x277CBF1C0]];
    }
  }

  systemSoundID = [(ACCUserNotification *)self systemSoundID];

  if (systemSoundID)
  {
    systemSoundID2 = [(ACCUserNotification *)self systemSoundID];
    [v19 setObject:systemSoundID2 forKey:*MEMORY[0x277D67430]];
  }

  iconConfiguration = [(ACCUserNotification *)self iconConfiguration];
  v33 = [iconConfiguration count];

  if (v33)
  {
    iconConfiguration2 = [(ACCUserNotification *)self iconConfiguration];
    [v19 setObject:iconConfiguration2 forKey:*MEMORY[0x277D67368]];
  }

  if ([(ACCUserNotification *)self presentViaSystemAperture])
  {
    [v19 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D67420]];
  }

  v35 = [v19 copy];
  [(ACCUserNotification *)self setUserNotificationCFDict:v35];

  v36 = *MEMORY[0x277D85DE8];
}

- (void)setUserNotificationCF:(__CFUserNotification *)f
{
  userNotificationCF = self->_userNotificationCF;
  if (userNotificationCF)
  {
    CFRelease(userNotificationCF);
  }

  if (f)
  {
    v6 = CFRetain(f);
  }

  else
  {
    v6 = 0;
  }

  self->_userNotificationCF = v6;
}

- (void)updateBackingUserNotification
{
  userNotificationCF = [(ACCUserNotification *)self userNotificationCF];
  [(ACCUserNotification *)self createBackingUserNotification];

  [(ACCUserNotification *)self setUserNotificationCF:userNotificationCF];
}

@end
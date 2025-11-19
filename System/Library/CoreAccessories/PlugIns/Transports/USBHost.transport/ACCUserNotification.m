@interface ACCUserNotification
- (ACCUserNotification)init;
- (void)createBackingUserNotification;
- (void)setUserNotificationCF:(__CFUserNotification *)a3;
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
    v4 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v4 UUIDString];
    uuid = v3->_uuid;
    v3->_uuid = v5;

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
    v17 = [MEMORY[0x277CBEB38] dictionary];
    iconConfiguration = v3->_iconConfiguration;
    v3->_iconConfiguration = v17;
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
  v4 = [(ACCUserNotification *)self title];
  v41 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_2848FDF20;
  }

  v43[0] = v5;
  v42[1] = *MEMORY[0x277CBF198];
  v6 = [(ACCUserNotification *)self message];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_2848FDF20;
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
  v11 = [(ACCUserNotification *)self lockScreenTitle];
  v12 = v11;
  if (!v11)
  {
    v13 = [(ACCUserNotification *)self title];
    v37 = v13;
    if (v13)
    {
      v12 = v13;
    }

    else
    {
      v12 = &stru_2848FDF20;
    }
  }

  v43[6] = v12;
  v42[7] = *MEMORY[0x277D673C8];
  v14 = [(ACCUserNotification *)self lockScreenMessage];
  v15 = v14;
  if (!v14)
  {
    v16 = [(ACCUserNotification *)self message];
    v2 = v16;
    if (v16)
    {
      v15 = v16;
    }

    else
    {
      v15 = &stru_2848FDF20;
    }
  }

  v43[7] = v15;
  v42[8] = *MEMORY[0x277D67290];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACCUserNotification allowLockScreenDismissal](self, "allowLockScreenDismissal")}];
  v43[8] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:9];
  v19 = [v18 mutableCopy];

  if (!v14)
  {
  }

  if (!v11)
  {
  }

  v20 = [(ACCUserNotification *)self defaultButtonName];
  if (v20)
  {
    v21 = v20;
    v22 = [(ACCUserNotification *)self defaultButtonName];
    v23 = [v22 length];

    if (v23)
    {
      v24 = [(ACCUserNotification *)self defaultButtonName];
      [v19 setObject:v24 forKey:*MEMORY[0x277CBF1E8]];
    }
  }

  v25 = [(ACCUserNotification *)self otherButtonName];
  if (v25)
  {
    v26 = v25;
    v27 = [(ACCUserNotification *)self otherButtonName];
    v28 = [v27 length];

    if (v28)
    {
      v29 = [(ACCUserNotification *)self otherButtonName];
      [v19 setObject:v29 forKey:*MEMORY[0x277CBF1C0]];
    }
  }

  v30 = [(ACCUserNotification *)self systemSoundID];

  if (v30)
  {
    v31 = [(ACCUserNotification *)self systemSoundID];
    [v19 setObject:v31 forKey:*MEMORY[0x277D67430]];
  }

  v32 = [(ACCUserNotification *)self iconConfiguration];
  v33 = [v32 count];

  if (v33)
  {
    v34 = [(ACCUserNotification *)self iconConfiguration];
    [v19 setObject:v34 forKey:*MEMORY[0x277D67368]];
  }

  if ([(ACCUserNotification *)self presentViaSystemAperture])
  {
    [v19 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D67420]];
  }

  v35 = [v19 copy];
  [(ACCUserNotification *)self setUserNotificationCFDict:v35];

  v36 = *MEMORY[0x277D85DE8];
}

- (void)setUserNotificationCF:(__CFUserNotification *)a3
{
  userNotificationCF = self->_userNotificationCF;
  if (userNotificationCF)
  {
    CFRelease(userNotificationCF);
  }

  if (a3)
  {
    v6 = CFRetain(a3);
  }

  else
  {
    v6 = 0;
  }

  self->_userNotificationCF = v6;
}

- (void)updateBackingUserNotification
{
  v3 = [(ACCUserNotification *)self userNotificationCF];
  [(ACCUserNotification *)self createBackingUserNotification];

  [(ACCUserNotification *)self setUserNotificationCF:v3];
}

@end
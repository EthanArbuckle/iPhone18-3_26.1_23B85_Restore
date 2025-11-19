@interface CKMPRiMessageConsentViewController
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (CKMPRiMessageConsentViewController)init;
- (id)alternateButtonTitle;
- (id)detailString;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_registerPhoneNumberPermissionEnabled:(BOOL)a3;
- (void)alternateButtonPressed:(id)a3;
- (void)suggestedButtonPressed:(id)a3;
@end

@implementation CKMPRiMessageConsentViewController

- (CKMPRiMessageConsentViewController)init
{
  v5.receiver = self;
  v5.super_class = CKMPRiMessageConsentViewController;
  v2 = [(CKMPRiMessageConsentViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CKMPRiMessageConsentViewController *)v2 setStyle:10];
  }

  return v3;
}

- (id)titleString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PHONE_NUMBER_PERMISSION_TITLE" value:&stru_41F8 table:@"MessagesPairingRegistration"];

  return v3;
}

- (id)detailString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PHONE_NUMBER_PERMISSION_INFO" value:&stru_41F8 table:@"MessagesPairingRegistration"];

  return v3;
}

- (id)suggestedButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PHONE_NUMBER_PERMISSION_ALLOW" value:&stru_41F8 table:@"MessagesPairingRegistration"];

  return v3;
}

- (id)alternateButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PHONE_NUMBER_PERMISSION_NOTNOW" value:&stru_41F8 table:@"MessagesPairingRegistration"];

  return v3;
}

- (void)suggestedButtonPressed:(id)a3
{
  [(CKMPRiMessageConsentViewController *)self _registerPhoneNumberPermissionEnabled:1];
  v4 = [(CKMPRiMessageConsentViewController *)self miniFlowDelegate];
  [v4 miniFlowStepComplete:self];
}

- (void)alternateButtonPressed:(id)a3
{
  [(CKMPRiMessageConsentViewController *)self _registerPhoneNumberPermissionEnabled:0];
  v4 = [(CKMPRiMessageConsentViewController *)self miniFlowDelegate];
  [v4 miniFlowStepComplete:self];
}

- (void)_registerPhoneNumberPermissionEnabled:(BOOL)a3
{
  v27 = a3;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v35 = "[CKMPRiMessageConsentViewController _registerPhoneNumberPermissionEnabled:]";
      v36 = 1024;
      LODWORD(v37[0]) = v27;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%s - %d", buf, 0x12u);
    }
  }

  v4 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.tinker.messages"];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v35 = "[CKMPRiMessageConsentViewController _registerPhoneNumberPermissionEnabled:]";
      v36 = 2112;
      v37[0] = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s - tinkerMessagesActivationService: %@", buf, 0x16u);
    }
  }

  v6 = [v4 linkedDevicesWithRelationship:2];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v35 = "[CKMPRiMessageConsentViewController _registerPhoneNumberPermissionEnabled:]";
      v36 = 2112;
      v37[0] = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%s - idsTinkerDevices: %@", buf, 0x16u);
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v9)
  {
    v10 = *v31;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        if ([v12 isActive])
        {
          v9 = v12;
          goto LABEL_23;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v30 objects:v40 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v35 = "[CKMPRiMessageConsentViewController _registerPhoneNumberPermissionEnabled:]";
      v36 = 2112;
      v37[0] = v9;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%s - activeTinkerDevice: %@", buf, 0x16u);
    }
  }

  if (v9)
  {
    v38 = @"enableRegistration";
    v14 = [NSNumber numberWithBool:v27];
    v39 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v16 = IDSCopyIDForDevice();
    v17 = [NSSet setWithObject:v16];
    v28 = 0;
    v29 = 0;
    v18 = [v4 sendMessage:v15 toDestinations:v17 priority:200 options:0 identifier:&v29 error:&v28];
    v19 = v29;
    v20 = v28;

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v35 = "[CKMPRiMessageConsentViewController _registerPhoneNumberPermissionEnabled:]";
        v36 = 1024;
        LODWORD(v37[0]) = v18;
        WORD2(v37[0]) = 2112;
        *(v37 + 6) = v20;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "%s - sendMessageForTinkerPhoneNumberRegistrationEnabled success: %d, error: %@", buf, 0x1Cu);
      }
    }

    v22 = BPSGetActiveDevice();
    v23 = [v22 pairingID];
    v24 = [v23 UUIDString];
    v25 = [@"kEnableMessages-" stringByAppendingString:v24];

    v26 = &kCFBooleanTrue;
    if (!v27)
    {
      v26 = &kCFBooleanFalse;
    }

    CFPreferencesSetAppValue(v25, *v26, @"com.apple.MobileSMS");
    CFPreferencesAppSynchronize(@"com.apple.MobileSMS");
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }
}

- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end
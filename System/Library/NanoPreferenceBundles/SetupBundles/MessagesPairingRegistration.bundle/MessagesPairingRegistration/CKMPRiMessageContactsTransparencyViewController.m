@interface CKMPRiMessageContactsTransparencyViewController
+ (BOOL)controllerNeedsToRun;
- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate;
- (CKMPRiMessageContactsTransparencyViewController)init;
- (id)detailString;
- (id)imageResourceBundleIdentifier;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)suggestedButtonPressed:(id)a3;
@end

@implementation CKMPRiMessageContactsTransparencyViewController

- (CKMPRiMessageContactsTransparencyViewController)init
{
  v10.receiver = self;
  v10.super_class = CKMPRiMessageContactsTransparencyViewController;
  v2 = [(CKMPRiMessageContactsTransparencyViewController *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(CKMPRiMessageContactsTransparencyViewController *)v2 setStyle:2];
    v4 = +[PDRRegistry sharedInstance];
    v5 = +[PDRRegistry activeDeviceSelectorBlock];
    v6 = [v4 getAllDevicesWithArchivedAltAccountDevicesMatching:v5];
    v7 = [v6 firstObject];
    v8 = v7;
    if (v7)
    {
      LOBYTE(v7) = [v7 isAltAccount];
    }

    v3->_isTinkerPairing = v7;
  }

  return v3;
}

+ (BOOL)controllerNeedsToRun
{
  v2 = +[BPSBridgeAppContext shared];
  v3 = [v2 isRestoringToKnownDevice];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"YES";
      if (v3)
      {
        v5 = @"NO";
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "CKMPRiMessageContactsTransparencyViewController is called with return value: %@", &v7, 0xCu);
    }
  }

  return v3 ^ 1;
}

- (id)titleString
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"MESSAGES_CONTACT_TRANSPARENCY_TITLE" value:&stru_41F8 table:@"MessagesPairingRegistration"];

  return v3;
}

- (id)detailString
{
  isTinkerPairing = self->_isTinkerPairing;
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isTinkerPairing)
  {
    v5 = @"MESSAGES_CONTACT_TRANSPARENCY_TINKER_INFO";
  }

  else
  {
    v5 = @"MESSAGES_CONTACT_TRANSPARENCY_CLASSIC_INFO";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_41F8 table:@"MessagesPairingRegistration"];

  return v6;
}

- (id)imageResourceBundleIdentifier
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (void)suggestedButtonPressed:(id)a3
{
  v4 = [(CKMPRiMessageContactsTransparencyViewController *)self delegate];
  [v4 buddyControllerDone:self];
}

- (id)suggestedButtonTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"MESSAGES_CONTACT_TRANSPARENCY_OK" value:&stru_41F8 table:@"MessagesPairingRegistration"];

  return v3;
}

- (BPSSetupMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end
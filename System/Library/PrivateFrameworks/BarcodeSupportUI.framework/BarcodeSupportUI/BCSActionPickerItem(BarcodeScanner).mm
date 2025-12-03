@interface BCSActionPickerItem(BarcodeScanner)
- (void)performActionInExternalApp;
@end

@implementation BCSActionPickerItem(BarcodeScanner)

- (void)performActionInExternalApp
{
  actionURL = [self actionURL];
  serviceApplicationBundleIdentifier = [self serviceApplicationBundleIdentifier];
  if (serviceApplicationBundleIdentifier)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v4 = _bcs_frontBoardUnlockOptions();
    mEMORY[0x277D75128] = [defaultWorkspace operationToOpenResource:actionURL usingApplication:serviceApplicationBundleIdentifier uniqueDocumentIdentifier:0 isContentManaged:0 sourceAuditToken:0 userInfo:0 options:v4 delegate:0];

    [mEMORY[0x277D75128] start];
  }

  else
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] openURL:actionURL options:MEMORY[0x277CBEC10] completionHandler:0];
  }
}

@end
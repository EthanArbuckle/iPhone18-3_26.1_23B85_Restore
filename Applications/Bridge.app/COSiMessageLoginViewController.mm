@interface COSiMessageLoginViewController
+ (BOOL)controllerNeedsToRunForCurrentService;
- (COSiMessageLoginViewController)init;
- (id)detailString;
- (id)localizedWaitScreenDescription;
- (id)titleString;
- (id)username;
- (void)loggedInSuccessfullyWithBuddyControllerDoneBlock:(id)block;
@end

@implementation COSiMessageLoginViewController

- (COSiMessageLoginViewController)init
{
  v8.receiver = self;
  v8.super_class = COSiMessageLoginViewController;
  v2 = [(COSAppleIDLoginViewController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v7.receiver = v2;
    v7.super_class = COSiMessageLoginViewController;
    [(COSiMessageLoginViewController *)v2 setStyle:[(COSiMessageLoginViewController *)&v7 style]| 0x40];
    v4 = +[COSiMessageFaceTimeAuthController iMessageAccountInAccountStore];
    account = v3->_account;
    v3->_account = v4;
  }

  return v3;
}

- (id)username
{
  account = [(COSiMessageLoginViewController *)self account];
  v3 = [COSiMessageFaceTimeAuthController usernameForIDSAccount:account];

  return v3;
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"iMESSAGE_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"iMESSAGE_WHY_SIGN_IN" value:&stru_10026E598 table:@"Localizable"];
  v5 = [(COSAppleIDLoginViewController *)self appendUsernameToDetailText:v4];

  return v5;
}

+ (BOOL)controllerNeedsToRunForCurrentService
{
  setupController = [UIApp setupController];
  appleIDSignInModel = [setupController appleIDSignInModel];
  hasSignedInToiCloud = [appleIDSignInModel hasSignedInToiCloud];

  if (!hasSignedInToiCloud)
  {
    goto LABEL_6;
  }

  v5 = +[COSiCloudAuthController iCloudAccountInAccountStore];
  v6 = +[COSiMessageFaceTimeAuthController iMessageAccountInAccountStore];
  if (!v5 || !+[COSAppleIDUtilities checkIfAccount:isForSameAppleIDAsAccount:](COSAppleIDUtilities, "checkIfAccount:isForSameAppleIDAsAccount:", v6, v5) || ([setupController appleIDSignInModel], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasCombinedIDSSignInFailed"), v7, (v8 & 1) != 0))
  {

LABEL_6:
    v9 = 1;
    goto LABEL_7;
  }

  v11 = pbb_accountsignin_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Skipping iMessage sign in: same as iCloud account", v12, 2u);
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (void)loggedInSuccessfullyWithBuddyControllerDoneBlock:(id)block
{
  blockCopy = block;
  setupController = [UIApp setupController];
  appleIDSignInModel = [setupController appleIDSignInModel];
  [appleIDSignInModel setHasSignedInToiMessage:1];

  appleIDSignInModel2 = [setupController appleIDSignInModel];
  [appleIDSignInModel2 setHasCombinedIDSSignInFailed:0];

  [(COSAppleIDLoginViewController *)self saveiTunesStoreAccountToPairedDeviceIfForSameAppleID];
  if (blockCopy)
  {
    blockCopy[2]();
  }
}

- (id)localizedWaitScreenDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"MESSAGES_ACCOUNT_HOLD_DESCRIPTION" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

@end
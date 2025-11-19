@interface COSiMessageLoginViewController
+ (BOOL)controllerNeedsToRunForCurrentService;
- (COSiMessageLoginViewController)init;
- (id)detailString;
- (id)localizedWaitScreenDescription;
- (id)titleString;
- (id)username;
- (void)loggedInSuccessfullyWithBuddyControllerDoneBlock:(id)a3;
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
  v2 = [(COSiMessageLoginViewController *)self account];
  v3 = [COSiMessageFaceTimeAuthController usernameForIDSAccount:v2];

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
  v2 = [UIApp setupController];
  v3 = [v2 appleIDSignInModel];
  v4 = [v3 hasSignedInToiCloud];

  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = +[COSiCloudAuthController iCloudAccountInAccountStore];
  v6 = +[COSiMessageFaceTimeAuthController iMessageAccountInAccountStore];
  if (!v5 || !+[COSAppleIDUtilities checkIfAccount:isForSameAppleIDAsAccount:](COSAppleIDUtilities, "checkIfAccount:isForSameAppleIDAsAccount:", v6, v5) || ([v2 appleIDSignInModel], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasCombinedIDSSignInFailed"), v7, (v8 & 1) != 0))
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

- (void)loggedInSuccessfullyWithBuddyControllerDoneBlock:(id)a3
{
  v7 = a3;
  v4 = [UIApp setupController];
  v5 = [v4 appleIDSignInModel];
  [v5 setHasSignedInToiMessage:1];

  v6 = [v4 appleIDSignInModel];
  [v6 setHasCombinedIDSSignInFailed:0];

  [(COSAppleIDLoginViewController *)self saveiTunesStoreAccountToPairedDeviceIfForSameAppleID];
  if (v7)
  {
    v7[2]();
  }
}

- (id)localizedWaitScreenDescription
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"MESSAGES_ACCOUNT_HOLD_DESCRIPTION" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

@end
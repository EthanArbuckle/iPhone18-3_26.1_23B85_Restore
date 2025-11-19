@interface COSFaceTimeLoginViewController
+ (BOOL)controllerNeedsToRunForCurrentService;
- (COSFaceTimeLoginViewController)init;
- (id)detailString;
- (id)localizedWaitScreenDescription;
- (id)titleString;
- (id)username;
- (void)loggedInSuccessfullyWithBuddyControllerDoneBlock:(id)a3;
@end

@implementation COSFaceTimeLoginViewController

- (COSFaceTimeLoginViewController)init
{
  v6.receiver = self;
  v6.super_class = COSFaceTimeLoginViewController;
  v2 = [(COSAppleIDLoginViewController *)&v6 init];
  if (v2)
  {
    v3 = +[COSiMessageFaceTimeAuthController faceTimeAccountInAccountStore];
    account = v2->_account;
    v2->_account = v3;
  }

  return v2;
}

- (id)username
{
  v2 = [(COSFaceTimeLoginViewController *)self account];
  v3 = [COSiMessageFaceTimeAuthController usernameForIDSAccount:v2];

  return v3;
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"FACETIME_TITLE" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (id)detailString
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"FACETIME_WHY_SIGN_IN" value:&stru_10026E598 table:@"Localizable"];
  v5 = [(COSAppleIDLoginViewController *)self appendUsernameToDetailText:v4];

  return v5;
}

+ (BOOL)controllerNeedsToRunForCurrentService
{
  v2 = [UIApp activeWatch];
  v3 = [[NSUUID alloc] initWithUUIDString:@"DEBFF23F-9327-44FB-A219-0428BEBD5BA7"];
  v4 = [v2 supportsCapability:v3];

  if (v4)
  {
    v5 = [UIApp setupController];
    v6 = +[COSiCloudAuthController iCloudAccountInAccountStore];
    v7 = +[COSiMessageFaceTimeAuthController faceTimeAccountInAccountStore];
    v8 = +[COSiMessageFaceTimeAuthController iMessageAccountInAccountStore];
    if (v8)
    {
      v9 = [v5 appleIDSignInModel];
      if ([v9 hasSignedInToiMessage])
      {
        v10 = [COSAppleIDUtilities checkIfAccount:v7 isForSameAppleIDAsAccount:v8];

        if (v10)
        {
          v11 = pbb_accountsignin_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v21 = 0;
            v12 = "Skipping FaceTime sign in: same as iMessage account";
            v13 = &v21;
LABEL_17:
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
            goto LABEL_18;
          }

          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    if (v6)
    {
      v15 = [v5 appleIDSignInModel];
      if ([v15 hasSignedInToiCloud])
      {
        v16 = [COSAppleIDUtilities checkIfAccount:v7 isForSameAppleIDAsAccount:v6];

        if (v16)
        {
          v17 = [v5 appleIDSignInModel];
          v18 = [v17 hasCombinedIDSSignInFailed];

          if ((v18 & 1) == 0)
          {
            v11 = pbb_accountsignin_log();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v20 = 0;
              v12 = "Skipping FaceTime sign in: same as iCloud account";
              v13 = &v20;
              goto LABEL_17;
            }

LABEL_18:

            v14 = 0;
LABEL_21:

            goto LABEL_22;
          }
        }
      }

      else
      {
      }
    }

    v14 = 1;
    goto LABEL_21;
  }

  v5 = pbb_accountsignin_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Skipping FaceTime sign in: Watch does not have FaceTime capability", buf, 2u);
  }

  v14 = 0;
LABEL_22:

  return v14;
}

- (void)loggedInSuccessfullyWithBuddyControllerDoneBlock:(id)a3
{
  v7 = a3;
  v4 = [UIApp setupController];
  v5 = [v4 appleIDSignInModel];
  [v5 setHasSignedInToFaceTime:1];

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
  v3 = [v2 localizedStringForKey:@"FACETIME_ACCOUNT_HOLD_DESCRIPTION" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

@end
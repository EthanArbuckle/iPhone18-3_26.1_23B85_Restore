@interface COSAppleIDUtilities
+ (BOOL)checkIfAccount:(id)account isForSameAppleIDAsAccount:(id)asAccount;
+ (BOOL)checkIfSameAppleIDForUsername1:(id)username1 username2:(id)username2 DSID1:(id)d1 DSID2:(id)d2 altDSID1:(id)iD1 altDSID2:(id)iD2;
+ (id)DSIDForAccount:(id)account;
+ (id)altDSIDForAccount:(id)account;
+ (id)usernameForAccount:(id)account;
@end

@implementation COSAppleIDUtilities

+ (id)usernameForAccount:(id)account
{
  accountCopy = account;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];

  if ([identifier isEqualToString:ACAccountTypeIdentifierAppleAccount])
  {
    v6 = [COSiCloudAuthController usernameForiCloudAccount:accountCopy];
LABEL_9:
    v7 = v6;
    goto LABEL_10;
  }

  if ([identifier isEqualToString:ACAccountTypeIdentifierIdentityServices])
  {
    v6 = [COSiMessageFaceTimeAuthController usernameForIDSAccount:accountCopy];
    goto LABEL_9;
  }

  if ([identifier isEqualToString:ACAccountTypeIdentifieriTunesStore])
  {
    v6 = [COSiTunesStoreAuthController usernameForiTunesStoreAccount:accountCopy];
    goto LABEL_9;
  }

  if ([identifier isEqualToString:ACAccountTypeIdentifierIDMS])
  {
    v6 = [COSAppleIDAuthController usernameForIDMSAccount:accountCopy];
    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

+ (id)DSIDForAccount:(id)account
{
  accountCopy = account;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];

  if ([identifier isEqualToString:ACAccountTypeIdentifierAppleAccount])
  {
    v6 = [COSiCloudAuthController DSIDForiCloudAccount:accountCopy];
LABEL_9:
    v7 = v6;
    goto LABEL_10;
  }

  if ([identifier isEqualToString:ACAccountTypeIdentifierIdentityServices])
  {
    v6 = [COSiMessageFaceTimeAuthController DSIDForIDSAccount:accountCopy];
    goto LABEL_9;
  }

  if ([identifier isEqualToString:ACAccountTypeIdentifieriTunesStore])
  {
    v6 = [COSiTunesStoreAuthController DSIDForiTunesStoreAccount:accountCopy];
    goto LABEL_9;
  }

  if ([identifier isEqualToString:ACAccountTypeIdentifierIDMS])
  {
    v6 = [COSAppleIDAuthController DSIDForIDMSAccount:accountCopy];
    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

+ (id)altDSIDForAccount:(id)account
{
  accountCopy = account;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];

  if ([identifier isEqualToString:ACAccountTypeIdentifierAppleAccount])
  {
    v6 = [COSiCloudAuthController altDSIDForiCloudAccount:accountCopy];
LABEL_9:
    v7 = v6;
    goto LABEL_10;
  }

  if ([identifier isEqualToString:ACAccountTypeIdentifierIdentityServices])
  {
    v6 = [COSiMessageFaceTimeAuthController altDSIDForIDSAccount:accountCopy];
    goto LABEL_9;
  }

  if ([identifier isEqualToString:ACAccountTypeIdentifieriTunesStore])
  {
    v6 = [COSiTunesStoreAuthController altDSIDForiTunesStoreAccount:accountCopy];
    goto LABEL_9;
  }

  if ([identifier isEqualToString:ACAccountTypeIdentifierIDMS])
  {
    v6 = [COSAppleIDAuthController altDSIDForIDMSAccount:accountCopy];
    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

+ (BOOL)checkIfAccount:(id)account isForSameAppleIDAsAccount:(id)asAccount
{
  asAccountCopy = asAccount;
  accountCopy = account;
  v7 = [COSAppleIDUtilities usernameForAccount:accountCopy];
  v8 = [COSAppleIDUtilities usernameForAccount:asAccountCopy];
  v9 = [COSAppleIDUtilities DSIDForAccount:accountCopy];
  v10 = [COSAppleIDUtilities DSIDForAccount:asAccountCopy];
  v11 = [COSAppleIDUtilities altDSIDForAccount:accountCopy];

  v12 = [COSAppleIDUtilities altDSIDForAccount:asAccountCopy];

  LOBYTE(asAccountCopy) = [COSAppleIDUtilities checkIfSameAppleIDForUsername1:v7 username2:v8 DSID1:v9 DSID2:v10 altDSID1:v11 altDSID2:v12];
  return asAccountCopy;
}

+ (BOOL)checkIfSameAppleIDForUsername1:(id)username1 username2:(id)username2 DSID1:(id)d1 DSID2:(id)d2 altDSID1:(id)iD1 altDSID2:(id)iD2
{
  username1Copy = username1;
  username2Copy = username2;
  d1Copy = d1;
  d2Copy = d2;
  iD1Copy = iD1;
  iD2Copy = iD2;
  if (iD1Copy)
  {
    v19 = [iD1Copy isEqualToString:&stru_10026E598];
    if (iD2Copy)
    {
      if ((v19 & 1) == 0 && ([iD2Copy isEqualToString:&stru_10026E598] & 1) == 0)
      {
        v23 = iD1Copy;
        v24 = iD2Copy;
        goto LABEL_17;
      }
    }
  }

  if (d1Copy)
  {
    v20 = [d1Copy isEqualToString:&stru_10026E598];
    if (d2Copy)
    {
      if ((v20 & 1) == 0 && ([d2Copy isEqualToString:&stru_10026E598] & 1) == 0)
      {
        v23 = d1Copy;
        v24 = d2Copy;
        goto LABEL_17;
      }
    }
  }

  if (!username1Copy)
  {
LABEL_13:
    v22 = 0;
    goto LABEL_18;
  }

  v21 = [username1Copy isEqualToString:&stru_10026E598];
  v22 = 0;
  if (username2Copy && (v21 & 1) == 0)
  {
    if ([username2Copy isEqualToString:&stru_10026E598])
    {
      goto LABEL_13;
    }

    v23 = username1Copy;
    v24 = username2Copy;
LABEL_17:
    v22 = [v23 isEqualToString:v24];
  }

LABEL_18:

  return v22;
}

@end
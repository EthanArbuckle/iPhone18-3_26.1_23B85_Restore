@interface COSAppleIDUtilities
+ (BOOL)checkIfAccount:(id)a3 isForSameAppleIDAsAccount:(id)a4;
+ (BOOL)checkIfSameAppleIDForUsername1:(id)a3 username2:(id)a4 DSID1:(id)a5 DSID2:(id)a6 altDSID1:(id)a7 altDSID2:(id)a8;
+ (id)DSIDForAccount:(id)a3;
+ (id)altDSIDForAccount:(id)a3;
+ (id)usernameForAccount:(id)a3;
@end

@implementation COSAppleIDUtilities

+ (id)usernameForAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 accountType];
  v5 = [v4 identifier];

  if ([v5 isEqualToString:ACAccountTypeIdentifierAppleAccount])
  {
    v6 = [COSiCloudAuthController usernameForiCloudAccount:v3];
LABEL_9:
    v7 = v6;
    goto LABEL_10;
  }

  if ([v5 isEqualToString:ACAccountTypeIdentifierIdentityServices])
  {
    v6 = [COSiMessageFaceTimeAuthController usernameForIDSAccount:v3];
    goto LABEL_9;
  }

  if ([v5 isEqualToString:ACAccountTypeIdentifieriTunesStore])
  {
    v6 = [COSiTunesStoreAuthController usernameForiTunesStoreAccount:v3];
    goto LABEL_9;
  }

  if ([v5 isEqualToString:ACAccountTypeIdentifierIDMS])
  {
    v6 = [COSAppleIDAuthController usernameForIDMSAccount:v3];
    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

+ (id)DSIDForAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 accountType];
  v5 = [v4 identifier];

  if ([v5 isEqualToString:ACAccountTypeIdentifierAppleAccount])
  {
    v6 = [COSiCloudAuthController DSIDForiCloudAccount:v3];
LABEL_9:
    v7 = v6;
    goto LABEL_10;
  }

  if ([v5 isEqualToString:ACAccountTypeIdentifierIdentityServices])
  {
    v6 = [COSiMessageFaceTimeAuthController DSIDForIDSAccount:v3];
    goto LABEL_9;
  }

  if ([v5 isEqualToString:ACAccountTypeIdentifieriTunesStore])
  {
    v6 = [COSiTunesStoreAuthController DSIDForiTunesStoreAccount:v3];
    goto LABEL_9;
  }

  if ([v5 isEqualToString:ACAccountTypeIdentifierIDMS])
  {
    v6 = [COSAppleIDAuthController DSIDForIDMSAccount:v3];
    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

+ (id)altDSIDForAccount:(id)a3
{
  v3 = a3;
  v4 = [v3 accountType];
  v5 = [v4 identifier];

  if ([v5 isEqualToString:ACAccountTypeIdentifierAppleAccount])
  {
    v6 = [COSiCloudAuthController altDSIDForiCloudAccount:v3];
LABEL_9:
    v7 = v6;
    goto LABEL_10;
  }

  if ([v5 isEqualToString:ACAccountTypeIdentifierIdentityServices])
  {
    v6 = [COSiMessageFaceTimeAuthController altDSIDForIDSAccount:v3];
    goto LABEL_9;
  }

  if ([v5 isEqualToString:ACAccountTypeIdentifieriTunesStore])
  {
    v6 = [COSiTunesStoreAuthController altDSIDForiTunesStoreAccount:v3];
    goto LABEL_9;
  }

  if ([v5 isEqualToString:ACAccountTypeIdentifierIDMS])
  {
    v6 = [COSAppleIDAuthController altDSIDForIDMSAccount:v3];
    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

+ (BOOL)checkIfAccount:(id)a3 isForSameAppleIDAsAccount:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [COSAppleIDUtilities usernameForAccount:v6];
  v8 = [COSAppleIDUtilities usernameForAccount:v5];
  v9 = [COSAppleIDUtilities DSIDForAccount:v6];
  v10 = [COSAppleIDUtilities DSIDForAccount:v5];
  v11 = [COSAppleIDUtilities altDSIDForAccount:v6];

  v12 = [COSAppleIDUtilities altDSIDForAccount:v5];

  LOBYTE(v5) = [COSAppleIDUtilities checkIfSameAppleIDForUsername1:v7 username2:v8 DSID1:v9 DSID2:v10 altDSID1:v11 altDSID2:v12];
  return v5;
}

+ (BOOL)checkIfSameAppleIDForUsername1:(id)a3 username2:(id)a4 DSID1:(id)a5 DSID2:(id)a6 altDSID1:(id)a7 altDSID2:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (v17)
  {
    v19 = [v17 isEqualToString:&stru_10026E598];
    if (v18)
    {
      if ((v19 & 1) == 0 && ([v18 isEqualToString:&stru_10026E598] & 1) == 0)
      {
        v23 = v17;
        v24 = v18;
        goto LABEL_17;
      }
    }
  }

  if (v15)
  {
    v20 = [v15 isEqualToString:&stru_10026E598];
    if (v16)
    {
      if ((v20 & 1) == 0 && ([v16 isEqualToString:&stru_10026E598] & 1) == 0)
      {
        v23 = v15;
        v24 = v16;
        goto LABEL_17;
      }
    }
  }

  if (!v13)
  {
LABEL_13:
    v22 = 0;
    goto LABEL_18;
  }

  v21 = [v13 isEqualToString:&stru_10026E598];
  v22 = 0;
  if (v14 && (v21 & 1) == 0)
  {
    if ([v14 isEqualToString:&stru_10026E598])
    {
      goto LABEL_13;
    }

    v23 = v13;
    v24 = v14;
LABEL_17:
    v22 = [v23 isEqualToString:v24];
  }

LABEL_18:

  return v22;
}

@end
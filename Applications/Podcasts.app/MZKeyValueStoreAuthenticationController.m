@interface MZKeyValueStoreAuthenticationController
- (BOOL)isAuthenticationValidForTransaction:(id)a3 error:(id *)a4;
- (BOOL)shouldForceAuthenticationForTransaction:(id)a3;
- (MZKeyValueStoreAuthenticationController)init;
- (NSString)DSID;
- (NSString)DSIDText;
- (NSString)acceptedDSID;
- (NSString)acceptedDSIDText;
- (id)authenticationErrorsForTransaction:(id)a3;
- (void)resetAcceptedCredentials;
@end

@implementation MZKeyValueStoreAuthenticationController

- (MZKeyValueStoreAuthenticationController)init
{
  v8.receiver = self;
  v8.super_class = MZKeyValueStoreAuthenticationController;
  v2 = [(MZKeyValueStoreAuthenticationController *)&v8 init];
  if (v2)
  {
    v3 = [@"MZKeyValueStore.LastDsid" copy];
    acceptedDSIDUserDefaultsKey = v2->_acceptedDSIDUserDefaultsKey;
    v2->_acceptedDSIDUserDefaultsKey = v3;

    v5 = [@"MZKeyValueStore.LastDsidText" copy];
    acceptedDSIDTextUserDefaultsKey = v2->_acceptedDSIDTextUserDefaultsKey;
    v2->_acceptedDSIDTextUserDefaultsKey = v5;
  }

  return v2;
}

- (BOOL)isAuthenticationValidForTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MZKeyValueStoreAuthenticationController *)self DSID];
  v8 = [(MZKeyValueStoreAuthenticationController *)self acceptedDSID];
  if (-[MZKeyValueStoreAuthenticationController shouldAuthenticate](self, "shouldAuthenticate") || v7 && v8 && ([v7 isEqualToString:v8] & 1) != 0 || -[MZKeyValueStoreAuthenticationController shouldForceAuthenticationForTransaction:](self, "shouldForceAuthenticationForTransaction:", v6))
  {
    v9 = 1;
  }

  else
  {
    [(MZKeyValueStoreAuthenticationController *)self authenticationErrorsForTransaction:v6];
    *a4 = v9 = 0;
  }

  return v9;
}

- (BOOL)shouldForceAuthenticationForTransaction:(id)a3
{
  v4 = a3;
  if ([(MZKeyValueStoreAuthenticationController *)self shouldAuthenticate])
  {
    v5 = [(MZKeyValueStoreAuthenticationController *)self authenticationErrorsForTransaction:v4];
    v6 = v5;
    if (v5)
    {
      v7 = ([v5 code] & 0xFFFFFFFFFFFFFFFDLL) == -1004;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)authenticationErrorsForTransaction:(id)a3
{
  v4 = a3;
  v5 = [(MZKeyValueStoreAuthenticationController *)self DSIDText];
  v6 = [(MZKeyValueStoreAuthenticationController *)self DSID];
  v7 = [(MZKeyValueStoreAuthenticationController *)self acceptedDSID];
  v8 = [(MZKeyValueStoreAuthenticationController *)self acceptedDSIDText];
  if (v7)
  {
    if (v6)
    {
      [MZKeyValueStoreError storeAccountMismatchErrorWithPreviousStoreAccountText:v8 currentStoreAccontText:v5 transaction:v4 underlyingError:0];
    }

    else
    {
      [MZKeyValueStoreError storeLoggedOutErrorWithPreviousStoreAccountText:v7 transaction:v4 underlyingError:0];
    }
    v9 = ;
  }

  else
  {
    v9 = [MZKeyValueStoreError noStoreAccountErrorWithTransaction:v4 underlyingError:0];
  }

  v10 = v9;

  return v10;
}

- (void)resetAcceptedCredentials
{
  v3 = +[MZPreferences storeBookkeeperPreferences];
  v4 = [(MZKeyValueStoreAuthenticationController *)self DSID];
  v5 = [(MZKeyValueStoreAuthenticationController *)self acceptedDSIDUserDefaultsKey];
  [v3 setObject:v4 forKey:v5];

  v8 = +[MZPreferences storeBookkeeperPreferences];
  v6 = [(MZKeyValueStoreAuthenticationController *)self DSIDText];
  v7 = [(MZKeyValueStoreAuthenticationController *)self acceptedDSIDTextUserDefaultsKey];
  [v8 setObject:v6 forKey:v7];
}

- (NSString)acceptedDSID
{
  v3 = +[MZPreferences storeBookkeeperPreferences];
  v4 = [(MZKeyValueStoreAuthenticationController *)self acceptedDSIDUserDefaultsKey];
  v5 = [v3 objectForKey:v4 withDefaultValue:0];

  return v5;
}

- (NSString)acceptedDSIDText
{
  v3 = +[MZPreferences storeBookkeeperPreferences];
  v4 = [(MZKeyValueStoreAuthenticationController *)self acceptedDSIDTextUserDefaultsKey];
  v5 = [v3 objectForKey:v4 withDefaultValue:0];

  return v5;
}

- (NSString)DSID
{
  v2 = +[MTAccountController sharedInstance];
  v3 = [v2 activeDsid];
  v4 = [v3 stringValue];

  return v4;
}

- (NSString)DSIDText
{
  v2 = +[MTAccountController sharedInstance];
  v3 = [v2 activeAccount];
  v4 = [v3 username];

  return v4;
}

@end
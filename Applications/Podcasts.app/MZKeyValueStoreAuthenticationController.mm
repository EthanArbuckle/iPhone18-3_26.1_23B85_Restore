@interface MZKeyValueStoreAuthenticationController
- (BOOL)isAuthenticationValidForTransaction:(id)transaction error:(id *)error;
- (BOOL)shouldForceAuthenticationForTransaction:(id)transaction;
- (MZKeyValueStoreAuthenticationController)init;
- (NSString)DSID;
- (NSString)DSIDText;
- (NSString)acceptedDSID;
- (NSString)acceptedDSIDText;
- (id)authenticationErrorsForTransaction:(id)transaction;
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

- (BOOL)isAuthenticationValidForTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  dSID = [(MZKeyValueStoreAuthenticationController *)self DSID];
  acceptedDSID = [(MZKeyValueStoreAuthenticationController *)self acceptedDSID];
  if (-[MZKeyValueStoreAuthenticationController shouldAuthenticate](self, "shouldAuthenticate") || dSID && acceptedDSID && ([dSID isEqualToString:acceptedDSID] & 1) != 0 || -[MZKeyValueStoreAuthenticationController shouldForceAuthenticationForTransaction:](self, "shouldForceAuthenticationForTransaction:", transactionCopy))
  {
    v9 = 1;
  }

  else
  {
    [(MZKeyValueStoreAuthenticationController *)self authenticationErrorsForTransaction:transactionCopy];
    *error = v9 = 0;
  }

  return v9;
}

- (BOOL)shouldForceAuthenticationForTransaction:(id)transaction
{
  transactionCopy = transaction;
  if ([(MZKeyValueStoreAuthenticationController *)self shouldAuthenticate])
  {
    v5 = [(MZKeyValueStoreAuthenticationController *)self authenticationErrorsForTransaction:transactionCopy];
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

- (id)authenticationErrorsForTransaction:(id)transaction
{
  transactionCopy = transaction;
  dSIDText = [(MZKeyValueStoreAuthenticationController *)self DSIDText];
  dSID = [(MZKeyValueStoreAuthenticationController *)self DSID];
  acceptedDSID = [(MZKeyValueStoreAuthenticationController *)self acceptedDSID];
  acceptedDSIDText = [(MZKeyValueStoreAuthenticationController *)self acceptedDSIDText];
  if (acceptedDSID)
  {
    if (dSID)
    {
      [MZKeyValueStoreError storeAccountMismatchErrorWithPreviousStoreAccountText:acceptedDSIDText currentStoreAccontText:dSIDText transaction:transactionCopy underlyingError:0];
    }

    else
    {
      [MZKeyValueStoreError storeLoggedOutErrorWithPreviousStoreAccountText:acceptedDSID transaction:transactionCopy underlyingError:0];
    }
    v9 = ;
  }

  else
  {
    v9 = [MZKeyValueStoreError noStoreAccountErrorWithTransaction:transactionCopy underlyingError:0];
  }

  v10 = v9;

  return v10;
}

- (void)resetAcceptedCredentials
{
  v3 = +[MZPreferences storeBookkeeperPreferences];
  dSID = [(MZKeyValueStoreAuthenticationController *)self DSID];
  acceptedDSIDUserDefaultsKey = [(MZKeyValueStoreAuthenticationController *)self acceptedDSIDUserDefaultsKey];
  [v3 setObject:dSID forKey:acceptedDSIDUserDefaultsKey];

  v8 = +[MZPreferences storeBookkeeperPreferences];
  dSIDText = [(MZKeyValueStoreAuthenticationController *)self DSIDText];
  acceptedDSIDTextUserDefaultsKey = [(MZKeyValueStoreAuthenticationController *)self acceptedDSIDTextUserDefaultsKey];
  [v8 setObject:dSIDText forKey:acceptedDSIDTextUserDefaultsKey];
}

- (NSString)acceptedDSID
{
  v3 = +[MZPreferences storeBookkeeperPreferences];
  acceptedDSIDUserDefaultsKey = [(MZKeyValueStoreAuthenticationController *)self acceptedDSIDUserDefaultsKey];
  v5 = [v3 objectForKey:acceptedDSIDUserDefaultsKey withDefaultValue:0];

  return v5;
}

- (NSString)acceptedDSIDText
{
  v3 = +[MZPreferences storeBookkeeperPreferences];
  acceptedDSIDTextUserDefaultsKey = [(MZKeyValueStoreAuthenticationController *)self acceptedDSIDTextUserDefaultsKey];
  v5 = [v3 objectForKey:acceptedDSIDTextUserDefaultsKey withDefaultValue:0];

  return v5;
}

- (NSString)DSID
{
  v2 = +[MTAccountController sharedInstance];
  activeDsid = [v2 activeDsid];
  stringValue = [activeDsid stringValue];

  return stringValue;
}

- (NSString)DSIDText
{
  v2 = +[MTAccountController sharedInstance];
  activeAccount = [v2 activeAccount];
  username = [activeAccount username];

  return username;
}

@end
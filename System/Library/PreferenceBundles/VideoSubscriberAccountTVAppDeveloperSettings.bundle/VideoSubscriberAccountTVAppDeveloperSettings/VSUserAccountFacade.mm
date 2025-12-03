@interface VSUserAccountFacade
- (VSUserAccountFacade)initWithAccount:(id)account;
- (id)_synchedToThisDeviceIndicator;
- (id)accountType;
- (id)authenticationDataString;
- (id)billingCycleEndDate;
- (id)billingIdentifier;
- (id)created;
- (id)deviceCategory;
- (id)displayName;
- (id)displayNameWithSynchedToThisDeviceIndicator;
- (id)fromThisDevice;
- (id)identifier;
- (id)lastModified;
- (id)lastModifiedLong;
- (id)requiresSystemTrust;
- (id)sourceIdentifier;
- (id)tierIdentifiers;
- (id)tvProviderIdentifier;
- (id)updateURLString;
@end

@implementation VSUserAccountFacade

- (VSUserAccountFacade)initWithAccount:(id)account
{
  accountCopy = account;
  v8.receiver = self;
  v8.super_class = VSUserAccountFacade;
  v5 = [(VSUserAccountFacade *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(VSUserAccountFacade *)v5 setAccount:accountCopy];
  }

  return v6;
}

- (id)displayName
{
  account = [(VSUserAccountFacade *)self account];
  deviceName = [account deviceName];
  v5 = deviceName;
  v6 = &stru_83C0;
  if (deviceName)
  {
    v6 = deviceName;
  }

  v7 = v6;

  account2 = [(VSUserAccountFacade *)self account];
  isDeveloperCreated = [account2 isDeveloperCreated];

  if (isDeveloperCreated)
  {
    v10 = [(__CFString *)v7 stringByAppendingString:@" 🚧"];

    v7 = v10;
  }

  return v7;
}

- (id)displayNameWithSynchedToThisDeviceIndicator
{
  displayName = [(VSUserAccountFacade *)self displayName];
  _synchedToThisDeviceIndicator = [(VSUserAccountFacade *)self _synchedToThisDeviceIndicator];
  v5 = [displayName stringByAppendingString:_synchedToThisDeviceIndicator];

  return v5;
}

- (id)_synchedToThisDeviceIndicator
{
  account = [(VSUserAccountFacade *)self account];
  if ([account isFromCurrentDevice])
  {
    v3 = &stru_83C0;
  }

  else
  {
    v3 = @"☁️";
  }

  v4 = v3;

  return v3;
}

- (id)lastModified
{
  account = [(VSUserAccountFacade *)self account];
  modified = [account modified];
  v4 = [VSTVAppDeveloperSettingsUtilities stringFromDate:modified];

  return v4;
}

- (id)lastModifiedLong
{
  v3 = +[NSBundle vs_frameworkBundle];
  v4 = [v3 localizedStringForKey:@"TV_APP_DEVELOPER_LAST_MODIFIED" value:0 table:0];

  account = [(VSUserAccountFacade *)self account];
  modified = [account modified];
  v7 = [VSTVAppDeveloperSettingsUtilities stringFromDate:modified];
  v8 = [NSString stringWithFormat:@"%@: %@", v4, v7];

  return v8;
}

- (id)created
{
  account = [(VSUserAccountFacade *)self account];
  created = [account created];
  v4 = [VSTVAppDeveloperSettingsUtilities stringFromDate:created];

  return v4;
}

- (id)deviceCategory
{
  account = [(VSUserAccountFacade *)self account];
  if ([account deviceCategory])
  {
    v3 = @"Other";
  }

  else
  {
    v3 = @"Mobile";
  }

  v4 = v3;

  return v3;
}

- (id)fromThisDevice
{
  account = [(VSUserAccountFacade *)self account];
  v3 = +[NSString vs_localizedStringFromBool:](NSString, "vs_localizedStringFromBool:", [account isFromCurrentDevice]);

  return v3;
}

- (id)sourceIdentifier
{
  account = [(VSUserAccountFacade *)self account];
  sourceIdentifier = [account sourceIdentifier];

  return sourceIdentifier;
}

- (id)identifier
{
  account = [(VSUserAccountFacade *)self account];
  identifier = [account identifier];
  v4 = identifier;
  if (identifier)
  {
    v5 = identifier;
  }

  else
  {
    v5 = &stru_83C0;
  }

  v6 = v5;

  return v5;
}

- (id)tvProviderIdentifier
{
  account = [(VSUserAccountFacade *)self account];
  accountProviderIdentifier = [account accountProviderIdentifier];

  return accountProviderIdentifier;
}

- (id)requiresSystemTrust
{
  account = [(VSUserAccountFacade *)self account];
  v3 = +[NSString vs_localizedStringFromBool:](NSString, "vs_localizedStringFromBool:", [account requiresSystemTrust]);

  return v3;
}

- (id)accountType
{
  account = [(VSUserAccountFacade *)self account];
  accountType = [account accountType];

  if (accountType)
  {
    if (accountType != &dword_0 + 1)
    {
      goto LABEL_6;
    }

    v4 = @"TV_APP_DEVELOPER_ACCOUNT_TYPE_PAID";
  }

  else
  {
    v4 = @"TV_APP_DEVELOPER_ACCOUNT_TYPE_FREE";
  }

  v5 = +[NSBundle vs_frameworkBundle];
  account = [v5 localizedStringForKey:v4 value:0 table:0];

LABEL_6:

  return account;
}

- (id)billingIdentifier
{
  account = [(VSUserAccountFacade *)self account];
  billingIdentifier = [account billingIdentifier];
  v4 = billingIdentifier;
  if (billingIdentifier)
  {
    v5 = billingIdentifier;
  }

  else
  {
    v5 = &stru_83C0;
  }

  v6 = v5;

  return v5;
}

- (id)billingCycleEndDate
{
  account = [(VSUserAccountFacade *)self account];
  subscriptionBillingCycleEndDate = [account subscriptionBillingCycleEndDate];
  v4 = [VSTVAppDeveloperSettingsUtilities stringFromDate:subscriptionBillingCycleEndDate];

  return v4;
}

- (id)updateURLString
{
  account = [(VSUserAccountFacade *)self account];
  updateURL = [account updateURL];
  absoluteString = [updateURL absoluteString];
  v5 = absoluteString;
  if (absoluteString)
  {
    v6 = absoluteString;
  }

  else
  {
    v6 = &stru_83C0;
  }

  v7 = v6;

  return v6;
}

- (id)authenticationDataString
{
  account = [(VSUserAccountFacade *)self account];
  if ([account isFromCurrentDevice])
  {
    account2 = [(VSUserAccountFacade *)self account];
    authenticationData = [account2 authenticationData];
    if (authenticationData)
    {
      account3 = [(VSUserAccountFacade *)self account];
      authenticationData2 = [account3 authenticationData];
    }

    else
    {
      authenticationData2 = &stru_83C0;
    }
  }

  else
  {
    authenticationData2 = &stru_83C0;
  }

  return authenticationData2;
}

- (id)tierIdentifiers
{
  account = [(VSUserAccountFacade *)self account];
  tierIdentifiers = [account tierIdentifiers];
  v4 = tierIdentifiers;
  if (tierIdentifiers)
  {
    v5 = tierIdentifiers;
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  v6 = v5;

  return v5;
}

@end
@interface VSUserAccountFacade
- (VSUserAccountFacade)initWithAccount:(id)a3;
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

- (VSUserAccountFacade)initWithAccount:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VSUserAccountFacade;
  v5 = [(VSUserAccountFacade *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(VSUserAccountFacade *)v5 setAccount:v4];
  }

  return v6;
}

- (id)displayName
{
  v3 = [(VSUserAccountFacade *)self account];
  v4 = [v3 deviceName];
  v5 = v4;
  v6 = &stru_83C0;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [(VSUserAccountFacade *)self account];
  v9 = [v8 isDeveloperCreated];

  if (v9)
  {
    v10 = [(__CFString *)v7 stringByAppendingString:@" 🚧"];

    v7 = v10;
  }

  return v7;
}

- (id)displayNameWithSynchedToThisDeviceIndicator
{
  v3 = [(VSUserAccountFacade *)self displayName];
  v4 = [(VSUserAccountFacade *)self _synchedToThisDeviceIndicator];
  v5 = [v3 stringByAppendingString:v4];

  return v5;
}

- (id)_synchedToThisDeviceIndicator
{
  v2 = [(VSUserAccountFacade *)self account];
  if ([v2 isFromCurrentDevice])
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
  v2 = [(VSUserAccountFacade *)self account];
  v3 = [v2 modified];
  v4 = [VSTVAppDeveloperSettingsUtilities stringFromDate:v3];

  return v4;
}

- (id)lastModifiedLong
{
  v3 = +[NSBundle vs_frameworkBundle];
  v4 = [v3 localizedStringForKey:@"TV_APP_DEVELOPER_LAST_MODIFIED" value:0 table:0];

  v5 = [(VSUserAccountFacade *)self account];
  v6 = [v5 modified];
  v7 = [VSTVAppDeveloperSettingsUtilities stringFromDate:v6];
  v8 = [NSString stringWithFormat:@"%@: %@", v4, v7];

  return v8;
}

- (id)created
{
  v2 = [(VSUserAccountFacade *)self account];
  v3 = [v2 created];
  v4 = [VSTVAppDeveloperSettingsUtilities stringFromDate:v3];

  return v4;
}

- (id)deviceCategory
{
  v2 = [(VSUserAccountFacade *)self account];
  if ([v2 deviceCategory])
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
  v2 = [(VSUserAccountFacade *)self account];
  v3 = +[NSString vs_localizedStringFromBool:](NSString, "vs_localizedStringFromBool:", [v2 isFromCurrentDevice]);

  return v3;
}

- (id)sourceIdentifier
{
  v2 = [(VSUserAccountFacade *)self account];
  v3 = [v2 sourceIdentifier];

  return v3;
}

- (id)identifier
{
  v2 = [(VSUserAccountFacade *)self account];
  v3 = [v2 identifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v2 = [(VSUserAccountFacade *)self account];
  v3 = [v2 accountProviderIdentifier];

  return v3;
}

- (id)requiresSystemTrust
{
  v2 = [(VSUserAccountFacade *)self account];
  v3 = +[NSString vs_localizedStringFromBool:](NSString, "vs_localizedStringFromBool:", [v2 requiresSystemTrust]);

  return v3;
}

- (id)accountType
{
  v2 = [(VSUserAccountFacade *)self account];
  v3 = [v2 accountType];

  if (v3)
  {
    if (v3 != &dword_0 + 1)
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
  v2 = [v5 localizedStringForKey:v4 value:0 table:0];

LABEL_6:

  return v2;
}

- (id)billingIdentifier
{
  v2 = [(VSUserAccountFacade *)self account];
  v3 = [v2 billingIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v2 = [(VSUserAccountFacade *)self account];
  v3 = [v2 subscriptionBillingCycleEndDate];
  v4 = [VSTVAppDeveloperSettingsUtilities stringFromDate:v3];

  return v4;
}

- (id)updateURLString
{
  v2 = [(VSUserAccountFacade *)self account];
  v3 = [v2 updateURL];
  v4 = [v3 absoluteString];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
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
  v3 = [(VSUserAccountFacade *)self account];
  if ([v3 isFromCurrentDevice])
  {
    v4 = [(VSUserAccountFacade *)self account];
    v5 = [v4 authenticationData];
    if (v5)
    {
      v6 = [(VSUserAccountFacade *)self account];
      v7 = [v6 authenticationData];
    }

    else
    {
      v7 = &stru_83C0;
    }
  }

  else
  {
    v7 = &stru_83C0;
  }

  return v7;
}

- (id)tierIdentifiers
{
  v2 = [(VSUserAccountFacade *)self account];
  v3 = [v2 tierIdentifiers];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  v6 = v5;

  return v5;
}

@end
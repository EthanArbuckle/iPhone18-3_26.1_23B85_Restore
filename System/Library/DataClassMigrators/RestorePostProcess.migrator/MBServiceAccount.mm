@interface MBServiceAccount
+ (NSArray)allServiceAccounts;
+ (id)_stringForAccountCredentialRenewResult:(int64_t)result;
+ (id)accountsQueue;
+ (unint64_t)_optionsFromACAccount:(id)account currentOptions:(unint64_t)options;
+ (void)_setBackupEnabled:(BOOL)enabled account:(id)account completion:(id)completion;
+ (void)enableBackupInPreferences;
- (BOOL)hasAppleAccount;
- (BOOL)isAuthenticated;
- (BOOL)isBackupOnCellularEnabled;
- (BOOL)isBeneficiaryAccount;
- (BOOL)isCloudPhotosEnabled;
- (BOOL)isEmailVerified;
- (BOOL)isEnabled;
- (BOOL)isEnabledForBackup;
- (BOOL)isManagedAppleID;
- (BOOL)isPrimaryAccount;
- (BOOL)verifyAppleAccountCredentialsWithContext:(BOOL)context;
- (MBPersona)persona;
- (MBServiceAccount)initWithPersona:(id)persona account:(id)account options:(unint64_t)options;
- (MBServiceAccount)initWithPersona:(id)persona accountIdentifier:(id)identifier dsid:(id)dsid altDSID:(id)d serviceURL:(id)l chunkStoreURL:(id)rL options:(unint64_t)options;
- (MBServiceAccount)initWithPersona:(id)persona error:(id *)error;
- (NSString)accountIdentifier;
- (NSString)altDSID;
- (NSString)appleID;
- (NSString)dsid;
- (NSURL)chunkStoreURL;
- (NSURL)serviceURL;
- (id)_updateApplePasswordSync:(id)sync;
- (id)description;
- (id)updateAppleAccountSync;
- (void)_reloadAccountPropertiesFromACAccount:(id)account;
- (void)_reloadAccounts;
- (void)_updateAppleAccount:(id)account;
- (void)_updateApplePassword:(id)password completionHandler:(id)handler;
- (void)renewCredentials;
@end

@implementation MBServiceAccount

+ (id)accountsQueue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_DA18;
  block[3] = &unk_24A60;
  block[4] = self;
  if (qword_2A830 != -1)
  {
    dispatch_once(&qword_2A830, block);
  }

  v2 = qword_2A828;

  return v2;
}

+ (NSArray)allServiceAccounts
{
  v2 = +[ACAccountStore defaultStore];
  v27 = [v2 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierAppleAccount];
  v28 = v2;
  v3 = [v2 accountsWithAccountType:?];
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v37 = [v3 count];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Found %ld system accounts", buf, 0xCu);
    v25 = [v3 count];
    _MBLog();
  }

  v29 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    v8 = AAAccountClassPrimary;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        personaIdentifier = [v10 personaIdentifier];
        if (personaIdentifier)
        {
          v13 = [UMUserPersonaAttributes personaAttributesForIdentifier:personaIdentifier];
          if (v13)
          {
            v14 = v13;
            if ([v10 aa_isAccountClass:v8])
            {
LABEL_19:
              path = @"/private/var/mobile";
              goto LABEL_20;
            }

            if ([v14 isEnterprisePersona])
            {
              personaLayoutPathURL = [v14 personaLayoutPathURL];
              path = [personaLayoutPathURL path];

              if (!path)
              {
                aa_accountClass2 = MBGetDefaultLog();
                if (os_log_type_enabled(aa_accountClass2, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v37 = personaIdentifier;
                  _os_log_impl(&dword_0, aa_accountClass2, OS_LOG_TYPE_ERROR, "nil volumeMountPoint for %{public}@", buf, 0xCu);
                  v25 = personaIdentifier;
                  _MBLog();
                }

                path = 0;
LABEL_32:
                v19 = 0;
LABEL_33:

                goto LABEL_34;
              }

LABEL_20:
              aa_accountClass2 = [MBPersona personaWithAttributes:v14 volumeMountPoint:path, v25, v26];
              v19 = [[self alloc] initWithPersona:aa_accountClass2 account:v10 options:0];
              if (v19)
              {
                [v29 addObject:v19];
              }

              goto LABEL_33;
            }

            path = 0;
LABEL_27:
            v19 = 0;
            aa_accountClass2 = personaIdentifier;
            personaIdentifier = 0;
            goto LABEL_33;
          }

          path = MBGetDefaultLog();
          if (!os_log_type_enabled(path, OS_LOG_TYPE_ERROR))
          {
            v14 = 0;
            v19 = 0;
            goto LABEL_34;
          }

          aa_accountClass = [v10 aa_accountClass];
          *buf = 138543618;
          v37 = personaIdentifier;
          v38 = 2112;
          v39 = aa_accountClass;
          _os_log_impl(&dword_0, path, OS_LOG_TYPE_ERROR, "Failed to fetch the attributes for persona %{public}@ accountClass %@", buf, 0x16u);

          aa_accountClass2 = [v10 aa_accountClass];
          v25 = personaIdentifier;
          v26 = aa_accountClass2;
          _MBLog();
LABEL_31:
          v14 = 0;
          goto LABEL_32;
        }

        if (![v10 aa_isAccountClass:v8])
        {
          path = 0;
          v14 = 0;
          goto LABEL_27;
        }

        v18 = [UMUserPersonaAttributes personaAttributesForPersonaType:0];
        if (!v18)
        {
          aa_accountClass2 = MBGetDefaultLog();
          if (os_log_type_enabled(aa_accountClass2, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_0, aa_accountClass2, OS_LOG_TYPE_ERROR, "Failed to fetch the attributes for personal persona", buf, 2u);
            _MBLog();
          }

          path = 0;
          personaIdentifier = 0;
          goto LABEL_31;
        }

        v14 = v18;
        personaIdentifier = [v18 userPersonaUniqueString];
        if (personaIdentifier)
        {
          goto LABEL_19;
        }

        v19 = 0;
        path = @"/private/var/mobile";
LABEL_34:

        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v6 != v9);
      v21 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
      v6 = v21;
    }

    while (v21);
  }

  v22 = MBGetDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = [v29 count];
    *buf = 134217984;
    v37 = v23;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "Found %lu service accounts", buf, 0xCu);
    [v29 count];
    _MBLog();
  }

  return v29;
}

- (MBServiceAccount)initWithPersona:(id)persona error:(id *)error
{
  personaCopy = persona;
  if (!error)
  {
    sub_138A8();
  }

  v7 = personaCopy;
  if (!personaCopy)
  {
    sub_1387C();
  }

  v8 = [MBPersona personaWithUMPersona:personaCopy error:error];
  v9 = v8;
  if (v8)
  {
    personaIdentifier = [v8 personaIdentifier];
    v11 = +[ACAccountStore defaultStore];
    if ([v9 isPersonalPersona])
    {
      aa_primaryAppleAccount = [v11 aa_primaryAppleAccount];
    }

    else
    {
      if (![v9 isEnterprisePersona])
      {
        v22 = MBGetDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v28 = personaIdentifier;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "Found an unexpected persona type for persona %{public}@", buf, 0xCu);
          _MBLog();
        }

        selfCopy = 0;
        goto LABEL_24;
      }

      aa_primaryAppleAccount = [v11 mb_accountForPersonaIdentifier:personaIdentifier];
    }

    v14 = aa_primaryAppleAccount;
    if (aa_primaryAppleAccount)
    {
      personaIdentifier2 = [(MBServiceAccount *)aa_primaryAppleAccount personaIdentifier];
      if (personaIdentifier2 && (v16 = personaIdentifier2, -[MBServiceAccount personaIdentifier](v14, "personaIdentifier"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 isEqualToString:personaIdentifier], v17, v16, (v18 & 1) == 0))
      {
        v23 = MBGetDefaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          personaIdentifier3 = [(MBServiceAccount *)v14 personaIdentifier];
          *buf = 138543618;
          v28 = personaIdentifier3;
          v29 = 2114;
          v30 = personaIdentifier;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "Persona identifier mismatch: %{public}@ != %{public}@", buf, 0x16u);

          personaIdentifier4 = [(MBServiceAccount *)v14 personaIdentifier];
          _MBLog();
        }

        *error = [MBError errorWithCode:1 format:@"Persona identifier mismatch"];

        selfCopy = 0;
        self = v14;
      }

      else
      {
        volumeMountPoint = [v9 volumeMountPoint];
        v20 = MBGetDefaultLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v28 = personaIdentifier;
          v29 = 2048;
          v30 = 0;
          v31 = 2112;
          v32 = volumeMountPoint;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "Found personaIdentifier:%@, options:0x%lx, volumeMountPoint:%@", buf, 0x20u);
          _MBLog();
        }

        self = [(MBServiceAccount *)self initWithPersona:v9 account:v14 options:0];
        selfCopy = self;
      }
    }

    else
    {
      v21 = MBGetDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v28 = personaIdentifier;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Failed to find the account for persona %{public}@", buf, 0xCu);
        _MBLog();
      }

      [MBError errorWithCode:210 format:@"No account found"];
      *error = selfCopy = 0;
    }

LABEL_24:

    goto LABEL_25;
  }

  selfCopy = 0;
LABEL_25:

  return selfCopy;
}

+ (unint64_t)_optionsFromACAccount:(id)account currentOptions:(unint64_t)options
{
  v5 = kAccountDataclassBackup;
  accountCopy = account;
  if ([accountCopy isEnabledForDataclass:v5])
  {
    v7 = +[MBManagedPolicy sharedPolicy];
    v8 = [v7 checkIfCloudBackupIsAllowed:0];

    if (v8)
    {
      v9 = options | 0x11;
    }

    else
    {
      v9 = options & 0xFFFFFFFFFFFFFFEELL | 0x10;
    }
  }

  else
  {
    v9 = options & 0xFFFFFFFFFFFFFFEELL | 0x10;
  }

  aa_isPrimaryEmailVerified = [accountCopy aa_isPrimaryEmailVerified];
  v11 = 2;
  if (!aa_isPrimaryEmailVerified)
  {
    v11 = 0;
  }

  v12 = v11 | v9 & 0xFFFFFFFFFFFFFE51;
  if ([accountCopy isEnabledForDataclass:kAccountDataclassCloudPhotos])
  {
    v13 = 4;
  }

  else
  {
    v13 = 0;
  }

  aa_isManagedAppleID = [accountCopy aa_isManagedAppleID];
  v15 = 8;
  if (!aa_isManagedAppleID)
  {
    v15 = 0;
  }

  v16 = v12 | v15 | v13;
  credential = [accountCopy credential];
  token = [credential token];
  v19 = token != 0;

  v20 = v16 | (32 * v19);
  if ([accountCopy aa_isAccountClass:AAAccountClassPrimary])
  {
    v21 = 128;
  }

  else
  {
    v21 = 0;
  }

  v22 = [accountCopy aa_useCellularForDataclass:v5];

  v23 = 256;
  if (!v22)
  {
    v23 = 0;
  }

  return v20 | v21 | v23;
}

- (MBServiceAccount)initWithPersona:(id)persona account:(id)account options:(unint64_t)options
{
  personaCopy = persona;
  accountCopy = account;
  if (!personaCopy)
  {
    sub_138D4();
  }

  v10 = accountCopy;
  v11 = [MBServiceAccount _optionsFromACAccount:accountCopy currentOptions:options];
  selfCopy = self;
  v12 = [v10 propertiesForDataclass:kAccountDataclassBackup];
  v13 = [v12 objectForKeyedSubscript:@"url"];
  v14 = [NSURL URLWithString:v13];

  username = [v10 username];
  v16 = [v14 _URLByInsertingUser:username];

  v17 = [v10 propertiesForDataclass:kAccountDataclassContent];
  v18 = [v17 objectForKeyedSubscript:@"url"];
  v19 = [NSURL URLWithString:v18];

  username2 = [v10 username];
  v21 = [v19 _URLByInsertingUser:username2];

  identifier = [v10 identifier];
  aa_personID = [v10 aa_personID];
  aa_altDSID = [v10 aa_altDSID];
  v25 = [(MBServiceAccount *)selfCopy initWithPersona:personaCopy accountIdentifier:identifier dsid:aa_personID altDSID:aa_altDSID serviceURL:v16 chunkStoreURL:v21 options:v11];

  return v25;
}

- (MBServiceAccount)initWithPersona:(id)persona accountIdentifier:(id)identifier dsid:(id)dsid altDSID:(id)d serviceURL:(id)l chunkStoreURL:(id)rL options:(unint64_t)options
{
  personaCopy = persona;
  identifierCopy = identifier;
  dsidCopy = dsid;
  dCopy = d;
  lCopy = l;
  rLCopy = rL;
  if (!personaCopy)
  {
    sub_13900();
  }

  v21 = rLCopy;
  v39.receiver = self;
  v39.super_class = MBServiceAccount;
  v22 = [(MBServiceAccount *)&v39 init];
  if (v22)
  {
    v23 = [[_MBImmutableServiceAccountProperties alloc] _initWithPersona:personaCopy accountIdentifier:identifierCopy dsid:dsidCopy altDSID:dCopy serviceURL:lCopy chunkStoreURL:v21 options:options];
    properties = v22->_properties;
    v22->_properties = v23;

    v25 = MBGetDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      personaIdentifier = [personaCopy personaIdentifier];
      isEnabled = [(MBServiceAccount *)v22 isEnabled];
      isEnabledForBackup = [(MBServiceAccount *)v22 isEnabledForBackup];
      isEmailVerified = [(MBServiceAccount *)v22 isEmailVerified];
      isAuthenticated = [(MBServiceAccount *)v22 isAuthenticated];
      v38 = dCopy;
      options = [(_MBImmutableServiceAccountProperties *)v22->_properties options];
      [personaCopy volumeMountPoint];
      v29 = v37 = lCopy;
      isBackupOnCellularEnabled = [(MBServiceAccount *)v22 isBackupOnCellularEnabled];
      *buf = 138545666;
      v41 = identifierCopy;
      v42 = 2114;
      v43 = personaIdentifier;
      v44 = 2112;
      v45 = dsidCopy;
      v46 = 1024;
      v47 = isEnabled;
      v48 = 1024;
      v49 = isEnabledForBackup;
      v50 = 1024;
      v51 = isEmailVerified;
      v52 = 1024;
      v53 = isAuthenticated;
      v54 = 2048;
      v55 = options;
      v56 = 2114;
      v57 = v29;
      v58 = 1024;
      v59 = isBackupOnCellularEnabled;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "Loaded properties for account %{public}@, persona:%{public}@, dsid:%@, enabled:%d, enabledForBackup:%d, emailVerified:%d, authenticated:%d, options:0x%lx, volume:%{public}@, isBackupOnCellularEnabled:%d", buf, 0x52u);

      personaIdentifier2 = [personaCopy personaIdentifier];
      [(MBServiceAccount *)v22 isEnabled];
      [(MBServiceAccount *)v22 isEnabledForBackup];
      [(MBServiceAccount *)v22 isEmailVerified];
      [(MBServiceAccount *)v22 isAuthenticated];
      [(_MBImmutableServiceAccountProperties *)v22->_properties options];
      volumeMountPoint = [personaCopy volumeMountPoint];
      [(MBServiceAccount *)v22 isBackupOnCellularEnabled];
      _MBLog();

      lCopy = v37;
      dCopy = v38;
    }
  }

  return v22;
}

- (void)_reloadAccountPropertiesFromACAccount:(id)account
{
  accountCopy = account;
  properties = [(MBServiceAccount *)self properties];
  v6 = [properties _deriveNewAccountPropertiesFromACAccount:accountCopy];

  [(MBServiceAccount *)self setProperties:v6];
  v7 = MBGetDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    accountIdentifier = [v6 accountIdentifier];
    dsid = [v6 dsid];
    *buf = 138545154;
    v13 = accountIdentifier;
    v14 = 2112;
    v15 = dsid;
    v16 = 1024;
    isEnabled = [(MBServiceAccount *)self isEnabled];
    v18 = 1024;
    isEnabledForBackup = [(MBServiceAccount *)self isEnabledForBackup];
    v20 = 1024;
    isEmailVerified = [(MBServiceAccount *)self isEmailVerified];
    v22 = 1024;
    isAuthenticated = [(MBServiceAccount *)self isAuthenticated];
    v24 = 2048;
    options = [v6 options];
    v26 = 1024;
    isBackupOnCellularEnabled = [(MBServiceAccount *)self isBackupOnCellularEnabled];
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "Reloaded properties for account %{public}@, dsid:%@, enabled:%d, enabledForBackup:%d, emailVerified:%d, authenticated:%d, options:0x%lx, isBackupOnCellularEnabled:%d", buf, 0x3Eu);

    accountIdentifier2 = [v6 accountIdentifier];
    dsid2 = [v6 dsid];
    [(MBServiceAccount *)self isEnabled];
    [(MBServiceAccount *)self isEnabledForBackup];
    [(MBServiceAccount *)self isEmailVerified];
    [(MBServiceAccount *)self isAuthenticated];
    [v6 options];
    [(MBServiceAccount *)self isBackupOnCellularEnabled];
    _MBLog();
  }
}

- (NSString)dsid
{
  properties = [(MBServiceAccount *)self properties];
  dsid = [properties dsid];

  return dsid;
}

- (NSString)altDSID
{
  properties = [(MBServiceAccount *)self properties];
  altDSID = [properties altDSID];

  return altDSID;
}

- (NSString)accountIdentifier
{
  properties = [(MBServiceAccount *)self properties];
  accountIdentifier = [properties accountIdentifier];

  return accountIdentifier;
}

- (MBPersona)persona
{
  properties = [(MBServiceAccount *)self properties];
  persona = [properties persona];

  return persona;
}

- (NSURL)serviceURL
{
  properties = [(MBServiceAccount *)self properties];
  serviceURL = [properties serviceURL];

  return serviceURL;
}

- (NSURL)chunkStoreURL
{
  properties = [(MBServiceAccount *)self properties];
  chunkStoreURL = [properties chunkStoreURL];

  return chunkStoreURL;
}

- (BOOL)isEnabledForBackup
{
  if ([(MBServiceAccount *)self isEnabled])
  {
    properties = [(MBServiceAccount *)self properties];
    v4 = [properties options] & 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isEnabled
{
  properties = [(MBServiceAccount *)self properties];
  v3 = ~[properties options];

  return (v3 & 3) == 0;
}

- (BOOL)isCloudPhotosEnabled
{
  properties = [(MBServiceAccount *)self properties];
  v3 = ([properties options] >> 2) & 1;

  return v3;
}

- (BOOL)isAuthenticated
{
  properties = [(MBServiceAccount *)self properties];
  v3 = ([properties options] >> 5) & 1;

  return v3;
}

- (BOOL)isManagedAppleID
{
  properties = [(MBServiceAccount *)self properties];
  v3 = ([properties options] >> 3) & 1;

  return v3;
}

- (BOOL)isBackupOnCellularEnabled
{
  properties = [(MBServiceAccount *)self properties];
  v3 = ~[properties options];

  return (v3 & 0x300) == 0;
}

- (BOOL)isBeneficiaryAccount
{
  altDSID = [(MBServiceAccount *)self altDSID];
  if (altDSID)
  {
    v3 = +[AKAccountManager sharedInstance];
    v4 = [v3 authKitAccountWithAltDSID:altDSID];

    v5 = +[AKAccountManager sharedInstance];
    v6 = [v5 isBeneficiaryForAccount:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasAppleAccount
{
  properties = [(MBServiceAccount *)self properties];
  v3 = ([properties options] >> 4) & 1;

  return v3;
}

- (BOOL)isEmailVerified
{
  properties = [(MBServiceAccount *)self properties];
  v3 = ([properties options] >> 1) & 1;

  return v3;
}

- (BOOL)isPrimaryAccount
{
  properties = [(MBServiceAccount *)self properties];
  v3 = ([properties options] >> 7) & 1;

  return v3;
}

- (void)_reloadAccounts
{
  accountsQueue = [objc_opt_class() accountsQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_F1B4;
  block[3] = &unk_24A88;
  block[4] = self;
  dispatch_sync(accountsQueue, block);
}

+ (void)_setBackupEnabled:(BOOL)enabled account:(id)account completion:(id)completion
{
  enabledCopy = enabled;
  accountCopy = account;
  completionCopy = completion;
  if (!accountCopy)
  {
    sub_13980();
  }

  v9 = completionCopy;
  if (!completionCopy)
  {
    sub_13954();
  }

  identifier = [accountCopy identifier];
  v11 = kAccountDataclassBackup;
  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    if (enabledCopy)
    {
      v13 = "Enabling";
    }

    else
    {
      v13 = "Disabling";
    }

    v27 = v13;
    v28 = 2114;
    v29 = v11;
    v30 = 2114;
    v31 = identifier;
    v32 = 1024;
    v33 = enabledCopy;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%s %{public}@ on account %{public}@ : %d", buf, 0x26u);
    _MBLog();
  }

  v14 = +[MBManagedPolicy sharedPolicy];
  v25 = 0;
  v15 = [v14 checkIfCloudBackupIsAllowed:&v25];
  v16 = v25;

  if (v15)
  {
    if (qword_2A840 != -1)
    {
      sub_1392C();
    }

    v17 = qword_2A838;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_F5F0;
    block[3] = &unk_24AF8;
    v24 = enabledCopy;
    v20 = accountCopy;
    v21 = v11;
    v22 = identifier;
    v23 = v9;
    dispatch_async(v17, block);
  }

  else
  {
    v18 = MBGetDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v27 = identifier;
      v28 = 2114;
      v29 = v11;
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Not changing the %{public}@ state on account %{public}@: %@", buf, 0x20u);
      _MBLog();
    }

    v9[2](v9, 0);
  }
}

+ (void)enableBackupInPreferences
{
  CFPreferencesSetAppValue(@"IsEnabled", &__kCFBooleanTrue, @"com.apple.MobileBackup");
  CFPreferencesAppSynchronize(@"com.apple.MobileBackup");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, ACAccountStoreDidChangeNotification, 0, 0, 4uLL);
}

+ (id)_stringForAccountCredentialRenewResult:(int64_t)result
{
  if (result > 2)
  {
    return @"failed to renew with unknown result";
  }

  else
  {
    return *(&off_24C70 + result);
  }
}

- (void)renewCredentials
{
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Renewing account credentials", buf, 2u);
    _MBLog();
  }

  if ([(MBServiceAccount *)self hasAppleAccount])
  {
    accountsQueue = [objc_opt_class() accountsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_FD34;
    block[3] = &unk_24A88;
    block[4] = self;
    dispatch_sync(accountsQueue, block);
  }
}

- (id)description
{
  properties = [(MBServiceAccount *)self properties];
  persona = [properties persona];
  v5 = objc_opt_class();
  accountIdentifier = [properties accountIdentifier];
  personaIdentifier = [persona personaIdentifier];
  dsid = [properties dsid];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p id=(%@,%@,%@), persona=%@ isPrimary=%d, isEnabled=%d, isEnabledForBackup=%d, options=0x%lx>", v5, self, accountIdentifier, personaIdentifier, dsid, persona, -[MBServiceAccount isPrimaryAccount](self, "isPrimaryAccount"), -[MBServiceAccount isEnabled](self, "isEnabled"), -[MBServiceAccount isEnabledForBackup](self, "isEnabledForBackup"), [properties options]);;

  return v9;
}

- (void)_updateAppleAccount:(id)account
{
  accountCopy = account;
  v5 = MBGetDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "Updating Apple Account", buf, 2u);
    _MBLog();
  }

  if ([(MBServiceAccount *)self hasAppleAccount])
  {
    accountsQueue = [objc_opt_class() accountsQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1018C;
    v7[3] = &unk_24B88;
    v7[4] = self;
    v8 = accountCopy;
    dispatch_sync(accountsQueue, v7);
  }

  else if (accountCopy)
  {
    (*(accountCopy + 2))(accountCopy, 0);
  }
}

- (id)updateAppleAccountSync
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1066C;
  v14 = sub_1067C;
  v15 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10684;
  v6[3] = &unk_24BB0;
  v8 = &v10;
  v9 = v16;
  v3 = dispatch_semaphore_create(0);
  v7 = v3;
  [(MBServiceAccount *)self _updateAppleAccount:v6];
  MBSemaphoreWaitForever();
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(v16, 8);

  return v4;
}

- (NSString)appleID
{
  if ([(MBServiceAccount *)self hasAppleAccount])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_1066C;
    v11 = sub_1067C;
    v12 = 0;
    accountsQueue = [objc_opt_class() accountsQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10824;
    v6[3] = &unk_24BD8;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(accountsQueue, v6);

    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateApplePassword:(id)password completionHandler:(id)handler
{
  passwordCopy = password;
  handlerCopy = handler;
  if ([(MBServiceAccount *)self hasAppleAccount])
  {
    accountsQueue = [objc_opt_class() accountsQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_109EC;
    block[3] = &unk_24C28;
    block[4] = self;
    v11 = handlerCopy;
    v10 = passwordCopy;
    dispatch_sync(accountsQueue, block);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (id)_updateApplePasswordSync:(id)sync
{
  syncCopy = sync;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1066C;
  v16 = sub_1067C;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10F40;
  v8[3] = &unk_24BB0;
  v10 = &v12;
  v11 = v18;
  v5 = dispatch_semaphore_create(0);
  v9 = v5;
  [(MBServiceAccount *)self _updateApplePassword:syncCopy completionHandler:v8];
  MBSemaphoreWaitForever();
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v18, 8);

  return v6;
}

- (BOOL)verifyAppleAccountCredentialsWithContext:(BOOL)context
{
  v4 = MBGetDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Verifying account credentials", buf, 2u);
    _MBLog();
  }

  v5 = objc_opt_new();
  appleID = [(MBServiceAccount *)self appleID];
  [v5 setUsername:appleID];

  [v5 setIsUsernameEditable:0];
  [v5 setServiceType:1];
  [v5 _setProxyingForApp:1];
  [v5 _setProxiedAppBundleID:@"com.apple.purplebuddy"];
  v7 = MBLocalizedStringFromTable();
  [v5 setReason:v7];

  v8 = objc_opt_new();
  *buf = 0;
  v30 = buf;
  v31 = 0x3032000000;
  v32 = sub_1066C;
  v33 = sub_1067C;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1066C;
  v27 = sub_1067C;
  v28 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_11404;
  v19[3] = &unk_24C50;
  v21 = buf;
  v22 = &v23;
  v9 = dispatch_semaphore_create(0);
  v20 = v9;
  [v8 authenticateWithContext:v5 completion:v19];
  MBSemaphoreWaitForever();
  if (!*(v30 + 5))
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = v24[5];
      *v35 = 138412290;
      v36 = v14;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Account credential verification failed to get password: %@", v35, 0xCu);
      v18 = v24[5];
      _MBLog();
    }

    goto LABEL_9;
  }

  v10 = [(MBServiceAccount *)self _updateApplePasswordSync:?];
  v11 = v24[5];
  v24[5] = v10;

  if (v24[5])
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v24[5];
      *v35 = 138412290;
      v36 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Account credential verification failed: %@", v35, 0xCu);
      v17 = v24[5];
      _MBLog();
    }

LABEL_9:
    v15 = 0;
    goto LABEL_13;
  }

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v35 = 0;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Account credential verification succeeded", v35, 2u);
    _MBLog();
  }

  v15 = 1;
LABEL_13:

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(buf, 8);

  return v15;
}

@end
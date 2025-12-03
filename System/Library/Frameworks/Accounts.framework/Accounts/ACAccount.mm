@interface ACAccount
+ (id)keypathsRequiredForInitialization;
- (ACAccount)displayAccount;
- (ACAccount)initWithAccountType:(ACAccountType *)type;
- (ACAccount)initWithCoder:(id)coder;
- (ACAccount)initWithManagedAccount:(id)account;
- (ACAccount)initWithManagedAccount:(id)account accountStore:(id)store;
- (ACAccount)parentAccount;
- (ACAccountCredential)internalCredential;
- (ACAccountStore)accountStore;
- (ACAccountType)accountType;
- (ACTrackedSet)trackedEnabledDataclasses;
- (ACTrackedSet)trackedProvisionedDataclasses;
- (BOOL)_isDifferentFrom:(id)from;
- (BOOL)_useParentForCredentials;
- (BOOL)addClientToken:(id)token;
- (BOOL)correctPersonaScopedForAccount;
- (BOOL)isActive;
- (BOOL)isAuthenticated;
- (BOOL)isDataSeparatedAccount;
- (BOOL)isDirty;
- (BOOL)isEnabledForDataclass:(id)dataclass;
- (BOOL)isEnabledToSyncDataclass:(id)dataclass;
- (BOOL)isPropertyDirty:(id)dirty;
- (BOOL)isProvisionedForDataclass:(id)dataclass;
- (BOOL)isVisible;
- (BOOL)isWarmingUp;
- (BOOL)supportsAuthentication;
- (BOOL)supportsPush;
- (NSArray)childAccounts;
- (NSDate)creationDate;
- (NSDate)lastCredentialRenewalRejectionDate;
- (NSDictionary)accountProperties;
- (NSDictionary)dataclassProperties;
- (NSMutableSet)enabledDataclasses;
- (NSMutableSet)provisionedDataclasses;
- (NSSet)dirtyAccountProperties;
- (NSSet)dirtyDataclassProperties;
- (NSSet)dirtyProperties;
- (NSString)accountDescription;
- (NSString)authenticationType;
- (NSString)clientToken;
- (NSString)credentialType;
- (NSString)description;
- (NSString)identifier;
- (NSString)managingOwnerIdentifier;
- (NSString)managingSourceName;
- (NSString)modificationID;
- (NSString)parentAccountIdentifier;
- (NSString)shortDebugName;
- (NSString)userFullName;
- (NSString)username;
- (NSURL)objectID;
- (__SecIdentity)copySecIdentity;
- (id)_encodeProtobuf;
- (id)_encodeProtobufData;
- (id)_initWithProtobuf:(id)protobuf;
- (id)_initWithProtobufData:(id)data;
- (id)accountByCleaningThirdPartyTransformations;
- (id)accountPropertyForKey:(id)key;
- (id)changeTypeForEnabledDataclass:(id)dataclass;
- (id)changeTypeForProvisionedDataclass:(id)dataclass;
- (id)childAccountsWithAccountTypeIdentifier:(id)identifier;
- (id)childCardDAVAccountIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)credentialWithError:(id *)error;
- (id)defaultAutodiscoverDomainForChildType:(id)type;
- (id)fullDescription;
- (id)owningBundleID;
- (id)personaIdentifier;
- (id)portableCopy;
- (id)propertiesForDataclass:(id)dataclass;
- (id)qualifiedUsername;
- (id)secCertificates;
- (unint64_t)credentialLocation;
- (unint64_t)notifyGenerationID;
- (void)_applyDirtyStateFromAccount:(id)account;
- (void)_cacheParentAccountID;
- (void)_clearCachedChildAccounts;
- (void)_clearCachedCredentials;
- (void)_clearCachedTrackedSets;
- (void)_clearDirtyProperties;
- (void)_installCredentialsChangedObserver;
- (void)_loadAllCachedProperties;
- (void)_markAccountPropertyDirty:(id)dirty;
- (void)_markDataclassPropertyDirty:(id)dirty;
- (void)_markPropertyDirty:(id)dirty;
- (void)_resetParentAccount:(id)account;
- (void)_setAccountStore:(id)store;
- (void)_setModID:(id)d;
- (void)_setObjectID:(id)d;
- (void)_unsafe_loadEnabledDataclasses;
- (void)_unsafe_loadProvisionedDataclasses;
- (void)_unsafe_markAccountPropertyDirty:(id)dirty;
- (void)_unsafe_markDataclassPropertyDirty:(id)dirty;
- (void)_unsafe_markPropertyDirty:(id)dirty;
- (void)correctPersonaScopedForAccount;
- (void)credentialsChanged:(id)changed;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)isDataSeparatedAccount;
- (void)markAllPropertiesDirty;
- (void)qualifiedUsername;
- (void)refresh;
- (void)reload;
- (void)setAccountDescription:(NSString *)accountDescription;
- (void)setAccountProperties:(id)properties;
- (void)setAccountProperty:(id)property forKey:(id)key;
- (void)setAccountType:(ACAccountType *)accountType;
- (void)setActive:(BOOL)active;
- (void)setAuthenticationType:(id)type;
- (void)setCreationDate:(id)date;
- (void)setCredential:(ACAccountCredential *)credential;
- (void)setCredentialLocation:(unint64_t)location;
- (void)setCredentialType:(id)type;
- (void)setDataclassProperties:(id)properties;
- (void)setDirty:(BOOL)dirty forProperty:(id)property;
- (void)setEnabled:(BOOL)enabled forDataclass:(id)dataclass;
- (void)setEnabledDataclasses:(id)dataclasses;
- (void)setIdentifier:(id)identifier;
- (void)setLastCredentialRenewalRejectionDate:(id)date;
- (void)setManagingOwnerIdentifier:(id)identifier;
- (void)setManagingSourceName:(id)name;
- (void)setOwningBundleID:(id)d;
- (void)setParentAccount:(id)account;
- (void)setProperties:(id)properties forDataclass:(id)dataclass;
- (void)setProvisioned:(BOOL)provisioned forDataclass:(id)dataclass;
- (void)setProvisionedDataclasses:(id)dataclasses;
- (void)setSecCertificates:(id)certificates;
- (void)setSecIdentity:(__SecIdentity *)identity;
- (void)setUsername:(NSString *)username;
- (void)setVisible:(BOOL)visible;
- (void)setWarmingUp:(BOOL)up;
- (void)takeValuesFromModifiedAccount:(id)account;
@end

@implementation ACAccount

+ (id)keypathsRequiredForInitialization
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = @"accountType";
  v5[1] = @"customProperties";
  v5[2] = @"parent";
  v5[3] = @"enabledDataclasses";
  v5[4] = @"provisionedDataclasses";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (NSString)username
{
  if ([(ACAccount *)self _useParentForCredentials])
  {
    selfCopy = [(ACAccount *)self parentAccount];
    username = [(ACAccount *)selfCopy username];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    username = selfCopy->_username;
    objc_sync_exit(selfCopy);
  }

  return username;
}

- (BOOL)_useParentForCredentials
{
  authenticationType = [(ACAccount *)self authenticationType];
  v3 = [authenticationType isEqualToString:@"parent"];

  return v3;
}

- (NSString)authenticationType
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_authenticationType;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isActive
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  active = selfCopy->_active;
  objc_sync_exit(selfCopy);

  return active;
}

- (NSString)identifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_identifier;
  objc_sync_exit(selfCopy);

  return v3;
}

- (ACAccountType)accountType
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_accountType;
  objc_sync_exit(selfCopy);

  return v3;
}

- (unint64_t)notifyGenerationID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSString *)selfCopy->_modificationID hash];
  notifyGenerationID = [(ACAccount *)selfCopy->_parentAccount notifyGenerationID];
  if ((notifyGenerationID + v3) <= 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = notifyGenerationID + v3;
  }

  objc_sync_exit(selfCopy);

  return v5;
}

- (ACAccount)parentAccount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_parentAccount;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)dealloc
{
  if (self->_credentialsDidChangeObserver)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_credentialsDidChangeObserver];
  }

  v4.receiver = self;
  v4.super_class = ACAccount;
  [(ACAccount *)&v4 dealloc];
}

- (NSDictionary)accountProperties
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_properties;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_clearCachedCredentials
{
  obj = self;
  objc_sync_enter(obj);
  credential = obj->_credential;
  obj->_credential = 0;

  objc_sync_exit(obj);
}

- (void)_clearCachedChildAccounts
{
  obj = self;
  objc_sync_enter(obj);
  childAccounts = obj->_childAccounts;
  obj->_childAccounts = 0;

  obj->_haveCheckedForChildAccounts = 0;
  objc_sync_exit(obj);
}

- (void)_clearCachedTrackedSets
{
  obj = self;
  objc_sync_enter(obj);
  trackedProvisionedDataclasses = obj->_trackedProvisionedDataclasses;
  obj->_trackedProvisionedDataclasses = 0;

  trackedEnabledDataclasses = obj->_trackedEnabledDataclasses;
  obj->_trackedEnabledDataclasses = 0;

  objc_sync_exit(obj);
}

- (void)_unsafe_loadEnabledDataclasses
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (ACAccountStore)accountStore
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_accountStore);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&selfCopy->_accountStore);
  }

  else
  {
    v4 = +[ACAccountStore defaultStore];
  }

  v5 = v4;
  objc_sync_exit(selfCopy);

  return v5;
}

- (NSString)accountDescription
{
  parentAccount = [(ACAccount *)self parentAccount];

  if (parentAccount)
  {
    v4 = MEMORY[0x1E696AEC0];
    selfCopy = [(ACAccount *)self parentAccount];
    accountDescription = [(ACAccount *)selfCopy accountDescription];
    accountType = [(ACAccount *)self accountType];
    accountTypeDescription = [accountType accountTypeDescription];
    v9 = [v4 stringWithFormat:@"%@ - %@", accountDescription, accountTypeDescription];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = selfCopy->_accountDescription;
    objc_sync_exit(selfCopy);
  }

  return v9;
}

- (NSMutableSet)enabledDataclasses
{
  parentAccount = [(ACAccount *)self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [(ACAccount *)self parentAccount];
    enabledDataclasses = [parentAccount2 enabledDataclasses];

    accountType = [(ACAccount *)self accountType];
    syncableDataclasses = [accountType syncableDataclasses];

    v8 = [enabledDataclasses mutableCopy];
    [v8 intersectSet:syncableDataclasses];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_trackedEnabledDataclasses)
    {
      v8 = [MEMORY[0x1E695DFA8] setWithTrackedSet:?];
    }

    else
    {
      v8 = 0;
    }

    objc_sync_exit(selfCopy);

    if (!v8)
    {
      v10 = selfCopy;
      objc_sync_enter(v10);
      [(ACAccount *)v10 _unsafe_loadEnabledDataclasses];
      if (selfCopy->_trackedEnabledDataclasses)
      {
        v8 = [MEMORY[0x1E695DFA8] setWithTrackedSet:?];
      }

      else
      {
        v8 = 0;
      }

      objc_sync_exit(v10);

      if (!v8)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      }
    }
  }

  return v8;
}

- (NSString)parentAccountIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [(ACAccount *)selfCopy->_parentAccount identifier];
  objc_sync_exit(selfCopy);

  return identifier;
}

- (void)_cacheParentAccountID
{
  obj = self;
  objc_sync_enter(obj);
  identifier = [(ACAccount *)obj->_parentAccount identifier];
  cachedParentAccountID = obj->_cachedParentAccountID;
  obj->_cachedParentAccountID = identifier;

  parentAccount = obj->_parentAccount;
  obj->_parentAccount = 0;

  objc_sync_exit(obj);
}

- (id)personaIdentifier
{
  parentAccount = [(ACAccount *)self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [(ACAccount *)self parentAccount];
    v5 = [parentAccount2 objectForKeyedSubscript:@"PersonaIdentifier"];

    if (v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = [(ACAccount *)self objectForKeyedSubscript:@"PersonaIdentifier"];
    if (v5)
    {
      goto LABEL_10;
    }
  }

  dirtyProperties = [(ACAccount *)self dirtyProperties];
  v7 = [dirtyProperties containsObject:@"PersonaIdentifier"];

  if (v7)
  {
    v8 = _ACPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ACAccount isDataSeparatedAccount];
    }

    dirtyProperties2 = [(ACAccount *)self dirtyProperties];
    v5 = [dirtyProperties2 valueForKey:@"PersonaIdentifier"];
  }

  else
  {
    v5 = 0;
  }

LABEL_10:

  return v5;
}

- (NSSet)dirtyProperties
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_dirtyProperties copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)reload
{
  accountStore = [(ACAccount *)self accountStore];
  identifier = [(ACAccount *)self identifier];
  v49 = [accountStore accountWithIdentifier:identifier];

  v5 = v49;
  if (v49)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    accountDescription = [v49 accountDescription];
    v8 = [accountDescription copy];
    accountDescription = selfCopy->_accountDescription;
    selfCopy->_accountDescription = v8;

    username = [v49 username];
    v11 = [username copy];
    username = selfCopy->_username;
    selfCopy->_username = v11;

    [(ACAccount *)selfCopy willChangeValueForKey:@"accountProperties"];
    accountProperties = [v49 accountProperties];
    v14 = [accountProperties mutableCopy];
    properties = selfCopy->_properties;
    selfCopy->_properties = v14;

    [(ACAccount *)selfCopy didChangeValueForKey:@"accountProperties"];
    owningBundleID = [v49 owningBundleID];
    v17 = [owningBundleID copy];
    owningBundleID = selfCopy->_owningBundleID;
    selfCopy->_owningBundleID = v17;

    [(ACAccount *)selfCopy willChangeValueForKey:@"dataclassProperties"];
    dataclassProperties = [v49 dataclassProperties];
    v20 = [dataclassProperties mutableCopy];
    dataclassProperties = selfCopy->_dataclassProperties;
    selfCopy->_dataclassProperties = v20;

    [(ACAccount *)selfCopy didChangeValueForKey:@"dataclassProperties"];
    selfCopy->_authenticated = [v49 isAuthenticated];
    lastCredentialRenewalRejectionDate = [v49 lastCredentialRenewalRejectionDate];
    lastCredentialRenewalRejectionDate = selfCopy->_lastCredentialRenewalRejectionDate;
    selfCopy->_lastCredentialRenewalRejectionDate = lastCredentialRenewalRejectionDate;

    selfCopy->_active = [v49 isActive];
    selfCopy->_warmingUp = [v49 isWarmingUp];
    objectID = [v49 objectID];
    v25 = [objectID copy];
    objectID = selfCopy->_objectID;
    selfCopy->_objectID = v25;

    accountType = [v49 accountType];
    v28 = [accountType copy];
    accountType = selfCopy->_accountType;
    selfCopy->_accountType = v28;

    credentialType = [v49 credentialType];
    v31 = [credentialType copy];
    credentialType = selfCopy->_credentialType;
    selfCopy->_credentialType = v31;

    authenticationType = [v49 authenticationType];
    v34 = [authenticationType copy];
    authenticationType = selfCopy->_authenticationType;
    selfCopy->_authenticationType = v34;

    credential = selfCopy->_credential;
    selfCopy->_credential = 0;

    parentAccount = [v49 parentAccount];
    v38 = [parentAccount copy];
    parentAccount = selfCopy->_parentAccount;
    selfCopy->_parentAccount = v38;

    selfCopy->_haveCheckedForChildAccounts = 0;
    childAccounts = selfCopy->_childAccounts;
    selfCopy->_childAccounts = 0;

    trackedProvisionedDataclasses = selfCopy->_trackedProvisionedDataclasses;
    selfCopy->_trackedProvisionedDataclasses = 0;

    selfCopy->_wasProvisionedDataclassesReset = 0;
    trackedEnabledDataclasses = selfCopy->_trackedEnabledDataclasses;
    selfCopy->_trackedEnabledDataclasses = 0;

    selfCopy->_wasEnabledDataclassesReset = 0;
    modificationID = [v49 modificationID];
    v44 = [modificationID copy];
    modificationID = selfCopy->_modificationID;
    selfCopy->_modificationID = v44;

    dirtyProperties = selfCopy->_dirtyProperties;
    selfCopy->_dirtyProperties = 0;

    dirtyAccountProperties = selfCopy->_dirtyAccountProperties;
    selfCopy->_dirtyAccountProperties = 0;

    dirtyDataclassProperties = selfCopy->_dirtyDataclassProperties;
    selfCopy->_dirtyDataclassProperties = 0;

    objc_sync_exit(selfCopy);
    v5 = v49;
  }
}

- (id)owningBundleID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_owningBundleID;
  objc_sync_exit(selfCopy);

  return v3;
}

- (unint64_t)credentialLocation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(ACAccount *)selfCopy propertyForKey:@"CredentialStorageLocation"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 unsignedIntegerValue] <= 1)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = [(ACAccount *)selfCopy parentAccount];

    if (unsignedIntegerValue)
    {
      parentAccount = [(ACAccount *)selfCopy parentAccount];
      unsignedIntegerValue = [parentAccount credentialLocation];
    }
  }

  objc_sync_exit(selfCopy);
  return unsignedIntegerValue;
}

- (NSDictionary)dataclassProperties
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_dataclassProperties copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  username = [(ACAccount *)self username];
  v5 = ACHashedString(username);
  identifier = [(ACAccount *)self identifier];
  v7 = [v3 stringWithFormat:@"%@ (%@)", v5, identifier];

  return v7;
}

- (BOOL)isAuthenticated
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(ACAccount *)selfCopy _useParentForCredentials])
  {
    parentAccount = [(ACAccount *)selfCopy parentAccount];
    authenticated = [parentAccount isAuthenticated];
  }

  else
  {
    authenticated = selfCopy->_authenticated;
  }

  objc_sync_exit(selfCopy);

  return authenticated & 1;
}

- (NSDate)lastCredentialRenewalRejectionDate
{
  if ([(ACAccount *)self _useParentForCredentials])
  {
    selfCopy = [(ACAccount *)self parentAccount];
    lastCredentialRenewalRejectionDate = [(ACAccount *)selfCopy lastCredentialRenewalRejectionDate];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    lastCredentialRenewalRejectionDate = selfCopy->_lastCredentialRenewalRejectionDate;
    objc_sync_exit(selfCopy);
  }

  return lastCredentialRenewalRejectionDate;
}

- (id)qualifiedUsername
{
  v3 = [(ACAccount *)self objectForKeyedSubscript:@"Hostname"];
  if (!v3)
  {
    v4 = [(ACAccount *)self objectForKeyedSubscript:@"DAAccountHost"];
    v5 = [v4 length];

    if (v5)
    {
      v3 = [(ACAccount *)self objectForKeyedSubscript:@"DAAccountHost"];
    }

    else
    {
      v3 = 0;
    }
  }

  accountType = [(ACAccount *)self accountType];
  identifier = [accountType identifier];
  v8 = [identifier isEqualToString:@"com.apple.account.Exchange"];

  if (v8)
  {
    v9 = [(ACAccount *)self objectForKeyedSubscript:@"EWSRootFolderID"];
    v10 = v9;
    if (v9)
    {
      host = v9;
    }

    else
    {
      v12 = [(ACAccount *)self objectForKeyedSubscript:@"EWSInternalURL"];
      host = [v12 host];
    }

    if ([host length])
    {
      v13 = _ACLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [ACAccount qualifiedUsername];
      }

      v14 = host;
      v3 = v14;
    }
  }

  if ([v3 length])
  {
    v15 = MEMORY[0x1E696AEC0];
    username = [(ACAccount *)self username];
    v17 = [v15 stringWithFormat:@"%@@%@", username, v3];

    goto LABEL_25;
  }

  v18 = [(ACAccount *)self objectForKeyedSubscript:@"IdentityEmailAddress"];
  if ([v18 length])
  {
    username2 = [(ACAccount *)self username];
    v20 = [username2 containsString:@"@"];

    if ((v20 & 1) == 0)
    {
      v21 = @"IdentityEmailAddress";
      goto LABEL_22;
    }
  }

  else
  {
  }

  v22 = [(ACAccount *)self objectForKeyedSubscript:@"DAAccountEmailAddress"];
  v23 = [v22 length];

  if (!v23)
  {
    username3 = [(ACAccount *)self username];
    goto LABEL_24;
  }

  v21 = @"DAAccountEmailAddress";
LABEL_22:
  username3 = [(ACAccount *)self objectForKeyedSubscript:v21];
LABEL_24:
  v17 = username3;
LABEL_25:

  return v17;
}

- (BOOL)isWarmingUp
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  warmingUp = selfCopy->_warmingUp;
  objc_sync_exit(selfCopy);

  return warmingUp;
}

- (NSURL)objectID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_objectID;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)credentialType
{
  if ([(ACAccount *)self _useParentForCredentials])
  {
    selfCopy = [(ACAccount *)self parentAccount];
    credentialType = [(ACAccount *)selfCopy credentialType];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    credentialType = selfCopy->_credentialType;
    objc_sync_exit(selfCopy);
  }

  return credentialType;
}

- (NSString)modificationID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_modificationID;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_installCredentialsChangedObserver
{
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__ACAccount__installCredentialsChangedObserver__block_invoke;
  v6[3] = &unk_1E79755E0;
  objc_copyWeak(&v7, &location);
  v4 = [defaultCenter addObserverForName:@"ACAccountCredentialsDidChangeNotification" object:0 queue:0 usingBlock:v6];
  credentialsDidChangeObserver = self->_credentialsDidChangeObserver;
  self->_credentialsDidChangeObserver = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (ACAccount)initWithAccountType:(ACAccountType *)type
{
  v5 = type;
  v11.receiver = self;
  v11.super_class = ACAccount;
  v6 = [(ACAccount *)&v11 init];
  if (v6)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v6->_identifier;
    v6->_identifier = uUIDString;

    objc_storeStrong(&v6->_accountType, type);
    *&v6->_authenticated = 256;
    v6->_visible = 1;
    v6->_supportsAuthentication = [(ACAccountType *)v5 supportsAuthentication]!= 0;
    v6->_warmingUp = 0;
    [(ACAccount *)v6 _unsafe_markPropertyDirty:@"identifier"];
    [(ACAccount *)v6 _unsafe_markPropertyDirty:@"accountType"];
    [(ACAccount *)v6 _unsafe_markPropertyDirty:@"active"];
    [(ACAccount *)v6 _unsafe_markPropertyDirty:@"supportsAuthentication"];
    [(ACAccount *)v6 _unsafe_markPropertyDirty:@"visible"];
    [(ACAccount *)v6 _unsafe_markPropertyDirty:@"authenticated"];
  }

  return v6;
}

- (ACAccount)initWithManagedAccount:(id)account accountStore:(id)store
{
  storeCopy = store;
  v7 = [(ACAccount *)self initWithManagedAccount:account];
  v8 = v7;
  if (v7)
  {
    [(ACAccount *)v7 _setAccountStore:storeCopy];
  }

  return v8;
}

- (ACAccount)initWithManagedAccount:(id)account
{
  v73 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v67.receiver = self;
  v67.super_class = ACAccount;
  v4 = [(ACAccount *)&v67 init];
  if (!v4)
  {
LABEL_21:
    v4 = v4;
    v55 = v4;
    goto LABEL_25;
  }

  accountType = [accountCopy accountType];
  if (accountType)
  {
    identifier = [accountCopy identifier];
    v7 = identifier == 0;

    if (!v7)
    {
      v8 = [ACAccountType alloc];
      accountType2 = [accountCopy accountType];
      v10 = [(ACAccountType *)v8 initWithManagedAccountType:accountType2];
      accountType = v4->_accountType;
      v4->_accountType = v10;

      identifier2 = [accountCopy identifier];
      identifier = v4->_identifier;
      v4->_identifier = identifier2;

      accountDescription = [accountCopy accountDescription];
      accountDescription = v4->_accountDescription;
      v4->_accountDescription = accountDescription;

      username = [accountCopy username];
      username = v4->_username;
      v4->_username = username;

      authenticated = [accountCopy authenticated];
      v4->_authenticated = [authenticated BOOLValue];

      lastCredentialRenewalRejectionDate = [accountCopy lastCredentialRenewalRejectionDate];
      lastCredentialRenewalRejectionDate = v4->_lastCredentialRenewalRejectionDate;
      v4->_lastCredentialRenewalRejectionDate = lastCredentialRenewalRejectionDate;

      active = [accountCopy active];
      v4->_active = [active BOOLValue];

      warmingUp = [accountCopy warmingUp];
      v4->_warmingUp = [warmingUp BOOLValue];

      visible = [accountCopy visible];
      v4->_visible = [visible BOOLValue];

      supportsAuthentication = [accountCopy supportsAuthentication];
      v4->_supportsAuthentication = [supportsAuthentication BOOLValue];

      objectID = [accountCopy objectID];
      uRIRepresentation = [objectID URIRepresentation];
      objectID = v4->_objectID;
      v4->_objectID = uRIRepresentation;

      authenticationType = [accountCopy authenticationType];
      authenticationType = v4->_authenticationType;
      v4->_authenticationType = authenticationType;

      credentialType = [accountCopy credentialType];
      credentialType = v4->_credentialType;
      v4->_credentialType = credentialType;

      date = [accountCopy date];
      date = v4->_date;
      v4->_date = date;

      owningBundleID = [accountCopy owningBundleID];
      owningBundleID = v4->_owningBundleID;
      v4->_owningBundleID = owningBundleID;

      modificationID = [accountCopy modificationID];
      modificationID = v4->_modificationID;
      v4->_modificationID = modificationID;

      v38 = accountCopy;
      parentAccount = [accountCopy parentAccount];
      if (parentAccount)
      {
        v39 = [[ACAccount alloc] initWithManagedAccount:parentAccount];
        parentAccount = v4->_parentAccount;
        v4->_parentAccount = v39;

        v38 = accountCopy;
      }

      dataclassProperties = [v38 dataclassProperties];
      v42 = [dataclassProperties mutableCopy];
      dataclassProperties = v4->_dataclassProperties;
      v4->_dataclassProperties = v42;

      v44 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      customProperties = [accountCopy customProperties];
      v46 = [customProperties countByEnumeratingWithState:&v63 objects:v68 count:16];
      if (v46)
      {
        v47 = *v64;
        do
        {
          for (i = 0; i != v46; ++i)
          {
            if (*v64 != v47)
            {
              objc_enumerationMutation(customProperties);
            }

            v49 = *(*(&v63 + 1) + 8 * i);
            value = [v49 value];
            if (!value || ([v49 key], v51 = objc_claimAutoreleasedReturnValue(), v52 = v51 == 0, v51, v52))
            {
              v53 = _ACLogSystem();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                v54 = [v49 key];
                *buf = 138412546;
                v70 = value;
                v71 = 2112;
                *v72 = v54;
                _os_log_error_impl(&dword_1AC3CD000, v53, OS_LOG_TYPE_ERROR, "Unexpecteed nil value for property %@ or key %@", buf, 0x16u);
              }
            }

            else
            {
              v53 = [v49 key];
              [v44 setObject:value forKey:v53];
            }
          }

          v46 = [customProperties countByEnumeratingWithState:&v63 objects:v68 count:16];
        }

        while (v46);
      }

      if ([v44 count])
      {
        objc_storeStrong(&v4->_properties, v44);
      }

      goto LABEL_21;
    }
  }

  v56 = _ACLogSystem();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
  {
    accountType3 = [accountCopy accountType];
    identifier3 = [accountCopy identifier];
    *buf = 138412802;
    v70 = accountCopy;
    v71 = 1024;
    *v72 = accountType3 != 0;
    *&v72[4] = 1024;
    *&v72[6] = identifier3 != 0;
    _os_log_error_impl(&dword_1AC3CD000, v56, OS_LOG_TYPE_ERROR, "ACAccount initializer just ran into an account (%@) missing required properties: accountType:%d identifier:%d", buf, 0x18u);
  }

  v55 = 0;
LABEL_25:

  v57 = *MEMORY[0x1E69E9840];
  return v55;
}

- (ACAccount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v127.receiver = self;
  v127.super_class = ACAccount;
  v5 = [(ACAccount *)&v127 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountType"];
    accountType = v5->_accountType;
    v5->_accountType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credential"];
    credential = v5->_credential;
    v5->_credential = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v11 = [v10 copy];
    identifier = v5->_identifier;
    v5->_identifier = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountDescription"];
    v14 = [v13 copy];
    accountDescription = v5->_accountDescription;
    v5->_accountDescription = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"username"];
    v17 = [v16 copy];
    username = v5->_username;
    v5->_username = v17;

    v125 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v125 setWithObjects:{v19, v20, v21, v22, v23, v24, v25, v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"accountProperties"];
    v29 = [v28 mutableCopy];
    properties = v5->_properties;
    v5->_properties = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authenticated"];
    v5->_authenticated = [v31 BOOLValue];

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastCredentialRenewalRejectionDate"];
    lastCredentialRenewalRejectionDate = v5->_lastCredentialRenewalRejectionDate;
    v5->_lastCredentialRenewalRejectionDate = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"active"];
    v5->_active = [v34 BOOLValue];

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"warmingUp"];
    v5->_warmingUp = [v35 BOOLValue];

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"visible"];
    v5->_visible = [v36 BOOLValue];

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportsAuthentication"];
    v5->_supportsAuthentication = [v37 BOOLValue];

    v126 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = objc_opt_class();
    v41 = objc_opt_class();
    v42 = objc_opt_class();
    v43 = objc_opt_class();
    v44 = objc_opt_class();
    v45 = objc_opt_class();
    v46 = [v126 setWithObjects:{v38, v39, v40, v41, v42, v43, v44, v45, objc_opt_class(), 0}];
    v47 = [coderCopy decodeObjectOfClasses:v46 forKey:@"dataclassProperties"];
    v48 = [v47 mutableCopy];
    dataclassProperties = v5->_dataclassProperties;
    v5->_dataclassProperties = v48;

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
    v51 = [v50 copy];
    objectID = v5->_objectID;
    v5->_objectID = v51;

    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parent"];
    v54 = [v53 copy];
    parentAccount = v5->_parentAccount;
    v5->_parentAccount = v54;

    v56 = MEMORY[0x1E695DFD8];
    v57 = objc_opt_class();
    v58 = [v56 setWithObjects:{v57, objc_opt_class(), 0}];
    v59 = [coderCopy decodeObjectOfClasses:v58 forKey:@"provisionedDataclassesEnumValues"];
    provisionedEnumDataclasses = v5->_provisionedEnumDataclasses;
    v5->_provisionedEnumDataclasses = v59;

    v61 = MEMORY[0x1E695DFD8];
    v62 = objc_opt_class();
    v63 = [v61 setWithObjects:{v62, objc_opt_class(), 0}];
    v64 = [coderCopy decodeObjectOfClasses:v63 forKey:@"trackedProvisionedDataclasses"];
    v65 = [v64 mutableCopy];
    trackedProvisionedDataclasses = v5->_trackedProvisionedDataclasses;
    v5->_trackedProvisionedDataclasses = v65;

    v5->_wasProvisionedDataclassesReset = [coderCopy decodeBoolForKey:@"wasProvisionedDataclassesReset"];
    v67 = MEMORY[0x1E695DFD8];
    v68 = objc_opt_class();
    v69 = [v67 setWithObjects:{v68, objc_opt_class(), 0}];
    v70 = [coderCopy decodeObjectOfClasses:v69 forKey:@"enabledDataclassesEnumValues"];
    enabledEnumDataclasses = v5->_enabledEnumDataclasses;
    v5->_enabledEnumDataclasses = v70;

    v72 = MEMORY[0x1E695DFD8];
    v73 = objc_opt_class();
    v74 = [v72 setWithObjects:{v73, objc_opt_class(), 0}];
    v75 = [coderCopy decodeObjectOfClasses:v74 forKey:@"trackedEnabledDataclasses"];
    v76 = [v75 mutableCopy];
    trackedEnabledDataclasses = v5->_trackedEnabledDataclasses;
    v5->_trackedEnabledDataclasses = v76;

    v5->_wasEnabledDataclassesReset = [coderCopy decodeBoolForKey:@"wasEnabledDataclassesReset"];
    v78 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authenticationType"];
    v79 = [v78 copy];
    authenticationType = v5->_authenticationType;
    v5->_authenticationType = v79;

    v81 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialType"];
    v82 = [v81 copy];
    credentialType = v5->_credentialType;
    v5->_credentialType = v82;

    v84 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v84;

    v86 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"owningBundleID"];
    v87 = [v86 copy];
    owningBundleID = v5->_owningBundleID;
    v5->_owningBundleID = v87;

    v89 = MEMORY[0x1E695DFD8];
    v90 = objc_opt_class();
    v91 = [v89 setWithObjects:{v90, objc_opt_class(), 0}];
    v92 = [coderCopy decodeObjectOfClasses:v91 forKey:@"dirtyProperties"];
    dirtyProperties = v5->_dirtyProperties;
    v5->_dirtyProperties = v92;

    v94 = MEMORY[0x1E695DFD8];
    v95 = objc_opt_class();
    v96 = [v94 setWithObjects:{v95, objc_opt_class(), 0}];
    v97 = [coderCopy decodeObjectOfClasses:v96 forKey:@"dirtyAccountProperties"];
    dirtyAccountProperties = v5->_dirtyAccountProperties;
    v5->_dirtyAccountProperties = v97;

    v99 = MEMORY[0x1E695DFD8];
    v100 = objc_opt_class();
    v101 = [v99 setWithObjects:{v100, objc_opt_class(), 0}];
    v102 = [coderCopy decodeObjectOfClasses:v101 forKey:@"dirtyDataclassProperties"];
    dirtyDataclassProperties = v5->_dirtyDataclassProperties;
    v5->_dirtyDataclassProperties = v102;

    v104 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modificationID"];
    v105 = [v104 copy];
    modificationID = v5->_modificationID;
    v5->_modificationID = v105;

    if (!v5->_trackedProvisionedDataclasses)
    {
      v107 = MEMORY[0x1E695DFD8];
      v108 = objc_opt_class();
      v109 = [v107 setWithObjects:{v108, objc_opt_class(), 0}];
      v110 = [coderCopy decodeObjectOfClasses:v109 forKey:@"provisionedDataclasses"];

      if (v110)
      {
        v111 = objc_alloc_init(ACMutableTrackedSet);
        v112 = v5->_trackedProvisionedDataclasses;
        v5->_trackedProvisionedDataclasses = v111;

        v113 = v5->_trackedProvisionedDataclasses;
        allObjects = [v110 allObjects];
        [(ACMutableTrackedSet *)v113 addObjectsFromArray:allObjects];

        v5->_wasProvisionedDataclassesReset = 1;
      }
    }

    if (!v5->_trackedEnabledDataclasses)
    {
      v115 = MEMORY[0x1E695DFD8];
      v116 = objc_opt_class();
      v117 = [v115 setWithObjects:{v116, objc_opt_class(), 0}];
      v118 = [coderCopy decodeObjectOfClasses:v117 forKey:@"enabledDataclasses"];

      if (v118)
      {
        v119 = objc_alloc_init(ACMutableTrackedSet);
        v120 = v5->_trackedEnabledDataclasses;
        v5->_trackedEnabledDataclasses = v119;

        v121 = v5->_trackedEnabledDataclasses;
        allObjects2 = [v118 allObjects];
        [(ACMutableTrackedSet *)v121 addObjectsFromArray:allObjects2];

        v5->_wasEnabledDataclassesReset = 1;
      }
    }

    v123 = v5->_credential;
    if (v123)
    {
      [(ACAccountCredential *)v123 _setOwningAccount:v5];
      [(ACAccount *)v5 _installCredentialsChangedObserver];
    }
  }

  return v5;
}

void __47__ACAccount__installCredentialsChangedObserver__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained credentialsChanged:v3];
}

- (void)encodeWithCoder:(id)coder
{
  v27 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [coderCopy encodeObject:selfCopy->_accountType forKey:@"accountType"];
  credential = selfCopy->_credential;
  if (credential)
  {
    [coderCopy encodeObject:credential forKey:@"credential"];
  }

  [coderCopy encodeObject:selfCopy->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:selfCopy->_accountDescription forKey:@"accountDescription"];
  [coderCopy encodeObject:selfCopy->_username forKey:@"username"];
  accountProperties = [(ACAccount *)selfCopy accountProperties];
  accountPropertiesTransformer = [(ACAccount *)selfCopy accountPropertiesTransformer];

  if (accountPropertiesTransformer)
  {
    accountPropertiesTransformer2 = [(ACAccount *)selfCopy accountPropertiesTransformer];
    v10 = (accountPropertiesTransformer2)[2](accountPropertiesTransformer2, accountProperties);

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    accountProperties = v10;
    v11 = [accountProperties countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = *v23;
      do
      {
        v13 = 0;
        do
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(accountProperties);
          }

          [(ACAccount *)selfCopy _markAccountPropertyDirty:*(*(&v22 + 1) + 8 * v13++), v22];
        }

        while (v11 != v13);
        v11 = [accountProperties countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }
  }

  [coderCopy encodeObject:accountProperties forKey:{@"accountProperties", v22}];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_authenticated];
  [coderCopy encodeObject:v14 forKey:@"authenticated"];

  [coderCopy encodeObject:selfCopy->_lastCredentialRenewalRejectionDate forKey:@"lastCredentialRenewalRejectionDate"];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_active];
  [coderCopy encodeObject:v15 forKey:@"active"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_warmingUp];
  [coderCopy encodeObject:v16 forKey:@"warmingUp"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_visible];
  [coderCopy encodeObject:v17 forKey:@"visible"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:selfCopy->_supportsAuthentication];
  [coderCopy encodeObject:v18 forKey:@"supportsAuthentication"];

  [coderCopy encodeObject:selfCopy->_dataclassProperties forKey:@"dataclassProperties"];
  [coderCopy encodeObject:selfCopy->_objectID forKey:@"objectID"];
  [coderCopy encodeObject:selfCopy->_parentAccount forKey:@"parent"];
  [coderCopy encodeObject:selfCopy->_trackedProvisionedDataclasses forKey:@"trackedProvisionedDataclasses"];
  [coderCopy encodeBool:selfCopy->_wasProvisionedDataclassesReset forKey:@"wasProvisionedDataclassesReset"];
  [coderCopy encodeObject:selfCopy->_enabledEnumDataclasses forKey:@"enabledDataclassesEnumValues"];
  [coderCopy encodeObject:selfCopy->_provisionedEnumDataclasses forKey:@"provisionedDataclassesEnumValues"];
  [coderCopy encodeObject:selfCopy->_trackedEnabledDataclasses forKey:@"trackedEnabledDataclasses"];
  [coderCopy encodeBool:selfCopy->_wasEnabledDataclassesReset forKey:@"wasEnabledDataclassesReset"];
  [coderCopy encodeObject:selfCopy->_authenticationType forKey:@"authenticationType"];
  [coderCopy encodeObject:selfCopy->_credentialType forKey:@"credentialType"];
  [coderCopy encodeObject:selfCopy->_date forKey:@"date"];
  [coderCopy encodeObject:selfCopy->_owningBundleID forKey:@"owningBundleID"];
  [coderCopy encodeObject:selfCopy->_dirtyProperties forKey:@"dirtyProperties"];
  [coderCopy encodeObject:selfCopy->_dirtyAccountProperties forKey:@"dirtyAccountProperties"];
  [coderCopy encodeObject:selfCopy->_dirtyDataclassProperties forKey:@"dirtyDataclassProperties"];
  [coderCopy encodeObject:selfCopy->_modificationID forKey:@"modificationID"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (selfCopy->_trackedProvisionedDataclasses)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [MEMORY[0x1E695DFD8] setWithTrackedSet:selfCopy->_trackedProvisionedDataclasses];
        [coderCopy encodeObject:v19 forKey:@"provisionedDataclasses"];
      }
    }

    if (selfCopy->_trackedEnabledDataclasses)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [MEMORY[0x1E695DFD8] setWithTrackedSet:selfCopy->_trackedEnabledDataclasses];
        [coderCopy encodeObject:v20 forKey:@"enabledDataclasses"];
      }
    }
  }

  objc_sync_exit(selfCopy);
  v21 = *MEMORY[0x1E69E9840];
}

- (id)_initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = [ACAccountType alloc];
  accountType = [protobufCopy accountType];
  v7 = [(ACAccountType *)v5 _initWithProtobuf:accountType];

  v8 = [(ACAccount *)self initWithAccountType:v7];
  if (v8)
  {
    if ([protobufCopy hasCredential])
    {
      v9 = [ACAccountCredential alloc];
      credential = [protobufCopy credential];
      v11 = [(ACAccountCredential *)v9 _initWithProtobuf:credential];
      credential = v8->_credential;
      v8->_credential = v11;
    }

    identifier = [protobufCopy identifier];
    v14 = [identifier copy];
    identifier = v8->_identifier;
    v8->_identifier = v14;

    accountDescription = [protobufCopy accountDescription];
    v17 = [accountDescription copy];
    accountDescription = v8->_accountDescription;
    v8->_accountDescription = v17;

    username = [protobufCopy username];
    v20 = [username copy];
    username = v8->_username;
    v8->_username = v20;

    propertiesDictionary = [protobufCopy propertiesDictionary];
    v23 = [propertiesDictionary mutableCopy];
    properties = v8->_properties;
    v8->_properties = v23;

    v8->_authenticated = [protobufCopy authenticated];
    if ([protobufCopy hasLastCredentialRenewalRejectionDate])
    {
      lastCredentialRenewalRejectionDate = [protobufCopy lastCredentialRenewalRejectionDate];
      date = [lastCredentialRenewalRejectionDate date];
      lastCredentialRenewalRejectionDate = v8->_lastCredentialRenewalRejectionDate;
      v8->_lastCredentialRenewalRejectionDate = date;
    }

    v8->_active = [protobufCopy active];
    v8->_warmingUp = [protobufCopy warmingUp];
    v8->_visible = [protobufCopy visible];
    v8->_supportsAuthentication = [protobufCopy supportsAuthentication];
    dataclassPropertiesDictionary = [protobufCopy dataclassPropertiesDictionary];
    v29 = [dataclassPropertiesDictionary mutableCopy];
    dataclassProperties = v8->_dataclassProperties;
    v8->_dataclassProperties = v29;

    if ([protobufCopy hasObjectID])
    {
      objectID = [protobufCopy objectID];
      v32 = [objectID url];
      objectID = v8->_objectID;
      v8->_objectID = v32;
    }

    if ([protobufCopy hasParentAccount])
    {
      v34 = [ACAccount alloc];
      parentAccount = [protobufCopy parentAccount];
      v36 = [(ACAccount *)v34 _initWithProtobuf:parentAccount];
      parentAccount = v8->_parentAccount;
      v8->_parentAccount = v36;
    }

    v38 = objc_alloc_init(ACMutableTrackedSet);
    trackedProvisionedDataclasses = v8->_trackedProvisionedDataclasses;
    v8->_trackedProvisionedDataclasses = v38;

    v40 = v8->_trackedProvisionedDataclasses;
    provisionedDataclasses = [protobufCopy provisionedDataclasses];
    [(ACMutableTrackedSet *)v40 addObjectsFromArray:provisionedDataclasses];

    v42 = MEMORY[0x1E695DFD8];
    provisionedEnumDataclasses = [protobufCopy provisionedEnumDataclasses];
    v44 = [v42 setWithArray:provisionedEnumDataclasses];
    provisionedEnumDataclasses = v8->_provisionedEnumDataclasses;
    v8->_provisionedEnumDataclasses = v44;

    v46 = objc_alloc_init(ACMutableTrackedSet);
    trackedEnabledDataclasses = v8->_trackedEnabledDataclasses;
    v8->_trackedEnabledDataclasses = v46;

    v48 = v8->_trackedEnabledDataclasses;
    enabledDataclasses = [protobufCopy enabledDataclasses];
    [(ACMutableTrackedSet *)v48 addObjectsFromArray:enabledDataclasses];

    v50 = MEMORY[0x1E695DFD8];
    enabledEnumDataclasses = [protobufCopy enabledEnumDataclasses];
    v52 = [v50 setWithArray:enabledEnumDataclasses];
    enabledEnumDataclasses = v8->_enabledEnumDataclasses;
    v8->_enabledEnumDataclasses = v52;

    authenticationType = [protobufCopy authenticationType];
    v55 = [authenticationType copy];
    authenticationType = v8->_authenticationType;
    v8->_authenticationType = v55;

    credentialType = [protobufCopy credentialType];
    v58 = [credentialType copy];
    credentialType = v8->_credentialType;
    v8->_credentialType = v58;

    date2 = [protobufCopy date];
    v60Date = [date2 date];
    date = v8->_date;
    v8->_date = v60Date;

    owningBundleID = [protobufCopy owningBundleID];
    owningBundleID = v8->_owningBundleID;
    v8->_owningBundleID = owningBundleID;

    dirtyProperties = [protobufCopy dirtyProperties];

    if (dirtyProperties)
    {
      v66 = objc_alloc(MEMORY[0x1E695DFA8]);
      dirtyProperties2 = [protobufCopy dirtyProperties];
      v68 = [v66 initWithArray:dirtyProperties2];
      dirtyProperties = v8->_dirtyProperties;
      v8->_dirtyProperties = v68;
    }

    dirtyAccountProperties = [protobufCopy dirtyAccountProperties];

    if (dirtyAccountProperties)
    {
      v71 = objc_alloc(MEMORY[0x1E695DFA8]);
      dirtyAccountProperties2 = [protobufCopy dirtyAccountProperties];
      v73 = [v71 initWithArray:dirtyAccountProperties2];
      dirtyAccountProperties = v8->_dirtyAccountProperties;
      v8->_dirtyAccountProperties = v73;
    }

    dirtyDataclassProperties = [protobufCopy dirtyDataclassProperties];

    if (dirtyDataclassProperties)
    {
      v76 = objc_alloc(MEMORY[0x1E695DFA8]);
      dirtyDataclassProperties2 = [protobufCopy dirtyDataclassProperties];
      v78 = [v76 initWithArray:dirtyDataclassProperties2];
      dirtyDataclassProperties = v8->_dirtyDataclassProperties;
      v8->_dirtyDataclassProperties = v78;
    }

    modificationID = [protobufCopy modificationID];
    modificationID = v8->_modificationID;
    v8->_modificationID = modificationID;

    v82 = v8->_credential;
    if (v82)
    {
      [(ACAccountCredential *)v82 _setOwningAccount:v8];
      [(ACAccount *)v8 _installCredentialsChangedObserver];
    }

    v83 = v8;
  }

  return v8;
}

- (id)_initWithProtobufData:(id)data
{
  dataCopy = data;
  if (![dataCopy length])
  {
    [(ACAccount *)a2 _initWithProtobufData:?];
  }

  if ([dataCopy length])
  {
    v6 = [[ACProtobufAccount alloc] initWithData:dataCopy];
    if (v6)
    {
      self = [(ACAccount *)self _initWithProtobuf:v6];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_encodeProtobuf
{
  v3 = objc_opt_new();
  _encodeProtobuf = [(ACAccountType *)self->_accountType _encodeProtobuf];
  [v3 setAccountType:_encodeProtobuf];

  _encodeProtobuf2 = [(ACAccountCredential *)self->_credential _encodeProtobuf];
  [v3 setCredential:_encodeProtobuf2];

  [v3 setIdentifier:self->_identifier];
  [v3 setAccountDescription:self->_accountDescription];
  [v3 setUsername:self->_username];
  if ([(NSMutableDictionary *)self->_properties count])
  {
    [v3 setPropertiesDictionary:self->_properties];
  }

  [v3 setAuthenticated:self->_authenticated];
  if (self->_lastCredentialRenewalRejectionDate)
  {
    v6 = [[ACProtobufDate alloc] initWithDate:self->_lastCredentialRenewalRejectionDate];
    [v3 setLastCredentialRenewalRejectionDate:v6];
  }

  [v3 setActive:self->_active];
  [v3 setWarmingUp:self->_warmingUp];
  [v3 setVisible:self->_visible];
  [v3 setSupportsAuthentication:self->_supportsAuthentication];
  if ([(NSMutableDictionary *)self->_dataclassProperties count])
  {
    [v3 setDataclassPropertiesDictionary:self->_dataclassProperties];
  }

  if (self->_objectID)
  {
    v7 = [[ACProtobufURL alloc] initWithURL:self->_objectID];
    [v3 setObjectID:v7];
  }

  _encodeProtobuf3 = [(ACAccount *)self->_parentAccount _encodeProtobuf];
  [v3 setParentAccount:_encodeProtobuf3];

  allObjects = [(ACTrackedSet *)self->_trackedProvisionedDataclasses allObjects];
  v10 = [allObjects mutableCopy];
  [v3 setProvisionedDataclasses:v10];

  allObjects2 = [(ACTrackedSet *)self->_trackedEnabledDataclasses allObjects];
  v12 = [allObjects2 mutableCopy];
  [v3 setEnabledDataclasses:v12];

  allObjects3 = [(NSSet *)self->_enabledEnumDataclasses allObjects];
  v14 = [allObjects3 mutableCopy];
  [v3 setEnabledEnumDataclasses:v14];

  allObjects4 = [(NSSet *)self->_provisionedEnumDataclasses allObjects];
  v16 = [allObjects4 mutableCopy];
  [v3 setProvisionedEnumDataclasses:v16];

  [v3 setAuthenticationType:self->_authenticationType];
  [v3 setCredentialType:self->_credentialType];
  if (self->_date)
  {
    v17 = [[ACProtobufDate alloc] initWithDate:self->_date];
    [v3 setDate:v17];
  }

  [v3 setOwningBundleID:self->_owningBundleID];
  if ([(NSMutableSet *)self->_dirtyProperties count])
  {
    allObjects5 = [(NSMutableSet *)self->_dirtyProperties allObjects];
    v19 = [allObjects5 mutableCopy];
    [v3 setDirtyProperties:v19];
  }

  if ([(NSMutableSet *)self->_dirtyAccountProperties count])
  {
    allObjects6 = [(NSMutableSet *)self->_dirtyAccountProperties allObjects];
    v21 = [allObjects6 mutableCopy];
    [v3 setDirtyAccountProperties:v21];
  }

  if ([(NSMutableSet *)self->_dirtyDataclassProperties count])
  {
    allObjects7 = [(NSMutableSet *)self->_dirtyDataclassProperties allObjects];
    v23 = [allObjects7 mutableCopy];
    [v3 setDirtyDataclassProperties:v23];
  }

  [v3 setModificationID:self->_modificationID];

  return v3;
}

- (id)_encodeProtobufData
{
  _encodeProtobuf = [(ACAccount *)self _encodeProtobuf];
  data = [_encodeProtobuf data];

  return data;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_sync_enter(v5);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [(ACAccountType *)selfCopy->_accountType copyWithZone:zone];
  v8 = v5[9];
  v5[9] = v7;

  v9 = [(ACAccountCredential *)selfCopy->_credential copyWithZone:zone];
  v10 = v5[10];
  v5[10] = v9;

  v11 = [(NSString *)selfCopy->_identifier copyWithZone:zone];
  v12 = v5[2];
  v5[2] = v11;

  v13 = [(NSString *)selfCopy->_accountDescription copyWithZone:zone];
  v14 = v5[3];
  v5[3] = v13;

  v15 = [(NSString *)selfCopy->_username copyWithZone:zone];
  v16 = v5[5];
  v5[5] = v15;

  v17 = [(NSMutableDictionary *)selfCopy->_properties mutableCopyWithZone:zone];
  v18 = v5[11];
  v5[11] = v17;

  *(v5 + 234) = selfCopy->_authenticated;
  v19 = [(NSDate *)selfCopy->_lastCredentialRenewalRejectionDate copyWithZone:zone];
  v20 = v5[15];
  v5[15] = v19;

  *(v5 + 235) = selfCopy->_active;
  *(v5 + 236) = selfCopy->_warmingUp;
  *(v5 + 238) = selfCopy->_visible;
  *(v5 + 237) = selfCopy->_supportsAuthentication;
  v21 = [(NSMutableDictionary *)selfCopy->_dataclassProperties mutableCopyWithZone:zone];
  v22 = v5[12];
  v5[12] = v21;

  v23 = [(NSURL *)selfCopy->_objectID copyWithZone:zone];
  v24 = v5[13];
  v5[13] = v23;

  v25 = [(ACAccount *)selfCopy->_parentAccount copyWithZone:zone];
  v26 = v5[18];
  v5[18] = v25;

  v27 = [(ACTrackedSet *)selfCopy->_trackedProvisionedDataclasses mutableCopyWithZone:zone];
  v28 = v5[21];
  v5[21] = v27;

  *(v5 + 240) = selfCopy->_wasProvisionedDataclassesReset;
  v29 = [(NSSet *)selfCopy->_enabledEnumDataclasses copy];
  v30 = v5[22];
  v5[22] = v29;

  v31 = [(NSSet *)selfCopy->_provisionedEnumDataclasses copy];
  v32 = v5[20];
  v5[20] = v31;

  v33 = [(ACTrackedSet *)selfCopy->_trackedEnabledDataclasses mutableCopyWithZone:zone];
  v34 = v5[23];
  v5[23] = v33;

  *(v5 + 241) = selfCopy->_wasEnabledDataclassesReset;
  v35 = [(NSString *)selfCopy->_authenticationType copyWithZone:zone];
  v36 = v5[6];
  v5[6] = v35;

  v37 = [(NSString *)selfCopy->_credentialType copyWithZone:zone];
  v38 = v5[7];
  v5[7] = v37;

  v39 = [(NSString *)selfCopy->_owningBundleID copyWithZone:zone];
  v40 = v5[4];
  v5[4] = v39;

  v41 = [(NSMutableSet *)selfCopy->_dirtyProperties mutableCopyWithZone:zone];
  v42 = v5[24];
  v5[24] = v41;

  v43 = [(NSMutableSet *)selfCopy->_dirtyAccountProperties mutableCopyWithZone:zone];
  v44 = v5[25];
  v5[25] = v43;

  v45 = [(NSMutableSet *)selfCopy->_dirtyDataclassProperties mutableCopyWithZone:zone];
  v46 = v5[26];
  v5[26] = v45;

  v47 = [(NSDate *)selfCopy->_date copyWithZone:zone];
  v48 = v5[14];
  v5[14] = v47;

  WeakRetained = objc_loadWeakRetained(&selfCopy->_accountStore);
  objc_storeWeak(v5 + 1, WeakRetained);

  *(v5 + 233) = selfCopy->_accountAccessAvailable;
  v50 = [(ACAccount *)selfCopy->_parentAccount copyWithZone:zone];
  v51 = v5[18];
  v5[18] = v50;

  *(v5 + 239) = selfCopy->_haveCheckedForChildAccounts;
  v52 = [(NSArray *)selfCopy->_childAccounts copyWithZone:zone];
  v53 = v5[19];
  v5[19] = v52;

  v54 = [selfCopy->_accountPropertiesTransformer copyWithZone:zone];
  v55 = v5[28];
  v5[28] = v54;

  v56 = [(NSString *)selfCopy->_modificationID copyWithZone:zone];
  v57 = v5[16];
  v5[16] = v56;

  if (v5[10])
  {
    [v5 _installCredentialsChangedObserver];
  }

  objc_sync_exit(selfCopy);

  objc_sync_exit(v5);
  return v5;
}

- (id)portableCopy
{
  v2 = [(ACAccount *)self copy];
  [v2 _loadAllCachedProperties];
  [v2 _setObjectID:0];

  return v2;
}

- (id)fullDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setTimeStyle:4];
  [v3 setDateStyle:4];
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
  [v3 setLocale:v4];

  creationDate = [(ACAccount *)self creationDate];
  v33 = [v3 stringFromDate:creationDate];

  v24 = MEMORY[0x1E696AEC0];
  accountType = [(ACAccount *)self accountType];
  identifier = [accountType identifier];
  identifier2 = [(ACAccount *)self identifier];
  accountDescription = [(ACAccount *)self accountDescription];
  username = [(ACAccount *)self username];
  username2 = [(ACAccount *)self username];
  v23 = ACHashedString(username2);
  objectID = [(ACAccount *)self objectID];
  provisionedDataclasses = [(ACAccount *)self provisionedDataclasses];
  enabledDataclasses = [(ACAccount *)self enabledDataclasses];
  dataclassProperties = [(ACAccount *)self dataclassProperties];
  accountProperties = [(ACAccount *)self accountProperties];
  parentAccountIdentifier = [(ACAccount *)self parentAccountIdentifier];
  owningBundleID = [(ACAccount *)self owningBundleID];
  if ([(ACAccount *)self isAuthenticated])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v17 = v7;
  lastCredentialRenewalRejectionDate = [(ACAccount *)self lastCredentialRenewalRejectionDate];
  if ([(ACAccount *)self supportsAuthentication])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  authenticationType = [(ACAccount *)self authenticationType];
  credentialType = [(ACAccount *)self credentialType];
  credential = [(ACAccount *)self credential];
  if ([(ACAccount *)self isActive])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if ([(ACAccount *)self isVisible])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if ([(ACAccount *)self isWarmingUp])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v25 = [v24 stringWithFormat:@"type:%@\nidentifier: %@\naccountDescription: %@\nusername: %@ (%@)\nobjectID: %@\nprovisionedDataclasses: %@\nenabledDataclasses: %@\ndataclassProperties: %@\nproperties: %@\nparentAccount: %@\nowningBundleID:%@\nauthenticated: %@\nlastCredentialRenewalRejectedDate: %@\nsupportsAuthentication: %@\nauthenticationType: %@\ncredentialType: %@\ncredential: %@\ncreated: %@\nactive: %@\nvisible: %@\nwarmingUp: %@", identifier, identifier2, accountDescription, username, v23, objectID, provisionedDataclasses, enabledDataclasses, dataclassProperties, accountProperties, parentAccountIdentifier, owningBundleID, v17, lastCredentialRenewalRejectionDate, v8, authenticationType, credentialType, credential, v33, v12, v13, v14];

  return v25;
}

- (void)credentialsChanged:(id)changed
{
  userInfo = [changed userInfo];
  v7 = [userInfo objectForKey:@"ACAccountIdentifierKey"];

  identifier = [(ACAccount *)self identifier];
  if ([v7 isEqualToString:identifier])
  {
    v6 = [(ACAccount *)self isPropertyDirty:@"credential"];

    if (!v6)
    {
      [(ACAccount *)self _clearCachedCredentials];
    }
  }

  else
  {
  }
}

- (BOOL)isDirty
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_dirtyProperties count]!= 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isPropertyDirty:(id)dirty
{
  dirtyCopy = dirty;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableSet *)selfCopy->_dirtyProperties containsObject:dirtyCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)markAllPropertiesDirty
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dirtyProperties = selfCopy->_dirtyProperties;
  if (!dirtyProperties)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:17];
    v5 = selfCopy->_dirtyProperties;
    selfCopy->_dirtyProperties = v4;

    dirtyProperties = selfCopy->_dirtyProperties;
  }

  [(NSMutableSet *)dirtyProperties addObject:@"accountDescription"];
  [(NSMutableSet *)selfCopy->_dirtyProperties addObject:@"accountProperties"];
  [(NSMutableSet *)selfCopy->_dirtyProperties addObject:@"accountType"];
  [(NSMutableSet *)selfCopy->_dirtyProperties addObject:@"active"];
  [(NSMutableSet *)selfCopy->_dirtyProperties addObject:@"warmingUp"];
  [(NSMutableSet *)selfCopy->_dirtyProperties addObject:@"authenticated"];
  [(NSMutableSet *)selfCopy->_dirtyProperties addObject:@"lastCredentialRenewalRejectionDate"];
  [(NSMutableSet *)selfCopy->_dirtyProperties addObject:@"credential"];
  [(NSMutableSet *)selfCopy->_dirtyProperties addObject:@"dataclassProperties"];
  [(NSMutableSet *)selfCopy->_dirtyProperties addObject:@"date"];
  [(NSMutableSet *)selfCopy->_dirtyProperties addObject:@"enabledDataclasses"];
  [(NSMutableSet *)selfCopy->_dirtyProperties addObject:@"provisionedDataclasses"];
  [(NSMutableSet *)selfCopy->_dirtyProperties addObject:@"identifier"];
  [(NSMutableSet *)selfCopy->_dirtyProperties addObject:@"owningBundleID"];
  [(NSMutableSet *)selfCopy->_dirtyProperties addObject:@"parent"];
  [(NSMutableSet *)selfCopy->_dirtyProperties addObject:@"supportsAuthentication"];
  [(NSMutableSet *)selfCopy->_dirtyProperties addObject:@"username"];
  [(NSMutableSet *)selfCopy->_dirtyProperties addObject:@"visible"];
  [(NSMutableSet *)selfCopy->_dirtyProperties addObject:@"modificationID"];
  if (!selfCopy->_dirtyAccountProperties)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSMutableDictionary count](selfCopy->_properties, "count")}];
    dirtyAccountProperties = selfCopy->_dirtyAccountProperties;
    selfCopy->_dirtyAccountProperties = v6;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = selfCopy->_properties;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [(NSMutableSet *)selfCopy->_dirtyAccountProperties addObject:*(*(&v13 + 1) + 8 * v11++), v13];
      }

      while (v9 != v11);
      v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  objc_sync_exit(selfCopy);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)setDirty:(BOOL)dirty forProperty:(id)property
{
  dirtyCopy = dirty;
  propertyCopy = property;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (dirtyCopy)
  {
    [(ACAccount *)selfCopy _unsafe_markPropertyDirty:propertyCopy];
  }

  else
  {
    [(NSMutableSet *)selfCopy->_dirtyProperties removeObject:propertyCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)_markPropertyDirty:(id)dirty
{
  dirtyCopy = dirty;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(ACAccount *)selfCopy _unsafe_markPropertyDirty:dirtyCopy];
  objc_sync_exit(selfCopy);
}

- (void)_unsafe_markPropertyDirty:(id)dirty
{
  dirtyCopy = dirty;
  dirtyProperties = self->_dirtyProperties;
  v8 = dirtyCopy;
  if (!dirtyProperties)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    v7 = self->_dirtyProperties;
    self->_dirtyProperties = v6;

    dirtyCopy = v8;
    dirtyProperties = self->_dirtyProperties;
  }

  [(NSMutableSet *)dirtyProperties addObject:dirtyCopy];
}

- (void)_markAccountPropertyDirty:(id)dirty
{
  dirtyCopy = dirty;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(ACAccount *)selfCopy _unsafe_markAccountPropertyDirty:dirtyCopy];
  objc_sync_exit(selfCopy);
}

- (void)_unsafe_markAccountPropertyDirty:(id)dirty
{
  dirtyCopy = dirty;
  dirtyAccountProperties = self->_dirtyAccountProperties;
  v8 = dirtyCopy;
  if (!dirtyAccountProperties)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    v7 = self->_dirtyAccountProperties;
    self->_dirtyAccountProperties = v6;

    dirtyCopy = v8;
    dirtyAccountProperties = self->_dirtyAccountProperties;
  }

  [(NSMutableSet *)dirtyAccountProperties addObject:dirtyCopy];
}

- (void)_markDataclassPropertyDirty:(id)dirty
{
  dirtyCopy = dirty;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(ACAccount *)selfCopy _unsafe_markDataclassPropertyDirty:dirtyCopy];
  objc_sync_exit(selfCopy);
}

- (void)_unsafe_markDataclassPropertyDirty:(id)dirty
{
  dirtyCopy = dirty;
  dirtyDataclassProperties = self->_dirtyDataclassProperties;
  v8 = dirtyCopy;
  if (!dirtyDataclassProperties)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    v7 = self->_dirtyDataclassProperties;
    self->_dirtyDataclassProperties = v6;

    dirtyCopy = v8;
    dirtyDataclassProperties = self->_dirtyDataclassProperties;
  }

  [(NSMutableSet *)dirtyDataclassProperties addObject:dirtyCopy];
}

- (void)_clearDirtyProperties
{
  obj = self;
  objc_sync_enter(obj);
  dirtyProperties = obj->_dirtyProperties;
  obj->_dirtyProperties = 0;

  dirtyAccountProperties = obj->_dirtyAccountProperties;
  obj->_dirtyAccountProperties = 0;

  dirtyDataclassProperties = obj->_dirtyDataclassProperties;
  obj->_dirtyDataclassProperties = 0;

  v5 = obj;
  if (obj->_trackedProvisionedDataclasses)
  {
    v6 = [ACMutableTrackedSet alloc];
    allObjects = [(ACTrackedSet *)obj->_trackedProvisionedDataclasses allObjects];
    v8 = [(ACTrackedSet *)v6 initWithArray:allObjects];
    trackedProvisionedDataclasses = obj->_trackedProvisionedDataclasses;
    obj->_trackedProvisionedDataclasses = v8;

    v5 = obj;
  }

  v5->_wasProvisionedDataclassesReset = 0;
  if (v5->_trackedEnabledDataclasses)
  {
    v10 = [ACMutableTrackedSet alloc];
    allObjects2 = [(ACTrackedSet *)obj->_trackedEnabledDataclasses allObjects];
    v12 = [(ACTrackedSet *)v10 initWithArray:allObjects2];
    trackedEnabledDataclasses = obj->_trackedEnabledDataclasses;
    obj->_trackedEnabledDataclasses = v12;

    v5 = obj;
  }

  v5->_wasEnabledDataclassesReset = 0;
  credential = v5->_credential;
  if (credential)
  {
    [(ACAccountCredential *)credential _clearDirtyProperties];
  }

  objc_sync_exit(obj);
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [identifierCopy copy];
  identifier = selfCopy->_identifier;
  selfCopy->_identifier = v5;

  [(ACAccount *)selfCopy _unsafe_markPropertyDirty:@"identifier"];
  objc_sync_exit(selfCopy);
}

- (void)setAuthenticationType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [typeCopy copy];
  authenticationType = selfCopy->_authenticationType;
  selfCopy->_authenticationType = v5;

  [(ACAccount *)selfCopy _unsafe_markPropertyDirty:@"authenticationType"];
  objc_sync_exit(selfCopy);
}

- (void)setCredentialType:(id)type
{
  typeCopy = type;
  if ([(ACAccount *)self _useParentForCredentials])
  {
    selfCopy = [(ACAccount *)self parentAccount];
    [(ACAccount *)selfCopy setCredentialType:typeCopy];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v5 = [typeCopy copy];
    credentialType = selfCopy->_credentialType;
    selfCopy->_credentialType = v5;

    [(ACAccount *)selfCopy _unsafe_markPropertyDirty:@"credentialType"];
    objc_sync_exit(selfCopy);
  }
}

- (void)setUsername:(NSString *)username
{
  v7 = username;
  if ([(ACAccount *)self _useParentForCredentials])
  {
    selfCopy = [(ACAccount *)self parentAccount];
    [(ACAccount *)selfCopy setUsername:v7];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v5 = [(NSString *)v7 copy];
    v6 = selfCopy->_username;
    selfCopy->_username = v5;

    [(ACAccount *)selfCopy _unsafe_markPropertyDirty:@"username"];
    objc_sync_exit(selfCopy);
  }
}

- (NSString)userFullName
{
  v3 = [(ACAccount *)self objectForKeyedSubscript:@"firstName"];
  if (v3 && (v4 = v3, [(ACAccount *)self objectForKeyedSubscript:@"lastName"], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    accountProperties = objc_alloc_init(MEMORY[0x1E696ADF0]);
    v7 = [(ACAccount *)self objectForKeyedSubscript:@"firstName"];
    [accountProperties setGivenName:v7];

    v8 = [(ACAccount *)self objectForKeyedSubscript:@"middleName"];
    [accountProperties setMiddleName:v8];

    v9 = [(ACAccount *)self objectForKeyedSubscript:@"lastName"];
    [accountProperties setFamilyName:v9];

    v10 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:accountProperties style:2 options:0];
  }

  else
  {
    accountProperties = [(ACAccount *)self accountProperties];
    v10 = [accountProperties objectForKey:@"ACPropertyFullName"];
  }

  v11 = v10;

  return v11;
}

- (id)credentialWithError:(id *)error
{
  if ([(ACAccount *)self _useParentForCredentials])
  {
    parentAccount = [(ACAccount *)self parentAccount];
    v6 = [(ACAccount *)parentAccount credentialWithError:error];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    p_credential = &selfCopy->_credential;
    v6 = selfCopy->_credential;
    objc_sync_exit(selfCopy);

    if (v6)
    {
      goto LABEL_8;
    }

    accountStore = [(ACAccount *)selfCopy accountStore];
    v6 = [accountStore credentialForAccount:selfCopy error:error];

    parentAccount = selfCopy;
    objc_sync_enter(parentAccount);
    objc_storeStrong(p_credential, v6);
    if (!parentAccount->_credentialsDidChangeObserver)
    {
      [(ACAccount *)parentAccount _installCredentialsChangedObserver];
    }

    objc_sync_exit(parentAccount);
  }

LABEL_8:

  return v6;
}

- (void)setCredential:(ACAccountCredential *)credential
{
  v6 = credential;
  if ([(ACAccount *)self _useParentForCredentials])
  {
    selfCopy = [(ACAccount *)self parentAccount];
    [(ACAccount *)selfCopy setCredential:v6];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(ACAccountCredential *)selfCopy->_credential _setOwningAccount:0];
    objc_storeStrong(&selfCopy->_credential, credential);
    if (!selfCopy->_credentialsDidChangeObserver)
    {
      [(ACAccount *)selfCopy _installCredentialsChangedObserver];
    }

    [(ACAccountCredential *)selfCopy->_credential _setOwningAccount:selfCopy];
    [(ACAccount *)selfCopy _unsafe_markPropertyDirty:@"credential"];
    [(ACAccount *)selfCopy setLastCredentialRenewalRejectionDate:0];
    objc_sync_exit(selfCopy);
  }
}

- (ACAccountCredential)internalCredential
{
  if ([(ACAccount *)self _useParentForCredentials])
  {
    selfCopy = [(ACAccount *)self parentAccount];
    internalCredential = [(ACAccount *)selfCopy internalCredential];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    internalCredential = selfCopy->_credential;
    objc_sync_exit(selfCopy);
  }

  return internalCredential;
}

- (void)setAccountDescription:(NSString *)accountDescription
{
  v8 = accountDescription;
  parentAccount = [(ACAccount *)self parentAccount];

  if (!parentAccount)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSString *)v8 copy];
    v7 = selfCopy->_accountDescription;
    selfCopy->_accountDescription = v6;

    [(ACAccount *)selfCopy _unsafe_markPropertyDirty:@"accountDescription"];
    objc_sync_exit(selfCopy);
  }
}

- (void)setOwningBundleID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [dCopy copy];
  owningBundleID = selfCopy->_owningBundleID;
  selfCopy->_owningBundleID = v5;

  [(ACAccount *)selfCopy _unsafe_markPropertyDirty:@"owningBundleID"];
  objc_sync_exit(selfCopy);
}

- (NSDate)creationDate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_date;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setCreationDate:(id)date
{
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_date, date);
  [(ACAccount *)selfCopy _unsafe_markPropertyDirty:@"date"];
  objc_sync_exit(selfCopy);
}

- (void)setAccountProperties:(id)properties
{
  v27 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = selfCopy->_properties;
  v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [(ACAccount *)selfCopy _markAccountPropertyDirty:*(*(&v21 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  [(ACAccount *)selfCopy willChangeValueForKey:@"accountProperties"];
  v10 = [propertiesCopy mutableCopy];
  properties = selfCopy->_properties;
  selfCopy->_properties = v10;

  [(ACAccount *)selfCopy didChangeValueForKey:@"accountProperties"];
  [(ACAccount *)selfCopy _unsafe_markPropertyDirty:@"accountProperties"];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = selfCopy->_properties;
  v13 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [(ACAccount *)selfCopy _markAccountPropertyDirty:*(*(&v17 + 1) + 8 * v15++), v17];
      }

      while (v13 != v15);
      v13 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x1E69E9840];
}

- (id)accountPropertyForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_properties objectForKeyedSubscript:keyCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)setAccountProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  properties = selfCopy->_properties;
  if (!properties)
  {
    [(ACAccount *)selfCopy willChangeValueForKey:@"accountProperties"];
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = selfCopy->_properties;
    selfCopy->_properties = v9;

    [(ACAccount *)selfCopy didChangeValueForKey:@"accountProperties"];
    properties = selfCopy->_properties;
  }

  v11 = [(NSMutableDictionary *)properties objectForKeyedSubscript:keyCopy];
  if (v11 != propertyCopy && (!propertyCopy || ([v11 isEqual:propertyCopy] & 1) == 0))
  {
    [(NSMutableDictionary *)selfCopy->_properties setValue:propertyCopy forKey:keyCopy];
    [(ACAccount *)selfCopy _unsafe_markPropertyDirty:@"accountProperties"];
    [(ACAccount *)selfCopy _markAccountPropertyDirty:keyCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)setLastCredentialRenewalRejectionDate:(id)date
{
  dateCopy = date;
  if ([(ACAccount *)self _useParentForCredentials])
  {
    selfCopy = [(ACAccount *)self parentAccount];
    [(ACAccount *)selfCopy setLastCredentialRenewalRejectionDate:dateCopy];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_lastCredentialRenewalRejectionDate, date);
    [(ACAccount *)selfCopy _unsafe_markPropertyDirty:@"lastCredentialRenewalRejectionDate"];
    objc_sync_exit(selfCopy);
  }
}

- (void)setActive:(BOOL)active
{
  obj = self;
  objc_sync_enter(obj);
  obj->_active = active;
  [(ACAccount *)obj _unsafe_markPropertyDirty:@"active"];
  objc_sync_exit(obj);
}

- (void)setWarmingUp:(BOOL)up
{
  obj = self;
  objc_sync_enter(obj);
  obj->_warmingUp = up;
  [(ACAccount *)obj _unsafe_markPropertyDirty:@"warmingUp"];
  objc_sync_exit(obj);
}

- (void)setCredentialLocation:(unint64_t)location
{
  if (location > 1)
  {
    v4 = _ACLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [ACAccount setCredentialLocation:];
    }

    [(ACAccount *)self setAccountProperty:&unk_1F2118940 forKey:@"CredentialStorageLocation"];
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:location];
    [(ACAccount *)self setAccountProperty:v5 forKey:@"CredentialStorageLocation"];
  }
}

- (BOOL)isVisible
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  visible = selfCopy->_visible;
  objc_sync_exit(selfCopy);

  return visible;
}

- (void)setVisible:(BOOL)visible
{
  obj = self;
  objc_sync_enter(obj);
  obj->_visible = visible;
  [(ACAccount *)obj _unsafe_markPropertyDirty:@"visible"];
  objc_sync_exit(obj);
}

- (BOOL)supportsAuthentication
{
  if ([(ACAccount *)self _useParentForCredentials])
  {
    selfCopy = [(ACAccount *)self parentAccount];
    supportsAuthentication = [(ACAccount *)selfCopy supportsAuthentication];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    supportsAuthentication = selfCopy->_supportsAuthentication;
    objc_sync_exit(selfCopy);
  }

  return supportsAuthentication;
}

- (BOOL)supportsPush
{
  selfCopy = self;
  accountStore = [(ACAccount *)self accountStore];
  LOBYTE(selfCopy) = [accountStore isPushSupportedForAccount:selfCopy];

  return selfCopy;
}

- (void)_setAccountStore:(id)store
{
  obj = store;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeWeak(&selfCopy->_accountStore, obj);
  [(ACAccountType *)selfCopy->_accountType setAccountStore:obj];
  parentAccount = selfCopy->_parentAccount;
  if (parentAccount)
  {
    [(ACAccount *)parentAccount _setAccountStore:obj];
  }

  objc_sync_exit(selfCopy);
}

- (void)setAccountType:(ACAccountType *)accountType
{
  v6 = accountType;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_accountType, accountType);
  [(ACAccount *)selfCopy _unsafe_markPropertyDirty:@"accountType"];
  objc_sync_exit(selfCopy);
}

- (void)setParentAccount:(id)account
{
  v16[1] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  identifier = [accountCopy identifier];
  identifier2 = [(ACAccount *)self identifier];
  v7 = [identifier isEqualToString:identifier2];

  if (v7)
  {
    v10 = MEMORY[0x1E695DF30];
    v15 = @"account";
    v16[0] = accountCopy;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v10 exceptionWithName:*MEMORY[0x1E695D940] reason:@"ACAccount can't be its own parent" userInfo:v11];
    v13 = v12;

    objc_exception_throw(v12);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_parentAccount, account);
  [(ACAccount *)selfCopy _unsafe_markPropertyDirty:@"parent"];
  objc_sync_exit(selfCopy);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_resetParentAccount:(id)account
{
  accountCopy = account;
  obj = self;
  objc_sync_enter(obj);
  parentAccount = obj->_parentAccount;
  obj->_parentAccount = accountCopy;

  objc_sync_exit(obj);
}

- (ACAccount)displayAccount
{
  parentAccount = [(ACAccount *)self parentAccount];
  v4 = parentAccount;
  if (parentAccount)
  {
    selfCopy = [parentAccount displayAccount];
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  return v6;
}

- (NSArray)childAccounts
{
  if (self->_haveCheckedForChildAccounts)
  {
    v3 = 0;
  }

  else
  {
    self->_haveCheckedForChildAccounts = 1;
    accountStore = [(ACAccount *)self accountStore];
    v3 = [accountStore childAccountsForAccount:self];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_childAccounts, v3);
    objc_sync_exit(selfCopy);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v7 = selfCopy2->_childAccounts;
  objc_sync_exit(selfCopy2);

  return v7;
}

- (id)childAccountsWithAccountTypeIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_childAccounts)
  {
    obj = selfCopy;
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = selfCopy->_childAccounts;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          accountType = [v11 accountType];
          identifier = [accountType identifier];
          v14 = [identifier isEqualToString:identifierCopy];

          if (v14)
          {
            [v6 addObject:v11];
          }
        }

        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    accountStore = obj;
    objc_sync_exit(obj);
  }

  else
  {
    objc_sync_exit(selfCopy);

    accountStore = [(ACAccount *)selfCopy accountStore];
    v6 = [accountStore childAccountsForAccount:selfCopy withTypeIdentifier:identifierCopy];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_setModID:(id)d
{
  dCopy = d;
  obj = self;
  objc_sync_enter(obj);
  modificationID = obj->_modificationID;
  obj->_modificationID = dCopy;

  objc_sync_exit(obj);
}

- (ACTrackedSet)trackedProvisionedDataclasses
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(ACMutableTrackedSet *)selfCopy->_trackedProvisionedDataclasses copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)changeTypeForProvisionedDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  parentAccount = [(ACAccount *)self parentAccount];

  if (parentAccount)
  {
    selfCopy = [(ACAccount *)self parentAccount];
    v7 = [(ACAccount *)selfCopy changeTypeForProvisionedDataclass:dataclassCopy];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_trackedEnabledDataclasses)
    {
      allModifications = [(ACTrackedSet *)selfCopy->_trackedProvisionedDataclasses allModifications];
      v9 = [allModifications objectForKeyedSubscript:dataclassCopy];
      v10 = v9;
      v11 = @"ACChangeTypeNone";
      if (v9)
      {
        v11 = v9;
      }

      v7 = v11;
    }

    else
    {
      v7 = @"ACChangeTypeNone";
    }

    objc_sync_exit(selfCopy);
  }

  return v7;
}

- (NSMutableSet)provisionedDataclasses
{
  parentAccount = [(ACAccount *)self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [(ACAccount *)self parentAccount];
    provisionedDataclasses = [parentAccount2 provisionedDataclasses];

    v6 = [provisionedDataclasses mutableCopy];
    accountType = [(ACAccount *)self accountType];
    supportedDataclasses = [accountType supportedDataclasses];
    [v6 intersectSet:supportedDataclasses];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_trackedProvisionedDataclasses)
    {
      v6 = [MEMORY[0x1E695DFA8] setWithTrackedSet:?];
    }

    else
    {
      v6 = 0;
    }

    objc_sync_exit(selfCopy);

    if (!v6)
    {
      v10 = selfCopy;
      objc_sync_enter(v10);
      [(ACAccount *)v10 _unsafe_loadProvisionedDataclasses];
      if (selfCopy->_trackedProvisionedDataclasses)
      {
        v6 = [MEMORY[0x1E695DFA8] setWithTrackedSet:?];
      }

      else
      {
        v6 = 0;
      }

      objc_sync_exit(v10);

      if (!v6)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      }
    }
  }

  return v6;
}

- (void)_unsafe_loadProvisionedDataclasses
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setProvisionedDataclasses:(id)dataclasses
{
  dataclassesCopy = dataclasses;
  v5 = _ACLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ACAccount setProvisionedDataclasses:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_alloc_init(ACMutableTrackedSet);
  trackedProvisionedDataclasses = selfCopy->_trackedProvisionedDataclasses;
  selfCopy->_trackedProvisionedDataclasses = v7;

  v9 = selfCopy->_trackedProvisionedDataclasses;
  allObjects = [dataclassesCopy allObjects];
  [(ACMutableTrackedSet *)v9 addObjectsFromArray:allObjects];

  selfCopy->_wasProvisionedDataclassesReset = 1;
  [(ACAccount *)selfCopy _unsafe_markPropertyDirty:@"provisionedDataclasses"];
  objc_sync_exit(selfCopy);
}

- (BOOL)isProvisionedForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  provisionedDataclasses = [(ACAccount *)self provisionedDataclasses];
  v6 = [provisionedDataclasses containsObject:dataclassCopy];

  return v6;
}

- (void)setProvisioned:(BOOL)provisioned forDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __41__ACAccount_setProvisioned_forDataclass___block_invoke;
  v18[3] = &unk_1E7976B98;
  provisionedCopy = provisioned;
  v7 = dataclassCopy;
  v19 = v7;
  selfCopy = self;
  v8 = MEMORY[0x1AC5B3C70](v18);
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if (selfCopy2->_trackedProvisionedDataclasses)
  {
    v8[2](v8);
    objc_sync_exit(selfCopy2);
  }

  else
  {
    objc_sync_exit(selfCopy2);

    accountStore = [(ACAccount *)selfCopy2 accountStore];
    v17 = 0;
    v11 = [accountStore provisionedDataclassesForAccount:selfCopy2 error:&v17];
    v12 = v17;

    if (v12)
    {
      v13 = _ACLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ACAccount _unsafe_loadProvisionedDataclasses];
      }
    }

    v14 = selfCopy2;
    objc_sync_enter(v14);
    if (!selfCopy2->_trackedProvisionedDataclasses)
    {
      if (v11)
      {
        v15 = [(ACTrackedSet *)[ACMutableTrackedSet alloc] initWithSet:v11];
      }

      else
      {
        v15 = objc_alloc_init(ACMutableTrackedSet);
      }

      trackedProvisionedDataclasses = selfCopy2->_trackedProvisionedDataclasses;
      selfCopy2->_trackedProvisionedDataclasses = v15;
    }

    (v8[2])(v8, selfCopy2->_trackedProvisionedDataclasses);
    objc_sync_exit(v14);

    selfCopy2 = v12;
  }
}

uint64_t __41__ACAccount_setProvisioned_forDataclass___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    [a2 addObject:v3];
  }

  else
  {
    [a2 removeObject:v3];
  }

  v4 = *(a1 + 40);

  return [v4 _unsafe_markPropertyDirty:@"provisionedDataclasses"];
}

- (ACTrackedSet)trackedEnabledDataclasses
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(ACMutableTrackedSet *)selfCopy->_trackedEnabledDataclasses copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)changeTypeForEnabledDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  parentAccount = [(ACAccount *)self parentAccount];

  if (parentAccount)
  {
    selfCopy = [(ACAccount *)self parentAccount];
    v7 = [(ACAccount *)selfCopy changeTypeForEnabledDataclass:dataclassCopy];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    trackedEnabledDataclasses = selfCopy->_trackedEnabledDataclasses;
    if (trackedEnabledDataclasses)
    {
      allModifications = [(ACTrackedSet *)trackedEnabledDataclasses allModifications];
      v10 = [allModifications objectForKeyedSubscript:dataclassCopy];
      v11 = v10;
      v12 = @"ACChangeTypeNone";
      if (v10)
      {
        v12 = v10;
      }

      v7 = v12;
    }

    else
    {
      v7 = @"ACChangeTypeNone";
    }

    objc_sync_exit(selfCopy);
  }

  return v7;
}

- (void)setEnabledDataclasses:(id)dataclasses
{
  dataclassesCopy = dataclasses;
  parentAccount = [(ACAccount *)self parentAccount];

  if (parentAccount)
  {
    [(ACAccount *)a2 setEnabledDataclasses:?];
  }

  v7 = _ACLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACAccount setEnabledDataclasses:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = objc_alloc_init(ACMutableTrackedSet);
  trackedEnabledDataclasses = selfCopy->_trackedEnabledDataclasses;
  selfCopy->_trackedEnabledDataclasses = v9;

  v11 = selfCopy->_trackedEnabledDataclasses;
  allObjects = [dataclassesCopy allObjects];
  [(ACMutableTrackedSet *)v11 addObjectsFromArray:allObjects];

  selfCopy->_wasEnabledDataclassesReset = 1;
  [(ACAccount *)selfCopy _unsafe_markPropertyDirty:@"enabledDataclasses"];
  objc_sync_exit(selfCopy);
}

- (BOOL)isEnabledForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  if ([dataclassCopy isEqualToString:@"com.apple.Dataclass.DeviceLocator"])
  {
    v5 = _ACLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ACAccount isEnabledForDataclass:];
    }
  }

  enabledDataclasses = [(ACAccount *)self enabledDataclasses];
  v7 = [enabledDataclasses containsObject:dataclassCopy];

  return v7;
}

- (void)setEnabled:(BOOL)enabled forDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  parentAccount = [(ACAccount *)self parentAccount];

  if (parentAccount)
  {
    [ACAccount setEnabled:a2 forDataclass:self];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __37__ACAccount_setEnabled_forDataclass___block_invoke;
  v20[3] = &unk_1E7976B98;
  enabledCopy = enabled;
  v9 = dataclassCopy;
  v21 = v9;
  selfCopy = self;
  v10 = MEMORY[0x1AC5B3C70](v20);
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if (selfCopy2->_trackedEnabledDataclasses)
  {
    v10[2](v10);
    objc_sync_exit(selfCopy2);
  }

  else
  {
    objc_sync_exit(selfCopy2);

    accountStore = [(ACAccount *)selfCopy2 accountStore];
    v19 = 0;
    v13 = [accountStore enabledDataclassesForAccount:selfCopy2 error:&v19];
    v14 = v19;

    if (v14)
    {
      v15 = _ACLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ACAccount _unsafe_loadEnabledDataclasses];
      }
    }

    v16 = selfCopy2;
    objc_sync_enter(v16);
    if (!selfCopy2->_trackedEnabledDataclasses)
    {
      if (v13)
      {
        v17 = [(ACTrackedSet *)[ACMutableTrackedSet alloc] initWithSet:v13];
      }

      else
      {
        v17 = objc_alloc_init(ACMutableTrackedSet);
      }

      trackedEnabledDataclasses = selfCopy2->_trackedEnabledDataclasses;
      selfCopy2->_trackedEnabledDataclasses = v17;
    }

    (v10[2])(v10, selfCopy2->_trackedEnabledDataclasses);
    objc_sync_exit(v16);

    selfCopy2 = v14;
  }
}

uint64_t __37__ACAccount_setEnabled_forDataclass___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    [a2 addObject:v3];
  }

  else
  {
    [a2 removeObject:v3];
  }

  v4 = *(a1 + 40);

  return [v4 _unsafe_markPropertyDirty:@"enabledDataclasses"];
}

- (BOOL)isEnabledToSyncDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  if ([(ACAccount *)self isEnabledForDataclass:dataclassCopy])
  {
    accountType = [(ACAccount *)self accountType];
    syncableDataclasses = [accountType syncableDataclasses];
    v7 = [syncableDataclasses containsObject:dataclassCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setDataclassProperties:(id)properties
{
  v26 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [propertiesCopy mutableCopy];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = selfCopy->_dataclassProperties;
  v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [(ACAccount *)selfCopy _markDataclassPropertyDirty:*(*(&v20 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = propertiesCopy;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [(ACAccount *)selfCopy _markDataclassPropertyDirty:*(*(&v16 + 1) + 8 * v14++), v16];
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  [(ACAccount *)selfCopy willChangeValueForKey:@"dataclassProperties"];
  objc_storeStrong(&selfCopy->_dataclassProperties, v6);
  [(ACAccount *)selfCopy didChangeValueForKey:@"dataclassProperties"];
  [(ACAccount *)selfCopy _unsafe_markPropertyDirty:@"dataclassProperties"];

  objc_sync_exit(selfCopy);
  v15 = *MEMORY[0x1E69E9840];
}

- (id)propertiesForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_dataclassProperties objectForKey:dataclassCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)setProperties:(id)properties forDataclass:(id)dataclass
{
  propertiesCopy = properties;
  dataclassCopy = dataclass;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(ACAccount *)selfCopy propertiesForDataclass:dataclassCopy];
  if (v8 != propertiesCopy && (!v8 || ([v8 isEqual:propertiesCopy] & 1) == 0))
  {
    dataclassProperties = selfCopy->_dataclassProperties;
    if (!dataclassProperties)
    {
      [(ACAccount *)selfCopy willChangeValueForKey:@"dataclassProperties"];
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = selfCopy->_dataclassProperties;
      selfCopy->_dataclassProperties = v10;

      [(ACAccount *)selfCopy didChangeValueForKey:@"dataclassProperties"];
      dataclassProperties = selfCopy->_dataclassProperties;
    }

    [(NSMutableDictionary *)dataclassProperties setObject:propertiesCopy forKey:dataclassCopy];
    [(ACAccount *)selfCopy _markDataclassPropertyDirty:dataclassCopy];
    [(ACAccount *)selfCopy _unsafe_markPropertyDirty:@"dataclassProperties"];
  }

  objc_sync_exit(selfCopy);
}

- (void)_setObjectID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [dCopy copy];
  objectID = selfCopy->_objectID;
  selfCopy->_objectID = v5;

  objc_sync_exit(selfCopy);
}

- (void)takeValuesFromModifiedAccount:(id)account
{
  accountCopy = account;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dirtyProperties = [accountCopy dirtyProperties];
  v6 = [dirtyProperties containsObject:@"accountDescription"];

  if (v6)
  {
    accountDescription = [accountCopy accountDescription];
    v8 = [accountDescription copy];
    accountDescription = selfCopy->_accountDescription;
    selfCopy->_accountDescription = v8;
  }

  dirtyProperties2 = [accountCopy dirtyProperties];
  v11 = [dirtyProperties2 containsObject:@"username"];

  if (v11)
  {
    username = [accountCopy username];
    v13 = [username copy];
    username = selfCopy->_username;
    selfCopy->_username = v13;
  }

  dirtyProperties3 = [accountCopy dirtyProperties];
  v16 = [dirtyProperties3 containsObject:@"accountProperties"];

  if (v16)
  {
    [(ACAccount *)selfCopy willChangeValueForKey:@"accountProperties"];
    accountProperties = [accountCopy accountProperties];
    v18 = [accountProperties mutableCopy];
    properties = selfCopy->_properties;
    selfCopy->_properties = v18;

    [(ACAccount *)selfCopy didChangeValueForKey:@"accountProperties"];
  }

  dirtyProperties4 = [accountCopy dirtyProperties];
  v21 = [dirtyProperties4 containsObject:@"owningBundleID"];

  if (v21)
  {
    owningBundleID = [accountCopy owningBundleID];
    v23 = [owningBundleID copy];
    owningBundleID = selfCopy->_owningBundleID;
    selfCopy->_owningBundleID = v23;
  }

  dirtyProperties5 = [accountCopy dirtyProperties];
  v26 = [dirtyProperties5 containsObject:@"dataclassProperties"];

  if (v26)
  {
    [(ACAccount *)selfCopy willChangeValueForKey:@"dataclassProperties"];
    dataclassProperties = [accountCopy dataclassProperties];
    v28 = [dataclassProperties mutableCopy];
    dataclassProperties = selfCopy->_dataclassProperties;
    selfCopy->_dataclassProperties = v28;

    [(ACAccount *)selfCopy didChangeValueForKey:@"dataclassProperties"];
  }

  dirtyProperties6 = [accountCopy dirtyProperties];
  v31 = [dirtyProperties6 containsObject:@"authenticated"];

  if (v31)
  {
    selfCopy->_authenticated = [accountCopy isAuthenticated];
  }

  dirtyProperties7 = [accountCopy dirtyProperties];
  v33 = [dirtyProperties7 containsObject:@"lastCredentialRenewalRejectionDate"];

  if (v33)
  {
    lastCredentialRenewalRejectionDate = [accountCopy lastCredentialRenewalRejectionDate];
    lastCredentialRenewalRejectionDate = selfCopy->_lastCredentialRenewalRejectionDate;
    selfCopy->_lastCredentialRenewalRejectionDate = lastCredentialRenewalRejectionDate;
  }

  dirtyProperties8 = [accountCopy dirtyProperties];
  v37 = [dirtyProperties8 containsObject:@"active"];

  if (v37)
  {
    selfCopy->_active = [accountCopy isActive];
  }

  dirtyProperties9 = [accountCopy dirtyProperties];
  v39 = [dirtyProperties9 containsObject:@"warmingUp"];

  if (v39)
  {
    selfCopy->_warmingUp = [accountCopy isWarmingUp];
  }

  dirtyProperties10 = [accountCopy dirtyProperties];
  if ([dirtyProperties10 containsObject:@"accountType"])
  {
    accountType = [accountCopy accountType];
    identifier = [(ACAccount *)selfCopy identifier];
    v43 = [accountType isEqual:identifier];

    if ((v43 & 1) == 0)
    {
      [(ACAccount *)selfCopy willChangeValueForKey:@"accountType"];
      accountType2 = [accountCopy accountType];
      accountType = selfCopy->_accountType;
      selfCopy->_accountType = accountType2;

      [(ACAccount *)selfCopy didChangeValueForKey:@"accountType"];
    }
  }

  else
  {
  }

  dirtyProperties11 = [accountCopy dirtyProperties];
  v47 = [dirtyProperties11 containsObject:@"credential"];

  if (v47)
  {
    internalCredential = [accountCopy internalCredential];
    credential = selfCopy->_credential;
    selfCopy->_credential = internalCredential;

    if (!selfCopy->_credentialsDidChangeObserver)
    {
      [(ACAccount *)selfCopy _installCredentialsChangedObserver];
    }
  }

  dirtyProperties12 = [accountCopy dirtyProperties];
  v51 = [dirtyProperties12 containsObject:@"parent"];

  if (v51)
  {
    parentAccount = [accountCopy parentAccount];
    parentAccount = selfCopy->_parentAccount;
    selfCopy->_parentAccount = parentAccount;
  }

  dirtyProperties13 = [accountCopy dirtyProperties];
  v55 = [dirtyProperties13 containsObject:@"provisionedDataclasses"];

  if (v55)
  {
    trackedProvisionedDataclasses = [accountCopy trackedProvisionedDataclasses];
    v57 = [trackedProvisionedDataclasses mutableCopy];
    trackedProvisionedDataclasses = selfCopy->_trackedProvisionedDataclasses;
    selfCopy->_trackedProvisionedDataclasses = v57;

    selfCopy->_wasProvisionedDataclassesReset = accountCopy[240];
  }

  dirtyProperties14 = [accountCopy dirtyProperties];
  v60 = [dirtyProperties14 containsObject:@"enabledDataclasses"];

  if (v60)
  {
    trackedEnabledDataclasses = [accountCopy trackedEnabledDataclasses];
    v62 = [trackedEnabledDataclasses mutableCopy];
    trackedEnabledDataclasses = selfCopy->_trackedEnabledDataclasses;
    selfCopy->_trackedEnabledDataclasses = v62;

    selfCopy->_wasEnabledDataclassesReset = accountCopy[241];
  }

  dirtyProperties15 = [accountCopy dirtyProperties];
  v65 = [dirtyProperties15 containsObject:@"credentialType"];

  if (v65)
  {
    credentialType = [accountCopy credentialType];
    credentialType = selfCopy->_credentialType;
    selfCopy->_credentialType = credentialType;
  }

  dirtyProperties16 = [accountCopy dirtyProperties];
  v69 = [dirtyProperties16 containsObject:@"authenticationType"];

  if (v69)
  {
    authenticationType = [accountCopy authenticationType];
    authenticationType = selfCopy->_authenticationType;
    selfCopy->_authenticationType = authenticationType;
  }

  dirtyProperties17 = [accountCopy dirtyProperties];
  v73 = [dirtyProperties17 containsObject:@"modificationID"];

  if (v73)
  {
    modificationID = [accountCopy modificationID];
    modificationID = selfCopy->_modificationID;
    selfCopy->_modificationID = modificationID;
  }

  dirtyProperties = selfCopy->_dirtyProperties;
  if (!dirtyProperties)
  {
    v77 = objc_opt_new();
    v78 = selfCopy->_dirtyProperties;
    selfCopy->_dirtyProperties = v77;

    dirtyProperties = selfCopy->_dirtyProperties;
  }

  dirtyProperties18 = [accountCopy dirtyProperties];
  v80 = [(NSMutableSet *)dirtyProperties setByAddingObjectsFromSet:dirtyProperties18];
  v81 = [v80 mutableCopy];
  v82 = selfCopy->_dirtyProperties;
  selfCopy->_dirtyProperties = v81;

  dirtyAccountProperties = selfCopy->_dirtyAccountProperties;
  if (!dirtyAccountProperties)
  {
    v84 = objc_opt_new();
    v85 = selfCopy->_dirtyAccountProperties;
    selfCopy->_dirtyAccountProperties = v84;

    dirtyAccountProperties = selfCopy->_dirtyAccountProperties;
  }

  dirtyAccountProperties = [accountCopy dirtyAccountProperties];
  v87 = [(NSMutableSet *)dirtyAccountProperties setByAddingObjectsFromSet:dirtyAccountProperties];
  v88 = [v87 mutableCopy];
  v89 = selfCopy->_dirtyAccountProperties;
  selfCopy->_dirtyAccountProperties = v88;

  dirtyDataclassProperties = selfCopy->_dirtyDataclassProperties;
  if (!dirtyDataclassProperties)
  {
    v91 = objc_opt_new();
    v92 = selfCopy->_dirtyDataclassProperties;
    selfCopy->_dirtyDataclassProperties = v91;

    dirtyDataclassProperties = selfCopy->_dirtyDataclassProperties;
  }

  dirtyDataclassProperties = [accountCopy dirtyDataclassProperties];
  v94 = [(NSMutableSet *)dirtyDataclassProperties setByAddingObjectsFromSet:dirtyDataclassProperties];
  v95 = [v94 mutableCopy];
  v96 = selfCopy->_dirtyDataclassProperties;
  selfCopy->_dirtyDataclassProperties = v95;

  objc_sync_exit(selfCopy);
}

- (void)refresh
{
  v100 = *MEMORY[0x1E69E9840];
  dirtyProperties = [(ACAccount *)self dirtyProperties];
  v4 = [dirtyProperties count];

  if (v4)
  {
    accountStore = [(ACAccount *)self accountStore];
    identifier = [(ACAccount *)self identifier];
    v79 = [accountStore accountWithIdentifier:identifier];

    if (v79)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      if (([(NSMutableSet *)selfCopy->_dirtyProperties containsObject:@"accountDescription"]& 1) == 0)
      {
        accountDescription = [v79 accountDescription];
        v9 = [accountDescription copy];
        accountDescription = selfCopy->_accountDescription;
        selfCopy->_accountDescription = v9;
      }

      if (([(NSMutableSet *)selfCopy->_dirtyProperties containsObject:@"username"]& 1) == 0)
      {
        username = [v79 username];
        v12 = [username copy];
        username = selfCopy->_username;
        selfCopy->_username = v12;
      }

      [(ACAccount *)selfCopy willChangeValueForKey:@"accountProperties"];
      accountProperties = [v79 accountProperties];
      allKeys = [accountProperties allKeys];

      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v16 = allKeys;
      v17 = [v16 countByEnumeratingWithState:&v92 objects:v99 count:16];
      if (v17)
      {
        v18 = *v93;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v93 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v92 + 1) + 8 * i);
            dirtyAccountProperties = [(ACAccount *)selfCopy dirtyAccountProperties];
            v22 = [dirtyAccountProperties containsObject:v20];

            if ((v22 & 1) == 0)
            {
              v23 = [v79 objectForKeyedSubscript:v20];
              [(NSMutableDictionary *)selfCopy->_properties setObject:v23 forKeyedSubscript:v20];
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v92 objects:v99 count:16];
        }

        while (v17);
      }

      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      accountProperties2 = [(ACAccount *)selfCopy accountProperties];
      allKeys2 = [accountProperties2 allKeys];

      v26 = [allKeys2 countByEnumeratingWithState:&v88 objects:v98 count:16];
      if (v26)
      {
        v27 = *v89;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v89 != v27)
            {
              objc_enumerationMutation(allKeys2);
            }

            v29 = *(*(&v88 + 1) + 8 * j);
            dirtyAccountProperties2 = [(ACAccount *)selfCopy dirtyAccountProperties];
            v31 = [dirtyAccountProperties2 containsObject:v29];

            if ((v31 & 1) == 0 && ([v16 containsObject:v29] & 1) == 0)
            {
              [(NSMutableDictionary *)selfCopy->_properties removeObjectForKey:v29];
            }
          }

          v26 = [allKeys2 countByEnumeratingWithState:&v88 objects:v98 count:16];
        }

        while (v26);
      }

      [(ACAccount *)selfCopy didChangeValueForKey:@"accountProperties"];
      if (([(NSMutableSet *)selfCopy->_dirtyProperties containsObject:@"owningBundleID"]& 1) == 0)
      {
        owningBundleID = [v79 owningBundleID];
        v33 = [owningBundleID copy];
        owningBundleID = selfCopy->_owningBundleID;
        selfCopy->_owningBundleID = v33;
      }

      [(ACAccount *)selfCopy willChangeValueForKey:@"dataclassProperties"];
      dataclassProperties = [v79 dataclassProperties];
      allKeys3 = [dataclassProperties allKeys];

      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v37 = allKeys3;
      v38 = [v37 countByEnumeratingWithState:&v84 objects:v97 count:16];
      if (v38)
      {
        v39 = *v85;
        do
        {
          for (k = 0; k != v38; ++k)
          {
            if (*v85 != v39)
            {
              objc_enumerationMutation(v37);
            }

            v41 = *(*(&v84 + 1) + 8 * k);
            dirtyDataclassProperties = [(ACAccount *)selfCopy dirtyDataclassProperties];
            v43 = [dirtyDataclassProperties containsObject:v41];

            if ((v43 & 1) == 0)
            {
              dataclassProperties2 = [v79 dataclassProperties];
              v45 = [dataclassProperties2 objectForKeyedSubscript:v41];
              [(NSMutableDictionary *)selfCopy->_dataclassProperties setObject:v45 forKeyedSubscript:v41];
            }
          }

          v38 = [v37 countByEnumeratingWithState:&v84 objects:v97 count:16];
        }

        while (v38);
      }

      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      accountProperties3 = [(ACAccount *)selfCopy accountProperties];
      allKeys4 = [accountProperties3 allKeys];

      v48 = [allKeys4 countByEnumeratingWithState:&v80 objects:v96 count:16];
      if (v48)
      {
        v49 = *v81;
        do
        {
          for (m = 0; m != v48; ++m)
          {
            if (*v81 != v49)
            {
              objc_enumerationMutation(allKeys4);
            }

            v51 = *(*(&v80 + 1) + 8 * m);
            dirtyDataclassProperties2 = [(ACAccount *)selfCopy dirtyDataclassProperties];
            v53 = [dirtyDataclassProperties2 containsObject:v51];

            if ((v53 & 1) == 0 && ([v37 containsObject:v51] & 1) == 0)
            {
              [(NSMutableDictionary *)selfCopy->_dataclassProperties removeObjectForKey:v51];
            }
          }

          v48 = [allKeys4 countByEnumeratingWithState:&v80 objects:v96 count:16];
        }

        while (v48);
      }

      [(ACAccount *)selfCopy didChangeValueForKey:@"dataclassProperties"];
      if (([(NSMutableSet *)selfCopy->_dirtyProperties containsObject:@"dataclassProperties"]& 1) == 0)
      {
        dataclassProperties3 = [v79 dataclassProperties];
        v55 = [dataclassProperties3 mutableCopy];
        dataclassProperties = selfCopy->_dataclassProperties;
        selfCopy->_dataclassProperties = v55;
      }

      if (([(NSMutableSet *)selfCopy->_dirtyProperties containsObject:@"authenticated"]& 1) == 0)
      {
        selfCopy->_authenticated = [v79 isAuthenticated];
      }

      if (([(NSMutableSet *)selfCopy->_dirtyProperties containsObject:@"lastCredentialRenewalRejectionDate"]& 1) == 0)
      {
        lastCredentialRenewalRejectionDate = [v79 lastCredentialRenewalRejectionDate];
        lastCredentialRenewalRejectionDate = selfCopy->_lastCredentialRenewalRejectionDate;
        selfCopy->_lastCredentialRenewalRejectionDate = lastCredentialRenewalRejectionDate;
      }

      if (([(NSMutableSet *)selfCopy->_dirtyProperties containsObject:@"active"]& 1) == 0)
      {
        selfCopy->_active = [v79 isActive];
      }

      if (([(NSMutableSet *)selfCopy->_dirtyProperties containsObject:@"warmingUp"]& 1) == 0)
      {
        selfCopy->_warmingUp = [v79 isWarmingUp];
      }

      objectID = [v79 objectID];
      v60 = [objectID copy];
      objectID = selfCopy->_objectID;
      selfCopy->_objectID = v60;

      if (([(NSMutableSet *)selfCopy->_dirtyProperties containsObject:@"accountType"]& 1) == 0)
      {
        accountType = [v79 accountType];
        accountType = selfCopy->_accountType;
        selfCopy->_accountType = accountType;
      }

      if (([(NSMutableSet *)selfCopy->_dirtyProperties containsObject:@"credential"]& 1) == 0)
      {
        credential = selfCopy->_credential;
        selfCopy->_credential = 0;
      }

      if (([(NSMutableSet *)selfCopy->_dirtyProperties containsObject:@"authenticationType"]& 1) == 0)
      {
        authenticationType = [v79 authenticationType];
        authenticationType = selfCopy->_authenticationType;
        selfCopy->_authenticationType = authenticationType;
      }

      if (([(NSMutableSet *)selfCopy->_dirtyProperties containsObject:@"credentialType"]& 1) == 0)
      {
        credentialType = [v79 credentialType];
        credentialType = selfCopy->_credentialType;
        selfCopy->_credentialType = credentialType;
      }

      if (([(NSMutableSet *)selfCopy->_dirtyProperties containsObject:@"parent"]& 1) == 0)
      {
        parentAccount = [v79 parentAccount];
        parentAccount = selfCopy->_parentAccount;
        selfCopy->_parentAccount = parentAccount;
      }

      if (([(NSMutableSet *)selfCopy->_dirtyProperties containsObject:@"modificationID"]& 1) == 0)
      {
        modificationID = [v79 modificationID];
        v72 = [modificationID copy];
        modificationID = selfCopy->_modificationID;
        selfCopy->_modificationID = v72;
      }

      if (([(NSMutableSet *)selfCopy->_dirtyProperties containsObject:@"provisionedDataclasses"]& 1) == 0)
      {
        trackedProvisionedDataclasses = selfCopy->_trackedProvisionedDataclasses;
        selfCopy->_trackedProvisionedDataclasses = 0;

        selfCopy->_wasProvisionedDataclassesReset = 0;
      }

      if (([(NSMutableSet *)selfCopy->_dirtyProperties containsObject:@"enabledDataclasses"]& 1) == 0)
      {
        trackedEnabledDataclasses = selfCopy->_trackedEnabledDataclasses;
        selfCopy->_trackedEnabledDataclasses = 0;

        selfCopy->_wasEnabledDataclassesReset = 0;
      }

      childAccounts = selfCopy->_childAccounts;
      selfCopy->_childAccounts = 0;

      selfCopy->_haveCheckedForChildAccounts = 0;
      objc_sync_exit(selfCopy);
    }

    v77 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v78 = *MEMORY[0x1E69E9840];

    [(ACAccount *)self reload];
  }
}

- (void)_loadAllCachedProperties
{
  enabledDataclasses = [(ACAccount *)self enabledDataclasses];
  provisionedDataclasses = [(ACAccount *)self provisionedDataclasses];
  credential = [(ACAccount *)self credential];
  parentAccount = [(ACAccount *)self parentAccount];
  [parentAccount _loadAllCachedProperties];
}

- (id)accountByCleaningThirdPartyTransformations
{
  accountPropertiesTransformer = [(ACAccount *)self accountPropertiesTransformer];

  if (accountPropertiesTransformer)
  {
    selfCopy = [(ACAccount *)self copy];
    properties = selfCopy->_properties;
    v6 = (*(selfCopy->_accountPropertiesTransformer + 2))();
    v7 = [v6 mutableCopy];
    v8 = selfCopy->_properties;
    selfCopy->_properties = v7;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (NSString)clientToken
{
  parentAccount = [(ACAccount *)self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [(ACAccount *)self parentAccount];
    clientToken = [(NSString *)parentAccount2 clientToken];
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = selfCopy->_clientToken;
    objc_sync_exit(selfCopy);

    if (!v7)
    {
      if (selfCopy->_haveCheckedForClientToken)
      {
        v7 = 0;
      }

      else
      {
        selfCopy->_haveCheckedForClientToken = 1;
        accountStore = [(ACAccount *)selfCopy accountStore];
        v7 = [accountStore clientTokenForAccount:selfCopy];
      }
    }

    v9 = selfCopy;
    objc_sync_enter(v9);
    clientToken = selfCopy->_clientToken;
    selfCopy->_clientToken = v7;
    parentAccount2 = v7;

    clientToken = selfCopy->_clientToken;
    objc_sync_exit(v9);
  }

  return clientToken;
}

- (BOOL)addClientToken:(id)token
{
  tokenCopy = token;
  parentAccount = [(ACAccount *)self parentAccount];

  v7 = parentAccount == 0;
  if (parentAccount)
  {
    selfCopy = [(ACAccount *)self parentAccount];
    [(ACAccount *)selfCopy addClientToken:tokenCopy];
  }

  else
  {
    if (!tokenCopy || (-[ACAccount accountStore](self, "accountStore"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 addClientToken:tokenCopy forAccount:self], v9, !v10))
    {
      v7 = 0;
      goto LABEL_8;
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_clientToken, token);
    objc_sync_exit(selfCopy);
  }

LABEL_8:
  return v7;
}

- (id)defaultAutodiscoverDomainForChildType:(id)type
{
  typeCopy = type;
  accountType = [(ACAccount *)self accountType];
  identifier = [accountType identifier];

  v7 = @"com.apple.account.IMAP";
  v8 = @"com.apple.account.CalDAV";
  v9 = @"com.apple.account.CardDAV";
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __51__ACAccount_defaultAutodiscoverDomainForChildType___block_invoke;
  v25 = &unk_1E7976BC0;
  v10 = v7;
  v26 = v10;
  v11 = v8;
  v27 = v11;
  v12 = v9;
  v28 = v12;
  v29 = @"fallback";
  if (defaultAutodiscoverDomainForChildType__onceToken != -1)
  {
    dispatch_once(&defaultAutodiscoverDomainForChildType__onceToken, &v22);
  }

  v13 = [(ACAccount *)self username:v22];
  v14 = [v13 containsString:@"@yahoo.co.jp"];

  if (!v14)
  {
    goto LABEL_20;
  }

  if (([(__CFString *)typeCopy isEqualToString:v11]& 1) != 0)
  {
    v15 = @"caldav.calendar.yahoo.co.jp";
    goto LABEL_15;
  }

  if (([(__CFString *)typeCopy isEqualToString:v12]& 1) != 0)
  {
    v15 = @"carddav.address.yahoo.co.jp";
  }

  else
  {
LABEL_20:
    if (([(__CFString *)typeCopy isEqualToString:@"com.apple.account.POP"]& 1) != 0 || [(__CFString *)typeCopy isEqualToString:@"com.apple.account.SMTP"])
    {
      v16 = v10;

      typeCopy = v16;
    }

    v17 = [defaultAutodiscoverDomainForChildType__domainMap objectForKeyedSubscript:identifier];
    v18 = [v17 objectForKeyedSubscript:typeCopy];
    v19 = v18;
    if (v18)
    {
      v15 = v18;
    }

    else
    {
      v20 = [defaultAutodiscoverDomainForChildType__domainMap objectForKeyedSubscript:identifier];
      v15 = [v20 objectForKeyedSubscript:@"fallback"];
    }
  }

LABEL_15:

  return v15;
}

void __51__ACAccount_defaultAutodiscoverDomainForChildType___block_invoke(uint64_t a1)
{
  v35[7] = *MEMORY[0x1E69E9840];
  v30 = *(a1 + 32);
  v31 = *(a1 + 40);
  v33[0] = @"gmail.com";
  v33[1] = @"apidata.googleusercontent.com";
  v32 = *(a1 + 56);
  v33[2] = @"www.googleapis.com";
  v33[3] = @"google.com";
  v34[0] = @"com.apple.account.Google";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v30 count:4];
  v35[0] = v2;
  v34[1] = @"com.apple.account.aol";
  v27 = *(a1 + 40);
  v29[0] = @"caldav.aol.com";
  v29[1] = @"carddav.aol.com";
  v28 = *(a1 + 56);
  v29[2] = @"aol.com";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v27 count:3];
  v35[1] = v3;
  v34[2] = @"com.apple.account.Yahoo";
  v24 = *(a1 + 40);
  v26[0] = @"caldav.calendar.yahoo.com";
  v26[1] = @"carddav.address.yahoo.com";
  v25 = *(a1 + 56);
  v26[2] = @"yahoo.com";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v24 count:3];
  v35[2] = v4;
  v34[3] = @"com.apple.facebook";
  v21 = *(a1 + 40);
  v23[0] = @"webdav.facebook.com";
  v23[1] = @"webdav.facebook.com";
  v22 = *(a1 + 56);
  v23[2] = @"facebook.com";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v21 count:3];
  v35[3] = v5;
  v34[4] = @"com.apple.account.qq";
  v18 = *(a1 + 40);
  v20[0] = @"dav.qq.com";
  v20[1] = @"dav.qq.com";
  v19 = *(a1 + 56);
  v20[2] = @"qq.com";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v18 count:3];
  v35[4] = v6;
  v34[5] = @"com.apple.account.126";
  v15 = *(a1 + 40);
  v17[0] = @"caldav.126.com";
  v17[1] = @"contacts.126.com";
  v16 = *(a1 + 56);
  v17[2] = @"126.com";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v15 count:3];
  v35[5] = v7;
  v34[6] = @"com.apple.account.163";
  v12 = *(a1 + 40);
  v14[0] = @"caldav.163.com";
  v14[1] = @"contacts.163.com";
  v13 = *(a1 + 56);
  v14[2] = @"163.com";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v12 count:3];
  v35[6] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:7];
  v10 = defaultAutodiscoverDomainForChildType__domainMap;
  defaultAutodiscoverDomainForChildType__domainMap = v9;

  v11 = *MEMORY[0x1E69E9840];
}

- (NSSet)dirtyAccountProperties
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_dirtyAccountProperties copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSSet)dirtyDataclassProperties
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_dirtyDataclassProperties copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)shortDebugName
{
  v3 = MEMORY[0x1E696AEC0];
  username = [(ACAccount *)self username];
  v5 = ACHashedString(username);
  identifier = [(ACAccount *)self identifier];
  v7 = [v3 stringWithFormat:@"%@ (%@)", v5, identifier];

  return v7;
}

- (void)_applyDirtyStateFromAccount:(id)account
{
  v46 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  dirtyProperties = [accountCopy dirtyProperties];
  v7 = [dirtyProperties countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v7)
  {
    v8 = *v40;
    do
    {
      v9 = 0;
      do
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(dirtyProperties);
        }

        [(ACAccount *)selfCopy _unsafe_markPropertyDirty:*(*(&v39 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [dirtyProperties countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v7);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  dirtyAccountProperties = [accountCopy dirtyAccountProperties];
  v11 = [dirtyAccountProperties countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v11)
  {
    v12 = *v36;
    do
    {
      v13 = 0;
      do
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(dirtyAccountProperties);
        }

        [(ACAccount *)selfCopy _unsafe_markAccountPropertyDirty:*(*(&v35 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [dirtyAccountProperties countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v11);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  dirtyDataclassProperties = [accountCopy dirtyDataclassProperties];
  v15 = [dirtyDataclassProperties countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v15)
  {
    v16 = *v32;
    do
    {
      v17 = 0;
      do
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(dirtyDataclassProperties);
        }

        [(ACAccount *)selfCopy _unsafe_markDataclassPropertyDirty:*(*(&v31 + 1) + 8 * v17++)];
      }

      while (v15 != v17);
      v15 = [dirtyDataclassProperties countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v15);
  }

  trackedEnabledDataclasses = [accountCopy trackedEnabledDataclasses];
  if (trackedEnabledDataclasses)
  {
    trackedEnabledDataclasses2 = [(ACAccount *)selfCopy trackedEnabledDataclasses];
    v20 = trackedEnabledDataclasses2 == 0;

    if (v20)
    {
      [(ACAccount *)selfCopy _unsafe_loadEnabledDataclasses];
    }
  }

  trackedEnabledDataclasses3 = [accountCopy trackedEnabledDataclasses];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __41__ACAccount__applyDirtyStateFromAccount___block_invoke;
  v30[3] = &unk_1E7976BE8;
  v30[4] = selfCopy;
  [trackedEnabledDataclasses3 enumerateModificationsUsingBlock:v30];

  trackedProvisionedDataclasses = [accountCopy trackedProvisionedDataclasses];
  if (trackedProvisionedDataclasses)
  {
    trackedProvisionedDataclasses2 = [(ACAccount *)selfCopy trackedProvisionedDataclasses];
    v24 = trackedProvisionedDataclasses2 == 0;

    if (v24)
    {
      [(ACAccount *)selfCopy _unsafe_loadProvisionedDataclasses];
    }
  }

  trackedProvisionedDataclasses3 = [accountCopy trackedProvisionedDataclasses];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __41__ACAccount__applyDirtyStateFromAccount___block_invoke_2;
  v29[3] = &unk_1E7976BE8;
  v29[4] = selfCopy;
  [trackedProvisionedDataclasses3 enumerateModificationsUsingBlock:v29];

  internalCredential = [accountCopy internalCredential];
  credential = selfCopy->_credential;
  selfCopy->_credential = internalCredential;

  objc_sync_exit(selfCopy);
  v28 = *MEMORY[0x1E69E9840];
}

void __41__ACAccount__applyDirtyStateFromAccount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 isEqualToString:@"ACChangeTypeAdded"])
  {
    [*(*(a1 + 32) + 184) addObject:v6];
  }

  else if ([v5 isEqualToString:@"ACChangeTypeRemoved"])
  {
    [*(*(a1 + 32) + 184) removeObject:v6];
  }
}

void __41__ACAccount__applyDirtyStateFromAccount___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 isEqualToString:@"ACChangeTypeAdded"])
  {
    [*(*(a1 + 32) + 168) addObject:v6];
  }

  else if ([v5 isEqualToString:@"ACChangeTypeRemoved"])
  {
    [*(*(a1 + 32) + 168) removeObject:v6];
  }
}

- (BOOL)_isDifferentFrom:(id)from
{
  v52 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (fromCopy)
  {
    dirtyProperties = [fromCopy dirtyProperties];
    v7 = [dirtyProperties copy];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v9)
    {
      v10 = *v48;
      do
      {
        v11 = 0;
        do
        {
          if (*v48 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v47 + 1) + 8 * v11);
          if ([v12 isEqualToString:@"lastCredentialRenewalRejectionDate"])
          {
            lastCredentialRenewalRejectionDate = selfCopy->_lastCredentialRenewalRejectionDate;
            lastCredentialRenewalRejectionDate = [fromCopy lastCredentialRenewalRejectionDate];
            v15 = lastCredentialRenewalRejectionDate;
            v16 = lastCredentialRenewalRejectionDate;
            v17 = v16;
            if (v15 && v16)
            {
LABEL_10:
              if (([v15 isEqual:v17] & 1) == 0)
              {
                goto LABEL_60;
              }

LABEL_37:

              goto LABEL_38;
            }

LABEL_36:
            if (v15 | v17)
            {
LABEL_60:

LABEL_61:
              v42 = 1;
              goto LABEL_62;
            }

            goto LABEL_37;
          }

          if ([v12 isEqualToString:@"dataclassProperties"])
          {
            goto LABEL_61;
          }

          if ([v12 isEqualToString:@"active"])
          {
            active = selfCopy->_active;
            isActive = [fromCopy isActive];
            goto LABEL_19;
          }

          if ([v12 isEqualToString:@"warmingUp"])
          {
            active = selfCopy->_warmingUp;
            isActive = [fromCopy isWarmingUp];
            goto LABEL_19;
          }

          if ([v12 isEqualToString:@"authenticated"])
          {
            active = selfCopy->_authenticated;
            isActive = [fromCopy isAuthenticated];
            goto LABEL_19;
          }

          if ([v12 isEqualToString:@"identifier"])
          {
            identifier = selfCopy->_identifier;
            identifier = [fromCopy identifier];
            v15 = identifier;
            v22 = identifier;
            v17 = v22;
            if (v15 && v22)
            {
              goto LABEL_10;
            }

            goto LABEL_36;
          }

          if ([v12 isEqualToString:@"date"])
          {
            date = selfCopy->_date;
            creationDate = [fromCopy creationDate];
            v15 = date;
            v25 = creationDate;
            v17 = v25;
            if (v15 && v25)
            {
              goto LABEL_10;
            }

            goto LABEL_36;
          }

          if ([v12 isEqualToString:@"authenticationType"])
          {
            authenticationType = selfCopy->_authenticationType;
            authenticationType = [fromCopy authenticationType];
            v15 = authenticationType;
            v28 = authenticationType;
            v17 = v28;
            if (v15 && v28)
            {
              goto LABEL_10;
            }

            goto LABEL_36;
          }

          if ([v12 isEqualToString:@"accountDescription"])
          {
            accountDescription = selfCopy->_accountDescription;
            accountDescription = [fromCopy accountDescription];
            v15 = accountDescription;
            v31 = accountDescription;
            v17 = v31;
            if (v15 && v31)
            {
              goto LABEL_10;
            }

            goto LABEL_36;
          }

          if ([v12 isEqualToString:@"supportsAuthentication"])
          {
            active = selfCopy->_supportsAuthentication;
            isActive = [fromCopy supportsAuthentication];
LABEL_19:
            if (active != isActive)
            {
              goto LABEL_61;
            }

            goto LABEL_38;
          }

          if ([v12 isEqualToString:@"owningBundleID"])
          {
            owningBundleID = selfCopy->_owningBundleID;
            owningBundleID = [fromCopy owningBundleID];
            v34 = ACIsEqualOrNil(owningBundleID, owningBundleID);

            goto LABEL_48;
          }

          if ([v12 isEqualToString:@"username"])
          {
            username = selfCopy->_username;
            username = [fromCopy username];
            v34 = ACIsEqualOrNil(username, username);

            goto LABEL_48;
          }

          if ([v12 isEqualToString:@"credentialType"])
          {
            credentialType = selfCopy->_credentialType;
            credentialType = [fromCopy credentialType];
            v34 = ACIsEqualOrNil(credentialType, credentialType);

LABEL_48:
            if ((v34 & 1) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_38;
          }

          if ([v12 isEqualToString:@"provisionedDataclasses"])
          {
            goto LABEL_61;
          }

          if (![v12 isEqualToString:@"accountType"])
          {
            if (([v12 isEqualToString:@"enabledDataclasses"] & 1) != 0 || !objc_msgSend(v12, "isEqualToString:", @"visible"))
            {
              goto LABEL_61;
            }

            active = selfCopy->_visible;
            isActive = [fromCopy isVisible];
            goto LABEL_19;
          }

          identifier2 = [(ACAccountType *)selfCopy->_accountType identifier];
          accountType = [fromCopy accountType];
          identifier3 = [accountType identifier];
          v45 = ACIsEqualOrNil(identifier2, identifier3);

          if ((v45 & 1) == 0)
          {
            goto LABEL_61;
          }

LABEL_38:
          ++v11;
        }

        while (v9 != v11);
        v41 = [v8 countByEnumeratingWithState:&v47 objects:v51 count:16];
        v9 = v41;
      }

      while (v41);
    }

    v42 = 0;
LABEL_62:
  }

  else
  {
    v42 = 0;
  }

  objc_sync_exit(selfCopy);

  v43 = *MEMORY[0x1E69E9840];
  return v42;
}

- (void)setSecIdentity:(__SecIdentity *)identity
{
  if (identity)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B3D0], identity);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B320], *MEMORY[0x1E695E4D0]);
    result = 0;
    v6 = SecItemAdd(Mutable, &result);
    if (v6 == -25299)
    {
      v6 = SecItemCopyMatching(Mutable, &result);
    }

    v7 = result;
    if (!result || v6)
    {
      v7 = _ACLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [ACAccount setSecIdentity:v6];
      }
    }

    else
    {
      [(ACAccount *)self setObject:result forKeyedSubscript:@"SecIdentityPersistentRef"];
    }

    CFRelease(Mutable);
  }

  else
  {

    [ACAccount setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  }
}

- (__SecIdentity)copySecIdentity
{
  result = 0;
  v2 = [(ACAccount *)self objectForKeyedSubscript:@"SecIdentityPersistentRef"];

  if (!v2)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B010]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B328], *MEMORY[0x1E695E4D0]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B3C8], v2);
  v4 = SecItemCopyMatching(Mutable, &result);
  if (v4)
  {
    v5 = v4;
    v6 = _ACLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ACAccount setSecIdentity:v5];
    }
  }

  CFRelease(Mutable);
  return result;
}

- (void)setSecCertificates:(id)certificates
{
  *&v22[5] = *MEMORY[0x1E69E9840];
  certificatesCopy = certificates;
  if (certificatesCopy)
  {
    selfCopy = self;
    v18 = objc_opt_new();
    if ([certificatesCopy count])
    {
      v5 = 0;
      allocator = *MEMORY[0x1E695E480];
      v6 = *MEMORY[0x1E697AFF8];
      v7 = *MEMORY[0x1E697B000];
      v8 = *MEMORY[0x1E697B3D0];
      v9 = *MEMORY[0x1E697B320];
      v10 = *MEMORY[0x1E695E4D0];
      do
      {
        v11 = [certificatesCopy objectAtIndexedSubscript:{v5, selfCopy}];

        result = 0;
        Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
        CFDictionaryAddValue(Mutable, v6, v7);
        CFDictionaryAddValue(Mutable, v8, v11);
        CFDictionaryAddValue(Mutable, v9, v10);
        v13 = SecItemAdd(Mutable, &result);
        if (v13 == -25299)
        {
          v13 = SecItemCopyMatching(Mutable, &result);
        }

        if (v13)
        {
          v14 = _ACLogSystem();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [(ACAccount *)&v21 setSecCertificates:v13, v22];
          }
        }

        else
        {
          v14 = result;
          [v18 addObject:result];
        }

        CFRelease(Mutable);
        ++v5;
      }

      while ([certificatesCopy count] > v5);
    }

    if ([v18 count])
    {
      [v17 setObject:v18 forKeyedSubscript:@"SecCertificatePersistentRefs"];
    }
  }

  else
  {
    [(ACAccount *)self setObject:0 forKeyedSubscript:@"SecCertificatePersistentRefs"];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)secCertificates
{
  *&v27[5] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v4 = [(ACAccount *)self objectForKeyedSubscript:@"SecCertificatePersistentRefs"];

  if (v4)
  {
    v5 = [(ACAccount *)self objectForKeyedSubscript:@"SecCertificatePersistentRefs"];
    v6 = [v5 count];

    if (v6)
    {
      v7 = 0;
      v8 = *MEMORY[0x1E697AFF8];
      value = *MEMORY[0x1E697B000];
      v9 = *MEMORY[0x1E697B328];
      v10 = *MEMORY[0x1E695E4D0];
      v11 = *MEMORY[0x1E697B3C8];
      selfCopy = self;
      do
      {
        selfCopy = [(ACAccount *)self objectForKeyedSubscript:@"SecCertificatePersistentRefs", selfCopy];
        v13 = [selfCopy objectAtIndexedSubscript:v7];

        result = 0;
        Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
        CFDictionaryAddValue(Mutable, v8, value);
        CFDictionaryAddValue(Mutable, v9, v10);
        CFDictionaryAddValue(Mutable, v11, v13);
        v15 = SecItemCopyMatching(Mutable, &result);
        v16 = v15;
        if (!result || v15)
        {
          v17 = _ACLogSystem();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [(ACAccount *)&v26 setSecCertificates:v16, v27];
          }

          self = selfCopy;
          if (!Mutable)
          {
            goto LABEL_12;
          }
        }

        else
        {
          CFArrayAppendValue(theArray, result);
          if (!Mutable)
          {
            goto LABEL_12;
          }
        }

        CFRelease(Mutable);
LABEL_12:
        if (result)
        {
          CFRelease(result);
        }

        ++v7;
        v18 = [(ACAccount *)self objectForKeyedSubscript:@"SecCertificatePersistentRefs"];
        v19 = [v18 count];
      }

      while (v19 > v7);
    }
  }

  else
  {
    theArray = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return theArray;
}

- (BOOL)isDataSeparatedAccount
{
  personaIdentifier = [(ACAccount *)self personaIdentifier];
  if (personaIdentifier)
  {
    v4 = personaIdentifier;
    goto LABEL_3;
  }

  dirtyProperties = [(ACAccount *)self dirtyProperties];
  v9 = [dirtyProperties containsObject:@"PersonaIdentifier"];

  if (v9)
  {
    v10 = _ACPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ACAccount isDataSeparatedAccount];
    }

    dirtyProperties2 = [(ACAccount *)self dirtyProperties];
    v4 = [dirtyProperties2 valueForKey:@"PersonaIdentifier"];

    if (v4)
    {
LABEL_3:
      v5 = +[ACPersonaManager sharedInstance];
      enterprisePersonaUID = [v5 enterprisePersonaUID];
      if (enterprisePersonaUID)
      {
        enterprisePersonaUID2 = enterprisePersonaUID;
      }

      else
      {
        [v5 updatePersonasUIDs];
        enterprisePersonaUID2 = [v5 enterprisePersonaUID];
        if (!enterprisePersonaUID2)
        {
          goto LABEL_13;
        }
      }

      if ([enterprisePersonaUID2 isEqualToString:v4])
      {
        v12 = 1;
LABEL_14:

        return v12;
      }

LABEL_13:
      guestPersonasUIDs = [v5 guestPersonasUIDs];
      v12 = [guestPersonasUIDs containsObject:v4];

      goto LABEL_14;
    }
  }

  return 0;
}

- (BOOL)correctPersonaScopedForAccount
{
  mEMORY[0x1E69DF060] = [MEMORY[0x1E69DF060] sharedManager];
  currentPersona = [mEMORY[0x1E69DF060] currentPersona];

  if ([currentPersona isEnterprisePersona])
  {
    if ([(ACAccount *)self isDataSeparatedAccount])
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  isGuestPersona = [currentPersona isGuestPersona];
  if ([(ACAccount *)self isDataSeparatedAccount])
  {
    if ((isGuestPersona & 1) == 0)
    {
      v6 = _ACPLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [(ACAccount *)self correctPersonaScopedForAccount];
      }

      goto LABEL_11;
    }

LABEL_12:
    v7 = 1;
    goto LABEL_13;
  }

  if (!isGuestPersona)
  {
    goto LABEL_12;
  }

LABEL_9:
  v6 = _ACPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ACAccount *)self correctPersonaScopedForAccount];
  }

LABEL_11:

  v7 = 0;
LABEL_13:

  return v7;
}

- (id)childCardDAVAccountIdentifier
{
  v3 = [(ACAccount *)self childAccountsWithAccountTypeIdentifier:@"com.apple.account.CardDAV"];
  firstObject = [v3 firstObject];
  if (!firstObject)
  {
    identifier = [(ACAccount *)self objectForKeyedSubscript:@"childCardDAVAccountIdentifier"];
    goto LABEL_5;
  }

  if ([(ACAccount *)self isEnabledForDataclass:@"com.apple.Dataclass.Contacts"])
  {
    identifier = [firstObject identifier];
LABEL_5:
    v6 = identifier;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (NSString)managingOwnerIdentifier
{
  parentAccount = [(ACAccount *)self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [(ACAccount *)self parentAccount];
    v5 = [parentAccount2 objectForKeyedSubscript:@"ManagingOwnerIdentifier"];
  }

  else
  {
    v5 = [(ACAccount *)self objectForKeyedSubscript:@"ManagingOwnerIdentifier"];
  }

  return v5;
}

- (void)setManagingOwnerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  parentAccount = [(ACAccount *)self parentAccount];

  if (parentAccount)
  {
    v6 = _ACLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ACAccount setManagingOwnerIdentifier:];
    }
  }

  else
  {
    [(ACAccount *)self setObject:identifierCopy forKeyedSubscript:@"ManagingOwnerIdentifier"];
  }
}

- (NSString)managingSourceName
{
  parentAccount = [(ACAccount *)self parentAccount];

  if (parentAccount)
  {
    parentAccount2 = [(ACAccount *)self parentAccount];
    v5 = [parentAccount2 objectForKeyedSubscript:@"ManagingSourceName"];
  }

  else
  {
    v5 = [(ACAccount *)self objectForKeyedSubscript:@"ManagingSourceName"];
  }

  return v5;
}

- (void)setManagingSourceName:(id)name
{
  nameCopy = name;
  parentAccount = [(ACAccount *)self parentAccount];

  if (parentAccount)
  {
    v6 = _ACLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ACAccount setManagingSourceName:];
    }
  }

  else
  {
    [(ACAccount *)self setObject:nameCopy forKeyedSubscript:@"ManagingSourceName"];
  }
}

- (void)_initWithProtobufData:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACAccount.m" lineNumber:495 description:{@"Invalid parameter not satisfying: %@", @"data.length != 0"}];
}

- (void)setCredentialLocation:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1(&dword_1AC3CD000, v0, v1, "Invalid ACAccountCredentialStorageOption %lu, falling back to qualified username", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setProvisionedDataclasses:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setEnabledDataclasses:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACAccount.m" lineNumber:1569 description:@"You can't enable dataclasses on child accounts"];
}

- (void)setEnabledDataclasses:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)isEnabledForDataclass:.cold.1()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setEnabled:(uint64_t)a1 forDataclass:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACAccount.m" lineNumber:1592 description:@"You can't enable dataclasses on child accounts"];
}

- (void)qualifiedUsername
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setSecIdentity:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setSecCertificates:(void *)a3 .cold.1(_DWORD *a1, uint64_t a2, void *a3)
{
  v5 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  *a1 = 138412290;
  *a3 = v5;
  OUTLINED_FUNCTION_6_0(&dword_1AC3CD000, v6, v7, "Failed with status %@");
}

- (void)isDataSeparatedAccount
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)correctPersonaScopedForAccount
{
  v7 = *MEMORY[0x1E69E9840];
  [a2 userPersonaType];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

@end
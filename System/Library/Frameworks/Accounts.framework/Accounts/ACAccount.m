@interface ACAccount
+ (id)keypathsRequiredForInitialization;
- (ACAccount)displayAccount;
- (ACAccount)initWithAccountType:(ACAccountType *)type;
- (ACAccount)initWithCoder:(id)a3;
- (ACAccount)initWithManagedAccount:(id)a3;
- (ACAccount)initWithManagedAccount:(id)a3 accountStore:(id)a4;
- (ACAccount)parentAccount;
- (ACAccountCredential)internalCredential;
- (ACAccountStore)accountStore;
- (ACAccountType)accountType;
- (ACTrackedSet)trackedEnabledDataclasses;
- (ACTrackedSet)trackedProvisionedDataclasses;
- (BOOL)_isDifferentFrom:(id)a3;
- (BOOL)_useParentForCredentials;
- (BOOL)addClientToken:(id)a3;
- (BOOL)correctPersonaScopedForAccount;
- (BOOL)isActive;
- (BOOL)isAuthenticated;
- (BOOL)isDataSeparatedAccount;
- (BOOL)isDirty;
- (BOOL)isEnabledForDataclass:(id)a3;
- (BOOL)isEnabledToSyncDataclass:(id)a3;
- (BOOL)isPropertyDirty:(id)a3;
- (BOOL)isProvisionedForDataclass:(id)a3;
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
- (id)_initWithProtobuf:(id)a3;
- (id)_initWithProtobufData:(id)a3;
- (id)accountByCleaningThirdPartyTransformations;
- (id)accountPropertyForKey:(id)a3;
- (id)changeTypeForEnabledDataclass:(id)a3;
- (id)changeTypeForProvisionedDataclass:(id)a3;
- (id)childAccountsWithAccountTypeIdentifier:(id)a3;
- (id)childCardDAVAccountIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)credentialWithError:(id *)a3;
- (id)defaultAutodiscoverDomainForChildType:(id)a3;
- (id)fullDescription;
- (id)owningBundleID;
- (id)personaIdentifier;
- (id)portableCopy;
- (id)propertiesForDataclass:(id)a3;
- (id)qualifiedUsername;
- (id)secCertificates;
- (unint64_t)credentialLocation;
- (unint64_t)notifyGenerationID;
- (void)_applyDirtyStateFromAccount:(id)a3;
- (void)_cacheParentAccountID;
- (void)_clearCachedChildAccounts;
- (void)_clearCachedCredentials;
- (void)_clearCachedTrackedSets;
- (void)_clearDirtyProperties;
- (void)_installCredentialsChangedObserver;
- (void)_loadAllCachedProperties;
- (void)_markAccountPropertyDirty:(id)a3;
- (void)_markDataclassPropertyDirty:(id)a3;
- (void)_markPropertyDirty:(id)a3;
- (void)_resetParentAccount:(id)a3;
- (void)_setAccountStore:(id)a3;
- (void)_setModID:(id)a3;
- (void)_setObjectID:(id)a3;
- (void)_unsafe_loadEnabledDataclasses;
- (void)_unsafe_loadProvisionedDataclasses;
- (void)_unsafe_markAccountPropertyDirty:(id)a3;
- (void)_unsafe_markDataclassPropertyDirty:(id)a3;
- (void)_unsafe_markPropertyDirty:(id)a3;
- (void)correctPersonaScopedForAccount;
- (void)credentialsChanged:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)isDataSeparatedAccount;
- (void)markAllPropertiesDirty;
- (void)qualifiedUsername;
- (void)refresh;
- (void)reload;
- (void)setAccountDescription:(NSString *)accountDescription;
- (void)setAccountProperties:(id)a3;
- (void)setAccountProperty:(id)a3 forKey:(id)a4;
- (void)setAccountType:(ACAccountType *)accountType;
- (void)setActive:(BOOL)a3;
- (void)setAuthenticationType:(id)a3;
- (void)setCreationDate:(id)a3;
- (void)setCredential:(ACAccountCredential *)credential;
- (void)setCredentialLocation:(unint64_t)a3;
- (void)setCredentialType:(id)a3;
- (void)setDataclassProperties:(id)a3;
- (void)setDirty:(BOOL)a3 forProperty:(id)a4;
- (void)setEnabled:(BOOL)a3 forDataclass:(id)a4;
- (void)setEnabledDataclasses:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setLastCredentialRenewalRejectionDate:(id)a3;
- (void)setManagingOwnerIdentifier:(id)a3;
- (void)setManagingSourceName:(id)a3;
- (void)setOwningBundleID:(id)a3;
- (void)setParentAccount:(id)a3;
- (void)setProperties:(id)a3 forDataclass:(id)a4;
- (void)setProvisioned:(BOOL)a3 forDataclass:(id)a4;
- (void)setProvisionedDataclasses:(id)a3;
- (void)setSecCertificates:(id)a3;
- (void)setSecIdentity:(__SecIdentity *)a3;
- (void)setUsername:(NSString *)username;
- (void)setVisible:(BOOL)a3;
- (void)setWarmingUp:(BOOL)a3;
- (void)takeValuesFromModifiedAccount:(id)a3;
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
    v3 = [(ACAccount *)self parentAccount];
    v4 = [(ACAccount *)v3 username];
  }

  else
  {
    v3 = self;
    objc_sync_enter(v3);
    v4 = v3->_username;
    objc_sync_exit(v3);
  }

  return v4;
}

- (BOOL)_useParentForCredentials
{
  v2 = [(ACAccount *)self authenticationType];
  v3 = [v2 isEqualToString:@"parent"];

  return v3;
}

- (NSString)authenticationType
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_authenticationType;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isActive
{
  v2 = self;
  objc_sync_enter(v2);
  active = v2->_active;
  objc_sync_exit(v2);

  return active;
}

- (NSString)identifier
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_identifier;
  objc_sync_exit(v2);

  return v3;
}

- (ACAccountType)accountType
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_accountType;
  objc_sync_exit(v2);

  return v3;
}

- (unint64_t)notifyGenerationID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSString *)v2->_modificationID hash];
  v4 = [(ACAccount *)v2->_parentAccount notifyGenerationID];
  if ((v4 + v3) <= 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4 + v3;
  }

  objc_sync_exit(v2);

  return v5;
}

- (ACAccount)parentAccount
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_parentAccount;
  objc_sync_exit(v2);

  return v3;
}

- (void)dealloc
{
  if (self->_credentialsDidChangeObserver)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self->_credentialsDidChangeObserver];
  }

  v4.receiver = self;
  v4.super_class = ACAccount;
  [(ACAccount *)&v4 dealloc];
}

- (NSDictionary)accountProperties
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_properties;
  objc_sync_exit(v2);

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
  v2 = self;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&v2->_accountStore);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&v2->_accountStore);
  }

  else
  {
    v4 = +[ACAccountStore defaultStore];
  }

  v5 = v4;
  objc_sync_exit(v2);

  return v5;
}

- (NSString)accountDescription
{
  v3 = [(ACAccount *)self parentAccount];

  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(ACAccount *)self parentAccount];
    v6 = [(ACAccount *)v5 accountDescription];
    v7 = [(ACAccount *)self accountType];
    v8 = [v7 accountTypeDescription];
    v9 = [v4 stringWithFormat:@"%@ - %@", v6, v8];
  }

  else
  {
    v5 = self;
    objc_sync_enter(v5);
    v9 = v5->_accountDescription;
    objc_sync_exit(v5);
  }

  return v9;
}

- (NSMutableSet)enabledDataclasses
{
  v3 = [(ACAccount *)self parentAccount];

  if (v3)
  {
    v4 = [(ACAccount *)self parentAccount];
    v5 = [v4 enabledDataclasses];

    v6 = [(ACAccount *)self accountType];
    v7 = [v6 syncableDataclasses];

    v8 = [v5 mutableCopy];
    [v8 intersectSet:v7];
  }

  else
  {
    v9 = self;
    objc_sync_enter(v9);
    if (v9->_trackedEnabledDataclasses)
    {
      v8 = [MEMORY[0x1E695DFA8] setWithTrackedSet:?];
    }

    else
    {
      v8 = 0;
    }

    objc_sync_exit(v9);

    if (!v8)
    {
      v10 = v9;
      objc_sync_enter(v10);
      [(ACAccount *)v10 _unsafe_loadEnabledDataclasses];
      if (v9->_trackedEnabledDataclasses)
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(ACAccount *)v2->_parentAccount identifier];
  objc_sync_exit(v2);

  return v3;
}

- (void)_cacheParentAccountID
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(ACAccount *)obj->_parentAccount identifier];
  cachedParentAccountID = obj->_cachedParentAccountID;
  obj->_cachedParentAccountID = v2;

  parentAccount = obj->_parentAccount;
  obj->_parentAccount = 0;

  objc_sync_exit(obj);
}

- (id)personaIdentifier
{
  v3 = [(ACAccount *)self parentAccount];

  if (v3)
  {
    v4 = [(ACAccount *)self parentAccount];
    v5 = [v4 objectForKeyedSubscript:@"PersonaIdentifier"];

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

  v6 = [(ACAccount *)self dirtyProperties];
  v7 = [v6 containsObject:@"PersonaIdentifier"];

  if (v7)
  {
    v8 = _ACPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [ACAccount isDataSeparatedAccount];
    }

    v9 = [(ACAccount *)self dirtyProperties];
    v5 = [v9 valueForKey:@"PersonaIdentifier"];
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableSet *)v2->_dirtyProperties copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)reload
{
  v3 = [(ACAccount *)self accountStore];
  v4 = [(ACAccount *)self identifier];
  v49 = [v3 accountWithIdentifier:v4];

  v5 = v49;
  if (v49)
  {
    v6 = self;
    objc_sync_enter(v6);
    v7 = [v49 accountDescription];
    v8 = [v7 copy];
    accountDescription = v6->_accountDescription;
    v6->_accountDescription = v8;

    v10 = [v49 username];
    v11 = [v10 copy];
    username = v6->_username;
    v6->_username = v11;

    [(ACAccount *)v6 willChangeValueForKey:@"accountProperties"];
    v13 = [v49 accountProperties];
    v14 = [v13 mutableCopy];
    properties = v6->_properties;
    v6->_properties = v14;

    [(ACAccount *)v6 didChangeValueForKey:@"accountProperties"];
    v16 = [v49 owningBundleID];
    v17 = [v16 copy];
    owningBundleID = v6->_owningBundleID;
    v6->_owningBundleID = v17;

    [(ACAccount *)v6 willChangeValueForKey:@"dataclassProperties"];
    v19 = [v49 dataclassProperties];
    v20 = [v19 mutableCopy];
    dataclassProperties = v6->_dataclassProperties;
    v6->_dataclassProperties = v20;

    [(ACAccount *)v6 didChangeValueForKey:@"dataclassProperties"];
    v6->_authenticated = [v49 isAuthenticated];
    v22 = [v49 lastCredentialRenewalRejectionDate];
    lastCredentialRenewalRejectionDate = v6->_lastCredentialRenewalRejectionDate;
    v6->_lastCredentialRenewalRejectionDate = v22;

    v6->_active = [v49 isActive];
    v6->_warmingUp = [v49 isWarmingUp];
    v24 = [v49 objectID];
    v25 = [v24 copy];
    objectID = v6->_objectID;
    v6->_objectID = v25;

    v27 = [v49 accountType];
    v28 = [v27 copy];
    accountType = v6->_accountType;
    v6->_accountType = v28;

    v30 = [v49 credentialType];
    v31 = [v30 copy];
    credentialType = v6->_credentialType;
    v6->_credentialType = v31;

    v33 = [v49 authenticationType];
    v34 = [v33 copy];
    authenticationType = v6->_authenticationType;
    v6->_authenticationType = v34;

    credential = v6->_credential;
    v6->_credential = 0;

    v37 = [v49 parentAccount];
    v38 = [v37 copy];
    parentAccount = v6->_parentAccount;
    v6->_parentAccount = v38;

    v6->_haveCheckedForChildAccounts = 0;
    childAccounts = v6->_childAccounts;
    v6->_childAccounts = 0;

    trackedProvisionedDataclasses = v6->_trackedProvisionedDataclasses;
    v6->_trackedProvisionedDataclasses = 0;

    v6->_wasProvisionedDataclassesReset = 0;
    trackedEnabledDataclasses = v6->_trackedEnabledDataclasses;
    v6->_trackedEnabledDataclasses = 0;

    v6->_wasEnabledDataclassesReset = 0;
    v43 = [v49 modificationID];
    v44 = [v43 copy];
    modificationID = v6->_modificationID;
    v6->_modificationID = v44;

    dirtyProperties = v6->_dirtyProperties;
    v6->_dirtyProperties = 0;

    dirtyAccountProperties = v6->_dirtyAccountProperties;
    v6->_dirtyAccountProperties = 0;

    dirtyDataclassProperties = v6->_dirtyDataclassProperties;
    v6->_dirtyDataclassProperties = 0;

    objc_sync_exit(v6);
    v5 = v49;
  }
}

- (id)owningBundleID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_owningBundleID;
  objc_sync_exit(v2);

  return v3;
}

- (unint64_t)credentialLocation
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(ACAccount *)v2 propertyForKey:@"CredentialStorageLocation"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v3 unsignedIntegerValue] <= 1)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = [(ACAccount *)v2 parentAccount];

    if (v4)
    {
      v5 = [(ACAccount *)v2 parentAccount];
      v4 = [v5 credentialLocation];
    }
  }

  objc_sync_exit(v2);
  return v4;
}

- (NSDictionary)dataclassProperties
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_dataclassProperties copy];
  objc_sync_exit(v2);

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ACAccount *)self username];
  v5 = ACHashedString(v4);
  v6 = [(ACAccount *)self identifier];
  v7 = [v3 stringWithFormat:@"%@ (%@)", v5, v6];

  return v7;
}

- (BOOL)isAuthenticated
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(ACAccount *)v2 _useParentForCredentials])
  {
    v3 = [(ACAccount *)v2 parentAccount];
    authenticated = [v3 isAuthenticated];
  }

  else
  {
    authenticated = v2->_authenticated;
  }

  objc_sync_exit(v2);

  return authenticated & 1;
}

- (NSDate)lastCredentialRenewalRejectionDate
{
  if ([(ACAccount *)self _useParentForCredentials])
  {
    v3 = [(ACAccount *)self parentAccount];
    v4 = [(ACAccount *)v3 lastCredentialRenewalRejectionDate];
  }

  else
  {
    v3 = self;
    objc_sync_enter(v3);
    v4 = v3->_lastCredentialRenewalRejectionDate;
    objc_sync_exit(v3);
  }

  return v4;
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

  v6 = [(ACAccount *)self accountType];
  v7 = [v6 identifier];
  v8 = [v7 isEqualToString:@"com.apple.account.Exchange"];

  if (v8)
  {
    v9 = [(ACAccount *)self objectForKeyedSubscript:@"EWSRootFolderID"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v12 = [(ACAccount *)self objectForKeyedSubscript:@"EWSInternalURL"];
      v11 = [v12 host];
    }

    if ([v11 length])
    {
      v13 = _ACLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [ACAccount qualifiedUsername];
      }

      v14 = v11;
      v3 = v14;
    }
  }

  if ([v3 length])
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = [(ACAccount *)self username];
    v17 = [v15 stringWithFormat:@"%@@%@", v16, v3];

    goto LABEL_25;
  }

  v18 = [(ACAccount *)self objectForKeyedSubscript:@"IdentityEmailAddress"];
  if ([v18 length])
  {
    v19 = [(ACAccount *)self username];
    v20 = [v19 containsString:@"@"];

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
    v24 = [(ACAccount *)self username];
    goto LABEL_24;
  }

  v21 = @"DAAccountEmailAddress";
LABEL_22:
  v24 = [(ACAccount *)self objectForKeyedSubscript:v21];
LABEL_24:
  v17 = v24;
LABEL_25:

  return v17;
}

- (BOOL)isWarmingUp
{
  v2 = self;
  objc_sync_enter(v2);
  warmingUp = v2->_warmingUp;
  objc_sync_exit(v2);

  return warmingUp;
}

- (NSURL)objectID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_objectID;
  objc_sync_exit(v2);

  return v3;
}

- (NSString)credentialType
{
  if ([(ACAccount *)self _useParentForCredentials])
  {
    v3 = [(ACAccount *)self parentAccount];
    v4 = [(ACAccount *)v3 credentialType];
  }

  else
  {
    v3 = self;
    objc_sync_enter(v3);
    v4 = v3->_credentialType;
    objc_sync_exit(v3);
  }

  return v4;
}

- (NSString)modificationID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_modificationID;
  objc_sync_exit(v2);

  return v3;
}

- (void)_installCredentialsChangedObserver
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__ACAccount__installCredentialsChangedObserver__block_invoke;
  v6[3] = &unk_1E79755E0;
  objc_copyWeak(&v7, &location);
  v4 = [v3 addObserverForName:@"ACAccountCredentialsDidChangeNotification" object:0 queue:0 usingBlock:v6];
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
    v7 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [v7 UUIDString];
    identifier = v6->_identifier;
    v6->_identifier = v8;

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

- (ACAccount)initWithManagedAccount:(id)a3 accountStore:(id)a4
{
  v6 = a4;
  v7 = [(ACAccount *)self initWithManagedAccount:a3];
  v8 = v7;
  if (v7)
  {
    [(ACAccount *)v7 _setAccountStore:v6];
  }

  return v8;
}

- (ACAccount)initWithManagedAccount:(id)a3
{
  v73 = *MEMORY[0x1E69E9840];
  v62 = a3;
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

  v5 = [v62 accountType];
  if (v5)
  {
    v6 = [v62 identifier];
    v7 = v6 == 0;

    if (!v7)
    {
      v8 = [ACAccountType alloc];
      v9 = [v62 accountType];
      v10 = [(ACAccountType *)v8 initWithManagedAccountType:v9];
      accountType = v4->_accountType;
      v4->_accountType = v10;

      v12 = [v62 identifier];
      identifier = v4->_identifier;
      v4->_identifier = v12;

      v14 = [v62 accountDescription];
      accountDescription = v4->_accountDescription;
      v4->_accountDescription = v14;

      v16 = [v62 username];
      username = v4->_username;
      v4->_username = v16;

      v18 = [v62 authenticated];
      v4->_authenticated = [v18 BOOLValue];

      v19 = [v62 lastCredentialRenewalRejectionDate];
      lastCredentialRenewalRejectionDate = v4->_lastCredentialRenewalRejectionDate;
      v4->_lastCredentialRenewalRejectionDate = v19;

      v21 = [v62 active];
      v4->_active = [v21 BOOLValue];

      v22 = [v62 warmingUp];
      v4->_warmingUp = [v22 BOOLValue];

      v23 = [v62 visible];
      v4->_visible = [v23 BOOLValue];

      v24 = [v62 supportsAuthentication];
      v4->_supportsAuthentication = [v24 BOOLValue];

      v25 = [v62 objectID];
      v26 = [v25 URIRepresentation];
      objectID = v4->_objectID;
      v4->_objectID = v26;

      v28 = [v62 authenticationType];
      authenticationType = v4->_authenticationType;
      v4->_authenticationType = v28;

      v30 = [v62 credentialType];
      credentialType = v4->_credentialType;
      v4->_credentialType = v30;

      v32 = [v62 date];
      date = v4->_date;
      v4->_date = v32;

      v34 = [v62 owningBundleID];
      owningBundleID = v4->_owningBundleID;
      v4->_owningBundleID = v34;

      v36 = [v62 modificationID];
      modificationID = v4->_modificationID;
      v4->_modificationID = v36;

      v38 = v62;
      v61 = [v62 parentAccount];
      if (v61)
      {
        v39 = [[ACAccount alloc] initWithManagedAccount:v61];
        parentAccount = v4->_parentAccount;
        v4->_parentAccount = v39;

        v38 = v62;
      }

      v41 = [v38 dataclassProperties];
      v42 = [v41 mutableCopy];
      dataclassProperties = v4->_dataclassProperties;
      v4->_dataclassProperties = v42;

      v44 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v45 = [v62 customProperties];
      v46 = [v45 countByEnumeratingWithState:&v63 objects:v68 count:16];
      if (v46)
      {
        v47 = *v64;
        do
        {
          for (i = 0; i != v46; ++i)
          {
            if (*v64 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v63 + 1) + 8 * i);
            v50 = [v49 value];
            if (!v50 || ([v49 key], v51 = objc_claimAutoreleasedReturnValue(), v52 = v51 == 0, v51, v52))
            {
              v53 = _ACLogSystem();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                v54 = [v49 key];
                *buf = 138412546;
                v70 = v50;
                v71 = 2112;
                *v72 = v54;
                _os_log_error_impl(&dword_1AC3CD000, v53, OS_LOG_TYPE_ERROR, "Unexpecteed nil value for property %@ or key %@", buf, 0x16u);
              }
            }

            else
            {
              v53 = [v49 key];
              [v44 setObject:v50 forKey:v53];
            }
          }

          v46 = [v45 countByEnumeratingWithState:&v63 objects:v68 count:16];
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
    v59 = [v62 accountType];
    v60 = [v62 identifier];
    *buf = 138412802;
    v70 = v62;
    v71 = 1024;
    *v72 = v59 != 0;
    *&v72[4] = 1024;
    *&v72[6] = v60 != 0;
    _os_log_error_impl(&dword_1AC3CD000, v56, OS_LOG_TYPE_ERROR, "ACAccount initializer just ran into an account (%@) missing required properties: accountType:%d identifier:%d", buf, 0x18u);
  }

  v55 = 0;
LABEL_25:

  v57 = *MEMORY[0x1E69E9840];
  return v55;
}

- (ACAccount)initWithCoder:(id)a3
{
  v4 = a3;
  v127.receiver = self;
  v127.super_class = ACAccount;
  v5 = [(ACAccount *)&v127 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountType"];
    accountType = v5->_accountType;
    v5->_accountType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credential"];
    credential = v5->_credential;
    v5->_credential = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v11 = [v10 copy];
    identifier = v5->_identifier;
    v5->_identifier = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountDescription"];
    v14 = [v13 copy];
    accountDescription = v5->_accountDescription;
    v5->_accountDescription = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"username"];
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
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"accountProperties"];
    v29 = [v28 mutableCopy];
    properties = v5->_properties;
    v5->_properties = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authenticated"];
    v5->_authenticated = [v31 BOOLValue];

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastCredentialRenewalRejectionDate"];
    lastCredentialRenewalRejectionDate = v5->_lastCredentialRenewalRejectionDate;
    v5->_lastCredentialRenewalRejectionDate = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"active"];
    v5->_active = [v34 BOOLValue];

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"warmingUp"];
    v5->_warmingUp = [v35 BOOLValue];

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"visible"];
    v5->_visible = [v36 BOOLValue];

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportsAuthentication"];
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
    v47 = [v4 decodeObjectOfClasses:v46 forKey:@"dataclassProperties"];
    v48 = [v47 mutableCopy];
    dataclassProperties = v5->_dataclassProperties;
    v5->_dataclassProperties = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
    v51 = [v50 copy];
    objectID = v5->_objectID;
    v5->_objectID = v51;

    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parent"];
    v54 = [v53 copy];
    parentAccount = v5->_parentAccount;
    v5->_parentAccount = v54;

    v56 = MEMORY[0x1E695DFD8];
    v57 = objc_opt_class();
    v58 = [v56 setWithObjects:{v57, objc_opt_class(), 0}];
    v59 = [v4 decodeObjectOfClasses:v58 forKey:@"provisionedDataclassesEnumValues"];
    provisionedEnumDataclasses = v5->_provisionedEnumDataclasses;
    v5->_provisionedEnumDataclasses = v59;

    v61 = MEMORY[0x1E695DFD8];
    v62 = objc_opt_class();
    v63 = [v61 setWithObjects:{v62, objc_opt_class(), 0}];
    v64 = [v4 decodeObjectOfClasses:v63 forKey:@"trackedProvisionedDataclasses"];
    v65 = [v64 mutableCopy];
    trackedProvisionedDataclasses = v5->_trackedProvisionedDataclasses;
    v5->_trackedProvisionedDataclasses = v65;

    v5->_wasProvisionedDataclassesReset = [v4 decodeBoolForKey:@"wasProvisionedDataclassesReset"];
    v67 = MEMORY[0x1E695DFD8];
    v68 = objc_opt_class();
    v69 = [v67 setWithObjects:{v68, objc_opt_class(), 0}];
    v70 = [v4 decodeObjectOfClasses:v69 forKey:@"enabledDataclassesEnumValues"];
    enabledEnumDataclasses = v5->_enabledEnumDataclasses;
    v5->_enabledEnumDataclasses = v70;

    v72 = MEMORY[0x1E695DFD8];
    v73 = objc_opt_class();
    v74 = [v72 setWithObjects:{v73, objc_opt_class(), 0}];
    v75 = [v4 decodeObjectOfClasses:v74 forKey:@"trackedEnabledDataclasses"];
    v76 = [v75 mutableCopy];
    trackedEnabledDataclasses = v5->_trackedEnabledDataclasses;
    v5->_trackedEnabledDataclasses = v76;

    v5->_wasEnabledDataclassesReset = [v4 decodeBoolForKey:@"wasEnabledDataclassesReset"];
    v78 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authenticationType"];
    v79 = [v78 copy];
    authenticationType = v5->_authenticationType;
    v5->_authenticationType = v79;

    v81 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialType"];
    v82 = [v81 copy];
    credentialType = v5->_credentialType;
    v5->_credentialType = v82;

    v84 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    date = v5->_date;
    v5->_date = v84;

    v86 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"owningBundleID"];
    v87 = [v86 copy];
    owningBundleID = v5->_owningBundleID;
    v5->_owningBundleID = v87;

    v89 = MEMORY[0x1E695DFD8];
    v90 = objc_opt_class();
    v91 = [v89 setWithObjects:{v90, objc_opt_class(), 0}];
    v92 = [v4 decodeObjectOfClasses:v91 forKey:@"dirtyProperties"];
    dirtyProperties = v5->_dirtyProperties;
    v5->_dirtyProperties = v92;

    v94 = MEMORY[0x1E695DFD8];
    v95 = objc_opt_class();
    v96 = [v94 setWithObjects:{v95, objc_opt_class(), 0}];
    v97 = [v4 decodeObjectOfClasses:v96 forKey:@"dirtyAccountProperties"];
    dirtyAccountProperties = v5->_dirtyAccountProperties;
    v5->_dirtyAccountProperties = v97;

    v99 = MEMORY[0x1E695DFD8];
    v100 = objc_opt_class();
    v101 = [v99 setWithObjects:{v100, objc_opt_class(), 0}];
    v102 = [v4 decodeObjectOfClasses:v101 forKey:@"dirtyDataclassProperties"];
    dirtyDataclassProperties = v5->_dirtyDataclassProperties;
    v5->_dirtyDataclassProperties = v102;

    v104 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modificationID"];
    v105 = [v104 copy];
    modificationID = v5->_modificationID;
    v5->_modificationID = v105;

    if (!v5->_trackedProvisionedDataclasses)
    {
      v107 = MEMORY[0x1E695DFD8];
      v108 = objc_opt_class();
      v109 = [v107 setWithObjects:{v108, objc_opt_class(), 0}];
      v110 = [v4 decodeObjectOfClasses:v109 forKey:@"provisionedDataclasses"];

      if (v110)
      {
        v111 = objc_alloc_init(ACMutableTrackedSet);
        v112 = v5->_trackedProvisionedDataclasses;
        v5->_trackedProvisionedDataclasses = v111;

        v113 = v5->_trackedProvisionedDataclasses;
        v114 = [v110 allObjects];
        [(ACMutableTrackedSet *)v113 addObjectsFromArray:v114];

        v5->_wasProvisionedDataclassesReset = 1;
      }
    }

    if (!v5->_trackedEnabledDataclasses)
    {
      v115 = MEMORY[0x1E695DFD8];
      v116 = objc_opt_class();
      v117 = [v115 setWithObjects:{v116, objc_opt_class(), 0}];
      v118 = [v4 decodeObjectOfClasses:v117 forKey:@"enabledDataclasses"];

      if (v118)
      {
        v119 = objc_alloc_init(ACMutableTrackedSet);
        v120 = v5->_trackedEnabledDataclasses;
        v5->_trackedEnabledDataclasses = v119;

        v121 = v5->_trackedEnabledDataclasses;
        v122 = [v118 allObjects];
        [(ACMutableTrackedSet *)v121 addObjectsFromArray:v122];

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

- (void)encodeWithCoder:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [v4 encodeObject:v5->_accountType forKey:@"accountType"];
  credential = v5->_credential;
  if (credential)
  {
    [v4 encodeObject:credential forKey:@"credential"];
  }

  [v4 encodeObject:v5->_identifier forKey:@"identifier"];
  [v4 encodeObject:v5->_accountDescription forKey:@"accountDescription"];
  [v4 encodeObject:v5->_username forKey:@"username"];
  v7 = [(ACAccount *)v5 accountProperties];
  v8 = [(ACAccount *)v5 accountPropertiesTransformer];

  if (v8)
  {
    v9 = [(ACAccount *)v5 accountPropertiesTransformer];
    v10 = (v9)[2](v9, v7);

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v10;
    v11 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v7);
          }

          [(ACAccount *)v5 _markAccountPropertyDirty:*(*(&v22 + 1) + 8 * v13++), v22];
        }

        while (v11 != v13);
        v11 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }
  }

  [v4 encodeObject:v7 forKey:{@"accountProperties", v22}];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:v5->_authenticated];
  [v4 encodeObject:v14 forKey:@"authenticated"];

  [v4 encodeObject:v5->_lastCredentialRenewalRejectionDate forKey:@"lastCredentialRenewalRejectionDate"];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:v5->_active];
  [v4 encodeObject:v15 forKey:@"active"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:v5->_warmingUp];
  [v4 encodeObject:v16 forKey:@"warmingUp"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:v5->_visible];
  [v4 encodeObject:v17 forKey:@"visible"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:v5->_supportsAuthentication];
  [v4 encodeObject:v18 forKey:@"supportsAuthentication"];

  [v4 encodeObject:v5->_dataclassProperties forKey:@"dataclassProperties"];
  [v4 encodeObject:v5->_objectID forKey:@"objectID"];
  [v4 encodeObject:v5->_parentAccount forKey:@"parent"];
  [v4 encodeObject:v5->_trackedProvisionedDataclasses forKey:@"trackedProvisionedDataclasses"];
  [v4 encodeBool:v5->_wasProvisionedDataclassesReset forKey:@"wasProvisionedDataclassesReset"];
  [v4 encodeObject:v5->_enabledEnumDataclasses forKey:@"enabledDataclassesEnumValues"];
  [v4 encodeObject:v5->_provisionedEnumDataclasses forKey:@"provisionedDataclassesEnumValues"];
  [v4 encodeObject:v5->_trackedEnabledDataclasses forKey:@"trackedEnabledDataclasses"];
  [v4 encodeBool:v5->_wasEnabledDataclassesReset forKey:@"wasEnabledDataclassesReset"];
  [v4 encodeObject:v5->_authenticationType forKey:@"authenticationType"];
  [v4 encodeObject:v5->_credentialType forKey:@"credentialType"];
  [v4 encodeObject:v5->_date forKey:@"date"];
  [v4 encodeObject:v5->_owningBundleID forKey:@"owningBundleID"];
  [v4 encodeObject:v5->_dirtyProperties forKey:@"dirtyProperties"];
  [v4 encodeObject:v5->_dirtyAccountProperties forKey:@"dirtyAccountProperties"];
  [v4 encodeObject:v5->_dirtyDataclassProperties forKey:@"dirtyDataclassProperties"];
  [v4 encodeObject:v5->_modificationID forKey:@"modificationID"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v5->_trackedProvisionedDataclasses)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [MEMORY[0x1E695DFD8] setWithTrackedSet:v5->_trackedProvisionedDataclasses];
        [v4 encodeObject:v19 forKey:@"provisionedDataclasses"];
      }
    }

    if (v5->_trackedEnabledDataclasses)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [MEMORY[0x1E695DFD8] setWithTrackedSet:v5->_trackedEnabledDataclasses];
        [v4 encodeObject:v20 forKey:@"enabledDataclasses"];
      }
    }
  }

  objc_sync_exit(v5);
  v21 = *MEMORY[0x1E69E9840];
}

- (id)_initWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = [ACAccountType alloc];
  v6 = [v4 accountType];
  v7 = [(ACAccountType *)v5 _initWithProtobuf:v6];

  v8 = [(ACAccount *)self initWithAccountType:v7];
  if (v8)
  {
    if ([v4 hasCredential])
    {
      v9 = [ACAccountCredential alloc];
      v10 = [v4 credential];
      v11 = [(ACAccountCredential *)v9 _initWithProtobuf:v10];
      credential = v8->_credential;
      v8->_credential = v11;
    }

    v13 = [v4 identifier];
    v14 = [v13 copy];
    identifier = v8->_identifier;
    v8->_identifier = v14;

    v16 = [v4 accountDescription];
    v17 = [v16 copy];
    accountDescription = v8->_accountDescription;
    v8->_accountDescription = v17;

    v19 = [v4 username];
    v20 = [v19 copy];
    username = v8->_username;
    v8->_username = v20;

    v22 = [v4 propertiesDictionary];
    v23 = [v22 mutableCopy];
    properties = v8->_properties;
    v8->_properties = v23;

    v8->_authenticated = [v4 authenticated];
    if ([v4 hasLastCredentialRenewalRejectionDate])
    {
      v25 = [v4 lastCredentialRenewalRejectionDate];
      v26 = [v25 date];
      lastCredentialRenewalRejectionDate = v8->_lastCredentialRenewalRejectionDate;
      v8->_lastCredentialRenewalRejectionDate = v26;
    }

    v8->_active = [v4 active];
    v8->_warmingUp = [v4 warmingUp];
    v8->_visible = [v4 visible];
    v8->_supportsAuthentication = [v4 supportsAuthentication];
    v28 = [v4 dataclassPropertiesDictionary];
    v29 = [v28 mutableCopy];
    dataclassProperties = v8->_dataclassProperties;
    v8->_dataclassProperties = v29;

    if ([v4 hasObjectID])
    {
      v31 = [v4 objectID];
      v32 = [v31 url];
      objectID = v8->_objectID;
      v8->_objectID = v32;
    }

    if ([v4 hasParentAccount])
    {
      v34 = [ACAccount alloc];
      v35 = [v4 parentAccount];
      v36 = [(ACAccount *)v34 _initWithProtobuf:v35];
      parentAccount = v8->_parentAccount;
      v8->_parentAccount = v36;
    }

    v38 = objc_alloc_init(ACMutableTrackedSet);
    trackedProvisionedDataclasses = v8->_trackedProvisionedDataclasses;
    v8->_trackedProvisionedDataclasses = v38;

    v40 = v8->_trackedProvisionedDataclasses;
    v41 = [v4 provisionedDataclasses];
    [(ACMutableTrackedSet *)v40 addObjectsFromArray:v41];

    v42 = MEMORY[0x1E695DFD8];
    v43 = [v4 provisionedEnumDataclasses];
    v44 = [v42 setWithArray:v43];
    provisionedEnumDataclasses = v8->_provisionedEnumDataclasses;
    v8->_provisionedEnumDataclasses = v44;

    v46 = objc_alloc_init(ACMutableTrackedSet);
    trackedEnabledDataclasses = v8->_trackedEnabledDataclasses;
    v8->_trackedEnabledDataclasses = v46;

    v48 = v8->_trackedEnabledDataclasses;
    v49 = [v4 enabledDataclasses];
    [(ACMutableTrackedSet *)v48 addObjectsFromArray:v49];

    v50 = MEMORY[0x1E695DFD8];
    v51 = [v4 enabledEnumDataclasses];
    v52 = [v50 setWithArray:v51];
    enabledEnumDataclasses = v8->_enabledEnumDataclasses;
    v8->_enabledEnumDataclasses = v52;

    v54 = [v4 authenticationType];
    v55 = [v54 copy];
    authenticationType = v8->_authenticationType;
    v8->_authenticationType = v55;

    v57 = [v4 credentialType];
    v58 = [v57 copy];
    credentialType = v8->_credentialType;
    v8->_credentialType = v58;

    v60 = [v4 date];
    v61 = [v60 date];
    date = v8->_date;
    v8->_date = v61;

    v63 = [v4 owningBundleID];
    owningBundleID = v8->_owningBundleID;
    v8->_owningBundleID = v63;

    v65 = [v4 dirtyProperties];

    if (v65)
    {
      v66 = objc_alloc(MEMORY[0x1E695DFA8]);
      v67 = [v4 dirtyProperties];
      v68 = [v66 initWithArray:v67];
      dirtyProperties = v8->_dirtyProperties;
      v8->_dirtyProperties = v68;
    }

    v70 = [v4 dirtyAccountProperties];

    if (v70)
    {
      v71 = objc_alloc(MEMORY[0x1E695DFA8]);
      v72 = [v4 dirtyAccountProperties];
      v73 = [v71 initWithArray:v72];
      dirtyAccountProperties = v8->_dirtyAccountProperties;
      v8->_dirtyAccountProperties = v73;
    }

    v75 = [v4 dirtyDataclassProperties];

    if (v75)
    {
      v76 = objc_alloc(MEMORY[0x1E695DFA8]);
      v77 = [v4 dirtyDataclassProperties];
      v78 = [v76 initWithArray:v77];
      dirtyDataclassProperties = v8->_dirtyDataclassProperties;
      v8->_dirtyDataclassProperties = v78;
    }

    v80 = [v4 modificationID];
    modificationID = v8->_modificationID;
    v8->_modificationID = v80;

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

- (id)_initWithProtobufData:(id)a3
{
  v5 = a3;
  if (![v5 length])
  {
    [(ACAccount *)a2 _initWithProtobufData:?];
  }

  if ([v5 length])
  {
    v6 = [[ACProtobufAccount alloc] initWithData:v5];
    if (v6)
    {
      self = [(ACAccount *)self _initWithProtobuf:v6];
      v7 = self;
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

- (id)_encodeProtobuf
{
  v3 = objc_opt_new();
  v4 = [(ACAccountType *)self->_accountType _encodeProtobuf];
  [v3 setAccountType:v4];

  v5 = [(ACAccountCredential *)self->_credential _encodeProtobuf];
  [v3 setCredential:v5];

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

  v8 = [(ACAccount *)self->_parentAccount _encodeProtobuf];
  [v3 setParentAccount:v8];

  v9 = [(ACTrackedSet *)self->_trackedProvisionedDataclasses allObjects];
  v10 = [v9 mutableCopy];
  [v3 setProvisionedDataclasses:v10];

  v11 = [(ACTrackedSet *)self->_trackedEnabledDataclasses allObjects];
  v12 = [v11 mutableCopy];
  [v3 setEnabledDataclasses:v12];

  v13 = [(NSSet *)self->_enabledEnumDataclasses allObjects];
  v14 = [v13 mutableCopy];
  [v3 setEnabledEnumDataclasses:v14];

  v15 = [(NSSet *)self->_provisionedEnumDataclasses allObjects];
  v16 = [v15 mutableCopy];
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
    v18 = [(NSMutableSet *)self->_dirtyProperties allObjects];
    v19 = [v18 mutableCopy];
    [v3 setDirtyProperties:v19];
  }

  if ([(NSMutableSet *)self->_dirtyAccountProperties count])
  {
    v20 = [(NSMutableSet *)self->_dirtyAccountProperties allObjects];
    v21 = [v20 mutableCopy];
    [v3 setDirtyAccountProperties:v21];
  }

  if ([(NSMutableSet *)self->_dirtyDataclassProperties count])
  {
    v22 = [(NSMutableSet *)self->_dirtyDataclassProperties allObjects];
    v23 = [v22 mutableCopy];
    [v3 setDirtyDataclassProperties:v23];
  }

  [v3 setModificationID:self->_modificationID];

  return v3;
}

- (id)_encodeProtobufData
{
  v2 = [(ACAccount *)self _encodeProtobuf];
  v3 = [v2 data];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_sync_enter(v5);
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(ACAccountType *)v6->_accountType copyWithZone:a3];
  v8 = v5[9];
  v5[9] = v7;

  v9 = [(ACAccountCredential *)v6->_credential copyWithZone:a3];
  v10 = v5[10];
  v5[10] = v9;

  v11 = [(NSString *)v6->_identifier copyWithZone:a3];
  v12 = v5[2];
  v5[2] = v11;

  v13 = [(NSString *)v6->_accountDescription copyWithZone:a3];
  v14 = v5[3];
  v5[3] = v13;

  v15 = [(NSString *)v6->_username copyWithZone:a3];
  v16 = v5[5];
  v5[5] = v15;

  v17 = [(NSMutableDictionary *)v6->_properties mutableCopyWithZone:a3];
  v18 = v5[11];
  v5[11] = v17;

  *(v5 + 234) = v6->_authenticated;
  v19 = [(NSDate *)v6->_lastCredentialRenewalRejectionDate copyWithZone:a3];
  v20 = v5[15];
  v5[15] = v19;

  *(v5 + 235) = v6->_active;
  *(v5 + 236) = v6->_warmingUp;
  *(v5 + 238) = v6->_visible;
  *(v5 + 237) = v6->_supportsAuthentication;
  v21 = [(NSMutableDictionary *)v6->_dataclassProperties mutableCopyWithZone:a3];
  v22 = v5[12];
  v5[12] = v21;

  v23 = [(NSURL *)v6->_objectID copyWithZone:a3];
  v24 = v5[13];
  v5[13] = v23;

  v25 = [(ACAccount *)v6->_parentAccount copyWithZone:a3];
  v26 = v5[18];
  v5[18] = v25;

  v27 = [(ACTrackedSet *)v6->_trackedProvisionedDataclasses mutableCopyWithZone:a3];
  v28 = v5[21];
  v5[21] = v27;

  *(v5 + 240) = v6->_wasProvisionedDataclassesReset;
  v29 = [(NSSet *)v6->_enabledEnumDataclasses copy];
  v30 = v5[22];
  v5[22] = v29;

  v31 = [(NSSet *)v6->_provisionedEnumDataclasses copy];
  v32 = v5[20];
  v5[20] = v31;

  v33 = [(ACTrackedSet *)v6->_trackedEnabledDataclasses mutableCopyWithZone:a3];
  v34 = v5[23];
  v5[23] = v33;

  *(v5 + 241) = v6->_wasEnabledDataclassesReset;
  v35 = [(NSString *)v6->_authenticationType copyWithZone:a3];
  v36 = v5[6];
  v5[6] = v35;

  v37 = [(NSString *)v6->_credentialType copyWithZone:a3];
  v38 = v5[7];
  v5[7] = v37;

  v39 = [(NSString *)v6->_owningBundleID copyWithZone:a3];
  v40 = v5[4];
  v5[4] = v39;

  v41 = [(NSMutableSet *)v6->_dirtyProperties mutableCopyWithZone:a3];
  v42 = v5[24];
  v5[24] = v41;

  v43 = [(NSMutableSet *)v6->_dirtyAccountProperties mutableCopyWithZone:a3];
  v44 = v5[25];
  v5[25] = v43;

  v45 = [(NSMutableSet *)v6->_dirtyDataclassProperties mutableCopyWithZone:a3];
  v46 = v5[26];
  v5[26] = v45;

  v47 = [(NSDate *)v6->_date copyWithZone:a3];
  v48 = v5[14];
  v5[14] = v47;

  WeakRetained = objc_loadWeakRetained(&v6->_accountStore);
  objc_storeWeak(v5 + 1, WeakRetained);

  *(v5 + 233) = v6->_accountAccessAvailable;
  v50 = [(ACAccount *)v6->_parentAccount copyWithZone:a3];
  v51 = v5[18];
  v5[18] = v50;

  *(v5 + 239) = v6->_haveCheckedForChildAccounts;
  v52 = [(NSArray *)v6->_childAccounts copyWithZone:a3];
  v53 = v5[19];
  v5[19] = v52;

  v54 = [v6->_accountPropertiesTransformer copyWithZone:a3];
  v55 = v5[28];
  v5[28] = v54;

  v56 = [(NSString *)v6->_modificationID copyWithZone:a3];
  v57 = v5[16];
  v5[16] = v56;

  if (v5[10])
  {
    [v5 _installCredentialsChangedObserver];
  }

  objc_sync_exit(v6);

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

  v5 = [(ACAccount *)self creationDate];
  v33 = [v3 stringFromDate:v5];

  v24 = MEMORY[0x1E696AEC0];
  v27 = [(ACAccount *)self accountType];
  v32 = [v27 identifier];
  v31 = [(ACAccount *)self identifier];
  v30 = [(ACAccount *)self accountDescription];
  v29 = [(ACAccount *)self username];
  v26 = [(ACAccount *)self username];
  v23 = ACHashedString(v26);
  v22 = [(ACAccount *)self objectID];
  v21 = [(ACAccount *)self provisionedDataclasses];
  v28 = [(ACAccount *)self enabledDataclasses];
  v20 = [(ACAccount *)self dataclassProperties];
  v6 = [(ACAccount *)self accountProperties];
  v19 = [(ACAccount *)self parentAccountIdentifier];
  v18 = [(ACAccount *)self owningBundleID];
  if ([(ACAccount *)self isAuthenticated])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v17 = v7;
  v16 = [(ACAccount *)self lastCredentialRenewalRejectionDate];
  if ([(ACAccount *)self supportsAuthentication])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [(ACAccount *)self authenticationType];
  v10 = [(ACAccount *)self credentialType];
  v11 = [(ACAccount *)self credential];
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

  v25 = [v24 stringWithFormat:@"type:%@\nidentifier: %@\naccountDescription: %@\nusername: %@ (%@)\nobjectID: %@\nprovisionedDataclasses: %@\nenabledDataclasses: %@\ndataclassProperties: %@\nproperties: %@\nparentAccount: %@\nowningBundleID:%@\nauthenticated: %@\nlastCredentialRenewalRejectedDate: %@\nsupportsAuthentication: %@\nauthenticationType: %@\ncredentialType: %@\ncredential: %@\ncreated: %@\nactive: %@\nvisible: %@\nwarmingUp: %@", v32, v31, v30, v29, v23, v22, v21, v28, v20, v6, v19, v18, v17, v16, v8, v9, v10, v11, v33, v12, v13, v14];

  return v25;
}

- (void)credentialsChanged:(id)a3
{
  v4 = [a3 userInfo];
  v7 = [v4 objectForKey:@"ACAccountIdentifierKey"];

  v5 = [(ACAccount *)self identifier];
  if ([v7 isEqualToString:v5])
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableSet *)v2->_dirtyProperties count]!= 0;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isPropertyDirty:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableSet *)v5->_dirtyProperties containsObject:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)markAllPropertiesDirty
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  dirtyProperties = v2->_dirtyProperties;
  if (!dirtyProperties)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:17];
    v5 = v2->_dirtyProperties;
    v2->_dirtyProperties = v4;

    dirtyProperties = v2->_dirtyProperties;
  }

  [(NSMutableSet *)dirtyProperties addObject:@"accountDescription"];
  [(NSMutableSet *)v2->_dirtyProperties addObject:@"accountProperties"];
  [(NSMutableSet *)v2->_dirtyProperties addObject:@"accountType"];
  [(NSMutableSet *)v2->_dirtyProperties addObject:@"active"];
  [(NSMutableSet *)v2->_dirtyProperties addObject:@"warmingUp"];
  [(NSMutableSet *)v2->_dirtyProperties addObject:@"authenticated"];
  [(NSMutableSet *)v2->_dirtyProperties addObject:@"lastCredentialRenewalRejectionDate"];
  [(NSMutableSet *)v2->_dirtyProperties addObject:@"credential"];
  [(NSMutableSet *)v2->_dirtyProperties addObject:@"dataclassProperties"];
  [(NSMutableSet *)v2->_dirtyProperties addObject:@"date"];
  [(NSMutableSet *)v2->_dirtyProperties addObject:@"enabledDataclasses"];
  [(NSMutableSet *)v2->_dirtyProperties addObject:@"provisionedDataclasses"];
  [(NSMutableSet *)v2->_dirtyProperties addObject:@"identifier"];
  [(NSMutableSet *)v2->_dirtyProperties addObject:@"owningBundleID"];
  [(NSMutableSet *)v2->_dirtyProperties addObject:@"parent"];
  [(NSMutableSet *)v2->_dirtyProperties addObject:@"supportsAuthentication"];
  [(NSMutableSet *)v2->_dirtyProperties addObject:@"username"];
  [(NSMutableSet *)v2->_dirtyProperties addObject:@"visible"];
  [(NSMutableSet *)v2->_dirtyProperties addObject:@"modificationID"];
  if (!v2->_dirtyAccountProperties)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[NSMutableDictionary count](v2->_properties, "count")}];
    dirtyAccountProperties = v2->_dirtyAccountProperties;
    v2->_dirtyAccountProperties = v6;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v2->_properties;
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

        [(NSMutableSet *)v2->_dirtyAccountProperties addObject:*(*(&v13 + 1) + 8 * v11++), v13];
      }

      while (v9 != v11);
      v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v2);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)setDirty:(BOOL)a3 forProperty:(id)a4
{
  v4 = a3;
  v7 = a4;
  v6 = self;
  objc_sync_enter(v6);
  if (v4)
  {
    [(ACAccount *)v6 _unsafe_markPropertyDirty:v7];
  }

  else
  {
    [(NSMutableSet *)v6->_dirtyProperties removeObject:v7];
  }

  objc_sync_exit(v6);
}

- (void)_markPropertyDirty:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(ACAccount *)v4 _unsafe_markPropertyDirty:v5];
  objc_sync_exit(v4);
}

- (void)_unsafe_markPropertyDirty:(id)a3
{
  v4 = a3;
  dirtyProperties = self->_dirtyProperties;
  v8 = v4;
  if (!dirtyProperties)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    v7 = self->_dirtyProperties;
    self->_dirtyProperties = v6;

    v4 = v8;
    dirtyProperties = self->_dirtyProperties;
  }

  [(NSMutableSet *)dirtyProperties addObject:v4];
}

- (void)_markAccountPropertyDirty:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(ACAccount *)v4 _unsafe_markAccountPropertyDirty:v5];
  objc_sync_exit(v4);
}

- (void)_unsafe_markAccountPropertyDirty:(id)a3
{
  v4 = a3;
  dirtyAccountProperties = self->_dirtyAccountProperties;
  v8 = v4;
  if (!dirtyAccountProperties)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    v7 = self->_dirtyAccountProperties;
    self->_dirtyAccountProperties = v6;

    v4 = v8;
    dirtyAccountProperties = self->_dirtyAccountProperties;
  }

  [(NSMutableSet *)dirtyAccountProperties addObject:v4];
}

- (void)_markDataclassPropertyDirty:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(ACAccount *)v4 _unsafe_markDataclassPropertyDirty:v5];
  objc_sync_exit(v4);
}

- (void)_unsafe_markDataclassPropertyDirty:(id)a3
{
  v4 = a3;
  dirtyDataclassProperties = self->_dirtyDataclassProperties;
  v8 = v4;
  if (!dirtyDataclassProperties)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    v7 = self->_dirtyDataclassProperties;
    self->_dirtyDataclassProperties = v6;

    v4 = v8;
    dirtyDataclassProperties = self->_dirtyDataclassProperties;
  }

  [(NSMutableSet *)dirtyDataclassProperties addObject:v4];
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
    v7 = [(ACTrackedSet *)obj->_trackedProvisionedDataclasses allObjects];
    v8 = [(ACTrackedSet *)v6 initWithArray:v7];
    trackedProvisionedDataclasses = obj->_trackedProvisionedDataclasses;
    obj->_trackedProvisionedDataclasses = v8;

    v5 = obj;
  }

  v5->_wasProvisionedDataclassesReset = 0;
  if (v5->_trackedEnabledDataclasses)
  {
    v10 = [ACMutableTrackedSet alloc];
    v11 = [(ACTrackedSet *)obj->_trackedEnabledDataclasses allObjects];
    v12 = [(ACTrackedSet *)v10 initWithArray:v11];
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

- (void)setIdentifier:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  identifier = v4->_identifier;
  v4->_identifier = v5;

  [(ACAccount *)v4 _unsafe_markPropertyDirty:@"identifier"];
  objc_sync_exit(v4);
}

- (void)setAuthenticationType:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  authenticationType = v4->_authenticationType;
  v4->_authenticationType = v5;

  [(ACAccount *)v4 _unsafe_markPropertyDirty:@"authenticationType"];
  objc_sync_exit(v4);
}

- (void)setCredentialType:(id)a3
{
  v7 = a3;
  if ([(ACAccount *)self _useParentForCredentials])
  {
    v4 = [(ACAccount *)self parentAccount];
    [(ACAccount *)v4 setCredentialType:v7];
  }

  else
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = [v7 copy];
    credentialType = v4->_credentialType;
    v4->_credentialType = v5;

    [(ACAccount *)v4 _unsafe_markPropertyDirty:@"credentialType"];
    objc_sync_exit(v4);
  }
}

- (void)setUsername:(NSString *)username
{
  v7 = username;
  if ([(ACAccount *)self _useParentForCredentials])
  {
    v4 = [(ACAccount *)self parentAccount];
    [(ACAccount *)v4 setUsername:v7];
  }

  else
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = [(NSString *)v7 copy];
    v6 = v4->_username;
    v4->_username = v5;

    [(ACAccount *)v4 _unsafe_markPropertyDirty:@"username"];
    objc_sync_exit(v4);
  }
}

- (NSString)userFullName
{
  v3 = [(ACAccount *)self objectForKeyedSubscript:@"firstName"];
  if (v3 && (v4 = v3, [(ACAccount *)self objectForKeyedSubscript:@"lastName"], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    v7 = [(ACAccount *)self objectForKeyedSubscript:@"firstName"];
    [v6 setGivenName:v7];

    v8 = [(ACAccount *)self objectForKeyedSubscript:@"middleName"];
    [v6 setMiddleName:v8];

    v9 = [(ACAccount *)self objectForKeyedSubscript:@"lastName"];
    [v6 setFamilyName:v9];

    v10 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v6 style:2 options:0];
  }

  else
  {
    v6 = [(ACAccount *)self accountProperties];
    v10 = [v6 objectForKey:@"ACPropertyFullName"];
  }

  v11 = v10;

  return v11;
}

- (id)credentialWithError:(id *)a3
{
  if ([(ACAccount *)self _useParentForCredentials])
  {
    v5 = [(ACAccount *)self parentAccount];
    v6 = [(ACAccount *)v5 credentialWithError:a3];
  }

  else
  {
    v7 = self;
    objc_sync_enter(v7);
    p_credential = &v7->_credential;
    v6 = v7->_credential;
    objc_sync_exit(v7);

    if (v6)
    {
      goto LABEL_8;
    }

    v9 = [(ACAccount *)v7 accountStore];
    v6 = [v9 credentialForAccount:v7 error:a3];

    v5 = v7;
    objc_sync_enter(v5);
    objc_storeStrong(p_credential, v6);
    if (!v5->_credentialsDidChangeObserver)
    {
      [(ACAccount *)v5 _installCredentialsChangedObserver];
    }

    objc_sync_exit(v5);
  }

LABEL_8:

  return v6;
}

- (void)setCredential:(ACAccountCredential *)credential
{
  v6 = credential;
  if ([(ACAccount *)self _useParentForCredentials])
  {
    v5 = [(ACAccount *)self parentAccount];
    [(ACAccount *)v5 setCredential:v6];
  }

  else
  {
    v5 = self;
    objc_sync_enter(v5);
    [(ACAccountCredential *)v5->_credential _setOwningAccount:0];
    objc_storeStrong(&v5->_credential, credential);
    if (!v5->_credentialsDidChangeObserver)
    {
      [(ACAccount *)v5 _installCredentialsChangedObserver];
    }

    [(ACAccountCredential *)v5->_credential _setOwningAccount:v5];
    [(ACAccount *)v5 _unsafe_markPropertyDirty:@"credential"];
    [(ACAccount *)v5 setLastCredentialRenewalRejectionDate:0];
    objc_sync_exit(v5);
  }
}

- (ACAccountCredential)internalCredential
{
  if ([(ACAccount *)self _useParentForCredentials])
  {
    v3 = [(ACAccount *)self parentAccount];
    v4 = [(ACAccount *)v3 internalCredential];
  }

  else
  {
    v3 = self;
    objc_sync_enter(v3);
    v4 = v3->_credential;
    objc_sync_exit(v3);
  }

  return v4;
}

- (void)setAccountDescription:(NSString *)accountDescription
{
  v8 = accountDescription;
  v4 = [(ACAccount *)self parentAccount];

  if (!v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSString *)v8 copy];
    v7 = v5->_accountDescription;
    v5->_accountDescription = v6;

    [(ACAccount *)v5 _unsafe_markPropertyDirty:@"accountDescription"];
    objc_sync_exit(v5);
  }
}

- (void)setOwningBundleID:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  owningBundleID = v4->_owningBundleID;
  v4->_owningBundleID = v5;

  [(ACAccount *)v4 _unsafe_markPropertyDirty:@"owningBundleID"];
  objc_sync_exit(v4);
}

- (NSDate)creationDate
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_date;
  objc_sync_exit(v2);

  return v3;
}

- (void)setCreationDate:(id)a3
{
  v6 = a3;
  v5 = self;
  objc_sync_enter(v5);
  objc_storeStrong(&v5->_date, a3);
  [(ACAccount *)v5 _unsafe_markPropertyDirty:@"date"];
  objc_sync_exit(v5);
}

- (void)setAccountProperties:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v5->_properties;
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

        [(ACAccount *)v5 _markAccountPropertyDirty:*(*(&v21 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  [(ACAccount *)v5 willChangeValueForKey:@"accountProperties"];
  v10 = [v4 mutableCopy];
  properties = v5->_properties;
  v5->_properties = v10;

  [(ACAccount *)v5 didChangeValueForKey:@"accountProperties"];
  [(ACAccount *)v5 _unsafe_markPropertyDirty:@"accountProperties"];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v5->_properties;
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

        [(ACAccount *)v5 _markAccountPropertyDirty:*(*(&v17 + 1) + 8 * v15++), v17];
      }

      while (v13 != v15);
      v13 = [(NSMutableDictionary *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  objc_sync_exit(v5);
  v16 = *MEMORY[0x1E69E9840];
}

- (id)accountPropertyForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_properties objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)setAccountProperty:(id)a3 forKey:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  properties = v7->_properties;
  if (!properties)
  {
    [(ACAccount *)v7 willChangeValueForKey:@"accountProperties"];
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = v7->_properties;
    v7->_properties = v9;

    [(ACAccount *)v7 didChangeValueForKey:@"accountProperties"];
    properties = v7->_properties;
  }

  v11 = [(NSMutableDictionary *)properties objectForKeyedSubscript:v6];
  if (v11 != v12 && (!v12 || ([v11 isEqual:v12] & 1) == 0))
  {
    [(NSMutableDictionary *)v7->_properties setValue:v12 forKey:v6];
    [(ACAccount *)v7 _unsafe_markPropertyDirty:@"accountProperties"];
    [(ACAccount *)v7 _markAccountPropertyDirty:v6];
  }

  objc_sync_exit(v7);
}

- (void)setLastCredentialRenewalRejectionDate:(id)a3
{
  v6 = a3;
  if ([(ACAccount *)self _useParentForCredentials])
  {
    v5 = [(ACAccount *)self parentAccount];
    [(ACAccount *)v5 setLastCredentialRenewalRejectionDate:v6];
  }

  else
  {
    v5 = self;
    objc_sync_enter(v5);
    objc_storeStrong(&v5->_lastCredentialRenewalRejectionDate, a3);
    [(ACAccount *)v5 _unsafe_markPropertyDirty:@"lastCredentialRenewalRejectionDate"];
    objc_sync_exit(v5);
  }
}

- (void)setActive:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_active = a3;
  [(ACAccount *)obj _unsafe_markPropertyDirty:@"active"];
  objc_sync_exit(obj);
}

- (void)setWarmingUp:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_warmingUp = a3;
  [(ACAccount *)obj _unsafe_markPropertyDirty:@"warmingUp"];
  objc_sync_exit(obj);
}

- (void)setCredentialLocation:(unint64_t)a3
{
  if (a3 > 1)
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
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(ACAccount *)self setAccountProperty:v5 forKey:@"CredentialStorageLocation"];
  }
}

- (BOOL)isVisible
{
  v2 = self;
  objc_sync_enter(v2);
  visible = v2->_visible;
  objc_sync_exit(v2);

  return visible;
}

- (void)setVisible:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_visible = a3;
  [(ACAccount *)obj _unsafe_markPropertyDirty:@"visible"];
  objc_sync_exit(obj);
}

- (BOOL)supportsAuthentication
{
  if ([(ACAccount *)self _useParentForCredentials])
  {
    v3 = [(ACAccount *)self parentAccount];
    supportsAuthentication = [(ACAccount *)v3 supportsAuthentication];
  }

  else
  {
    v3 = self;
    objc_sync_enter(v3);
    supportsAuthentication = v3->_supportsAuthentication;
    objc_sync_exit(v3);
  }

  return supportsAuthentication;
}

- (BOOL)supportsPush
{
  v2 = self;
  v3 = [(ACAccount *)self accountStore];
  LOBYTE(v2) = [v3 isPushSupportedForAccount:v2];

  return v2;
}

- (void)_setAccountStore:(id)a3
{
  obj = a3;
  v4 = self;
  objc_sync_enter(v4);
  objc_storeWeak(&v4->_accountStore, obj);
  [(ACAccountType *)v4->_accountType setAccountStore:obj];
  parentAccount = v4->_parentAccount;
  if (parentAccount)
  {
    [(ACAccount *)parentAccount _setAccountStore:obj];
  }

  objc_sync_exit(v4);
}

- (void)setAccountType:(ACAccountType *)accountType
{
  v6 = accountType;
  v5 = self;
  objc_sync_enter(v5);
  objc_storeStrong(&v5->_accountType, accountType);
  [(ACAccount *)v5 _unsafe_markPropertyDirty:@"accountType"];
  objc_sync_exit(v5);
}

- (void)setParentAccount:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v5 = [v14 identifier];
  v6 = [(ACAccount *)self identifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v10 = MEMORY[0x1E695DF30];
    v15 = @"account";
    v16[0] = v14;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v10 exceptionWithName:*MEMORY[0x1E695D940] reason:@"ACAccount can't be its own parent" userInfo:v11];
    v13 = v12;

    objc_exception_throw(v12);
  }

  v8 = self;
  objc_sync_enter(v8);
  objc_storeStrong(&v8->_parentAccount, a3);
  [(ACAccount *)v8 _unsafe_markPropertyDirty:@"parent"];
  objc_sync_exit(v8);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_resetParentAccount:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  parentAccount = obj->_parentAccount;
  obj->_parentAccount = v4;

  objc_sync_exit(obj);
}

- (ACAccount)displayAccount
{
  v3 = [(ACAccount *)self parentAccount];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 displayAccount];
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

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
    v4 = [(ACAccount *)self accountStore];
    v3 = [v4 childAccountsForAccount:self];

    v5 = self;
    objc_sync_enter(v5);
    objc_storeStrong(&v5->_childAccounts, v3);
    objc_sync_exit(v5);
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = v6->_childAccounts;
  objc_sync_exit(v6);

  return v7;
}

- (id)childAccountsWithAccountTypeIdentifier:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_childAccounts)
  {
    obj = v5;
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5->_childAccounts;
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
          v12 = [v11 accountType];
          v13 = [v12 identifier];
          v14 = [v13 isEqualToString:v4];

          if (v14)
          {
            [v6 addObject:v11];
          }
        }

        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    v15 = obj;
    objc_sync_exit(obj);
  }

  else
  {
    objc_sync_exit(v5);

    v15 = [(ACAccount *)v5 accountStore];
    v6 = [v15 childAccountsForAccount:v5 withTypeIdentifier:v4];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_setModID:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  modificationID = obj->_modificationID;
  obj->_modificationID = v4;

  objc_sync_exit(obj);
}

- (ACTrackedSet)trackedProvisionedDataclasses
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(ACMutableTrackedSet *)v2->_trackedProvisionedDataclasses copy];
  objc_sync_exit(v2);

  return v3;
}

- (id)changeTypeForProvisionedDataclass:(id)a3
{
  v4 = a3;
  v5 = [(ACAccount *)self parentAccount];

  if (v5)
  {
    v6 = [(ACAccount *)self parentAccount];
    v7 = [(ACAccount *)v6 changeTypeForProvisionedDataclass:v4];
  }

  else
  {
    v6 = self;
    objc_sync_enter(v6);
    if (v6->_trackedEnabledDataclasses)
    {
      v8 = [(ACTrackedSet *)v6->_trackedProvisionedDataclasses allModifications];
      v9 = [v8 objectForKeyedSubscript:v4];
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

    objc_sync_exit(v6);
  }

  return v7;
}

- (NSMutableSet)provisionedDataclasses
{
  v3 = [(ACAccount *)self parentAccount];

  if (v3)
  {
    v4 = [(ACAccount *)self parentAccount];
    v5 = [v4 provisionedDataclasses];

    v6 = [v5 mutableCopy];
    v7 = [(ACAccount *)self accountType];
    v8 = [v7 supportedDataclasses];
    [v6 intersectSet:v8];
  }

  else
  {
    v9 = self;
    objc_sync_enter(v9);
    if (v9->_trackedProvisionedDataclasses)
    {
      v6 = [MEMORY[0x1E695DFA8] setWithTrackedSet:?];
    }

    else
    {
      v6 = 0;
    }

    objc_sync_exit(v9);

    if (!v6)
    {
      v10 = v9;
      objc_sync_enter(v10);
      [(ACAccount *)v10 _unsafe_loadProvisionedDataclasses];
      if (v9->_trackedProvisionedDataclasses)
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

- (void)setProvisionedDataclasses:(id)a3
{
  v4 = a3;
  v5 = _ACLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ACAccount setProvisionedDataclasses:];
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = objc_alloc_init(ACMutableTrackedSet);
  trackedProvisionedDataclasses = v6->_trackedProvisionedDataclasses;
  v6->_trackedProvisionedDataclasses = v7;

  v9 = v6->_trackedProvisionedDataclasses;
  v10 = [v4 allObjects];
  [(ACMutableTrackedSet *)v9 addObjectsFromArray:v10];

  v6->_wasProvisionedDataclassesReset = 1;
  [(ACAccount *)v6 _unsafe_markPropertyDirty:@"provisionedDataclasses"];
  objc_sync_exit(v6);
}

- (BOOL)isProvisionedForDataclass:(id)a3
{
  v4 = a3;
  v5 = [(ACAccount *)self provisionedDataclasses];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)setProvisioned:(BOOL)a3 forDataclass:(id)a4
{
  v6 = a4;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __41__ACAccount_setProvisioned_forDataclass___block_invoke;
  v18[3] = &unk_1E7976B98;
  v21 = a3;
  v7 = v6;
  v19 = v7;
  v20 = self;
  v8 = MEMORY[0x1AC5B3C70](v18);
  v9 = self;
  objc_sync_enter(v9);
  if (v9->_trackedProvisionedDataclasses)
  {
    v8[2](v8);
    objc_sync_exit(v9);
  }

  else
  {
    objc_sync_exit(v9);

    v10 = [(ACAccount *)v9 accountStore];
    v17 = 0;
    v11 = [v10 provisionedDataclassesForAccount:v9 error:&v17];
    v12 = v17;

    if (v12)
    {
      v13 = _ACLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ACAccount _unsafe_loadProvisionedDataclasses];
      }
    }

    v14 = v9;
    objc_sync_enter(v14);
    if (!v9->_trackedProvisionedDataclasses)
    {
      if (v11)
      {
        v15 = [(ACTrackedSet *)[ACMutableTrackedSet alloc] initWithSet:v11];
      }

      else
      {
        v15 = objc_alloc_init(ACMutableTrackedSet);
      }

      trackedProvisionedDataclasses = v9->_trackedProvisionedDataclasses;
      v9->_trackedProvisionedDataclasses = v15;
    }

    (v8[2])(v8, v9->_trackedProvisionedDataclasses);
    objc_sync_exit(v14);

    v9 = v12;
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(ACMutableTrackedSet *)v2->_trackedEnabledDataclasses copy];
  objc_sync_exit(v2);

  return v3;
}

- (id)changeTypeForEnabledDataclass:(id)a3
{
  v4 = a3;
  v5 = [(ACAccount *)self parentAccount];

  if (v5)
  {
    v6 = [(ACAccount *)self parentAccount];
    v7 = [(ACAccount *)v6 changeTypeForEnabledDataclass:v4];
  }

  else
  {
    v6 = self;
    objc_sync_enter(v6);
    trackedEnabledDataclasses = v6->_trackedEnabledDataclasses;
    if (trackedEnabledDataclasses)
    {
      v9 = [(ACTrackedSet *)trackedEnabledDataclasses allModifications];
      v10 = [v9 objectForKeyedSubscript:v4];
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

    objc_sync_exit(v6);
  }

  return v7;
}

- (void)setEnabledDataclasses:(id)a3
{
  v5 = a3;
  v6 = [(ACAccount *)self parentAccount];

  if (v6)
  {
    [(ACAccount *)a2 setEnabledDataclasses:?];
  }

  v7 = _ACLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACAccount setEnabledDataclasses:];
  }

  v8 = self;
  objc_sync_enter(v8);
  v9 = objc_alloc_init(ACMutableTrackedSet);
  trackedEnabledDataclasses = v8->_trackedEnabledDataclasses;
  v8->_trackedEnabledDataclasses = v9;

  v11 = v8->_trackedEnabledDataclasses;
  v12 = [v5 allObjects];
  [(ACMutableTrackedSet *)v11 addObjectsFromArray:v12];

  v8->_wasEnabledDataclassesReset = 1;
  [(ACAccount *)v8 _unsafe_markPropertyDirty:@"enabledDataclasses"];
  objc_sync_exit(v8);
}

- (BOOL)isEnabledForDataclass:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"com.apple.Dataclass.DeviceLocator"])
  {
    v5 = _ACLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ACAccount isEnabledForDataclass:];
    }
  }

  v6 = [(ACAccount *)self enabledDataclasses];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (void)setEnabled:(BOOL)a3 forDataclass:(id)a4
{
  v7 = a4;
  v8 = [(ACAccount *)self parentAccount];

  if (v8)
  {
    [ACAccount setEnabled:a2 forDataclass:self];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __37__ACAccount_setEnabled_forDataclass___block_invoke;
  v20[3] = &unk_1E7976B98;
  v23 = a3;
  v9 = v7;
  v21 = v9;
  v22 = self;
  v10 = MEMORY[0x1AC5B3C70](v20);
  v11 = self;
  objc_sync_enter(v11);
  if (v11->_trackedEnabledDataclasses)
  {
    v10[2](v10);
    objc_sync_exit(v11);
  }

  else
  {
    objc_sync_exit(v11);

    v12 = [(ACAccount *)v11 accountStore];
    v19 = 0;
    v13 = [v12 enabledDataclassesForAccount:v11 error:&v19];
    v14 = v19;

    if (v14)
    {
      v15 = _ACLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ACAccount _unsafe_loadEnabledDataclasses];
      }
    }

    v16 = v11;
    objc_sync_enter(v16);
    if (!v11->_trackedEnabledDataclasses)
    {
      if (v13)
      {
        v17 = [(ACTrackedSet *)[ACMutableTrackedSet alloc] initWithSet:v13];
      }

      else
      {
        v17 = objc_alloc_init(ACMutableTrackedSet);
      }

      trackedEnabledDataclasses = v11->_trackedEnabledDataclasses;
      v11->_trackedEnabledDataclasses = v17;
    }

    (v10[2])(v10, v11->_trackedEnabledDataclasses);
    objc_sync_exit(v16);

    v11 = v14;
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

- (BOOL)isEnabledToSyncDataclass:(id)a3
{
  v4 = a3;
  if ([(ACAccount *)self isEnabledForDataclass:v4])
  {
    v5 = [(ACAccount *)self accountType];
    v6 = [v5 syncableDataclasses];
    v7 = [v6 containsObject:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setDataclassProperties:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 mutableCopy];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5->_dataclassProperties;
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

        [(ACAccount *)v5 _markDataclassPropertyDirty:*(*(&v20 + 1) + 8 * v10++)];
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
  v11 = v4;
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

        [(ACAccount *)v5 _markDataclassPropertyDirty:*(*(&v16 + 1) + 8 * v14++), v16];
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  [(ACAccount *)v5 willChangeValueForKey:@"dataclassProperties"];
  objc_storeStrong(&v5->_dataclassProperties, v6);
  [(ACAccount *)v5 didChangeValueForKey:@"dataclassProperties"];
  [(ACAccount *)v5 _unsafe_markPropertyDirty:@"dataclassProperties"];

  objc_sync_exit(v5);
  v15 = *MEMORY[0x1E69E9840];
}

- (id)propertiesForDataclass:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_dataclassProperties objectForKey:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)setProperties:(id)a3 forDataclass:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(ACAccount *)v7 propertiesForDataclass:v6];
  if (v8 != v12 && (!v8 || ([v8 isEqual:v12] & 1) == 0))
  {
    dataclassProperties = v7->_dataclassProperties;
    if (!dataclassProperties)
    {
      [(ACAccount *)v7 willChangeValueForKey:@"dataclassProperties"];
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = v7->_dataclassProperties;
      v7->_dataclassProperties = v10;

      [(ACAccount *)v7 didChangeValueForKey:@"dataclassProperties"];
      dataclassProperties = v7->_dataclassProperties;
    }

    [(NSMutableDictionary *)dataclassProperties setObject:v12 forKey:v6];
    [(ACAccount *)v7 _markDataclassPropertyDirty:v6];
    [(ACAccount *)v7 _unsafe_markPropertyDirty:@"dataclassProperties"];
  }

  objc_sync_exit(v7);
}

- (void)_setObjectID:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  objectID = v4->_objectID;
  v4->_objectID = v5;

  objc_sync_exit(v4);
}

- (void)takeValuesFromModifiedAccount:(id)a3
{
  v97 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v97 dirtyProperties];
  v6 = [v5 containsObject:@"accountDescription"];

  if (v6)
  {
    v7 = [v97 accountDescription];
    v8 = [v7 copy];
    accountDescription = v4->_accountDescription;
    v4->_accountDescription = v8;
  }

  v10 = [v97 dirtyProperties];
  v11 = [v10 containsObject:@"username"];

  if (v11)
  {
    v12 = [v97 username];
    v13 = [v12 copy];
    username = v4->_username;
    v4->_username = v13;
  }

  v15 = [v97 dirtyProperties];
  v16 = [v15 containsObject:@"accountProperties"];

  if (v16)
  {
    [(ACAccount *)v4 willChangeValueForKey:@"accountProperties"];
    v17 = [v97 accountProperties];
    v18 = [v17 mutableCopy];
    properties = v4->_properties;
    v4->_properties = v18;

    [(ACAccount *)v4 didChangeValueForKey:@"accountProperties"];
  }

  v20 = [v97 dirtyProperties];
  v21 = [v20 containsObject:@"owningBundleID"];

  if (v21)
  {
    v22 = [v97 owningBundleID];
    v23 = [v22 copy];
    owningBundleID = v4->_owningBundleID;
    v4->_owningBundleID = v23;
  }

  v25 = [v97 dirtyProperties];
  v26 = [v25 containsObject:@"dataclassProperties"];

  if (v26)
  {
    [(ACAccount *)v4 willChangeValueForKey:@"dataclassProperties"];
    v27 = [v97 dataclassProperties];
    v28 = [v27 mutableCopy];
    dataclassProperties = v4->_dataclassProperties;
    v4->_dataclassProperties = v28;

    [(ACAccount *)v4 didChangeValueForKey:@"dataclassProperties"];
  }

  v30 = [v97 dirtyProperties];
  v31 = [v30 containsObject:@"authenticated"];

  if (v31)
  {
    v4->_authenticated = [v97 isAuthenticated];
  }

  v32 = [v97 dirtyProperties];
  v33 = [v32 containsObject:@"lastCredentialRenewalRejectionDate"];

  if (v33)
  {
    v34 = [v97 lastCredentialRenewalRejectionDate];
    lastCredentialRenewalRejectionDate = v4->_lastCredentialRenewalRejectionDate;
    v4->_lastCredentialRenewalRejectionDate = v34;
  }

  v36 = [v97 dirtyProperties];
  v37 = [v36 containsObject:@"active"];

  if (v37)
  {
    v4->_active = [v97 isActive];
  }

  v38 = [v97 dirtyProperties];
  v39 = [v38 containsObject:@"warmingUp"];

  if (v39)
  {
    v4->_warmingUp = [v97 isWarmingUp];
  }

  v40 = [v97 dirtyProperties];
  if ([v40 containsObject:@"accountType"])
  {
    v41 = [v97 accountType];
    v42 = [(ACAccount *)v4 identifier];
    v43 = [v41 isEqual:v42];

    if ((v43 & 1) == 0)
    {
      [(ACAccount *)v4 willChangeValueForKey:@"accountType"];
      v44 = [v97 accountType];
      accountType = v4->_accountType;
      v4->_accountType = v44;

      [(ACAccount *)v4 didChangeValueForKey:@"accountType"];
    }
  }

  else
  {
  }

  v46 = [v97 dirtyProperties];
  v47 = [v46 containsObject:@"credential"];

  if (v47)
  {
    v48 = [v97 internalCredential];
    credential = v4->_credential;
    v4->_credential = v48;

    if (!v4->_credentialsDidChangeObserver)
    {
      [(ACAccount *)v4 _installCredentialsChangedObserver];
    }
  }

  v50 = [v97 dirtyProperties];
  v51 = [v50 containsObject:@"parent"];

  if (v51)
  {
    v52 = [v97 parentAccount];
    parentAccount = v4->_parentAccount;
    v4->_parentAccount = v52;
  }

  v54 = [v97 dirtyProperties];
  v55 = [v54 containsObject:@"provisionedDataclasses"];

  if (v55)
  {
    v56 = [v97 trackedProvisionedDataclasses];
    v57 = [v56 mutableCopy];
    trackedProvisionedDataclasses = v4->_trackedProvisionedDataclasses;
    v4->_trackedProvisionedDataclasses = v57;

    v4->_wasProvisionedDataclassesReset = v97[240];
  }

  v59 = [v97 dirtyProperties];
  v60 = [v59 containsObject:@"enabledDataclasses"];

  if (v60)
  {
    v61 = [v97 trackedEnabledDataclasses];
    v62 = [v61 mutableCopy];
    trackedEnabledDataclasses = v4->_trackedEnabledDataclasses;
    v4->_trackedEnabledDataclasses = v62;

    v4->_wasEnabledDataclassesReset = v97[241];
  }

  v64 = [v97 dirtyProperties];
  v65 = [v64 containsObject:@"credentialType"];

  if (v65)
  {
    v66 = [v97 credentialType];
    credentialType = v4->_credentialType;
    v4->_credentialType = v66;
  }

  v68 = [v97 dirtyProperties];
  v69 = [v68 containsObject:@"authenticationType"];

  if (v69)
  {
    v70 = [v97 authenticationType];
    authenticationType = v4->_authenticationType;
    v4->_authenticationType = v70;
  }

  v72 = [v97 dirtyProperties];
  v73 = [v72 containsObject:@"modificationID"];

  if (v73)
  {
    v74 = [v97 modificationID];
    modificationID = v4->_modificationID;
    v4->_modificationID = v74;
  }

  dirtyProperties = v4->_dirtyProperties;
  if (!dirtyProperties)
  {
    v77 = objc_opt_new();
    v78 = v4->_dirtyProperties;
    v4->_dirtyProperties = v77;

    dirtyProperties = v4->_dirtyProperties;
  }

  v79 = [v97 dirtyProperties];
  v80 = [(NSMutableSet *)dirtyProperties setByAddingObjectsFromSet:v79];
  v81 = [v80 mutableCopy];
  v82 = v4->_dirtyProperties;
  v4->_dirtyProperties = v81;

  dirtyAccountProperties = v4->_dirtyAccountProperties;
  if (!dirtyAccountProperties)
  {
    v84 = objc_opt_new();
    v85 = v4->_dirtyAccountProperties;
    v4->_dirtyAccountProperties = v84;

    dirtyAccountProperties = v4->_dirtyAccountProperties;
  }

  v86 = [v97 dirtyAccountProperties];
  v87 = [(NSMutableSet *)dirtyAccountProperties setByAddingObjectsFromSet:v86];
  v88 = [v87 mutableCopy];
  v89 = v4->_dirtyAccountProperties;
  v4->_dirtyAccountProperties = v88;

  dirtyDataclassProperties = v4->_dirtyDataclassProperties;
  if (!dirtyDataclassProperties)
  {
    v91 = objc_opt_new();
    v92 = v4->_dirtyDataclassProperties;
    v4->_dirtyDataclassProperties = v91;

    dirtyDataclassProperties = v4->_dirtyDataclassProperties;
  }

  v93 = [v97 dirtyDataclassProperties];
  v94 = [(NSMutableSet *)dirtyDataclassProperties setByAddingObjectsFromSet:v93];
  v95 = [v94 mutableCopy];
  v96 = v4->_dirtyDataclassProperties;
  v4->_dirtyDataclassProperties = v95;

  objc_sync_exit(v4);
}

- (void)refresh
{
  v100 = *MEMORY[0x1E69E9840];
  v3 = [(ACAccount *)self dirtyProperties];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(ACAccount *)self accountStore];
    v6 = [(ACAccount *)self identifier];
    v79 = [v5 accountWithIdentifier:v6];

    if (v79)
    {
      v7 = self;
      objc_sync_enter(v7);
      if (([(NSMutableSet *)v7->_dirtyProperties containsObject:@"accountDescription"]& 1) == 0)
      {
        v8 = [v79 accountDescription];
        v9 = [v8 copy];
        accountDescription = v7->_accountDescription;
        v7->_accountDescription = v9;
      }

      if (([(NSMutableSet *)v7->_dirtyProperties containsObject:@"username"]& 1) == 0)
      {
        v11 = [v79 username];
        v12 = [v11 copy];
        username = v7->_username;
        v7->_username = v12;
      }

      [(ACAccount *)v7 willChangeValueForKey:@"accountProperties"];
      v14 = [v79 accountProperties];
      v15 = [v14 allKeys];

      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v16 = v15;
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
            v21 = [(ACAccount *)v7 dirtyAccountProperties];
            v22 = [v21 containsObject:v20];

            if ((v22 & 1) == 0)
            {
              v23 = [v79 objectForKeyedSubscript:v20];
              [(NSMutableDictionary *)v7->_properties setObject:v23 forKeyedSubscript:v20];
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
      v24 = [(ACAccount *)v7 accountProperties];
      v25 = [v24 allKeys];

      v26 = [v25 countByEnumeratingWithState:&v88 objects:v98 count:16];
      if (v26)
      {
        v27 = *v89;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v89 != v27)
            {
              objc_enumerationMutation(v25);
            }

            v29 = *(*(&v88 + 1) + 8 * j);
            v30 = [(ACAccount *)v7 dirtyAccountProperties];
            v31 = [v30 containsObject:v29];

            if ((v31 & 1) == 0 && ([v16 containsObject:v29] & 1) == 0)
            {
              [(NSMutableDictionary *)v7->_properties removeObjectForKey:v29];
            }
          }

          v26 = [v25 countByEnumeratingWithState:&v88 objects:v98 count:16];
        }

        while (v26);
      }

      [(ACAccount *)v7 didChangeValueForKey:@"accountProperties"];
      if (([(NSMutableSet *)v7->_dirtyProperties containsObject:@"owningBundleID"]& 1) == 0)
      {
        v32 = [v79 owningBundleID];
        v33 = [v32 copy];
        owningBundleID = v7->_owningBundleID;
        v7->_owningBundleID = v33;
      }

      [(ACAccount *)v7 willChangeValueForKey:@"dataclassProperties"];
      v35 = [v79 dataclassProperties];
      v36 = [v35 allKeys];

      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v37 = v36;
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
            v42 = [(ACAccount *)v7 dirtyDataclassProperties];
            v43 = [v42 containsObject:v41];

            if ((v43 & 1) == 0)
            {
              v44 = [v79 dataclassProperties];
              v45 = [v44 objectForKeyedSubscript:v41];
              [(NSMutableDictionary *)v7->_dataclassProperties setObject:v45 forKeyedSubscript:v41];
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
      v46 = [(ACAccount *)v7 accountProperties];
      v47 = [v46 allKeys];

      v48 = [v47 countByEnumeratingWithState:&v80 objects:v96 count:16];
      if (v48)
      {
        v49 = *v81;
        do
        {
          for (m = 0; m != v48; ++m)
          {
            if (*v81 != v49)
            {
              objc_enumerationMutation(v47);
            }

            v51 = *(*(&v80 + 1) + 8 * m);
            v52 = [(ACAccount *)v7 dirtyDataclassProperties];
            v53 = [v52 containsObject:v51];

            if ((v53 & 1) == 0 && ([v37 containsObject:v51] & 1) == 0)
            {
              [(NSMutableDictionary *)v7->_dataclassProperties removeObjectForKey:v51];
            }
          }

          v48 = [v47 countByEnumeratingWithState:&v80 objects:v96 count:16];
        }

        while (v48);
      }

      [(ACAccount *)v7 didChangeValueForKey:@"dataclassProperties"];
      if (([(NSMutableSet *)v7->_dirtyProperties containsObject:@"dataclassProperties"]& 1) == 0)
      {
        v54 = [v79 dataclassProperties];
        v55 = [v54 mutableCopy];
        dataclassProperties = v7->_dataclassProperties;
        v7->_dataclassProperties = v55;
      }

      if (([(NSMutableSet *)v7->_dirtyProperties containsObject:@"authenticated"]& 1) == 0)
      {
        v7->_authenticated = [v79 isAuthenticated];
      }

      if (([(NSMutableSet *)v7->_dirtyProperties containsObject:@"lastCredentialRenewalRejectionDate"]& 1) == 0)
      {
        v57 = [v79 lastCredentialRenewalRejectionDate];
        lastCredentialRenewalRejectionDate = v7->_lastCredentialRenewalRejectionDate;
        v7->_lastCredentialRenewalRejectionDate = v57;
      }

      if (([(NSMutableSet *)v7->_dirtyProperties containsObject:@"active"]& 1) == 0)
      {
        v7->_active = [v79 isActive];
      }

      if (([(NSMutableSet *)v7->_dirtyProperties containsObject:@"warmingUp"]& 1) == 0)
      {
        v7->_warmingUp = [v79 isWarmingUp];
      }

      v59 = [v79 objectID];
      v60 = [v59 copy];
      objectID = v7->_objectID;
      v7->_objectID = v60;

      if (([(NSMutableSet *)v7->_dirtyProperties containsObject:@"accountType"]& 1) == 0)
      {
        v62 = [v79 accountType];
        accountType = v7->_accountType;
        v7->_accountType = v62;
      }

      if (([(NSMutableSet *)v7->_dirtyProperties containsObject:@"credential"]& 1) == 0)
      {
        credential = v7->_credential;
        v7->_credential = 0;
      }

      if (([(NSMutableSet *)v7->_dirtyProperties containsObject:@"authenticationType"]& 1) == 0)
      {
        v65 = [v79 authenticationType];
        authenticationType = v7->_authenticationType;
        v7->_authenticationType = v65;
      }

      if (([(NSMutableSet *)v7->_dirtyProperties containsObject:@"credentialType"]& 1) == 0)
      {
        v67 = [v79 credentialType];
        credentialType = v7->_credentialType;
        v7->_credentialType = v67;
      }

      if (([(NSMutableSet *)v7->_dirtyProperties containsObject:@"parent"]& 1) == 0)
      {
        v69 = [v79 parentAccount];
        parentAccount = v7->_parentAccount;
        v7->_parentAccount = v69;
      }

      if (([(NSMutableSet *)v7->_dirtyProperties containsObject:@"modificationID"]& 1) == 0)
      {
        v71 = [v79 modificationID];
        v72 = [v71 copy];
        modificationID = v7->_modificationID;
        v7->_modificationID = v72;
      }

      if (([(NSMutableSet *)v7->_dirtyProperties containsObject:@"provisionedDataclasses"]& 1) == 0)
      {
        trackedProvisionedDataclasses = v7->_trackedProvisionedDataclasses;
        v7->_trackedProvisionedDataclasses = 0;

        v7->_wasProvisionedDataclassesReset = 0;
      }

      if (([(NSMutableSet *)v7->_dirtyProperties containsObject:@"enabledDataclasses"]& 1) == 0)
      {
        trackedEnabledDataclasses = v7->_trackedEnabledDataclasses;
        v7->_trackedEnabledDataclasses = 0;

        v7->_wasEnabledDataclassesReset = 0;
      }

      childAccounts = v7->_childAccounts;
      v7->_childAccounts = 0;

      v7->_haveCheckedForChildAccounts = 0;
      objc_sync_exit(v7);
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
  v3 = [(ACAccount *)self enabledDataclasses];
  v4 = [(ACAccount *)self provisionedDataclasses];
  v5 = [(ACAccount *)self credential];
  v6 = [(ACAccount *)self parentAccount];
  [v6 _loadAllCachedProperties];
}

- (id)accountByCleaningThirdPartyTransformations
{
  v3 = [(ACAccount *)self accountPropertiesTransformer];

  if (v3)
  {
    v4 = [(ACAccount *)self copy];
    properties = v4->_properties;
    v6 = (*(v4->_accountPropertiesTransformer + 2))();
    v7 = [v6 mutableCopy];
    v8 = v4->_properties;
    v4->_properties = v7;
  }

  else
  {
    v4 = self;
  }

  return v4;
}

- (NSString)clientToken
{
  v3 = [(ACAccount *)self parentAccount];

  if (v3)
  {
    v4 = [(ACAccount *)self parentAccount];
    v5 = [(NSString *)v4 clientToken];
  }

  else
  {
    v6 = self;
    objc_sync_enter(v6);
    v7 = v6->_clientToken;
    objc_sync_exit(v6);

    if (!v7)
    {
      if (v6->_haveCheckedForClientToken)
      {
        v7 = 0;
      }

      else
      {
        v6->_haveCheckedForClientToken = 1;
        v8 = [(ACAccount *)v6 accountStore];
        v7 = [v8 clientTokenForAccount:v6];
      }
    }

    v9 = v6;
    objc_sync_enter(v9);
    clientToken = v6->_clientToken;
    v6->_clientToken = v7;
    v4 = v7;

    v5 = v6->_clientToken;
    objc_sync_exit(v9);
  }

  return v5;
}

- (BOOL)addClientToken:(id)a3
{
  v5 = a3;
  v6 = [(ACAccount *)self parentAccount];

  v7 = v6 == 0;
  if (v6)
  {
    v8 = [(ACAccount *)self parentAccount];
    [(ACAccount *)v8 addClientToken:v5];
  }

  else
  {
    if (!v5 || (-[ACAccount accountStore](self, "accountStore"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 addClientToken:v5 forAccount:self], v9, !v10))
    {
      v7 = 0;
      goto LABEL_8;
    }

    v8 = self;
    objc_sync_enter(v8);
    objc_storeStrong(&v8->_clientToken, a3);
    objc_sync_exit(v8);
  }

LABEL_8:
  return v7;
}

- (id)defaultAutodiscoverDomainForChildType:(id)a3
{
  v4 = a3;
  v5 = [(ACAccount *)self accountType];
  v6 = [v5 identifier];

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

  if (([(__CFString *)v4 isEqualToString:v11]& 1) != 0)
  {
    v15 = @"caldav.calendar.yahoo.co.jp";
    goto LABEL_15;
  }

  if (([(__CFString *)v4 isEqualToString:v12]& 1) != 0)
  {
    v15 = @"carddav.address.yahoo.co.jp";
  }

  else
  {
LABEL_20:
    if (([(__CFString *)v4 isEqualToString:@"com.apple.account.POP"]& 1) != 0 || [(__CFString *)v4 isEqualToString:@"com.apple.account.SMTP"])
    {
      v16 = v10;

      v4 = v16;
    }

    v17 = [defaultAutodiscoverDomainForChildType__domainMap objectForKeyedSubscript:v6];
    v18 = [v17 objectForKeyedSubscript:v4];
    v19 = v18;
    if (v18)
    {
      v15 = v18;
    }

    else
    {
      v20 = [defaultAutodiscoverDomainForChildType__domainMap objectForKeyedSubscript:v6];
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableSet *)v2->_dirtyAccountProperties copy];
  objc_sync_exit(v2);

  return v3;
}

- (NSSet)dirtyDataclassProperties
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableSet *)v2->_dirtyDataclassProperties copy];
  objc_sync_exit(v2);

  return v3;
}

- (NSString)shortDebugName
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ACAccount *)self username];
  v5 = ACHashedString(v4);
  v6 = [(ACAccount *)self identifier];
  v7 = [v3 stringWithFormat:@"%@ (%@)", v5, v6];

  return v7;
}

- (void)_applyDirtyStateFromAccount:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = [v4 dirtyProperties];
  v7 = [v6 countByEnumeratingWithState:&v39 objects:v45 count:16];
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
          objc_enumerationMutation(v6);
        }

        [(ACAccount *)v5 _unsafe_markPropertyDirty:*(*(&v39 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v7);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = [v4 dirtyAccountProperties];
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v44 count:16];
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
          objc_enumerationMutation(v10);
        }

        [(ACAccount *)v5 _unsafe_markAccountPropertyDirty:*(*(&v35 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v11);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = [v4 dirtyDataclassProperties];
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v43 count:16];
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
          objc_enumerationMutation(v14);
        }

        [(ACAccount *)v5 _unsafe_markDataclassPropertyDirty:*(*(&v31 + 1) + 8 * v17++)];
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v15);
  }

  v18 = [v4 trackedEnabledDataclasses];
  if (v18)
  {
    v19 = [(ACAccount *)v5 trackedEnabledDataclasses];
    v20 = v19 == 0;

    if (v20)
    {
      [(ACAccount *)v5 _unsafe_loadEnabledDataclasses];
    }
  }

  v21 = [v4 trackedEnabledDataclasses];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __41__ACAccount__applyDirtyStateFromAccount___block_invoke;
  v30[3] = &unk_1E7976BE8;
  v30[4] = v5;
  [v21 enumerateModificationsUsingBlock:v30];

  v22 = [v4 trackedProvisionedDataclasses];
  if (v22)
  {
    v23 = [(ACAccount *)v5 trackedProvisionedDataclasses];
    v24 = v23 == 0;

    if (v24)
    {
      [(ACAccount *)v5 _unsafe_loadProvisionedDataclasses];
    }
  }

  v25 = [v4 trackedProvisionedDataclasses];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __41__ACAccount__applyDirtyStateFromAccount___block_invoke_2;
  v29[3] = &unk_1E7976BE8;
  v29[4] = v5;
  [v25 enumerateModificationsUsingBlock:v29];

  v26 = [v4 internalCredential];
  credential = v5->_credential;
  v5->_credential = v26;

  objc_sync_exit(v5);
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

- (BOOL)_isDifferentFrom:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v4)
  {
    v6 = [v4 dirtyProperties];
    v7 = [v6 copy];

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
            lastCredentialRenewalRejectionDate = v5->_lastCredentialRenewalRejectionDate;
            v14 = [v4 lastCredentialRenewalRejectionDate];
            v15 = lastCredentialRenewalRejectionDate;
            v16 = v14;
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
            active = v5->_active;
            v19 = [v4 isActive];
            goto LABEL_19;
          }

          if ([v12 isEqualToString:@"warmingUp"])
          {
            active = v5->_warmingUp;
            v19 = [v4 isWarmingUp];
            goto LABEL_19;
          }

          if ([v12 isEqualToString:@"authenticated"])
          {
            active = v5->_authenticated;
            v19 = [v4 isAuthenticated];
            goto LABEL_19;
          }

          if ([v12 isEqualToString:@"identifier"])
          {
            identifier = v5->_identifier;
            v21 = [v4 identifier];
            v15 = identifier;
            v22 = v21;
            v17 = v22;
            if (v15 && v22)
            {
              goto LABEL_10;
            }

            goto LABEL_36;
          }

          if ([v12 isEqualToString:@"date"])
          {
            date = v5->_date;
            v24 = [v4 creationDate];
            v15 = date;
            v25 = v24;
            v17 = v25;
            if (v15 && v25)
            {
              goto LABEL_10;
            }

            goto LABEL_36;
          }

          if ([v12 isEqualToString:@"authenticationType"])
          {
            authenticationType = v5->_authenticationType;
            v27 = [v4 authenticationType];
            v15 = authenticationType;
            v28 = v27;
            v17 = v28;
            if (v15 && v28)
            {
              goto LABEL_10;
            }

            goto LABEL_36;
          }

          if ([v12 isEqualToString:@"accountDescription"])
          {
            accountDescription = v5->_accountDescription;
            v30 = [v4 accountDescription];
            v15 = accountDescription;
            v31 = v30;
            v17 = v31;
            if (v15 && v31)
            {
              goto LABEL_10;
            }

            goto LABEL_36;
          }

          if ([v12 isEqualToString:@"supportsAuthentication"])
          {
            active = v5->_supportsAuthentication;
            v19 = [v4 supportsAuthentication];
LABEL_19:
            if (active != v19)
            {
              goto LABEL_61;
            }

            goto LABEL_38;
          }

          if ([v12 isEqualToString:@"owningBundleID"])
          {
            owningBundleID = v5->_owningBundleID;
            v33 = [v4 owningBundleID];
            v34 = ACIsEqualOrNil(owningBundleID, v33);

            goto LABEL_48;
          }

          if ([v12 isEqualToString:@"username"])
          {
            username = v5->_username;
            v36 = [v4 username];
            v34 = ACIsEqualOrNil(username, v36);

            goto LABEL_48;
          }

          if ([v12 isEqualToString:@"credentialType"])
          {
            credentialType = v5->_credentialType;
            v38 = [v4 credentialType];
            v34 = ACIsEqualOrNil(credentialType, v38);

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

            active = v5->_visible;
            v19 = [v4 isVisible];
            goto LABEL_19;
          }

          v46 = [(ACAccountType *)v5->_accountType identifier];
          v39 = [v4 accountType];
          v40 = [v39 identifier];
          v45 = ACIsEqualOrNil(v46, v40);

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

  objc_sync_exit(v5);

  v43 = *MEMORY[0x1E69E9840];
  return v42;
}

- (void)setSecIdentity:(__SecIdentity *)a3
{
  if (a3)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B3D0], a3);
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

- (void)setSecCertificates:(id)a3
{
  *&v22[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v16 = self;
    v18 = objc_opt_new();
    if ([v4 count])
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
        v11 = [v4 objectAtIndexedSubscript:{v5, v16}];

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

      while ([v4 count] > v5);
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
      v22 = self;
      do
      {
        v12 = [(ACAccount *)self objectForKeyedSubscript:@"SecCertificatePersistentRefs", v22];
        v13 = [v12 objectAtIndexedSubscript:v7];

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

          self = v22;
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
  v3 = [(ACAccount *)self personaIdentifier];
  if (v3)
  {
    v4 = v3;
    goto LABEL_3;
  }

  v8 = [(ACAccount *)self dirtyProperties];
  v9 = [v8 containsObject:@"PersonaIdentifier"];

  if (v9)
  {
    v10 = _ACPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ACAccount isDataSeparatedAccount];
    }

    v11 = [(ACAccount *)self dirtyProperties];
    v4 = [v11 valueForKey:@"PersonaIdentifier"];

    if (v4)
    {
LABEL_3:
      v5 = +[ACPersonaManager sharedInstance];
      v6 = [v5 enterprisePersonaUID];
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        [v5 updatePersonasUIDs];
        v7 = [v5 enterprisePersonaUID];
        if (!v7)
        {
          goto LABEL_13;
        }
      }

      if ([v7 isEqualToString:v4])
      {
        v12 = 1;
LABEL_14:

        return v12;
      }

LABEL_13:
      v13 = [v5 guestPersonasUIDs];
      v12 = [v13 containsObject:v4];

      goto LABEL_14;
    }
  }

  return 0;
}

- (BOOL)correctPersonaScopedForAccount
{
  v3 = [MEMORY[0x1E69DF060] sharedManager];
  v4 = [v3 currentPersona];

  if ([v4 isEnterprisePersona])
  {
    if ([(ACAccount *)self isDataSeparatedAccount])
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v5 = [v4 isGuestPersona];
  if ([(ACAccount *)self isDataSeparatedAccount])
  {
    if ((v5 & 1) == 0)
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

  if (!v5)
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
  v4 = [v3 firstObject];
  if (!v4)
  {
    v5 = [(ACAccount *)self objectForKeyedSubscript:@"childCardDAVAccountIdentifier"];
    goto LABEL_5;
  }

  if ([(ACAccount *)self isEnabledForDataclass:@"com.apple.Dataclass.Contacts"])
  {
    v5 = [v4 identifier];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (NSString)managingOwnerIdentifier
{
  v3 = [(ACAccount *)self parentAccount];

  if (v3)
  {
    v4 = [(ACAccount *)self parentAccount];
    v5 = [v4 objectForKeyedSubscript:@"ManagingOwnerIdentifier"];
  }

  else
  {
    v5 = [(ACAccount *)self objectForKeyedSubscript:@"ManagingOwnerIdentifier"];
  }

  return v5;
}

- (void)setManagingOwnerIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ACAccount *)self parentAccount];

  if (v5)
  {
    v6 = _ACLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ACAccount setManagingOwnerIdentifier:];
    }
  }

  else
  {
    [(ACAccount *)self setObject:v4 forKeyedSubscript:@"ManagingOwnerIdentifier"];
  }
}

- (NSString)managingSourceName
{
  v3 = [(ACAccount *)self parentAccount];

  if (v3)
  {
    v4 = [(ACAccount *)self parentAccount];
    v5 = [v4 objectForKeyedSubscript:@"ManagingSourceName"];
  }

  else
  {
    v5 = [(ACAccount *)self objectForKeyedSubscript:@"ManagingSourceName"];
  }

  return v5;
}

- (void)setManagingSourceName:(id)a3
{
  v4 = a3;
  v5 = [(ACAccount *)self parentAccount];

  if (v5)
  {
    v6 = _ACLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ACAccount setManagingSourceName:];
    }
  }

  else
  {
    [(ACAccount *)self setObject:v4 forKeyedSubscript:@"ManagingSourceName"];
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
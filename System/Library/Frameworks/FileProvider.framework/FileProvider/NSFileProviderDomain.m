@interface NSFileProviderDomain
+ (id)_userInfoAllowedClasses;
- (BOOL)experimentIDIsValid;
- (NSData)backingStoreIdentity;
- (NSFileProviderDomain)initWithCoder:(id)a3;
- (NSFileProviderDomain)initWithDisplayName:(id)a3 userInfo:(id)a4 volumeURL:(id)a5;
- (NSFileProviderDomain)initWithIdentifier:(id)a3 displayName:(id)a4 userInfo:(id)a5 volumeURL:(id)a6 pathRelativeToDocumentStorage:(id)a7 hidden:(BOOL)a8 replicated:(BOOL)a9;
- (NSNumber)experimentID;
- (NSString)spotlightDomainIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)plistDictionary;
- (void)copyValuesFromExistingDomain:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)plistDictionary;
- (void)setBackingStoreIdentity:(id)a3;
- (void)setUserInfo:(id)a3;
@end

@implementation NSFileProviderDomain

+ (id)_userInfoAllowedClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
}

- (NSData)backingStoreIdentity
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_backingStoreIdentity;
  objc_sync_exit(v2);

  return v3;
}

- (NSString)spotlightDomainIdentifier
{
  spotlightDomainIdentifier = self->_spotlightDomainIdentifier;
  if (!spotlightDomainIdentifier)
  {
    spotlightDomainIdentifier = self->_identifier;
  }

  return spotlightDomainIdentifier;
}

- (id)description
{
  v30 = MEMORY[0x1E696AEC0];
  v29 = objc_opt_class();
  v28 = [(NSString *)self->_displayName fp_obfuscatedFilename];
  v27 = [(NSString *)self->_identifier fp_obfuscatedFilename];
  v3 = [(NSUUID *)self->_volumeUUID fp_UUID];
  v4 = @"disabled";
  if (self->_userEnabled)
  {
    v4 = @"enabled";
  }

  v25 = v4;
  v26 = v3;
  if (self->_hidden)
  {
    v5 = @",hidden";
  }

  else
  {
    v5 = &stru_1F1F94B20;
  }

  v6 = @",hiddenByUser";
  if (!self->_hiddenByUser)
  {
    v6 = &stru_1F1F94B20;
  }

  v23 = v6;
  v24 = v5;
  if (self->_disconnected)
  {
    v7 = @",disconnected";
  }

  else
  {
    v7 = &stru_1F1F94B20;
  }

  v22 = v7;
  if (self->_replicated)
  {
    v8 = @",replicated";
  }

  else
  {
    v8 = &stru_1F1F94B20;
  }

  v21 = v8;
  if (self->_supportsSyncingTrash)
  {
    v9 = @",syncTrash";
  }

  else
  {
    v9 = &stru_1F1F94B20;
  }

  if (self->_supportsSearch)
  {
    v10 = @",searchLegacy";
  }

  else
  {
    v10 = &stru_1F1F94B20;
  }

  if (self->_supportsStringSearchRequest)
  {
    v11 = @",search";
  }

  else
  {
    v11 = &stru_1F1F94B20;
  }

  if (self->_supportsRemoteVersions)
  {
    v12 = @",remoteVersions";
  }

  else
  {
    v12 = &stru_1F1F94B20;
  }

  if (self->_userInfo)
  {
    v13 = @",userInfo";
  }

  else
  {
    v13 = &stru_1F1F94B20;
  }

  testingModes = self->_testingModes;
  if (testingModes)
  {
    v15 = @",test:alwaysEnabled";
  }

  else
  {
    v15 = &stru_1F1F94B20;
  }

  if ((testingModes & 2) != 0)
  {
    v16 = @",test:interactive";
  }

  else
  {
    v16 = &stru_1F1F94B20;
  }

  v17 = FPKnownFoldersDescription(@" supportedKF:", self->_supportedKnownFolders);
  v18 = FPKnownFoldersDescription(@" replicatedKF:", self->_replicatedKnownFolders);
  v19 = [v30 stringWithFormat:@"<%@: %p, %@ id=%@ vid=%@ (%@%@%@%@%@%@%@%@%@%@%@%@)%@%@>", v29, self, v28, v27, v26, v25, v24, v23, v22, v21, v9, v10, v11, v12, v13, v15, v16, v17, v18];

  return v19;
}

- (NSFileProviderDomain)initWithDisplayName:(id)a3 userInfo:(id)a4 volumeURL:(id)a5
{
  v8 = MEMORY[0x1E696AEC0];
  v9 = MEMORY[0x1E696AFB0];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 UUID];
  v14 = [v13 UUIDString];
  v15 = [v8 stringWithFormat:@"%@%@", @"NSFPExternal-", v14];

  LOBYTE(v18) = 1;
  v16 = [(NSFileProviderDomain *)self initWithIdentifier:v15 displayName:v12 userInfo:v11 volumeURL:v10 pathRelativeToDocumentStorage:@"FPFS_SHOULD_NOT_BE_USED" hidden:0 replicated:v18];

  return v16;
}

- (NSFileProviderDomain)initWithIdentifier:(id)a3 displayName:(id)a4 userInfo:(id)a5 volumeURL:(id)a6 pathRelativeToDocumentStorage:(id)a7 hidden:(BOOL)a8 replicated:(BOOL)a9
{
  v16 = a3;
  v28 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v29.receiver = self;
  v29.super_class = NSFileProviderDomain;
  v20 = [(NSFileProviderDomain *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_identifier, a3);
    objc_storeStrong(&v21->_displayName, a4);
    objc_storeStrong(&v21->_pathRelativeToDocumentStorage, a7);
    v21->_hidden = a8;
    objc_storeStrong(&v21->_userInfo, a5);
    if (v18)
    {
      v22 = [v18 fp_volumeUUID];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
      }

      volumeUUID = v21->_volumeUUID;
      v21->_volumeUUID = v24;
    }

    v26 = 1;
    if (!a9)
    {
      v26 = [v19 isEqualToString:@"FPFS_SHOULD_NOT_BE_USED"];
    }

    v21->_replicated = v26;
    *&v21->_supportsSyncingTrash = 1;
    *&v21->_supportsSearch = 0;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  [v10 encodeObject:self->_identifier forKey:@"_identifier"];
  [v10 encodeObject:self->_displayName forKey:@"_displayName"];
  [v10 encodeObject:self->_pathRelativeToDocumentStorage forKey:@"_pathRelativeToDocumentStorage"];
  [v10 encodeBool:self->_hidden forKey:@"_hidden"];
  spotlightDomainIdentifier = self->_spotlightDomainIdentifier;
  if (spotlightDomainIdentifier)
  {
    [v10 encodeObject:spotlightDomainIdentifier forKey:@"_spotlightDomainIdentifier"];
  }

  if (self->_containsPhotos)
  {
    [v10 encodeBool:1 forKey:@"_containsPhotos"];
  }

  v5 = v10;
  if (self->_readOnly)
  {
    [v10 encodeBool:1 forKey:@"_readOnly"];
    v5 = v10;
  }

  if (self->_erasable)
  {
    [v10 encodeBool:1 forKey:@"_erasable"];
    v5 = v10;
  }

  if (self->_isContentManaged)
  {
    [v10 encodeBool:1 forKey:@"_isContentManaged"];
    v5 = v10;
  }

  personaIdentifier = self->_personaIdentifier;
  if (personaIdentifier)
  {
    [v10 encodeObject:personaIdentifier forKey:@"personaIdentifier"];
    v5 = v10;
  }

  volumeUUID = self->_volumeUUID;
  if (volumeUUID)
  {
    [v10 encodeObject:volumeUUID forKey:@"_volumeUUID"];
    v5 = v10;
  }

  [v5 encodeBool:self->_isEnterpriseDomain forKey:@"_isEnterpriseDomain"];
  [v10 encodeBool:self->_isDataSeparatedDomain forKey:@"_isDataSeparatedDomain"];
  [v10 encodeBool:self->_disconnected forKey:@"_disconnected"];
  [v10 encodeObject:self->_disconnectionReason forKey:@"_disconnectionReason"];
  [v10 encodeInteger:self->_disconnectionOptions forKey:@"_disconnectionOptions"];
  v8 = [(NSError *)self->_error fp_strippedError];
  [v10 encodeObject:v8 forKey:@"_error"];

  [v10 encodeObject:self->_userInfo forKey:@"_userInfo"];
  [v10 encodeBool:self->_userEnabled forKey:@"_userEnabled"];
  [v10 encodeBool:self->_replicated forKey:@"_replicated"];
  [v10 encodeInteger:self->_testingModes forKey:@"_testingModes"];
  [v10 encodeBool:self->_supportsSyncingTrash forKey:@"_supportsSyncingTrash"];
  [v10 encodeBool:self->_supportsSearch forKey:@"_supportsSearch"];
  [v10 encodeBool:self->_supportsStringSearchRequest forKey:@"_supportsStringSearchRequest"];
  v9 = self;
  objc_sync_enter(v9);
  [v10 encodeObject:v9->_backingStoreIdentity forKey:@"_backingStoreIdentity"];
  objc_sync_exit(v9);

  [v10 encodeBool:v9->_hiddenByUser forKey:@"_hiddenByUser"];
  [v10 encodeInteger:v9->_supportedKnownFolders forKey:@"_supportedKnownFolders"];
  [v10 encodeInteger:v9->_replicatedKnownFolders forKey:@"_replicatedKnownFolders"];
  [v10 encodeBool:v9->_supportsRemoteVersions forKey:@"_supportsRemoteVersions"];
}

- (NSFileProviderDomain)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = NSFileProviderDomain;
  v5 = [(NSFileProviderDomain *)&v29 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_pathRelativeToDocumentStorage"];
    pathRelativeToDocumentStorage = v5->_pathRelativeToDocumentStorage;
    v5->_pathRelativeToDocumentStorage = v10;

    v5->_hidden = [v4 decodeBoolForKey:@"_hidden"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_spotlightDomainIdentifier"];
    spotlightDomainIdentifier = v5->_spotlightDomainIdentifier;
    v5->_spotlightDomainIdentifier = v12;

    v5->_containsPhotos = [v4 decodeBoolForKey:@"_containsPhotos"];
    v5->_readOnly = [v4 decodeBoolForKey:@"_readOnly"];
    v5->_erasable = [v4 decodeBoolForKey:@"_erasable"];
    v5->_isContentManaged = [v4 decodeBoolForKey:@"_isContentManaged"];
    v5->_isEnterpriseDomain = [v4 decodeBoolForKey:@"_isEnterpriseDomain"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personaIdentifier"];
    personaIdentifier = v5->_personaIdentifier;
    v5->_personaIdentifier = v14;

    v5->_isDataSeparatedDomain = [v4 decodeBoolForKey:@"_isDataSeparatedDomain"];
    v5->_disconnected = [v4 decodeBoolForKey:@"_disconnected"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_disconnectionReason"];
    disconnectionReason = v5->_disconnectionReason;
    v5->_disconnectionReason = v16;

    v5->_disconnectionOptions = [v4 decodeIntegerForKey:@"_disconnectionOptions"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_error"];
    error = v5->_error;
    v5->_error = v18;

    v20 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v21 = +[NSFileProviderDomain _userInfoAllowedClasses];
    v22 = [v4 decodeDictionaryWithKeysOfClasses:v20 objectsOfClasses:v21 forKey:@"_userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v22;

    v5->_userEnabled = [v4 decodeBoolForKey:@"_userEnabled"];
    v5->_replicated = [v4 decodeBoolForKey:@"_replicated"];
    v5->_testingModes = [v4 decodeIntegerForKey:@"_testingModes"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStoreIdentity"];
    backingStoreIdentity = v5->_backingStoreIdentity;
    v5->_backingStoreIdentity = v24;

    v5->_supportsSyncingTrash = [v4 decodeBoolForKey:@"_supportsSyncingTrash"];
    v5->_supportsSearch = [v4 decodeBoolForKey:@"_supportsSearch"];
    v5->_supportsStringSearchRequest = [v4 decodeBoolForKey:@"_supportsStringSearchRequest"];
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_volumeUUID"];
    volumeUUID = v5->_volumeUUID;
    v5->_volumeUUID = v26;

    v5->_hiddenByUser = [v4 decodeBoolForKey:@"_hiddenByUser"];
    v5->_supportedKnownFolders = [v4 decodeIntegerForKey:@"_supportedKnownFolders"];
    v5->_replicatedKnownFolders = [v4 decodeIntegerForKey:@"_replicatedKnownFolders"];
    v5->_supportsRemoteVersions = [v4 decodeBoolForKey:@"_supportsRemoteVersions"];
  }

  return v5;
}

- (void)setBackingStoreIdentity:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  backingStoreIdentity = obj->_backingStoreIdentity;
  obj->_backingStoreIdentity = v4;

  objc_sync_exit(obj);
}

- (id)plistDictionary
{
  v37[8] = *MEMORY[0x1E69E9840];
  v36[0] = @"DisplayName";
  v36[1] = @"Path";
  pathRelativeToDocumentStorage = self->_pathRelativeToDocumentStorage;
  v37[0] = self->_displayName;
  v37[1] = pathRelativeToDocumentStorage;
  v36[2] = @"Hidden";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_hidden];
  v37[2] = v4;
  v36[3] = @"Replicated";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_replicated];
  v37[3] = v5;
  v36[4] = @"SupportsSyncingTrash";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsSyncingTrash];
  v37[4] = v6;
  v36[5] = @"SupportsSearch";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsSearch];
  v37[5] = v7;
  v36[6] = @"SupportsStringSearchRequest";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsStringSearchRequest];
  v37[6] = v8;
  v36[7] = @"SupportsRemoteVersions";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsRemoteVersions];
  v37[7] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:8];

  v11 = [v10 mutableCopy];
  if (self->_containsPhotos)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v11 setObject:v12 forKeyedSubscript:@"ContainsPhotos"];
  }

  spotlightDomainIdentifier = self->_spotlightDomainIdentifier;
  if (spotlightDomainIdentifier)
  {
    [v11 setObject:spotlightDomainIdentifier forKeyedSubscript:@"SpotlightDomain"];
  }

  if (self->_readOnly)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v11 setObject:v14 forKeyedSubscript:@"ReadOnly"];
  }

  if (self->_erasable)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v11 setObject:v15 forKeyedSubscript:@"Erasable"];
  }

  if (self->_isContentManaged)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v11 setObject:v16 forKeyedSubscript:@"IsContentManaged"];
  }

  error = self->_error;
  if (error)
  {
    v35 = 0;
    v18 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:error requiringSecureCoding:1 error:&v35];
    v19 = v35;
    if (!v18)
    {
      v20 = fp_current_or_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(NSFileProviderDomain *)&self->_error plistDictionary];
      }
    }

    [v11 setObject:v18 forKeyedSubscript:@"Error"];
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    v34 = 0;
    v22 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:userInfo requiringSecureCoding:1 error:&v34];
    v23 = v34;
    if (!v22)
    {
      v24 = fp_current_or_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(NSFileProviderDomain *)&self->_error plistDictionary];
      }
    }

    [v11 setObject:v22 forKeyedSubscript:@"UserInfo"];
  }

  if (self->_disconnected)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v11 setObject:v25 forKeyedSubscript:@"Disconnected"];
  }

  disconnectionReason = self->_disconnectionReason;
  if (disconnectionReason)
  {
    [v11 setObject:disconnectionReason forKeyedSubscript:@"DisconnectionReason"];
  }

  if (self->_disconnectionOptions)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [v11 setObject:v27 forKeyedSubscript:@"DisconnectionOptions"];
  }

  if (self->_testingModes)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [v11 setObject:v28 forKeyedSubscript:@"TestingModes"];
  }

  if (self->_hiddenByUser)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v11 setObject:v29 forKeyedSubscript:@"UserHidden"];
  }

  if (self->_supportedKnownFolders)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [v11 setObject:v30 forKeyedSubscript:@"SupportedKnownFolders"];
  }

  if (self->_replicatedKnownFolders)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [v11 setObject:v31 forKeyedSubscript:@"ReplicatedKnownFolders"];
  }

  v32 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setUserInfo:(id)a3
{
  v6 = a3;
  p_userInfo = &self->_userInfo;
  if (self->_userInfo != v6)
  {
    v8 = +[NSFileProviderDomain _userInfoAllowedClasses];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __36__NSFileProviderDomain_setUserInfo___block_invoke;
    v10[3] = &unk_1E793EF90;
    v11 = v8;
    v12 = a2;
    v10[4] = self;
    v9 = v8;
    [(NSDictionary *)v6 enumerateKeysAndObjectsUsingBlock:v10];
    objc_storeStrong(p_userInfo, a3);
  }
}

void __36__NSFileProviderDomain_setUserInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __36__NSFileProviderDomain_setUserInfo___block_invoke_cold_1(a1, v5);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v8)
  {

LABEL_13:
    __36__NSFileProviderDomain_setUserInfo___block_invoke_cold_2(a1, (a1 + 40), v6);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v16;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v15 + 1) + 8 * i);
      v10 |= objc_opt_isKindOfClass();
    }

    v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v9);

  if ((v10 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)copyValuesFromExistingDomain:(id)a3
{
  v4 = a3;
  self->_userEnabled = [v4 userEnabled];
  v5 = [v4 personaIdentifier];
  personaIdentifier = self->_personaIdentifier;
  self->_personaIdentifier = v5;

  self->_isContentManaged = [v4 isContentManaged];
  self->_isEnterpriseDomain = [v4 isEnterpriseDomain];
  self->_isDataSeparatedDomain = [v4 isDataSeparatedDomain];
  v7 = [v4 volumeUUID];
  volumeUUID = self->_volumeUUID;
  self->_volumeUUID = v7;

  self->_hiddenByUser = [v4 isHiddenByUser];
  v9 = [v4 spotlightDomainIdentifier];
  spotlightDomainIdentifier = self->_spotlightDomainIdentifier;
  self->_spotlightDomainIdentifier = v9;

  v11 = [v4 replicatedKnownFolders];
  self->_replicatedKnownFolders = v11;
}

- (NSNumber)experimentID
{
  v2 = [(NSFileProviderDomain *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"NSFileProviderUserInfoExperimentID"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
    if (([v4 intValue] & 0x80000000) != 0 || objc_msgSend(v4, "intValue") > 31)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)experimentIDIsValid
{
  v3 = [(NSFileProviderDomain *)self userInfo];
  v4 = [v3 objectForKeyedSubscript:@"NSFileProviderUserInfoExperimentID"];

  if (!v4)
  {
    return 1;
  }

  v5 = [(NSFileProviderDomain *)self experimentID];
  v6 = v5 != 0;

  return v6;
}

- (void)plistDictionary
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_37(&dword_1AAAE1000, v2, v3, "[ERROR] Failed to archive domain userInfo %@: %@");
  v4 = *MEMORY[0x1E69E9840];
}

+ (void)domainFromPlistDictionary:(uint64_t)a1 identifier:(NSObject *)a2 volumeURL:replicatedByDefault:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Failed to unarchive domain error %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)domainFromPlistDictionary:(uint64_t)a1 identifier:(NSObject *)a2 volumeURL:replicatedByDefault:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Failed to unarchive domain userInfo %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __36__NSFileProviderDomain_setUserInfo___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"NSFileProviderDomain.m" lineNumber:700 description:{@"userInfo keys must be strings, key %@ is %@", a2, objc_opt_class()}];
}

void __36__NSFileProviderDomain_setUserInfo___block_invoke_cold_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"NSFileProviderDomain.m" lineNumber:708 description:{@"userInfo values must be of classes %@, %@ is %@", *a2, a3, objc_opt_class()}];
}

@end
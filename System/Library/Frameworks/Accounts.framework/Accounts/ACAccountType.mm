@interface ACAccountType
+ (NSSet)allIdentifiers;
- (ACAccountStore)accountStore;
- (ACAccountType)initWithCoder:(id)coder;
- (ACAccountType)initWithIdentifier:(id)identifier description:(id)description;
- (ACAccountType)initWithManagedAccountType:(id)type;
- (ACAccountType)initWithManagedAccountType:(id)type accountStore:(id)store;
- (BOOL)accessGranted;
- (BOOL)isEqual:(id)equal;
- (NSSet)accessKeys;
- (NSSet)supportedDataclasses;
- (NSSet)syncableDataclasses;
- (NSString)description;
- (NSString)fullDescription;
- (id)_encodeProtobuf;
- (id)_encodeProtobufData;
- (id)_initWithProtobuf:(id)protobuf;
- (id)_initWithProtobufData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)credentialProtectionPolicy;
- (int)supportsAuthentication;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAccountTypeDescription:(id)description;
- (void)setCredentialProtectionPolicy:(id)policy;
- (void)setCredentialType:(id)type;
- (void)setIdentifier:(id)identifier;
- (void)setSupportedDataclasses:(id)dataclasses;
- (void)setSupportsAuthentication:(int)authentication;
- (void)setSyncableDataclasses:(id)dataclasses;
@end

@implementation ACAccountType

- (id)credentialProtectionPolicy
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  credentialProtectionPolicy = selfCopy->_credentialProtectionPolicy;
  if (!credentialProtectionPolicy)
  {
    v4 = [*MEMORY[0x1E697ABE0] copy];
    v5 = selfCopy->_credentialProtectionPolicy;
    selfCopy->_credentialProtectionPolicy = v4;

    credentialProtectionPolicy = selfCopy->_credentialProtectionPolicy;
  }

  v6 = credentialProtectionPolicy;
  objc_sync_exit(selfCopy);

  return v6;
}

- (int)supportsAuthentication
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  supportsAuthentication = selfCopy->_supportsAuthentication;
  objc_sync_exit(selfCopy);

  return supportsAuthentication;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  accountTypeDescription = [(ACAccountType *)self accountTypeDescription];
  identifier = [(ACAccountType *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ (%@)", accountTypeDescription, identifier];

  return v6;
}

+ (NSSet)allIdentifiers
{
  if (allIdentifiers_onceToken != -1)
  {
    +[ACAccountType allIdentifiers];
  }

  v3 = allIdentifiers_allIdentifiers;

  return v3;
}

void __31__ACAccountType_allIdentifiers__block_invoke()
{
  v5[55] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = @"com.apple.twitter";
  v5[1] = @"com.apple.sinaweibo";
  v5[2] = @"com.apple.facebook";
  v5[3] = @"com.apple.account.SubscribedCalendar";
  v5[4] = @"com.apple.account.CalDAV";
  v5[5] = @"com.apple.account.CardDAV";
  v5[6] = @"com.apple.account.BookmarkDAV";
  v5[7] = @"com.apple.account.IMAP";
  v5[8] = @"com.apple.account.POP";
  v5[9] = @"com.apple.account.SMTP";
  v5[10] = @"com.apple.account.Exchange";
  v5[11] = @"com.apple.account.Hotmail";
  v5[12] = @"com.apple.account.LDAP";
  v5[13] = @"com.apple.account.Google";
  v5[14] = @"com.apple.account.Yahoo";
  v5[15] = @"com.apple.account.OnMyDevice";
  v5[16] = @"com.apple.account.IMAPNotes";
  v5[17] = @"com.apple.account.IMAPMail";
  v5[18] = @"com.apple.account.AppleAccount";
  v5[19] = @"com.apple.account.AppleID";
  v5[20] = @"com.apple.account.FaceTime";
  v5[21] = @"com.apple.account.Madrid";
  v5[22] = @"com.apple.account.GameCenter";
  v5[23] = @"com.apple.account.iTunesStore";
  v5[24] = @"com.apple.account.iTunesStore.sandbox";
  v5[25] = @"com.apple.flickr";
  v5[26] = @"com.apple.vimeo";
  v5[27] = @"com.apple.tudou";
  v5[28] = @"com.apple.youku";
  v5[29] = @"com.apple.account.yelp";
  v5[30] = @"com.apple.account.tencentweibo";
  v5[31] = @"com.apple.account.IdentityServices";
  v5[32] = @"com.apple.account.kerberos.sso.";
  v5[33] = @"com.apple.account.DeviceLocator";
  v5[34] = @"com.apple.account.HolidayCalendar";
  v5[35] = @"com.apple.account.FindMyFriends";
  v5[36] = @"com.apple.account.AppleIDAuthentication";
  v5[37] = @"com.apple.account.CloudKit";
  v5[38] = @"com.apple.account.126";
  v5[39] = @"com.apple.account.163";
  v5[40] = @"com.apple.account.aol";
  v5[41] = @"com.apple.account.qq";
  v5[42] = @"com.apple.account.osxserver";
  v5[43] = @"com.apple.account.jabber";
  v5[44] = @"com.apple.account.yahooim";
  v5[45] = @"com.apple.account.aim";
  v5[46] = @"com.apple.account.idms";
  v5[47] = @"com.apple.account.mso";
  v5[48] = @"com.apple.account.SingleSignOn";
  v5[49] = @"com.apple.account.facebookLegacy";
  v5[50] = @"com.apple.account.CalDAVLegacy";
  v5[51] = @"com.apple.account.CardDAVLegacy";
  v5[52] = @"com.apple.account.RemoteManagement";
  v5[53] = @"com.apple.account.PublishedCalendar";
  v5[54] = @"com.apple.account.DCA";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:55];
  v2 = [v0 setWithArray:v1];
  v3 = allIdentifiers_allIdentifiers;
  allIdentifiers_allIdentifiers = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (ACAccountType)initWithIdentifier:(id)identifier description:(id)description
{
  identifierCopy = identifier;
  descriptionCopy = description;
  v14.receiver = self;
  v14.super_class = ACAccountType;
  v8 = [(ACAccountType *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [descriptionCopy copy];
    accountTypeDescription = v8->_accountTypeDescription;
    v8->_accountTypeDescription = v11;
  }

  return v8;
}

- (ACAccountType)initWithManagedAccountType:(id)type accountStore:(id)store
{
  storeCopy = store;
  v7 = [(ACAccountType *)self initWithManagedAccountType:type];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_accountStore, storeCopy);
  }

  return v8;
}

- (ACAccountType)initWithManagedAccountType:(id)type
{
  typeCopy = type;
  v25.receiver = self;
  v25.super_class = ACAccountType;
  v5 = [(ACAccountType *)&v25 init];
  if (v5)
  {
    accountTypeDescription = [typeCopy accountTypeDescription];
    accountTypeDescription = v5->_accountTypeDescription;
    v5->_accountTypeDescription = accountTypeDescription;

    identifier = [typeCopy identifier];
    identifier = v5->_identifier;
    v5->_identifier = identifier;

    objectID = [typeCopy objectID];
    uRIRepresentation = [objectID URIRepresentation];
    objectID = v5->_objectID;
    v5->_objectID = uRIRepresentation;

    visibility = [typeCopy visibility];
    v5->_visibility = [visibility intValue];

    credentialType = [typeCopy credentialType];
    credentialType = v5->_credentialType;
    v5->_credentialType = credentialType;

    credentialProtectionPolicy = [typeCopy credentialProtectionPolicy];
    credentialProtectionPolicy = v5->_credentialProtectionPolicy;
    v5->_credentialProtectionPolicy = credentialProtectionPolicy;

    supportsAuthentication = [typeCopy supportsAuthentication];
    v5->_supportsAuthentication = [supportsAuthentication BOOLValue];

    supportsMultipleAccounts = [typeCopy supportsMultipleAccounts];
    v5->_supportsMultipleAccounts = [supportsMultipleAccounts BOOLValue];

    owningBundleID = [typeCopy owningBundleID];
    owningBundleID = v5->_owningBundleID;
    v5->_owningBundleID = owningBundleID;

    obsolete = [typeCopy obsolete];
    v5->_obsolete = [obsolete BOOLValue];

    v23 = v5;
  }

  return v5;
}

- (ACAccountType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v49.receiver = self;
  v49.super_class = ACAccountType;
  v5 = [(ACAccountType *)&v49 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountTypeDescription"];
    v7 = [v6 copy];
    accountTypeDescription = v5->_accountTypeDescription;
    v5->_accountTypeDescription = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v10 = [v9 copy];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
    v13 = [v12 copy];
    objectID = v5->_objectID;
    v5->_objectID = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"visibility"];
    v5->_visibility = [v15 intValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialType"];
    v17 = [v16 copy];
    credentialType = v5->_credentialType;
    v5->_credentialType = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialProtectionPolicy"];
    v20 = [v19 copy];
    credentialProtectionPolicy = v5->_credentialProtectionPolicy;
    v5->_credentialProtectionPolicy = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportsAuthentication"];
    v5->_supportsAuthentication = [v22 BOOLValue];

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportsMultipleAccounts"];
    v5->_supportsMultipleAccounts = [v23 BOOLValue];

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"owningBundleID"];
    v25 = [v24 copy];
    owningBundleID = v5->_owningBundleID;
    v5->_owningBundleID = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"obsolete"];
    v5->_obsolete = [v27 BOOLValue];

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"syncableDataclasses"];
    syncableDataclasses = v5->_syncableDataclasses;
    v5->_syncableDataclasses = v31;

    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
    v36 = [coderCopy decodeObjectOfClasses:v35 forKey:@"supportedDataclasses"];
    supportedDataclasses = v5->_supportedDataclasses;
    v5->_supportedDataclasses = v36;

    v38 = MEMORY[0x1E695DFD8];
    v39 = objc_opt_class();
    v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
    v41 = [coderCopy decodeObjectOfClasses:v40 forKey:@"syncableEnumDataclasses"];
    syncableEnumDataclasses = v5->_syncableEnumDataclasses;
    v5->_syncableEnumDataclasses = v41;

    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
    v46 = [coderCopy decodeObjectOfClasses:v45 forKey:@"supportedEnumDataclasses"];
    supportedEnumDataclasses = v5->_supportedEnumDataclasses;
    v5->_supportedEnumDataclasses = v46;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(ACAccountType *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  accountTypeDescription = [(ACAccountType *)self accountTypeDescription];
  [coderCopy encodeObject:accountTypeDescription forKey:@"accountTypeDescription"];

  objectID = [(ACAccountType *)self objectID];
  [coderCopy encodeObject:objectID forKey:@"objectID"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[ACAccountType visibility](self, "visibility")}];
  [coderCopy encodeObject:v7 forKey:@"visibility"];

  [coderCopy encodeObject:self->_credentialType forKey:@"credentialType"];
  credentialProtectionPolicy = [(ACAccountType *)self credentialProtectionPolicy];
  [coderCopy encodeObject:credentialProtectionPolicy forKey:@"credentialProtectionPolicy"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[ACAccountType supportsAuthentication](self, "supportsAuthentication") != 0}];
  [coderCopy encodeObject:v9 forKey:@"supportsAuthentication"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[ACAccountType supportsMultipleAccounts](self, "supportsMultipleAccounts")}];
  [coderCopy encodeObject:v10 forKey:@"supportsMultipleAccounts"];

  owningBundleID = [(ACAccountType *)self owningBundleID];
  [coderCopy encodeObject:owningBundleID forKey:@"owningBundleID"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[ACAccountType isObsolete](self, "isObsolete")}];
  [coderCopy encodeObject:v12 forKey:@"obsolete"];

  [coderCopy encodeObject:self->_syncableDataclasses forKey:@"syncableDataclasses"];
  [coderCopy encodeObject:self->_supportedDataclasses forKey:@"supportedDataclasses"];
  [coderCopy encodeObject:self->_syncableEnumDataclasses forKey:@"syncableEnumDataclasses"];
  [coderCopy encodeObject:self->_supportedEnumDataclasses forKey:@"supportedEnumDataclasses"];
}

- (id)_initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = [(ACAccountType *)self init];
  if (v5)
  {
    v6 = protobufCopy;
    accountTypeDescription = [v6 accountTypeDescription];
    v8 = [accountTypeDescription copy];
    accountTypeDescription = v5->_accountTypeDescription;
    v5->_accountTypeDescription = v8;

    identifier = [v6 identifier];
    v11 = [identifier copy];
    identifier = v5->_identifier;
    v5->_identifier = v11;

    objectID = [v6 objectID];
    v14 = [objectID url];
    v15 = [v14 copy];
    objectID = v5->_objectID;
    v5->_objectID = v15;

    v5->_visibility = [v6 visibility];
    credentialType = [v6 credentialType];
    v18 = [credentialType copy];
    credentialType = v5->_credentialType;
    v5->_credentialType = v18;

    credentialProtectionPolicy = [v6 credentialProtectionPolicy];
    v21 = [credentialProtectionPolicy copy];
    credentialProtectionPolicy = v5->_credentialProtectionPolicy;
    v5->_credentialProtectionPolicy = v21;

    v5->_supportsAuthentication = [v6 supportsAuthentication];
    v5->_supportsMultipleAccounts = [v6 supportsMultipleAccounts];
    owningBundleID = [v6 owningBundleID];
    v24 = [owningBundleID copy];
    owningBundleID = v5->_owningBundleID;
    v5->_owningBundleID = v24;

    v5->_obsolete = [v6 obsolete];
    v26 = MEMORY[0x1E695DFD8];
    syncableEnumDataclasses = [v6 syncableEnumDataclasses];
    v28 = [v26 setWithArray:syncableEnumDataclasses];
    syncableEnumDataclasses = v5->_syncableEnumDataclasses;
    v5->_syncableEnumDataclasses = v28;

    v30 = MEMORY[0x1E695DFD8];
    supportedEnumDataclasses = [v6 supportedEnumDataclasses];

    v32 = [v30 setWithArray:supportedEnumDataclasses];
    supportedEnumDataclasses = v5->_supportedEnumDataclasses;
    v5->_supportedEnumDataclasses = v32;

    v34 = v5;
  }

  return v5;
}

- (id)_initWithProtobufData:(id)data
{
  dataCopy = data;
  if (![dataCopy length])
  {
    [(ACAccountType *)a2 _initWithProtobufData:?];
  }

  if ([dataCopy length])
  {
    v6 = [[ACProtobufAccountType alloc] initWithData:dataCopy];
    if (v6)
    {
      self = [(ACAccountType *)self _initWithProtobuf:v6];
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
  [v3 setAccountTypeDescription:self->_accountTypeDescription];
  [v3 setIdentifier:self->_identifier];
  v4 = [[ACProtobufURL alloc] initWithURL:self->_objectID];
  [v3 setObjectID:v4];

  [v3 setVisibility:self->_visibility];
  [v3 setCredentialType:self->_credentialType];
  [v3 setCredentialProtectionPolicy:self->_credentialProtectionPolicy];
  [v3 setSupportsAuthentication:self->_supportsAuthentication];
  [v3 setSupportsMultipleAccounts:self->_supportsMultipleAccounts];
  [v3 setOwningBundleID:self->_owningBundleID];
  [v3 setObsolete:self->_obsolete];
  allObjects = [(NSSet *)self->_syncableDataclasses allObjects];
  v6 = [allObjects mutableCopy];
  [v3 setSyncableEnumDataclasses:v6];

  allObjects2 = [(NSSet *)self->_supportedEnumDataclasses allObjects];
  v8 = [allObjects2 mutableCopy];
  [v3 setSupportedEnumDataclasses:v8];

  return v3;
}

- (id)_encodeProtobufData
{
  _encodeProtobuf = [(ACAccountType *)self _encodeProtobuf];
  data = [_encodeProtobuf data];

  return data;
}

- (NSString)fullDescription
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(ACAccountType *)self identifier];
  accountTypeDescription = [(ACAccountType *)self accountTypeDescription];
  objectID = [(ACAccountType *)self objectID];
  if ([(ACAccountType *)self supportsAuthentication])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(ACAccountType *)self supportsMultipleAccounts])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(ACAccountType *)self isObsolete])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  owningBundleID = [(ACAccountType *)self owningBundleID];
  supportedDataclasses = [(ACAccountType *)self supportedDataclasses];
  syncableDataclasses = [(ACAccountType *)self syncableDataclasses];
  v13 = [v3 stringWithFormat:@"identifier: %@\ndescription: %@\nobjectID: %@\nsupportsAuthentication %@\nsupportsMultipleAccounts %@\nobsolete %@\nowningBundleID %@\nsupportedDataclasses %@\nsyncableDataclasses %@", identifier, accountTypeDescription, objectID, v7, v8, v9, owningBundleID, supportedDataclasses, syncableDataclasses];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_accountTypeDescription copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_identifier copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSURL *)self->_objectID copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  *(v5 + 40) = self->_visibility;
  v12 = [(NSString *)self->_credentialType copyWithZone:zone];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  v14 = [(NSString *)self->_credentialProtectionPolicy copyWithZone:zone];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  *(v5 + 64) = self->_supportsAuthentication;
  *(v5 + 68) = self->_supportsMultipleAccounts;
  v16 = [(NSSet *)self->_supportedDataclasses copyWithZone:zone];
  v17 = *(v5 + 72);
  *(v5 + 72) = v16;

  v18 = [(NSSet *)self->_syncableDataclasses copyWithZone:zone];
  v19 = *(v5 + 80);
  *(v5 + 80) = v18;

  v20 = [(NSSet *)self->_accessKeys copyWithZone:zone];
  v21 = *(v5 + 104);
  *(v5 + 104) = v20;

  WeakRetained = objc_loadWeakRetained(&self->_accountStore);
  objc_storeWeak((v5 + 56), WeakRetained);

  v23 = [(NSString *)self->_owningBundleID copyWithZone:zone];
  v24 = *(v5 + 112);
  *(v5 + 112) = v23;

  *(v5 + 69) = self->_obsolete;
  return v5;
}

- (NSSet)supportedDataclasses
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  supportedDataclasses = selfCopy->_supportedDataclasses;
  if (!supportedDataclasses)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_accountStore);
    v5 = [WeakRetained supportedDataclassesForAccountType:selfCopy];
    v6 = selfCopy->_supportedDataclasses;
    selfCopy->_supportedDataclasses = v5;

    supportedDataclasses = selfCopy->_supportedDataclasses;
  }

  v7 = supportedDataclasses;
  objc_sync_exit(selfCopy);

  return v7;
}

- (void)setSupportedDataclasses:(id)dataclasses
{
  dataclassesCopy = dataclasses;
  obj = self;
  objc_sync_enter(obj);
  supportedDataclasses = obj->_supportedDataclasses;
  obj->_supportedDataclasses = dataclassesCopy;

  objc_sync_exit(obj);
}

- (NSSet)syncableDataclasses
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  syncableDataclasses = selfCopy->_syncableDataclasses;
  if (!syncableDataclasses)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_accountStore);
    v5 = [WeakRetained syncableDataclassesForAccountType:selfCopy];
    v6 = selfCopy->_syncableDataclasses;
    selfCopy->_syncableDataclasses = v5;

    syncableDataclasses = selfCopy->_syncableDataclasses;
  }

  v7 = syncableDataclasses;
  objc_sync_exit(selfCopy);

  return v7;
}

- (void)setSyncableDataclasses:(id)dataclasses
{
  dataclassesCopy = dataclasses;
  obj = self;
  objc_sync_enter(obj);
  syncableDataclasses = obj->_syncableDataclasses;
  obj->_syncableDataclasses = dataclassesCopy;

  objc_sync_exit(obj);
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAccountTypeDescription:(id)description
{
  v4 = [description copy];
  accountTypeDescription = self->_accountTypeDescription;
  self->_accountTypeDescription = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCredentialType:(id)type
{
  v4 = [type copy];
  credentialType = self->_credentialType;
  self->_credentialType = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCredentialProtectionPolicy:(id)policy
{
  policyCopy = policy;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [policyCopy copy];
  credentialProtectionPolicy = selfCopy->_credentialProtectionPolicy;
  selfCopy->_credentialProtectionPolicy = v5;

  objc_sync_exit(selfCopy);
}

- (BOOL)accessGranted
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_accountStore);
  LOBYTE(selfCopy) = [WeakRetained permissionForAccountType:selfCopy];

  return selfCopy;
}

- (void)setSupportsAuthentication:(int)authentication
{
  obj = self;
  objc_sync_enter(obj);
  obj->_supportsAuthentication = authentication;
  objc_sync_exit(obj);
}

- (NSSet)accessKeys
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  accessKeys = selfCopy->_accessKeys;
  if (!accessKeys)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_accountStore);
    v5 = [WeakRetained accessKeysForAccountType:selfCopy];
    v6 = selfCopy->_accessKeys;
    selfCopy->_accessKeys = v5;

    accessKeys = selfCopy->_accessKeys;
  }

  v7 = accessKeys;
  objc_sync_exit(selfCopy);

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ([v5 isEqual:objc_opt_class()])
    {
      identifier = self->_identifier;
      identifier = [(ACAccountType *)equalCopy identifier];
      v8 = [(NSString *)identifier isEqualToString:identifier];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  if (self->_identifier)
  {
    identifier = self->_identifier;

    return [(NSString *)identifier hash];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = ACAccountType;
    return [(ACAccountType *)&v6 hash];
  }
}

- (ACAccountStore)accountStore
{
  WeakRetained = objc_loadWeakRetained(&self->_accountStore);

  return WeakRetained;
}

- (void)_initWithProtobufData:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACAccountType.m" lineNumber:367 description:{@"Invalid parameter not satisfying: %@", @"data.length != 0"}];
}

@end
@interface ACAccountType
+ (NSSet)allIdentifiers;
- (ACAccountStore)accountStore;
- (ACAccountType)initWithCoder:(id)a3;
- (ACAccountType)initWithIdentifier:(id)a3 description:(id)a4;
- (ACAccountType)initWithManagedAccountType:(id)a3;
- (ACAccountType)initWithManagedAccountType:(id)a3 accountStore:(id)a4;
- (BOOL)accessGranted;
- (BOOL)isEqual:(id)a3;
- (NSSet)accessKeys;
- (NSSet)supportedDataclasses;
- (NSSet)syncableDataclasses;
- (NSString)description;
- (NSString)fullDescription;
- (id)_encodeProtobuf;
- (id)_encodeProtobufData;
- (id)_initWithProtobuf:(id)a3;
- (id)_initWithProtobufData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)credentialProtectionPolicy;
- (int)supportsAuthentication;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAccountTypeDescription:(id)a3;
- (void)setCredentialProtectionPolicy:(id)a3;
- (void)setCredentialType:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setSupportedDataclasses:(id)a3;
- (void)setSupportsAuthentication:(int)a3;
- (void)setSyncableDataclasses:(id)a3;
@end

@implementation ACAccountType

- (id)credentialProtectionPolicy
{
  v2 = self;
  objc_sync_enter(v2);
  credentialProtectionPolicy = v2->_credentialProtectionPolicy;
  if (!credentialProtectionPolicy)
  {
    v4 = [*MEMORY[0x1E697ABE0] copy];
    v5 = v2->_credentialProtectionPolicy;
    v2->_credentialProtectionPolicy = v4;

    credentialProtectionPolicy = v2->_credentialProtectionPolicy;
  }

  v6 = credentialProtectionPolicy;
  objc_sync_exit(v2);

  return v6;
}

- (int)supportsAuthentication
{
  v2 = self;
  objc_sync_enter(v2);
  supportsAuthentication = v2->_supportsAuthentication;
  objc_sync_exit(v2);

  return supportsAuthentication;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ACAccountType *)self accountTypeDescription];
  v5 = [(ACAccountType *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ (%@)", v4, v5];

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

- (ACAccountType)initWithIdentifier:(id)a3 description:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ACAccountType;
  v8 = [(ACAccountType *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    accountTypeDescription = v8->_accountTypeDescription;
    v8->_accountTypeDescription = v11;
  }

  return v8;
}

- (ACAccountType)initWithManagedAccountType:(id)a3 accountStore:(id)a4
{
  v6 = a4;
  v7 = [(ACAccountType *)self initWithManagedAccountType:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_accountStore, v6);
  }

  return v8;
}

- (ACAccountType)initWithManagedAccountType:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = ACAccountType;
  v5 = [(ACAccountType *)&v25 init];
  if (v5)
  {
    v6 = [v4 accountTypeDescription];
    accountTypeDescription = v5->_accountTypeDescription;
    v5->_accountTypeDescription = v6;

    v8 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [v4 objectID];
    v11 = [v10 URIRepresentation];
    objectID = v5->_objectID;
    v5->_objectID = v11;

    v13 = [v4 visibility];
    v5->_visibility = [v13 intValue];

    v14 = [v4 credentialType];
    credentialType = v5->_credentialType;
    v5->_credentialType = v14;

    v16 = [v4 credentialProtectionPolicy];
    credentialProtectionPolicy = v5->_credentialProtectionPolicy;
    v5->_credentialProtectionPolicy = v16;

    v18 = [v4 supportsAuthentication];
    v5->_supportsAuthentication = [v18 BOOLValue];

    v19 = [v4 supportsMultipleAccounts];
    v5->_supportsMultipleAccounts = [v19 BOOLValue];

    v20 = [v4 owningBundleID];
    owningBundleID = v5->_owningBundleID;
    v5->_owningBundleID = v20;

    v22 = [v4 obsolete];
    v5->_obsolete = [v22 BOOLValue];

    v23 = v5;
  }

  return v5;
}

- (ACAccountType)initWithCoder:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = ACAccountType;
  v5 = [(ACAccountType *)&v49 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountTypeDescription"];
    v7 = [v6 copy];
    accountTypeDescription = v5->_accountTypeDescription;
    v5->_accountTypeDescription = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v10 = [v9 copy];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
    v13 = [v12 copy];
    objectID = v5->_objectID;
    v5->_objectID = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"visibility"];
    v5->_visibility = [v15 intValue];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialType"];
    v17 = [v16 copy];
    credentialType = v5->_credentialType;
    v5->_credentialType = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialProtectionPolicy"];
    v20 = [v19 copy];
    credentialProtectionPolicy = v5->_credentialProtectionPolicy;
    v5->_credentialProtectionPolicy = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportsAuthentication"];
    v5->_supportsAuthentication = [v22 BOOLValue];

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportsMultipleAccounts"];
    v5->_supportsMultipleAccounts = [v23 BOOLValue];

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"owningBundleID"];
    v25 = [v24 copy];
    owningBundleID = v5->_owningBundleID;
    v5->_owningBundleID = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"obsolete"];
    v5->_obsolete = [v27 BOOLValue];

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"syncableDataclasses"];
    syncableDataclasses = v5->_syncableDataclasses;
    v5->_syncableDataclasses = v31;

    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
    v36 = [v4 decodeObjectOfClasses:v35 forKey:@"supportedDataclasses"];
    supportedDataclasses = v5->_supportedDataclasses;
    v5->_supportedDataclasses = v36;

    v38 = MEMORY[0x1E695DFD8];
    v39 = objc_opt_class();
    v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
    v41 = [v4 decodeObjectOfClasses:v40 forKey:@"syncableEnumDataclasses"];
    syncableEnumDataclasses = v5->_syncableEnumDataclasses;
    v5->_syncableEnumDataclasses = v41;

    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = [v43 setWithObjects:{v44, objc_opt_class(), 0}];
    v46 = [v4 decodeObjectOfClasses:v45 forKey:@"supportedEnumDataclasses"];
    supportedEnumDataclasses = v5->_supportedEnumDataclasses;
    v5->_supportedEnumDataclasses = v46;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = [(ACAccountType *)self identifier];
  [v13 encodeObject:v4 forKey:@"identifier"];

  v5 = [(ACAccountType *)self accountTypeDescription];
  [v13 encodeObject:v5 forKey:@"accountTypeDescription"];

  v6 = [(ACAccountType *)self objectID];
  [v13 encodeObject:v6 forKey:@"objectID"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[ACAccountType visibility](self, "visibility")}];
  [v13 encodeObject:v7 forKey:@"visibility"];

  [v13 encodeObject:self->_credentialType forKey:@"credentialType"];
  v8 = [(ACAccountType *)self credentialProtectionPolicy];
  [v13 encodeObject:v8 forKey:@"credentialProtectionPolicy"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[ACAccountType supportsAuthentication](self, "supportsAuthentication") != 0}];
  [v13 encodeObject:v9 forKey:@"supportsAuthentication"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[ACAccountType supportsMultipleAccounts](self, "supportsMultipleAccounts")}];
  [v13 encodeObject:v10 forKey:@"supportsMultipleAccounts"];

  v11 = [(ACAccountType *)self owningBundleID];
  [v13 encodeObject:v11 forKey:@"owningBundleID"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[ACAccountType isObsolete](self, "isObsolete")}];
  [v13 encodeObject:v12 forKey:@"obsolete"];

  [v13 encodeObject:self->_syncableDataclasses forKey:@"syncableDataclasses"];
  [v13 encodeObject:self->_supportedDataclasses forKey:@"supportedDataclasses"];
  [v13 encodeObject:self->_syncableEnumDataclasses forKey:@"syncableEnumDataclasses"];
  [v13 encodeObject:self->_supportedEnumDataclasses forKey:@"supportedEnumDataclasses"];
}

- (id)_initWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = [(ACAccountType *)self init];
  if (v5)
  {
    v6 = v4;
    v7 = [v6 accountTypeDescription];
    v8 = [v7 copy];
    accountTypeDescription = v5->_accountTypeDescription;
    v5->_accountTypeDescription = v8;

    v10 = [v6 identifier];
    v11 = [v10 copy];
    identifier = v5->_identifier;
    v5->_identifier = v11;

    v13 = [v6 objectID];
    v14 = [v13 url];
    v15 = [v14 copy];
    objectID = v5->_objectID;
    v5->_objectID = v15;

    v5->_visibility = [v6 visibility];
    v17 = [v6 credentialType];
    v18 = [v17 copy];
    credentialType = v5->_credentialType;
    v5->_credentialType = v18;

    v20 = [v6 credentialProtectionPolicy];
    v21 = [v20 copy];
    credentialProtectionPolicy = v5->_credentialProtectionPolicy;
    v5->_credentialProtectionPolicy = v21;

    v5->_supportsAuthentication = [v6 supportsAuthentication];
    v5->_supportsMultipleAccounts = [v6 supportsMultipleAccounts];
    v23 = [v6 owningBundleID];
    v24 = [v23 copy];
    owningBundleID = v5->_owningBundleID;
    v5->_owningBundleID = v24;

    v5->_obsolete = [v6 obsolete];
    v26 = MEMORY[0x1E695DFD8];
    v27 = [v6 syncableEnumDataclasses];
    v28 = [v26 setWithArray:v27];
    syncableEnumDataclasses = v5->_syncableEnumDataclasses;
    v5->_syncableEnumDataclasses = v28;

    v30 = MEMORY[0x1E695DFD8];
    v31 = [v6 supportedEnumDataclasses];

    v32 = [v30 setWithArray:v31];
    supportedEnumDataclasses = v5->_supportedEnumDataclasses;
    v5->_supportedEnumDataclasses = v32;

    v34 = v5;
  }

  return v5;
}

- (id)_initWithProtobufData:(id)a3
{
  v5 = a3;
  if (![v5 length])
  {
    [(ACAccountType *)a2 _initWithProtobufData:?];
  }

  if ([v5 length])
  {
    v6 = [[ACProtobufAccountType alloc] initWithData:v5];
    if (v6)
    {
      self = [(ACAccountType *)self _initWithProtobuf:v6];
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
  v5 = [(NSSet *)self->_syncableDataclasses allObjects];
  v6 = [v5 mutableCopy];
  [v3 setSyncableEnumDataclasses:v6];

  v7 = [(NSSet *)self->_supportedEnumDataclasses allObjects];
  v8 = [v7 mutableCopy];
  [v3 setSupportedEnumDataclasses:v8];

  return v3;
}

- (id)_encodeProtobufData
{
  v2 = [(ACAccountType *)self _encodeProtobuf];
  v3 = [v2 data];

  return v3;
}

- (NSString)fullDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ACAccountType *)self identifier];
  v5 = [(ACAccountType *)self accountTypeDescription];
  v6 = [(ACAccountType *)self objectID];
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

  v10 = [(ACAccountType *)self owningBundleID];
  v11 = [(ACAccountType *)self supportedDataclasses];
  v12 = [(ACAccountType *)self syncableDataclasses];
  v13 = [v3 stringWithFormat:@"identifier: %@\ndescription: %@\nobjectID: %@\nsupportsAuthentication %@\nsupportsMultipleAccounts %@\nobsolete %@\nowningBundleID %@\nsupportedDataclasses %@\nsyncableDataclasses %@", v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_accountTypeDescription copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_identifier copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSURL *)self->_objectID copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  *(v5 + 40) = self->_visibility;
  v12 = [(NSString *)self->_credentialType copyWithZone:a3];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  v14 = [(NSString *)self->_credentialProtectionPolicy copyWithZone:a3];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  *(v5 + 64) = self->_supportsAuthentication;
  *(v5 + 68) = self->_supportsMultipleAccounts;
  v16 = [(NSSet *)self->_supportedDataclasses copyWithZone:a3];
  v17 = *(v5 + 72);
  *(v5 + 72) = v16;

  v18 = [(NSSet *)self->_syncableDataclasses copyWithZone:a3];
  v19 = *(v5 + 80);
  *(v5 + 80) = v18;

  v20 = [(NSSet *)self->_accessKeys copyWithZone:a3];
  v21 = *(v5 + 104);
  *(v5 + 104) = v20;

  WeakRetained = objc_loadWeakRetained(&self->_accountStore);
  objc_storeWeak((v5 + 56), WeakRetained);

  v23 = [(NSString *)self->_owningBundleID copyWithZone:a3];
  v24 = *(v5 + 112);
  *(v5 + 112) = v23;

  *(v5 + 69) = self->_obsolete;
  return v5;
}

- (NSSet)supportedDataclasses
{
  v2 = self;
  objc_sync_enter(v2);
  supportedDataclasses = v2->_supportedDataclasses;
  if (!supportedDataclasses)
  {
    WeakRetained = objc_loadWeakRetained(&v2->_accountStore);
    v5 = [WeakRetained supportedDataclassesForAccountType:v2];
    v6 = v2->_supportedDataclasses;
    v2->_supportedDataclasses = v5;

    supportedDataclasses = v2->_supportedDataclasses;
  }

  v7 = supportedDataclasses;
  objc_sync_exit(v2);

  return v7;
}

- (void)setSupportedDataclasses:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  supportedDataclasses = obj->_supportedDataclasses;
  obj->_supportedDataclasses = v4;

  objc_sync_exit(obj);
}

- (NSSet)syncableDataclasses
{
  v2 = self;
  objc_sync_enter(v2);
  syncableDataclasses = v2->_syncableDataclasses;
  if (!syncableDataclasses)
  {
    WeakRetained = objc_loadWeakRetained(&v2->_accountStore);
    v5 = [WeakRetained syncableDataclassesForAccountType:v2];
    v6 = v2->_syncableDataclasses;
    v2->_syncableDataclasses = v5;

    syncableDataclasses = v2->_syncableDataclasses;
  }

  v7 = syncableDataclasses;
  objc_sync_exit(v2);

  return v7;
}

- (void)setSyncableDataclasses:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  syncableDataclasses = obj->_syncableDataclasses;
  obj->_syncableDataclasses = v4;

  objc_sync_exit(obj);
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAccountTypeDescription:(id)a3
{
  v4 = [a3 copy];
  accountTypeDescription = self->_accountTypeDescription;
  self->_accountTypeDescription = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCredentialType:(id)a3
{
  v4 = [a3 copy];
  credentialType = self->_credentialType;
  self->_credentialType = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setCredentialProtectionPolicy:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v7 copy];
  credentialProtectionPolicy = v4->_credentialProtectionPolicy;
  v4->_credentialProtectionPolicy = v5;

  objc_sync_exit(v4);
}

- (BOOL)accessGranted
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_accountStore);
  LOBYTE(v2) = [WeakRetained permissionForAccountType:v2];

  return v2;
}

- (void)setSupportsAuthentication:(int)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_supportsAuthentication = a3;
  objc_sync_exit(obj);
}

- (NSSet)accessKeys
{
  v2 = self;
  objc_sync_enter(v2);
  accessKeys = v2->_accessKeys;
  if (!accessKeys)
  {
    WeakRetained = objc_loadWeakRetained(&v2->_accountStore);
    v5 = [WeakRetained accessKeysForAccountType:v2];
    v6 = v2->_accessKeys;
    v2->_accessKeys = v5;

    accessKeys = v2->_accessKeys;
  }

  v7 = accessKeys;
  objc_sync_exit(v2);

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ([v5 isEqual:objc_opt_class()])
    {
      identifier = self->_identifier;
      v7 = [(ACAccountType *)v4 identifier];
      v8 = [(NSString *)identifier isEqualToString:v7];
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
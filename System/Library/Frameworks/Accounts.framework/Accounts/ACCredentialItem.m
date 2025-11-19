@interface ACCredentialItem
- (ACAccountStore)accountStore;
- (ACCredentialItem)initWithAccountIdentifier:(id)a3 serviceName:(id)a4;
- (ACCredentialItem)initWithCoder:(id)a3;
- (ACCredentialItem)initWithManagedCredentialItem:(id)a3;
- (ACCredentialItem)initWithManagedCredentialItem:(id)a3 accountStore:(id)a4;
- (BOOL)isExpired;
- (NSString)description;
- (id)_encodeProtobuf;
- (id)_encodeProtobufData;
- (id)_initWithProtobuf:(id)a3;
- (id)_initWithProtobufData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fullDescription;
- (void)_markPropertyDirty:(id)a3;
- (void)clearDirtyProperties;
- (void)encodeWithCoder:(id)a3;
- (void)markAllPropertiesDirty;
- (void)setAccountIdentifier:(id)a3;
- (void)setExpirationDate:(id)a3;
- (void)setObjectID:(id)a3;
- (void)setServiceName:(id)a3;
@end

@implementation ACCredentialItem

- (ACCredentialItem)initWithManagedCredentialItem:(id)a3 accountStore:(id)a4
{
  v6 = a4;
  v7 = [(ACCredentialItem *)self initWithManagedCredentialItem:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_accountStore, v6);
  }

  return v8;
}

- (ACCredentialItem)initWithManagedCredentialItem:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ACCredentialItem;
  v5 = [(ACCredentialItem *)&v18 init];
  if (v5)
  {
    v6 = [v4 accountIdentifier];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [v4 expirationDate];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v8;

    v10 = [v4 serviceName];
    serviceName = v5->_serviceName;
    v5->_serviceName = v10;

    v12 = [v4 persistent];
    v5->_persistent = [v12 BOOLValue];

    v13 = [v4 objectID];
    v14 = [v13 URIRepresentation];
    objectID = v5->_objectID;
    v5->_objectID = v14;

    v16 = v5;
  }

  return v5;
}

- (ACCredentialItem)initWithAccountIdentifier:(id)a3 serviceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ACCredentialItem;
  v8 = [(ACCredentialItem *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    accountIdentifier = v8->_accountIdentifier;
    v8->_accountIdentifier = v9;

    v11 = [v7 copy];
    serviceName = v8->_serviceName;
    v8->_serviceName = v11;

    [(ACCredentialItem *)v8 _markPropertyDirty:@"accountIdentifier"];
    [(ACCredentialItem *)v8 _markPropertyDirty:@"serviceName"];
    [(ACCredentialItem *)v8 _markPropertyDirty:@"persistent"];
  }

  return v8;
}

- (ACCredentialItem)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = ACCredentialItem;
  v5 = [(ACCredentialItem *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    v7 = [v6 copy];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceName"];
    v12 = [v11 copy];
    serviceName = v5->_serviceName;
    v5->_serviceName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"persistent"];
    v5->_persistent = [v14 BOOLValue];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
    v16 = [v15 copy];
    objectID = v5->_objectID;
    v5->_objectID = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"dirtyProperties"];
    dirtyProperties = v5->_dirtyProperties;
    v5->_dirtyProperties = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ACCredentialItem *)self accountIdentifier];
  [v4 encodeObject:v5 forKey:@"accountIdentifier"];

  v6 = [(ACCredentialItem *)self expirationDate];
  [v4 encodeObject:v6 forKey:@"expirationDate"];

  v7 = [(ACCredentialItem *)self serviceName];
  [v4 encodeObject:v7 forKey:@"serviceName"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[ACCredentialItem isPersistent](self, "isPersistent")}];
  [v4 encodeObject:v8 forKey:@"persistent"];

  v9 = [(ACCredentialItem *)self objectID];
  [v4 encodeObject:v9 forKey:@"objectID"];

  v10 = [(ACCredentialItem *)self dirtyProperties];
  [v4 encodeObject:v10 forKey:@"dirtyProperties"];
}

- (id)_initWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = [(ACCredentialItem *)self init];
  if (v5)
  {
    v6 = v4;
    v7 = [v6 accountIdentifier];
    v8 = [v7 copy];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v8;

    if ([v6 hasExpirationDate])
    {
      v10 = [v6 expirationDate];
      v11 = [v10 date];
      expirationDate = v5->_expirationDate;
      v5->_expirationDate = v11;
    }

    v13 = [v6 serviceName];
    v14 = [v13 copy];
    serviceName = v5->_serviceName;
    v5->_serviceName = v14;

    v5->_persistent = [v6 isPersistent];
    if ([v6 hasObjectID])
    {
      v16 = [v6 objectID];
      v17 = [v16 url];
      objectID = v5->_objectID;
      v5->_objectID = v17;
    }

    v19 = [v6 dirtyProperties];

    if (v19)
    {
      v20 = objc_alloc(MEMORY[0x1E695DFA8]);
      v21 = [v6 dirtyProperties];
      v22 = [v20 initWithArray:v21];
      dirtyProperties = v5->_dirtyProperties;
      v5->_dirtyProperties = v22;
    }

    v24 = v5;
  }

  return v5;
}

- (id)_initWithProtobufData:(id)a3
{
  v5 = a3;
  if (![v5 length])
  {
    [(ACCredentialItem *)a2 _initWithProtobufData:?];
  }

  if ([v5 length])
  {
    v6 = [[ACProtobufCredentialItem alloc] initWithData:v5];
    if (v6)
    {
      self = [(ACCredentialItem *)self _initWithProtobuf:v6];
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
  [v3 setAccountIdentifier:self->_accountIdentifier];
  v4 = [[ACProtobufDate alloc] initWithDate:self->_expirationDate];
  [v3 setExpirationDate:v4];

  [v3 setServiceName:self->_serviceName];
  [v3 setIsPersistent:{-[ACCredentialItem isPersistent](self, "isPersistent")}];
  v5 = [[ACProtobufURL alloc] initWithURL:self->_objectID];
  [v3 setObjectID:v5];

  v6 = [(ACCredentialItem *)self dirtyProperties];
  v7 = [v6 allObjects];
  v8 = [v7 mutableCopy];
  [v3 setDirtyProperties:v8];

  return v3;
}

- (id)_encodeProtobufData
{
  v2 = [(ACCredentialItem *)self _encodeProtobuf];
  v3 = [v2 data];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ACCredentialItem *)self accountIdentifier];
  v5 = [(ACCredentialItem *)self serviceName];
  v6 = [v3 stringWithFormat:@"%@ (%@)", v4, v5];

  return v6;
}

- (id)fullDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ACCredentialItem *)self accountIdentifier];
  v5 = [(ACCredentialItem *)self expirationDate];
  v6 = [(ACCredentialItem *)self serviceName];
  if ([(ACCredentialItem *)self isPersistent])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [(ACCredentialItem *)self objectID];
  v9 = [v3 stringWithFormat:@"accountIdentifier: %@\nexpirationDate: %@\nserviceName: %@\npersistent: %@\nobjectID: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_accountIdentifier copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSDate *)self->_expirationDate copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_serviceName copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  *(v5 + 32) = self->_persistent;
  v12 = [(NSURL *)self->_objectID copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  WeakRetained = objc_loadWeakRetained(&self->_accountStore);
  objc_storeWeak((v5 + 48), WeakRetained);

  v15 = [(NSMutableSet *)self->_dirtyProperties mutableCopyWithZone:a3];
  v16 = *(v5 + 56);
  *(v5 + 56) = v15;

  return v5;
}

- (void)setAccountIdentifier:(id)a3
{
  v4 = [a3 copy];
  accountIdentifier = self->_accountIdentifier;
  self->_accountIdentifier = v4;

  [(ACCredentialItem *)self _markPropertyDirty:@"accountIdentifier"];
}

- (BOOL)isExpired
{
  expirationDate = self->_expirationDate;
  v3 = [MEMORY[0x1E695DF00] date];
  LOBYTE(expirationDate) = [(NSDate *)expirationDate compare:v3]!= NSOrderedDescending;

  return expirationDate;
}

- (void)setExpirationDate:(id)a3
{
  objc_storeStrong(&self->_expirationDate, a3);

  [(ACCredentialItem *)self _markPropertyDirty:@"expirationDate"];
}

- (void)setServiceName:(id)a3
{
  v4 = [a3 copy];
  serviceName = self->_serviceName;
  self->_serviceName = v4;

  [(ACCredentialItem *)self _markPropertyDirty:@"serviceName"];
}

- (void)setObjectID:(id)a3
{
  objc_storeStrong(&self->_objectID, a3);

  [(ACCredentialItem *)self _markPropertyDirty:@"objectID"];
}

- (void)markAllPropertiesDirty
{
  [(ACCredentialItem *)self _markPropertyDirty:@"accountIdentifier"];
  [(ACCredentialItem *)self _markPropertyDirty:@"expirationDate"];
  [(ACCredentialItem *)self _markPropertyDirty:@"serviceName"];
  [(ACCredentialItem *)self _markPropertyDirty:@"persistent"];

  [(ACCredentialItem *)self _markPropertyDirty:@"objectID"];
}

- (void)_markPropertyDirty:(id)a3
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

- (void)clearDirtyProperties
{
  dirtyProperties = self->_dirtyProperties;
  self->_dirtyProperties = 0;
  MEMORY[0x1EEE66BB8]();
}

- (ACAccountStore)accountStore
{
  WeakRetained = objc_loadWeakRetained(&self->_accountStore);

  return WeakRetained;
}

- (void)_initWithProtobufData:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACCredentialItem.m" lineNumber:140 description:{@"Invalid parameter not satisfying: %@", @"data.length != 0"}];
}

@end
@interface ACCredentialItem
- (ACAccountStore)accountStore;
- (ACCredentialItem)initWithAccountIdentifier:(id)identifier serviceName:(id)name;
- (ACCredentialItem)initWithCoder:(id)coder;
- (ACCredentialItem)initWithManagedCredentialItem:(id)item;
- (ACCredentialItem)initWithManagedCredentialItem:(id)item accountStore:(id)store;
- (BOOL)isExpired;
- (NSString)description;
- (id)_encodeProtobuf;
- (id)_encodeProtobufData;
- (id)_initWithProtobuf:(id)protobuf;
- (id)_initWithProtobufData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fullDescription;
- (void)_markPropertyDirty:(id)dirty;
- (void)clearDirtyProperties;
- (void)encodeWithCoder:(id)coder;
- (void)markAllPropertiesDirty;
- (void)setAccountIdentifier:(id)identifier;
- (void)setExpirationDate:(id)date;
- (void)setObjectID:(id)d;
- (void)setServiceName:(id)name;
@end

@implementation ACCredentialItem

- (ACCredentialItem)initWithManagedCredentialItem:(id)item accountStore:(id)store
{
  storeCopy = store;
  v7 = [(ACCredentialItem *)self initWithManagedCredentialItem:item];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_accountStore, storeCopy);
  }

  return v8;
}

- (ACCredentialItem)initWithManagedCredentialItem:(id)item
{
  itemCopy = item;
  v18.receiver = self;
  v18.super_class = ACCredentialItem;
  v5 = [(ACCredentialItem *)&v18 init];
  if (v5)
  {
    accountIdentifier = [itemCopy accountIdentifier];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = accountIdentifier;

    expirationDate = [itemCopy expirationDate];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = expirationDate;

    serviceName = [itemCopy serviceName];
    serviceName = v5->_serviceName;
    v5->_serviceName = serviceName;

    persistent = [itemCopy persistent];
    v5->_persistent = [persistent BOOLValue];

    objectID = [itemCopy objectID];
    uRIRepresentation = [objectID URIRepresentation];
    objectID = v5->_objectID;
    v5->_objectID = uRIRepresentation;

    v16 = v5;
  }

  return v5;
}

- (ACCredentialItem)initWithAccountIdentifier:(id)identifier serviceName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = ACCredentialItem;
  v8 = [(ACCredentialItem *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    accountIdentifier = v8->_accountIdentifier;
    v8->_accountIdentifier = v9;

    v11 = [nameCopy copy];
    serviceName = v8->_serviceName;
    v8->_serviceName = v11;

    [(ACCredentialItem *)v8 _markPropertyDirty:@"accountIdentifier"];
    [(ACCredentialItem *)v8 _markPropertyDirty:@"serviceName"];
    [(ACCredentialItem *)v8 _markPropertyDirty:@"persistent"];
  }

  return v8;
}

- (ACCredentialItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = ACCredentialItem;
  v5 = [(ACCredentialItem *)&v24 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    v7 = [v6 copy];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceName"];
    v12 = [v11 copy];
    serviceName = v5->_serviceName;
    v5->_serviceName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"persistent"];
    v5->_persistent = [v14 BOOLValue];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
    v16 = [v15 copy];
    objectID = v5->_objectID;
    v5->_objectID = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"dirtyProperties"];
    dirtyProperties = v5->_dirtyProperties;
    v5->_dirtyProperties = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountIdentifier = [(ACCredentialItem *)self accountIdentifier];
  [coderCopy encodeObject:accountIdentifier forKey:@"accountIdentifier"];

  expirationDate = [(ACCredentialItem *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"expirationDate"];

  serviceName = [(ACCredentialItem *)self serviceName];
  [coderCopy encodeObject:serviceName forKey:@"serviceName"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[ACCredentialItem isPersistent](self, "isPersistent")}];
  [coderCopy encodeObject:v8 forKey:@"persistent"];

  objectID = [(ACCredentialItem *)self objectID];
  [coderCopy encodeObject:objectID forKey:@"objectID"];

  dirtyProperties = [(ACCredentialItem *)self dirtyProperties];
  [coderCopy encodeObject:dirtyProperties forKey:@"dirtyProperties"];
}

- (id)_initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = [(ACCredentialItem *)self init];
  if (v5)
  {
    v6 = protobufCopy;
    accountIdentifier = [v6 accountIdentifier];
    v8 = [accountIdentifier copy];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v8;

    if ([v6 hasExpirationDate])
    {
      expirationDate = [v6 expirationDate];
      date = [expirationDate date];
      expirationDate = v5->_expirationDate;
      v5->_expirationDate = date;
    }

    serviceName = [v6 serviceName];
    v14 = [serviceName copy];
    serviceName = v5->_serviceName;
    v5->_serviceName = v14;

    v5->_persistent = [v6 isPersistent];
    if ([v6 hasObjectID])
    {
      objectID = [v6 objectID];
      v17 = [objectID url];
      objectID = v5->_objectID;
      v5->_objectID = v17;
    }

    dirtyProperties = [v6 dirtyProperties];

    if (dirtyProperties)
    {
      v20 = objc_alloc(MEMORY[0x1E695DFA8]);
      dirtyProperties2 = [v6 dirtyProperties];
      v22 = [v20 initWithArray:dirtyProperties2];
      dirtyProperties = v5->_dirtyProperties;
      v5->_dirtyProperties = v22;
    }

    v24 = v5;
  }

  return v5;
}

- (id)_initWithProtobufData:(id)data
{
  dataCopy = data;
  if (![dataCopy length])
  {
    [(ACCredentialItem *)a2 _initWithProtobufData:?];
  }

  if ([dataCopy length])
  {
    v6 = [[ACProtobufCredentialItem alloc] initWithData:dataCopy];
    if (v6)
    {
      self = [(ACCredentialItem *)self _initWithProtobuf:v6];
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
  [v3 setAccountIdentifier:self->_accountIdentifier];
  v4 = [[ACProtobufDate alloc] initWithDate:self->_expirationDate];
  [v3 setExpirationDate:v4];

  [v3 setServiceName:self->_serviceName];
  [v3 setIsPersistent:{-[ACCredentialItem isPersistent](self, "isPersistent")}];
  v5 = [[ACProtobufURL alloc] initWithURL:self->_objectID];
  [v3 setObjectID:v5];

  dirtyProperties = [(ACCredentialItem *)self dirtyProperties];
  allObjects = [dirtyProperties allObjects];
  v8 = [allObjects mutableCopy];
  [v3 setDirtyProperties:v8];

  return v3;
}

- (id)_encodeProtobufData
{
  _encodeProtobuf = [(ACCredentialItem *)self _encodeProtobuf];
  data = [_encodeProtobuf data];

  return data;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  accountIdentifier = [(ACCredentialItem *)self accountIdentifier];
  serviceName = [(ACCredentialItem *)self serviceName];
  v6 = [v3 stringWithFormat:@"%@ (%@)", accountIdentifier, serviceName];

  return v6;
}

- (id)fullDescription
{
  v3 = MEMORY[0x1E696AEC0];
  accountIdentifier = [(ACCredentialItem *)self accountIdentifier];
  expirationDate = [(ACCredentialItem *)self expirationDate];
  serviceName = [(ACCredentialItem *)self serviceName];
  if ([(ACCredentialItem *)self isPersistent])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  objectID = [(ACCredentialItem *)self objectID];
  v9 = [v3 stringWithFormat:@"accountIdentifier: %@\nexpirationDate: %@\nserviceName: %@\npersistent: %@\nobjectID: %@", accountIdentifier, expirationDate, serviceName, v7, objectID];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_accountIdentifier copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSDate *)self->_expirationDate copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_serviceName copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  *(v5 + 32) = self->_persistent;
  v12 = [(NSURL *)self->_objectID copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  WeakRetained = objc_loadWeakRetained(&self->_accountStore);
  objc_storeWeak((v5 + 48), WeakRetained);

  v15 = [(NSMutableSet *)self->_dirtyProperties mutableCopyWithZone:zone];
  v16 = *(v5 + 56);
  *(v5 + 56) = v15;

  return v5;
}

- (void)setAccountIdentifier:(id)identifier
{
  v4 = [identifier copy];
  accountIdentifier = self->_accountIdentifier;
  self->_accountIdentifier = v4;

  [(ACCredentialItem *)self _markPropertyDirty:@"accountIdentifier"];
}

- (BOOL)isExpired
{
  expirationDate = self->_expirationDate;
  date = [MEMORY[0x1E695DF00] date];
  LOBYTE(expirationDate) = [(NSDate *)expirationDate compare:date]!= NSOrderedDescending;

  return expirationDate;
}

- (void)setExpirationDate:(id)date
{
  objc_storeStrong(&self->_expirationDate, date);

  [(ACCredentialItem *)self _markPropertyDirty:@"expirationDate"];
}

- (void)setServiceName:(id)name
{
  v4 = [name copy];
  serviceName = self->_serviceName;
  self->_serviceName = v4;

  [(ACCredentialItem *)self _markPropertyDirty:@"serviceName"];
}

- (void)setObjectID:(id)d
{
  objc_storeStrong(&self->_objectID, d);

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

- (void)_markPropertyDirty:(id)dirty
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
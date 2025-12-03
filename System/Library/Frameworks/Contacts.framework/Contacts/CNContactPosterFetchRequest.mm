@interface CNContactPosterFetchRequest
+ (id)allCurrentPostersRequest;
+ (id)allPostersRequestForContactIdentifiers:(id)identifiers;
+ (id)allRecentPostersRequest;
+ (id)currentPostersRequestForContactIdentifiers:(id)identifiers;
+ (id)recentPostersRequestForContactIdentifiers:(id)identifiers;
- (BOOL)isEqual:(id)equal;
- (CNContactPosterFetchRequest)initWithCoder:(id)coder;
- (CNContactPosterFetchRequest)initWithContactIdentifiers:(id)identifiers recencyType:(int64_t)type;
- (id)description;
- (id)persistentStoreRequest;
- (id)predicate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNContactPosterFetchRequest

- (id)persistentStoreRequest
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"CNContactPoster"];
  [v3 setReturnsObjectsAsFaults:0];
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastUsedDate" ascending:0];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v3 setSortDescriptors:v5];

  predicate = [(CNContactPosterFetchRequest *)self predicate];
  [v3 setPredicate:predicate];

  return v3;
}

- (id)predicate
{
  v3 = objc_opt_new();
  [v3 setContactIdentifiers:self->_contactIdentifiers];
  [v3 setRecencyType:self->_recencyType];
  [v3 setDeletedItemPolicy:0];
  build = [v3 build];

  return build;
}

+ (id)recentPostersRequestForContactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (!identifiersCopy)
  {
    if (CNGuardOSLog_cn_once_token_0 != -1)
    {
      +[CNContactPosterFetchRequest recentPostersRequestForContactIdentifiers:];
    }

    v4 = CNGuardOSLog_cn_once_object_0;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0, OS_LOG_TYPE_FAULT))
    {
      [(CNContactPosterFetchRequest *)v4 recentPostersRequestForContactIdentifiers:v5, v6, v7, v8, v9, v10, v11];
    }
  }

  v12 = [[CNContactPosterFetchRequest alloc] initWithContactIdentifiers:identifiersCopy recencyType:0];

  return v12;
}

+ (id)allRecentPostersRequest
{
  v2 = [[CNContactPosterFetchRequest alloc] initWithContactIdentifiers:0 recencyType:0];

  return v2;
}

+ (id)currentPostersRequestForContactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (!identifiersCopy)
  {
    if (CNGuardOSLog_cn_once_token_0 != -1)
    {
      +[CNContactPosterFetchRequest recentPostersRequestForContactIdentifiers:];
    }

    v4 = CNGuardOSLog_cn_once_object_0;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0, OS_LOG_TYPE_FAULT))
    {
      [(CNContactPosterFetchRequest *)v4 recentPostersRequestForContactIdentifiers:v5, v6, v7, v8, v9, v10, v11];
    }
  }

  v12 = [[CNContactPosterFetchRequest alloc] initWithContactIdentifiers:identifiersCopy recencyType:1];

  return v12;
}

+ (id)allCurrentPostersRequest
{
  v2 = [[CNContactPosterFetchRequest alloc] initWithContactIdentifiers:0 recencyType:1];

  return v2;
}

+ (id)allPostersRequestForContactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (!identifiersCopy)
  {
    if (CNGuardOSLog_cn_once_token_0 != -1)
    {
      +[CNContactPosterFetchRequest recentPostersRequestForContactIdentifiers:];
    }

    v4 = CNGuardOSLog_cn_once_object_0;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0, OS_LOG_TYPE_FAULT))
    {
      [(CNContactPosterFetchRequest *)v4 recentPostersRequestForContactIdentifiers:v5, v6, v7, v8, v9, v10, v11];
    }
  }

  v12 = [[CNContactPosterFetchRequest alloc] initWithContactIdentifiers:identifiersCopy recencyType:2];

  return v12;
}

- (CNContactPosterFetchRequest)initWithContactIdentifiers:(id)identifiers recencyType:(int64_t)type
{
  identifiersCopy = identifiers;
  v12.receiver = self;
  v12.super_class = CNContactPosterFetchRequest;
  v8 = [(CNContactPosterFetchRequest *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contactIdentifiers, identifiers);
    v9->_recencyType = type;
    v10 = v9;
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  contactIdentifiers = [(CNContactPosterFetchRequest *)self contactIdentifiers];
  v5 = [v3 appendName:@"identifiers" object:contactIdentifiers];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 1;
  if (self != equalCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || self->_recencyType != equalCopy->_recencyType || (contactIdentifiers = self->_contactIdentifiers, contactIdentifiers | equalCopy->_contactIdentifiers) && ![(NSArray *)contactIdentifiers isEqual:?])
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  recencyType = self->_recencyType;
  if (recencyType >= 0)
  {
    v3 = self->_recencyType;
  }

  else
  {
    v3 = -recencyType;
  }

  return [MEMORY[0x1E6996730] arrayHash:self->_contactIdentifiers] - v3 + 32 * v3 + 16337;
}

- (void)encodeWithCoder:(id)coder
{
  contactIdentifiers = self->_contactIdentifiers;
  coderCopy = coder;
  [coderCopy encodeObject:contactIdentifiers forKey:@"contactIdentifiers"];
  [coderCopy encodeInteger:self->_recencyType forKey:@"recencyType"];
}

- (CNContactPosterFetchRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"contactIdentifiers"];
  v6 = [coderCopy decodeIntegerForKey:@"recencyType"];

  v7 = [(CNContactPosterFetchRequest *)self initWithContactIdentifiers:v5 recencyType:v6];
  return v7;
}

@end
@interface CNContactImageFetchRequest
+ (id)allCurrentImagesRequest;
+ (id)allImagesRequestForContactIdentifiers:(id)a3;
+ (id)allRecentImagesRequest;
+ (id)currentImagesRequestForContactIdentifiers:(id)a3;
+ (id)recentImagesRequestForContactIdentifiers:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CNContactImageFetchRequest)initWithCoder:(id)a3;
- (CNContactImageFetchRequest)initWithContactIdentifiers:(id)a3 recencyType:(int64_t)a4;
- (id)persistentStoreRequest;
- (id)predicate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNContactImageFetchRequest

- (id)persistentStoreRequest
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"CNContactImage"];
  [v3 setReturnsObjectsAsFaults:0];
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastUsedDate" ascending:0];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v3 setSortDescriptors:v5];

  v6 = [(CNContactImageFetchRequest *)self predicate];
  [v3 setPredicate:v6];

  return v3;
}

- (id)predicate
{
  v3 = objc_opt_new();
  [v3 setContactIdentifiers:self->_contactIdentifiers];
  [v3 setRecencyType:self->_recencyType];
  [v3 setDeletedItemPolicy:0];
  v4 = [v3 build];

  return v4;
}

+ (id)recentImagesRequestForContactIdentifiers:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    if (CNGuardOSLog_cn_once_token_0_8 != -1)
    {
      +[CNContactImageFetchRequest recentImagesRequestForContactIdentifiers:];
    }

    v4 = CNGuardOSLog_cn_once_object_0_8;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_8, OS_LOG_TYPE_FAULT))
    {
      [(CNContactPosterFetchRequest *)v4 recentPostersRequestForContactIdentifiers:v5, v6, v7, v8, v9, v10, v11];
    }
  }

  v12 = [[CNContactImageFetchRequest alloc] initWithContactIdentifiers:v3 recencyType:0];

  return v12;
}

+ (id)allRecentImagesRequest
{
  v2 = [[CNContactImageFetchRequest alloc] initWithContactIdentifiers:0 recencyType:0];

  return v2;
}

+ (id)currentImagesRequestForContactIdentifiers:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    if (CNGuardOSLog_cn_once_token_0_8 != -1)
    {
      +[CNContactImageFetchRequest recentImagesRequestForContactIdentifiers:];
    }

    v4 = CNGuardOSLog_cn_once_object_0_8;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_8, OS_LOG_TYPE_FAULT))
    {
      [(CNContactPosterFetchRequest *)v4 recentPostersRequestForContactIdentifiers:v5, v6, v7, v8, v9, v10, v11];
    }
  }

  v12 = [[CNContactImageFetchRequest alloc] initWithContactIdentifiers:v3 recencyType:1];

  return v12;
}

+ (id)allCurrentImagesRequest
{
  v2 = [[CNContactImageFetchRequest alloc] initWithContactIdentifiers:0 recencyType:1];

  return v2;
}

+ (id)allImagesRequestForContactIdentifiers:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    if (CNGuardOSLog_cn_once_token_0_8 != -1)
    {
      +[CNContactImageFetchRequest recentImagesRequestForContactIdentifiers:];
    }

    v4 = CNGuardOSLog_cn_once_object_0_8;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_8, OS_LOG_TYPE_FAULT))
    {
      [(CNContactPosterFetchRequest *)v4 recentPostersRequestForContactIdentifiers:v5, v6, v7, v8, v9, v10, v11];
    }
  }

  v12 = [[CNContactImageFetchRequest alloc] initWithContactIdentifiers:v3 recencyType:2];

  return v12;
}

- (CNContactImageFetchRequest)initWithContactIdentifiers:(id)a3 recencyType:(int64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CNContactImageFetchRequest;
  v8 = [(CNContactImageFetchRequest *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contactIdentifiers, a3);
    v9->_recencyType = a4;
    v10 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 1;
  if (self != v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || self->_recencyType != v4->_recencyType || (contactIdentifiers = self->_contactIdentifiers, contactIdentifiers | v4->_contactIdentifiers) && ![(NSArray *)contactIdentifiers isEqual:?])
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

- (void)encodeWithCoder:(id)a3
{
  contactIdentifiers = self->_contactIdentifiers;
  v5 = a3;
  [v5 encodeObject:contactIdentifiers forKey:@"contactIdentifiers"];
  [v5 encodeInteger:self->_recencyType forKey:@"recencyType"];
}

- (CNContactImageFetchRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"contactIdentifiers"];
  v6 = [v4 decodeIntegerForKey:@"recencyType"];

  v7 = [(CNContactImageFetchRequest *)self initWithContactIdentifiers:v5 recencyType:v6];
  return v7;
}

@end
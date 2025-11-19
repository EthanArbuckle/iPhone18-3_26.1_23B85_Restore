@interface CNProviderMetadata
+ (id)log;
- (BOOL)isEqual:(id)a3;
- (CNProviderMetadata)initWithCoder:(id)a3;
- (CNProviderMetadata)initWithDataRepresentation:(id)a3;
- (CNProviderMetadata)initWithVersion:(int64_t)a3 displayName:(id)a4 userInfo:(id)a5 isResetRequested:(BOOL)a6 isContentEnumerated:(BOOL)a7 itemAnchor:(id)a8 itemOffset:(int64_t)a9 isMoreComing:(BOOL)a10;
- (NSData)dataRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNProviderMetadata

+ (id)log
{
  if (log_cn_once_token_0_7 != -1)
  {
    +[CNProviderMetadata log];
  }

  v3 = log_cn_once_object_0_7;

  return v3;
}

uint64_t __25__CNProviderMetadata_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNProviderMetadata");
  v1 = log_cn_once_object_0_7;
  log_cn_once_object_0_7 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNProviderMetadata)initWithDataRepresentation:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E696ACD0];
    v5 = a3;
    v24 = 0;
    v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v24];

    v7 = v24;
    if (v6)
    {
      v8 = [v6 version];
      v9 = [v6 displayName];
      v10 = [v6 userInfo];
      v11 = [v6 isResetRequested];
      v12 = [v6 isContentEnumerated];
      v13 = [v6 itemAnchor];
      v14 = [v6 itemOffset];
      LOBYTE(v23) = [v6 isMoreComing];
      self = [(CNProviderMetadata *)self initWithVersion:v8 displayName:v9 userInfo:v10 isResetRequested:v11 isContentEnumerated:v12 itemAnchor:v13 itemOffset:v14 isMoreComing:v23];

      v15 = self;
    }

    else
    {
      v9 = [objc_opt_class() log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(CNProviderMetadata *)v7 initWithDataRepresentation:v9, v16, v17, v18, v19, v20, v21];
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (CNProviderMetadata)initWithVersion:(int64_t)a3 displayName:(id)a4 userInfo:(id)a5 isResetRequested:(BOOL)a6 isContentEnumerated:(BOOL)a7 itemAnchor:(id)a8 itemOffset:(int64_t)a9 isMoreComing:(BOOL)a10
{
  v17 = a4;
  v18 = a5;
  v19 = a8;
  v31.receiver = self;
  v31.super_class = CNProviderMetadata;
  v20 = [(CNProviderMetadata *)&v31 init];
  v21 = v20;
  if (!v20)
  {
LABEL_7:
    v22 = 0;
    goto LABEL_8;
  }

  if (a3 >= 2)
  {
    v23 = [objc_opt_class() log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CNProviderMetadata initWithVersion:a3 displayName:v23 userInfo:v24 isResetRequested:v25 isContentEnumerated:v26 itemAnchor:v27 itemOffset:v28 isMoreComing:v29];
    }

    goto LABEL_7;
  }

  v20->_version = a3;
  objc_storeStrong(&v20->_displayName, a4);
  objc_storeStrong(&v21->_userInfo, a5);
  v21->_isResetRequested = a6;
  v21->_isContentEnumerated = a7;
  objc_storeStrong(&v21->_itemAnchor, a8);
  v21->_itemOffset = a9;
  v21->_isMoreComing = a10;
  v22 = v21;
LABEL_8:

  return v22;
}

- (NSData)dataRepresentation
{
  v13 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v13];
  v3 = v13;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [objc_opt_class() log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CNProviderMetadata *)v3 dataRepresentation:v5];
    }
  }

  return v2;
}

- (CNProviderMetadata)initWithCoder:(id)a3
{
  v3 = a3;
  v20 = [v3 decodeIntegerForKey:@"version"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v19 = [v3 decodeBoolForKey:@"isResetRequested"];
  v18 = [v3 decodeBoolForKey:@"isContentEnumerated"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"itemAnchor"];
  v6 = [v3 decodeIntegerForKey:@"itemOffset"];
  v7 = [v3 decodeBoolForKey:@"isMoreComing"];
  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
  v14 = [v3 decodeDictionaryWithKeysOfClasses:v8 objectsOfClasses:v13 forKey:@"userInfo"];

  LOBYTE(v17) = v7;
  v15 = [(CNProviderMetadata *)self initWithVersion:v20 displayName:v4 userInfo:v14 isResetRequested:v19 isContentEnumerated:v18 itemAnchor:v5 itemOffset:v6 isMoreComing:v17];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v5 = a3;
  [v5 encodeInteger:version forKey:@"version"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeObject:self->_userInfo forKey:@"userInfo"];
  [v5 encodeBool:self->_isResetRequested forKey:@"isResetRequested"];
  [v5 encodeBool:self->_isContentEnumerated forKey:@"isContentEnumerated"];
  [v5 encodeObject:self->_itemAnchor forKey:@"itemAnchor"];
  [v5 encodeInteger:self->_itemOffset forKey:@"itemOffset"];
  [v5 encodeBool:self->_isMoreComing forKey:@"isMoreComing"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(CNProviderMetadata);
  [(CNProviderMetadata *)v4 setVersion:[(CNProviderMetadata *)self version]];
  v5 = [(CNProviderMetadata *)self displayName];
  [(CNProviderMetadata *)v4 setDisplayName:v5];

  v6 = [(CNProviderMetadata *)self userInfo];
  [(CNProviderMetadata *)v4 setUserInfo:v6];

  [(CNProviderMetadata *)v4 setIsResetRequested:[(CNProviderMetadata *)self isResetRequested]];
  [(CNProviderMetadata *)v4 setIsContentEnumerated:[(CNProviderMetadata *)self isContentEnumerated]];
  v7 = [(CNProviderMetadata *)self itemAnchor];
  [(CNProviderMetadata *)v4 setItemAnchor:v7];

  [(CNProviderMetadata *)v4 setItemOffset:[(CNProviderMetadata *)self itemOffset]];
  [(CNProviderMetadata *)v4 setIsMoreComing:[(CNProviderMetadata *)self isMoreComing]];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[CNProviderMetadata version](self, "version"), v5 == -[CNProviderMetadata version](v4, "version")) && ((v6 = -[CNProviderMetadata displayName](self, "displayName"), v7 = -[CNProviderMetadata displayName](v4, "displayName"), !(v6 | v7)) || [v6 isEqual:v7]) && ((v8 = -[CNProviderMetadata userInfo](self, "userInfo"), v9 = -[CNProviderMetadata userInfo](v4, "userInfo"), !(v8 | v9)) || objc_msgSend(v8, "isEqual:", v9)) && (v10 = -[CNProviderMetadata isResetRequested](self, "isResetRequested"), v10 == -[CNProviderMetadata isResetRequested](v4, "isResetRequested")) && (v11 = -[CNProviderMetadata isContentEnumerated](self, "isContentEnumerated"), v11 == -[CNProviderMetadata isContentEnumerated](v4, "isContentEnumerated")) && ((v12 = -[CNProviderMetadata itemAnchor](self, "itemAnchor"), v13 = -[CNProviderMetadata itemAnchor](v4, "itemAnchor"), !(v12 | v13)) || objc_msgSend(v12, "isEqual:", v13)) && (v14 = -[CNProviderMetadata itemOffset](self, "itemOffset"), v14 == -[CNProviderMetadata itemOffset](v4, "itemOffset")))
    {
      v15 = [(CNProviderMetadata *)self isMoreComing];
      v16 = v15 ^ [(CNProviderMetadata *)v4 isMoreComing]^ 1;
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  return v16;
}

@end
@interface CNProviderMetadata
+ (id)log;
- (BOOL)isEqual:(id)equal;
- (CNProviderMetadata)initWithCoder:(id)coder;
- (CNProviderMetadata)initWithDataRepresentation:(id)representation;
- (CNProviderMetadata)initWithVersion:(int64_t)version displayName:(id)name userInfo:(id)info isResetRequested:(BOOL)requested isContentEnumerated:(BOOL)enumerated itemAnchor:(id)anchor itemOffset:(int64_t)offset isMoreComing:(BOOL)self0;
- (NSData)dataRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (CNProviderMetadata)initWithDataRepresentation:(id)representation
{
  if (representation)
  {
    v4 = MEMORY[0x1E696ACD0];
    representationCopy = representation;
    v24 = 0;
    v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:representationCopy error:&v24];

    v7 = v24;
    if (v6)
    {
      version = [v6 version];
      displayName = [v6 displayName];
      userInfo = [v6 userInfo];
      isResetRequested = [v6 isResetRequested];
      isContentEnumerated = [v6 isContentEnumerated];
      itemAnchor = [v6 itemAnchor];
      itemOffset = [v6 itemOffset];
      LOBYTE(v23) = [v6 isMoreComing];
      self = [(CNProviderMetadata *)self initWithVersion:version displayName:displayName userInfo:userInfo isResetRequested:isResetRequested isContentEnumerated:isContentEnumerated itemAnchor:itemAnchor itemOffset:itemOffset isMoreComing:v23];

      selfCopy = self;
    }

    else
    {
      displayName = [objc_opt_class() log];
      if (os_log_type_enabled(displayName, OS_LOG_TYPE_ERROR))
      {
        [(CNProviderMetadata *)v7 initWithDataRepresentation:displayName, v16, v17, v18, v19, v20, v21];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CNProviderMetadata)initWithVersion:(int64_t)version displayName:(id)name userInfo:(id)info isResetRequested:(BOOL)requested isContentEnumerated:(BOOL)enumerated itemAnchor:(id)anchor itemOffset:(int64_t)offset isMoreComing:(BOOL)self0
{
  nameCopy = name;
  infoCopy = info;
  anchorCopy = anchor;
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

  if (version >= 2)
  {
    v23 = [objc_opt_class() log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CNProviderMetadata initWithVersion:version displayName:v23 userInfo:v24 isResetRequested:v25 isContentEnumerated:v26 itemAnchor:v27 itemOffset:v28 isMoreComing:v29];
    }

    goto LABEL_7;
  }

  v20->_version = version;
  objc_storeStrong(&v20->_displayName, name);
  objc_storeStrong(&v21->_userInfo, info);
  v21->_isResetRequested = requested;
  v21->_isContentEnumerated = enumerated;
  objc_storeStrong(&v21->_itemAnchor, anchor);
  v21->_itemOffset = offset;
  v21->_isMoreComing = coming;
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

- (CNProviderMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20 = [coderCopy decodeIntegerForKey:@"version"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v19 = [coderCopy decodeBoolForKey:@"isResetRequested"];
  v18 = [coderCopy decodeBoolForKey:@"isContentEnumerated"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemAnchor"];
  v6 = [coderCopy decodeIntegerForKey:@"itemOffset"];
  v7 = [coderCopy decodeBoolForKey:@"isMoreComing"];
  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
  v14 = [coderCopy decodeDictionaryWithKeysOfClasses:v8 objectsOfClasses:v13 forKey:@"userInfo"];

  LOBYTE(v17) = v7;
  v15 = [(CNProviderMetadata *)self initWithVersion:v20 displayName:v4 userInfo:v14 isResetRequested:v19 isContentEnumerated:v18 itemAnchor:v5 itemOffset:v6 isMoreComing:v17];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeInteger:version forKey:@"version"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
  [coderCopy encodeObject:self->_userInfo forKey:@"userInfo"];
  [coderCopy encodeBool:self->_isResetRequested forKey:@"isResetRequested"];
  [coderCopy encodeBool:self->_isContentEnumerated forKey:@"isContentEnumerated"];
  [coderCopy encodeObject:self->_itemAnchor forKey:@"itemAnchor"];
  [coderCopy encodeInteger:self->_itemOffset forKey:@"itemOffset"];
  [coderCopy encodeBool:self->_isMoreComing forKey:@"isMoreComing"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CNProviderMetadata);
  [(CNProviderMetadata *)v4 setVersion:[(CNProviderMetadata *)self version]];
  displayName = [(CNProviderMetadata *)self displayName];
  [(CNProviderMetadata *)v4 setDisplayName:displayName];

  userInfo = [(CNProviderMetadata *)self userInfo];
  [(CNProviderMetadata *)v4 setUserInfo:userInfo];

  [(CNProviderMetadata *)v4 setIsResetRequested:[(CNProviderMetadata *)self isResetRequested]];
  [(CNProviderMetadata *)v4 setIsContentEnumerated:[(CNProviderMetadata *)self isContentEnumerated]];
  itemAnchor = [(CNProviderMetadata *)self itemAnchor];
  [(CNProviderMetadata *)v4 setItemAnchor:itemAnchor];

  [(CNProviderMetadata *)v4 setItemOffset:[(CNProviderMetadata *)self itemOffset]];
  [(CNProviderMetadata *)v4 setIsMoreComing:[(CNProviderMetadata *)self isMoreComing]];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[CNProviderMetadata version](self, "version"), v5 == -[CNProviderMetadata version](equalCopy, "version")) && ((v6 = -[CNProviderMetadata displayName](self, "displayName"), v7 = -[CNProviderMetadata displayName](equalCopy, "displayName"), !(v6 | v7)) || [v6 isEqual:v7]) && ((v8 = -[CNProviderMetadata userInfo](self, "userInfo"), v9 = -[CNProviderMetadata userInfo](equalCopy, "userInfo"), !(v8 | v9)) || objc_msgSend(v8, "isEqual:", v9)) && (v10 = -[CNProviderMetadata isResetRequested](self, "isResetRequested"), v10 == -[CNProviderMetadata isResetRequested](equalCopy, "isResetRequested")) && (v11 = -[CNProviderMetadata isContentEnumerated](self, "isContentEnumerated"), v11 == -[CNProviderMetadata isContentEnumerated](equalCopy, "isContentEnumerated")) && ((v12 = -[CNProviderMetadata itemAnchor](self, "itemAnchor"), v13 = -[CNProviderMetadata itemAnchor](equalCopy, "itemAnchor"), !(v12 | v13)) || objc_msgSend(v12, "isEqual:", v13)) && (v14 = -[CNProviderMetadata itemOffset](self, "itemOffset"), v14 == -[CNProviderMetadata itemOffset](equalCopy, "itemOffset")))
    {
      isMoreComing = [(CNProviderMetadata *)self isMoreComing];
      v16 = isMoreComing ^ [(CNProviderMetadata *)equalCopy isMoreComing]^ 1;
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  return v16;
}

@end
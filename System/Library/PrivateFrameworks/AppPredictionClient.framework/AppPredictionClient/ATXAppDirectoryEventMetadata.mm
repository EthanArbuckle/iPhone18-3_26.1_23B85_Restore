@interface ATXAppDirectoryEventMetadata
- (ATXAppDirectoryEventMetadata)initWithBundleIdInTopAppsVisible:(id)visible userLaunchedAppBeforeLeaving:(id)leaving;
- (ATXAppDirectoryEventMetadata)initWithCoder:(id)coder;
- (ATXAppDirectoryEventMetadata)initWithProto:(id)proto;
- (ATXAppDirectoryEventMetadata)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXAppDirectoryEventMetadata:(id)metadata;
- (id)encodeAsProto;
- (id)jsonDict;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXAppDirectoryEventMetadata

- (ATXAppDirectoryEventMetadata)initWithBundleIdInTopAppsVisible:(id)visible userLaunchedAppBeforeLeaving:(id)leaving
{
  visibleCopy = visible;
  leavingCopy = leaving;
  v12.receiver = self;
  v12.super_class = ATXAppDirectoryEventMetadata;
  v9 = [(ATXAppDirectoryEventMetadata *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleIdInTopAppsVisible, visible);
    objc_storeStrong(&v10->_userLaunchedAppBeforeLeaving, leaving);
  }

  return v10;
}

- (id)encodeAsProto
{
  proto = [(ATXAppDirectoryEventMetadata *)self proto];
  data = [proto data];

  return data;
}

- (ATXAppDirectoryEventMetadata)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_8:
    selfCopy = 0;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(ATXAppDirectoryEventMetadata *)self initWithProto:v7];
    }

    goto LABEL_8;
  }

  v5 = protoCopy;
  if ([(ATXPBAppDirectoryEventMetadata *)v5 hasBundleIdInTopAppsVisible])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:-[ATXPBAppDirectoryEventMetadata bundleIdInTopAppsVisible](v5)];
  }

  else
  {
    v6 = 0;
  }

  if ([(ATXPBAppDirectoryEventMetadata *)v5 hasUserLaunchedAppBeforeLeaving])
  {
    v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:-[ATXPBAppDirectoryEventMetadata userLaunchedAppBeforeLeaving](v5)];
  }

  else
  {
    v9 = 0;
  }

  self = [(ATXAppDirectoryEventMetadata *)self initWithBundleIdInTopAppsVisible:v6 userLaunchedAppBeforeLeaving:v9];

  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (ATXAppDirectoryEventMetadata)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBAppDirectoryEventMetadata alloc] initWithData:dataCopy];

    self = [(ATXAppDirectoryEventMetadata *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  bundleIdInTopAppsVisible = self->_bundleIdInTopAppsVisible;
  if (bundleIdInTopAppsVisible)
  {
    [(ATXPBAppDirectoryEventMetadata *)v3 setBundleIdInTopAppsVisible:?];
  }

  userLaunchedAppBeforeLeaving = self->_userLaunchedAppBeforeLeaving;
  if (userLaunchedAppBeforeLeaving)
  {
    [(ATXPBAppDirectoryEventMetadata *)v3 setUserLaunchedAppBeforeLeaving:?];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXAppDirectoryEventMetadata *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXAppDirectoryEventMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXAppDirectoryEventMetadata *)self initWithProtoData:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXAppDirectoryEventMetadata *)self isEqualToATXAppDirectoryEventMetadata:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXAppDirectoryEventMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = self->_bundleIdInTopAppsVisible;
  v6 = v5;
  if (v5 == metadataCopy[1])
  {
  }

  else
  {
    v7 = [(NSNumber *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_userLaunchedAppBeforeLeaving;
  v10 = v9;
  if (v9 == metadataCopy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSNumber *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (id)jsonDict
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = @"bundleIdInTopAppsVisible";
  v4[1] = @"userLaunchedAppBeforeLeaving";
  v5 = vbslq_s8(vceqzq_s64(*&self->_bundleIdInTopAppsVisible), vdupq_n_s64(@"nil"), *&self->_bundleIdInTopAppsVisible);
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v5 forKeys:v4 count:2];

  return v2;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBAppDirectoryEventMetadata proto", &v5, 0xCu);
}

@end
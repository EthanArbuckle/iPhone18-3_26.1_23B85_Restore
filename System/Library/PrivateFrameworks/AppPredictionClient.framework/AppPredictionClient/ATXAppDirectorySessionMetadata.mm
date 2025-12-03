@interface ATXAppDirectorySessionMetadata
- (ATXAppDirectorySessionMetadata)initWithCoder:(id)coder;
- (ATXAppDirectorySessionMetadata)initWithEngagedBundleId:(id)id engagedBundleIdInTopAppsVisible:(id)visible didSearchDuringSession:(BOOL)session;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXAppDirectorySessionMetadata:(id)metadata;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXAppDirectorySessionMetadata

- (ATXAppDirectorySessionMetadata)initWithEngagedBundleId:(id)id engagedBundleIdInTopAppsVisible:(id)visible didSearchDuringSession:(BOOL)session
{
  idCopy = id;
  visibleCopy = visible;
  v14.receiver = self;
  v14.super_class = ATXAppDirectorySessionMetadata;
  v11 = [(ATXAppDirectorySessionMetadata *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_engagedBundleId, id);
    objc_storeStrong(&v12->_engagedBundleIdInTopAppsVisible, visible);
    v12->_didSearchDuringSession = session;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  engagedBundleId = self->_engagedBundleId;
  coderCopy = coder;
  [coderCopy encodeObject:engagedBundleId forKey:@"engagedBundleId"];
  [coderCopy encodeObject:self->_engagedBundleIdInTopAppsVisible forKey:@"bundleIdInTopAppsVisible"];
  [coderCopy encodeBool:self->_didSearchDuringSession forKey:@"appDirDidSearchDuringSession"];
}

- (ATXAppDirectorySessionMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_feedback();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"engagedBundleId" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.ATXFeedbackSessionMetadata" errorCode:-1 logHandle:v7];

  error = [coderCopy error];

  if (error)
  {
    selfCopy = 0;
  }

  else
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_feedback();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"bundleIdInTopAppsVisible" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.ATXFeedbackSessionMetadata" errorCode:-1 logHandle:v13];

    error2 = [coderCopy error];

    if (error2)
    {
      selfCopy = 0;
    }

    else
    {
      self = -[ATXAppDirectorySessionMetadata initWithEngagedBundleId:engagedBundleIdInTopAppsVisible:didSearchDuringSession:](self, "initWithEngagedBundleId:engagedBundleIdInTopAppsVisible:didSearchDuringSession:", v8, v14, [coderCopy decodeBoolForKey:@"appDirDidSearchDuringSession"]);
      selfCopy = self;
    }
  }

  return selfCopy;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_engagedBundleId hash];
  v4 = [(NSNumber *)self->_engagedBundleIdInTopAppsVisible hash];
  return self->_didSearchDuringSession - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXAppDirectorySessionMetadata *)self isEqualToATXAppDirectorySessionMetadata:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXAppDirectorySessionMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = self->_engagedBundleId;
  v6 = v5;
  if (v5 == metadataCopy[2])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v8 = self->_engagedBundleIdInTopAppsVisible;
  v9 = v8;
  if (v8 == metadataCopy[3])
  {

    goto LABEL_9;
  }

  v10 = [(NSNumber *)v8 isEqual:?];

  if (v10)
  {
LABEL_9:
    v11 = self->_didSearchDuringSession == *(metadataCopy + 8);
    goto LABEL_10;
  }

LABEL_7:
  v11 = 0;
LABEL_10:

  return v11;
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v6;
  if (self->_didSearchDuringSession)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [v4 initWithFormat:@"%@: \nengagedBundleId: %@ \nengagedBundleIdInTopAppsVisible: %@ \ndidSearchDuringSession: %@ \n", v6, self->_engagedBundleId, self->_engagedBundleIdInTopAppsVisible, v8];

  objc_autoreleasePoolPop(v3);

  return v9;
}

@end
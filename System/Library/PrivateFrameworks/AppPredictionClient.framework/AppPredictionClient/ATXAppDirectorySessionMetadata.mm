@interface ATXAppDirectorySessionMetadata
- (ATXAppDirectorySessionMetadata)initWithCoder:(id)a3;
- (ATXAppDirectorySessionMetadata)initWithEngagedBundleId:(id)a3 engagedBundleIdInTopAppsVisible:(id)a4 didSearchDuringSession:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXAppDirectorySessionMetadata:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXAppDirectorySessionMetadata

- (ATXAppDirectorySessionMetadata)initWithEngagedBundleId:(id)a3 engagedBundleIdInTopAppsVisible:(id)a4 didSearchDuringSession:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = ATXAppDirectorySessionMetadata;
  v11 = [(ATXAppDirectorySessionMetadata *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_engagedBundleId, a3);
    objc_storeStrong(&v12->_engagedBundleIdInTopAppsVisible, a4);
    v12->_didSearchDuringSession = a5;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  engagedBundleId = self->_engagedBundleId;
  v5 = a3;
  [v5 encodeObject:engagedBundleId forKey:@"engagedBundleId"];
  [v5 encodeObject:self->_engagedBundleIdInTopAppsVisible forKey:@"bundleIdInTopAppsVisible"];
  [v5 encodeBool:self->_didSearchDuringSession forKey:@"appDirDidSearchDuringSession"];
}

- (ATXAppDirectorySessionMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_feedback();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"engagedBundleId" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.ATXFeedbackSessionMetadata" errorCode:-1 logHandle:v7];

  v9 = [v4 error];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_opt_class();
    v13 = __atxlog_handle_feedback();
    v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"bundleIdInTopAppsVisible" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.ATXFeedbackSessionMetadata" errorCode:-1 logHandle:v13];

    v15 = [v4 error];

    if (v15)
    {
      v10 = 0;
    }

    else
    {
      self = -[ATXAppDirectorySessionMetadata initWithEngagedBundleId:engagedBundleIdInTopAppsVisible:didSearchDuringSession:](self, "initWithEngagedBundleId:engagedBundleIdInTopAppsVisible:didSearchDuringSession:", v8, v14, [v4 decodeBoolForKey:@"appDirDidSearchDuringSession"]);
      v10 = self;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_engagedBundleId hash];
  v4 = [(NSNumber *)self->_engagedBundleIdInTopAppsVisible hash];
  return self->_didSearchDuringSession - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXAppDirectorySessionMetadata *)self isEqualToATXAppDirectorySessionMetadata:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXAppDirectorySessionMetadata:(id)a3
{
  v4 = a3;
  v5 = self->_engagedBundleId;
  v6 = v5;
  if (v5 == v4[2])
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
  if (v8 == v4[3])
  {

    goto LABEL_9;
  }

  v10 = [(NSNumber *)v8 isEqual:?];

  if (v10)
  {
LABEL_9:
    v11 = self->_didSearchDuringSession == *(v4 + 8);
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
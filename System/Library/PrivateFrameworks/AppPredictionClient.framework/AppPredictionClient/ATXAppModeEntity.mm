@interface ATXAppModeEntity
- (ATXAppModeEntity)initWithBundleId:(id)id itunesGenreIds:(id)ids;
- (ATXAppModeEntity)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)jsonDict;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXAppModeEntity

- (ATXAppModeEntity)initWithBundleId:(id)id itunesGenreIds:(id)ids
{
  idCopy = id;
  idsCopy = ids;
  v13.receiver = self;
  v13.super_class = ATXAppModeEntity;
  v8 = [(ATXAppModeEntity *)&v13 init];
  if (v8)
  {
    if (!idCopy)
    {
      v9 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [ATXAppModeEntity initWithBundleId:v9 itunesGenreIds:?];
      }
    }

    v10 = [idCopy copy];
    bundleId = v8->_bundleId;
    v8->_bundleId = v10;

    objc_storeStrong(&v8->_itunesGenreIds, ids);
  }

  return v8;
}

- (id)jsonDict
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"entityIdentifier";
  identifier = [(ATXAppModeEntity *)self identifier];
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"scoreMetadata";
  scoreMetadata = [(ATXAppModeEntity *)self scoreMetadata];
  jsonDict = [scoreMetadata jsonDict];
  null2 = jsonDict;
  if (!jsonDict)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"genreId";
  firstObject = [(NSArray *)self->_itunesGenreIds firstObject];
  null3 = firstObject;
  if (!firstObject)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!firstObject)
  {
  }

  if (!jsonDict)
  {
  }

  if (!identifier)
  {
  }

  return v10;
}

- (NSString)debugDescription
{
  jsonDict = [(ATXAppModeEntity *)self jsonDict];
  v3 = [jsonDict description];

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(ATXAppModeEntity *)self identifier];
  scoreMetadata = [(ATXAppModeEntity *)self scoreMetadata];
  [scoreMetadata score];
  v7 = [v3 initWithFormat:@"entityIdentifier: %@, score: %.3f", identifier, v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(ATXAppModeEntity *)self identifier];
      identifier2 = [(ATXAppModeEntity *)v5 identifier];

      v8 = [identifier isEqualToString:identifier2];
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
  identifier = [(ATXAppModeEntity *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleId = [(ATXAppModeEntity *)self bundleId];
  [coderCopy encodeObject:bundleId forKey:@"codingKeyForBundleId"];

  itunesGenreIds = [(ATXAppModeEntity *)self itunesGenreIds];
  [coderCopy encodeObject:itunesGenreIds forKey:@"codingKeyForItunesGenreIds"];

  scoreMetadata = [(ATXAppModeEntity *)self scoreMetadata];
  [coderCopy encodeObject:scoreMetadata forKey:@"codingKeyForScoreMetadata"];
}

- (ATXAppModeEntity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_notification_management();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForBundleId" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.decode.appModeEntity" errorCode:-1 logHandle:v7];

  if (v8 && ([coderCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_autoreleasePoolPush();
    v13 = objc_alloc(MEMORY[0x1E695DFD8]);
    v14 = objc_opt_class();
    v15 = [v13 initWithObjects:{v14, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v12);
    v16 = __atxlog_handle_notification_management();
    v17 = [v11 robustDecodeObjectOfClasses:v15 forKey:@"codingKeyForItunesGenreIds" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.decode.appModeEntity" errorCode:-1 logHandle:v16];

    error = [coderCopy error];

    if (error)
    {
      selfCopy = 0;
    }

    else
    {
      v19 = MEMORY[0x1E69C5D78];
      v20 = objc_opt_class();
      v21 = __atxlog_handle_notification_management();
      v22 = [v19 robustDecodeObjectOfClass:v20 forKey:@"codingKeyForScoreMetadata" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.decode.appModeEntity" errorCode:-1 logHandle:v21];

      error2 = [coderCopy error];

      if (error2)
      {
        selfCopy = 0;
      }

      else
      {
        self = [(ATXAppModeEntity *)self initWithBundleId:v8 itunesGenreIds:v17];
        [(ATXAppModeEntity *)self setScoreMetadata:v22];
        selfCopy = self;
      }
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXAppModeEntity allocWithZone:zone];
  bundleId = [(ATXAppModeEntity *)self bundleId];
  itunesGenreIds = [(ATXAppModeEntity *)self itunesGenreIds];
  v7 = [(ATXAppModeEntity *)v4 initWithBundleId:bundleId itunesGenreIds:itunesGenreIds];

  return v7;
}

@end
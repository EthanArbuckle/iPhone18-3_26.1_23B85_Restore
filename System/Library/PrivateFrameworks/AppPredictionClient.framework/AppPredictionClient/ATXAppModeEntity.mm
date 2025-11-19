@interface ATXAppModeEntity
- (ATXAppModeEntity)initWithBundleId:(id)a3 itunesGenreIds:(id)a4;
- (ATXAppModeEntity)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)jsonDict;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXAppModeEntity

- (ATXAppModeEntity)initWithBundleId:(id)a3 itunesGenreIds:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ATXAppModeEntity;
  v8 = [(ATXAppModeEntity *)&v13 init];
  if (v8)
  {
    if (!v6)
    {
      v9 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [ATXAppModeEntity initWithBundleId:v9 itunesGenreIds:?];
      }
    }

    v10 = [v6 copy];
    bundleId = v8->_bundleId;
    v8->_bundleId = v10;

    objc_storeStrong(&v8->_itunesGenreIds, a4);
  }

  return v8;
}

- (id)jsonDict
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"entityIdentifier";
  v3 = [(ATXAppModeEntity *)self identifier];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"scoreMetadata";
  v5 = [(ATXAppModeEntity *)self scoreMetadata];
  v6 = [v5 jsonDict];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v7;
  v12[2] = @"genreId";
  v8 = [(NSArray *)self->_itunesGenreIds firstObject];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (!v8)
  {
  }

  if (!v6)
  {
  }

  if (!v3)
  {
  }

  return v10;
}

- (NSString)debugDescription
{
  v2 = [(ATXAppModeEntity *)self jsonDict];
  v3 = [v2 description];

  return v3;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(ATXAppModeEntity *)self identifier];
  v5 = [(ATXAppModeEntity *)self scoreMetadata];
  [v5 score];
  v7 = [v3 initWithFormat:@"entityIdentifier: %@, score: %.3f", v4, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ATXAppModeEntity *)self identifier];
      v7 = [(ATXAppModeEntity *)v5 identifier];

      v8 = [v6 isEqualToString:v7];
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
  v2 = [(ATXAppModeEntity *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXAppModeEntity *)self bundleId];
  [v4 encodeObject:v5 forKey:@"codingKeyForBundleId"];

  v6 = [(ATXAppModeEntity *)self itunesGenreIds];
  [v4 encodeObject:v6 forKey:@"codingKeyForItunesGenreIds"];

  v7 = [(ATXAppModeEntity *)self scoreMetadata];
  [v4 encodeObject:v7 forKey:@"codingKeyForScoreMetadata"];
}

- (ATXAppModeEntity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_notification_management();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForBundleId" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.decode.appModeEntity" errorCode:-1 logHandle:v7];

  if (v8 && ([v4 error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v11 = MEMORY[0x1E69C5D78];
    v12 = objc_autoreleasePoolPush();
    v13 = objc_alloc(MEMORY[0x1E695DFD8]);
    v14 = objc_opt_class();
    v15 = [v13 initWithObjects:{v14, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v12);
    v16 = __atxlog_handle_notification_management();
    v17 = [v11 robustDecodeObjectOfClasses:v15 forKey:@"codingKeyForItunesGenreIds" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.decode.appModeEntity" errorCode:-1 logHandle:v16];

    v18 = [v4 error];

    if (v18)
    {
      v10 = 0;
    }

    else
    {
      v19 = MEMORY[0x1E69C5D78];
      v20 = objc_opt_class();
      v21 = __atxlog_handle_notification_management();
      v22 = [v19 robustDecodeObjectOfClass:v20 forKey:@"codingKeyForScoreMetadata" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.decode.appModeEntity" errorCode:-1 logHandle:v21];

      v23 = [v4 error];

      if (v23)
      {
        v10 = 0;
      }

      else
      {
        self = [(ATXAppModeEntity *)self initWithBundleId:v8 itunesGenreIds:v17];
        [(ATXAppModeEntity *)self setScoreMetadata:v22];
        v10 = self;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXAppModeEntity allocWithZone:a3];
  v5 = [(ATXAppModeEntity *)self bundleId];
  v6 = [(ATXAppModeEntity *)self itunesGenreIds];
  v7 = [(ATXAppModeEntity *)v4 initWithBundleId:v5 itunesGenreIds:v6];

  return v7;
}

@end
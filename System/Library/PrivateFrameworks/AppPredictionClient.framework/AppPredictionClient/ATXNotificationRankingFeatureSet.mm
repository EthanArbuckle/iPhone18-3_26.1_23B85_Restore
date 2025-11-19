@interface ATXNotificationRankingFeatureSet
- (ATXNotificationRankingFeatureSet)initWithCoder:(id)a3;
- (ATXNotificationRankingFeatureSet)initWithFeatures:(id)a3 metadata:(id)a4;
- (double)score;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXNotificationRankingFeatureSet

- (ATXNotificationRankingFeatureSet)initWithFeatures:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ATXNotificationRankingFeatureSet;
  v8 = [(ATXNotificationRankingFeatureSet *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    features = v8->_features;
    v8->_features = v9;

    v11 = [v7 copy];
    metadata = v8->_metadata;
    v8->_metadata = v11;
  }

  return v8;
}

- (double)score
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(NSDictionary *)self->_features allValues];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) score];
        v6 = v6 + v8;
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXNotificationRankingFeatureSet alloc];
  features = self->_features;
  metadata = self->_metadata;

  return [(ATXNotificationRankingFeatureSet *)v4 initWithFeatures:features metadata:metadata];
}

- (void)encodeWithCoder:(id)a3
{
  features = self->_features;
  v5 = a3;
  [v5 encodeObject:features forKey:@"features"];
  [v5 encodeObject:self->_metadata forKey:@"metadata"];
}

- (ATXNotificationRankingFeatureSet)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeDictionaryWithKeysOfClass:v5 objectsOfClass:objc_opt_class() forKey:@"features"];
  if (v6 && ([v4 error], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v18 = objc_opt_class();
    v8 = [v4 decodeDictionaryWithKeysOfClass:v18 objectsOfClass:objc_opt_class() forKey:@"metadata"];
    if (v8)
    {
      v19 = [v4 error];

      if (!v19)
      {
        self = [(ATXNotificationRankingFeatureSet *)self initWithFeatures:v6 metadata:v8];
        v16 = self;
        goto LABEL_6;
      }
    }

    v20 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(ATXNotificationRankingFeatureSet *)v20 initWithCoder:v21, v22, v23, v24, v25, v26, v27];
    }
  }

  else
  {
    v8 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXNotificationRankingFeatureSet *)v8 initWithCoder:v9, v10, v11, v12, v13, v14, v15];
    }
  }

  v16 = 0;
LABEL_6:

  return v16;
}

@end
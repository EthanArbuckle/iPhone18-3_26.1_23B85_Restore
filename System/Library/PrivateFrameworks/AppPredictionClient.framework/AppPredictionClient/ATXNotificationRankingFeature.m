@interface ATXNotificationRankingFeature
- (ATXNotificationRankingFeature)initWithCoder:(id)a3;
- (ATXNotificationRankingFeature)initWithWeight:(id)a3 value:(id)a4;
- (double)score;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXNotificationRankingFeature

- (ATXNotificationRankingFeature)initWithWeight:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXNotificationRankingFeature;
  v9 = [(ATXNotificationRankingFeature *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_weight, a3);
    objc_storeStrong(&v10->_value, a4);
  }

  return v10;
}

- (double)score
{
  [(NSNumber *)self->_weight doubleValue];
  v4 = v3;
  [(NSNumber *)self->_value doubleValue];
  return v4 * v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXNotificationRankingFeature alloc];
  v5 = [(NSNumber *)self->_weight copy];
  v6 = [(NSNumber *)self->_value copy];
  v7 = [(ATXNotificationRankingFeature *)v4 initWithWeight:v5 value:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  weight = self->_weight;
  v5 = a3;
  [v5 encodeObject:weight forKey:@"weight"];
  [v5 encodeObject:self->_value forKey:@"value"];
}

- (ATXNotificationRankingFeature)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"weight"];
  if (v5 && ([v4 error], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    if (v7)
    {
      v17 = [v4 error];

      if (!v17)
      {
        self = [(ATXNotificationRankingFeature *)self initWithWeight:v5 value:v7];
        v15 = self;
        goto LABEL_6;
      }
    }

    v18 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(ATXNotificationRankingFeature *)v18 initWithCoder:v19, v20, v21, v22, v23, v24, v25];
    }
  }

  else
  {
    v7 = __atxlog_handle_notification_categorization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ATXNotificationRankingFeature *)v7 initWithCoder:v8, v9, v10, v11, v12, v13, v14];
    }
  }

  v15 = 0;
LABEL_6:

  return v15;
}

@end
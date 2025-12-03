@interface ATXNotificationRankingFeature
- (ATXNotificationRankingFeature)initWithCoder:(id)coder;
- (ATXNotificationRankingFeature)initWithWeight:(id)weight value:(id)value;
- (double)score;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXNotificationRankingFeature

- (ATXNotificationRankingFeature)initWithWeight:(id)weight value:(id)value
{
  weightCopy = weight;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = ATXNotificationRankingFeature;
  v9 = [(ATXNotificationRankingFeature *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_weight, weight);
    objc_storeStrong(&v10->_value, value);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXNotificationRankingFeature alloc];
  v5 = [(NSNumber *)self->_weight copy];
  v6 = [(NSNumber *)self->_value copy];
  v7 = [(ATXNotificationRankingFeature *)v4 initWithWeight:v5 value:v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  weight = self->_weight;
  coderCopy = coder;
  [coderCopy encodeObject:weight forKey:@"weight"];
  [coderCopy encodeObject:self->_value forKey:@"value"];
}

- (ATXNotificationRankingFeature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"weight"];
  if (v5 && ([coderCopy error], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    if (v7)
    {
      error = [coderCopy error];

      if (!error)
      {
        self = [(ATXNotificationRankingFeature *)self initWithWeight:v5 value:v7];
        selfCopy = self;
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

  selfCopy = 0;
LABEL_6:

  return selfCopy;
}

@end
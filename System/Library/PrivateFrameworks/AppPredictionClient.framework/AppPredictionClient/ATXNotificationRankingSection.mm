@interface ATXNotificationRankingSection
- (ATXNotificationRankingSection)initWithCoder:(id)a3;
- (ATXNotificationRankingSection)initWithUserNotifications:(id)a3 featureSet:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXNotificationRankingSection

- (ATXNotificationRankingSection)initWithUserNotifications:(id)a3 featureSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ATXNotificationRankingSection;
  v8 = [(ATXNotificationRankingSection *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    userNotifications = v8->_userNotifications;
    v8->_userNotifications = v9;

    objc_storeStrong(&v8->_featureSet, a4);
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  featureSet = self->_featureSet;
  v5 = a3;
  [v5 encodeObject:featureSet forKey:@"featureSet"];
  [v5 encodeObject:self->_userNotifications forKey:@"userNotifications"];
}

- (ATXNotificationRankingSection)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = MEMORY[0x1E695DFD8];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = __atxlog_handle_notification_categorization();
  v10 = [v5 robustDecodeObjectOfClasses:v8 forKey:@"userNotifications" withCoder:v4 expectNonNull:1 errorDomain:@"ATXNotificationRankingSectionError" errorCode:-1 logHandle:{v9, v16[0]}];

  v11 = [v4 error];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"featureSet"];
    v14 = [v4 error];

    if (v14)
    {
      v12 = 0;
    }

    else
    {
      self = [(ATXNotificationRankingSection *)self initWithUserNotifications:v10 featureSet:v13];
      v12 = self;
    }
  }

  return v12;
}

@end
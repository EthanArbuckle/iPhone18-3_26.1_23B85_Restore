@interface ATXNotificationRankingSection
- (ATXNotificationRankingSection)initWithCoder:(id)coder;
- (ATXNotificationRankingSection)initWithUserNotifications:(id)notifications featureSet:(id)set;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXNotificationRankingSection

- (ATXNotificationRankingSection)initWithUserNotifications:(id)notifications featureSet:(id)set
{
  notificationsCopy = notifications;
  setCopy = set;
  v12.receiver = self;
  v12.super_class = ATXNotificationRankingSection;
  v8 = [(ATXNotificationRankingSection *)&v12 init];
  if (v8)
  {
    v9 = [notificationsCopy copy];
    userNotifications = v8->_userNotifications;
    v8->_userNotifications = v9;

    objc_storeStrong(&v8->_featureSet, set);
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  featureSet = self->_featureSet;
  coderCopy = coder;
  [coderCopy encodeObject:featureSet forKey:@"featureSet"];
  [coderCopy encodeObject:self->_userNotifications forKey:@"userNotifications"];
}

- (ATXNotificationRankingSection)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = MEMORY[0x1E695DFD8];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = __atxlog_handle_notification_categorization();
  v10 = [v5 robustDecodeObjectOfClasses:v8 forKey:@"userNotifications" withCoder:coderCopy expectNonNull:1 errorDomain:@"ATXNotificationRankingSectionError" errorCode:-1 logHandle:{v9, v16[0]}];

  error = [coderCopy error];

  if (error)
  {
    selfCopy = 0;
  }

  else
  {
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"featureSet"];
    error2 = [coderCopy error];

    if (error2)
    {
      selfCopy = 0;
    }

    else
    {
      self = [(ATXNotificationRankingSection *)self initWithUserNotifications:v10 featureSet:v13];
      selfCopy = self;
    }
  }

  return selfCopy;
}

@end
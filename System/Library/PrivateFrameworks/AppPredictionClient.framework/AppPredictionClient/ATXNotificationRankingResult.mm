@interface ATXNotificationRankingResult
- (ATXNotificationRankingResult)initWithCoder:(id)a3;
- (ATXNotificationRankingResult)initWithnotificationRankingSections:(id)a3;
@end

@implementation ATXNotificationRankingResult

- (ATXNotificationRankingResult)initWithnotificationRankingSections:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXNotificationRankingResult;
  v5 = [(ATXNotificationRankingResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    notificationRankingSections = v5->_notificationRankingSections;
    v5->_notificationRankingSections = v6;
  }

  return v5;
}

- (ATXNotificationRankingResult)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69C5D78];
  v5 = MEMORY[0x1E695DFD8];
  v6 = a3;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v8 = [v5 setWithArray:v7];
  v9 = __atxlog_handle_notification_categorization();
  v10 = [v4 robustDecodeObjectOfClasses:v8 forKey:@"notificationRankingSections" withCoder:v6 expectNonNull:1 errorDomain:@"error" errorCode:-1 logHandle:{v9, v14[0]}];

  v11 = [v6 error];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    self = [(ATXNotificationRankingResult *)self initWithnotificationRankingSections:v10];
    v12 = self;
  }

  return v12;
}

@end
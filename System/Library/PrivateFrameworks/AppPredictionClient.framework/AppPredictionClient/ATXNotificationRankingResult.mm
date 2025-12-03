@interface ATXNotificationRankingResult
- (ATXNotificationRankingResult)initWithCoder:(id)coder;
- (ATXNotificationRankingResult)initWithnotificationRankingSections:(id)sections;
@end

@implementation ATXNotificationRankingResult

- (ATXNotificationRankingResult)initWithnotificationRankingSections:(id)sections
{
  sectionsCopy = sections;
  v9.receiver = self;
  v9.super_class = ATXNotificationRankingResult;
  v5 = [(ATXNotificationRankingResult *)&v9 init];
  if (v5)
  {
    v6 = [sectionsCopy copy];
    notificationRankingSections = v5->_notificationRankingSections;
    v5->_notificationRankingSections = v6;
  }

  return v5;
}

- (ATXNotificationRankingResult)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69C5D78];
  v5 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v8 = [v5 setWithArray:v7];
  v9 = __atxlog_handle_notification_categorization();
  v10 = [v4 robustDecodeObjectOfClasses:v8 forKey:@"notificationRankingSections" withCoder:coderCopy expectNonNull:1 errorDomain:@"error" errorCode:-1 logHandle:{v9, v14[0]}];

  error = [coderCopy error];

  if (error)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ATXNotificationRankingResult *)self initWithnotificationRankingSections:v10];
    selfCopy = self;
  }

  return selfCopy;
}

@end
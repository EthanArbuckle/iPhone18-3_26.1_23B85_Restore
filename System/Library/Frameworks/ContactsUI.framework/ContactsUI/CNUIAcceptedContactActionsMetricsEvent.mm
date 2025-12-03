@interface CNUIAcceptedContactActionsMetricsEvent
+ (id)addAction;
+ (id)createContactAction;
+ (id)editAction;
+ (id)log;
+ (id)markAsKnownAction;
- (CNUIAcceptedContactActionsMetricsEvent)initWithActionType:(int64_t)type;
- (void)reportWithSuccess:(BOOL)success;
@end

@implementation CNUIAcceptedContactActionsMetricsEvent

- (void)reportWithSuccess:(BOOL)success
{
  successCopy = success;
  v20 = *MEMORY[0x1E69E9840];
  if ([(CNUIAcceptedContactActionsMetricsEvent *)self hasReported])
  {
    dictionary = [objc_opt_class() log];
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_ERROR))
    {
      v18 = 134217984;
      actionType = [(CNUIAcceptedContactActionsMetricsEvent *)self actionType];
      _os_log_error_impl(&dword_199A75000, dictionary, OS_LOG_TYPE_ERROR, "Attempting to report metrics event multiple times. Event already reported for actionType: %ld", &v18, 0xCu);
    }

    goto LABEL_18;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  actionType2 = [(CNUIAcceptedContactActionsMetricsEvent *)self actionType];
  if ((actionType2 - 1) < 2)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CNUIAcceptedContactActionsMetricsEvent actionType](self, "actionType")}];
    [dictionary setObject:v11 forKeyedSubscript:@"actionType"];

    v12 = [MEMORY[0x1E696AD98] numberWithBool:successCopy];
    [dictionary setObject:v12 forKeyedSubscript:@"descriptionSaved"];
    v13 = @"com.apple.contacts.acceptedContacts.description";
LABEL_17:

    [MEMORY[0x1E69968B8] sendDictionary:dictionary forEvent:v13 andLog:1];
    [(CNUIAcceptedContactActionsMetricsEvent *)self setHasReported:1];
    goto LABEL_18;
  }

  if (actionType2 == 4)
  {
    if (successCopy)
    {
      v14 = 1;
    }

    else
    {
      v14 = 3;
    }

    v15 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
    [dictionary setObject:v15 forKeyedSubscript:@"actionResult"];

    v9 = MEMORY[0x1E696AD98];
    v10 = 2;
    goto LABEL_16;
  }

  if (actionType2 == 3)
  {
    if (successCopy)
    {
      v7 = 1;
    }

    else
    {
      v7 = 3;
    }

    v8 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    [dictionary setObject:v8 forKeyedSubscript:@"actionResult"];

    v9 = MEMORY[0x1E696AD98];
    v10 = 1;
LABEL_16:
    v16 = [v9 numberWithInteger:v10];
    [dictionary setObject:v16 forKeyedSubscript:@"actionType"];

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:2];
    [dictionary setObject:v12 forKeyedSubscript:@"triggerType"];
    v13 = @"com.apple.mobilephone.acceptedContact.add";
    goto LABEL_17;
  }

  v17 = [objc_opt_class() log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = 134217984;
    actionType = [(CNUIAcceptedContactActionsMetricsEvent *)self actionType];
    _os_log_error_impl(&dword_199A75000, v17, OS_LOG_TYPE_ERROR, "Unknown actionType in metrics event: %ld", &v18, 0xCu);
  }

LABEL_18:
}

- (CNUIAcceptedContactActionsMetricsEvent)initWithActionType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = CNUIAcceptedContactActionsMetricsEvent;
  result = [(CNUIAcceptedContactActionsMetricsEvent *)&v5 init];
  if (result)
  {
    result->_actionType = type;
    result->_hasReported = 0;
  }

  return result;
}

+ (id)markAsKnownAction
{
  v2 = [[self alloc] initWithActionType:4];

  return v2;
}

+ (id)createContactAction
{
  v2 = [[self alloc] initWithActionType:3];

  return v2;
}

+ (id)editAction
{
  v2 = [[self alloc] initWithActionType:2];

  return v2;
}

+ (id)addAction
{
  v2 = [[self alloc] initWithActionType:1];

  return v2;
}

+ (id)log
{
  if (log_cn_once_token_0 != -1)
  {
    dispatch_once(&log_cn_once_token_0, &__block_literal_global_26356);
  }

  v3 = log_cn_once_object_0;

  return v3;
}

uint64_t __45__CNUIAcceptedContactActionsMetricsEvent_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.ui", "CNUIAcceptedContactActionsMetricsEvent");
  v1 = log_cn_once_object_0;
  log_cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
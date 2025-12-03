@interface BGTaskRequest
+ (id)_requestFromActivity:(id)activity;
+ (void)initialize;
- (id)_initWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation BGTaskRequest

+ (void)initialize
{
  _log = os_log_create("com.apple.BackgroundTasks", "Framework");

  MEMORY[0x1EEE66BB8]();
}

- (id)_initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = BGTaskRequest;
  v6 = [(BGTaskRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

+ (id)_requestFromActivity:(id)activity
{
  activityCopy = activity;
  launchReason = [activityCopy launchReason];
  v5 = [launchReason isEqualToString:*MEMORY[0x1E699A548]];

  if (v5)
  {
    v6 = BGProcessingTaskRequest;
LABEL_11:
    v15 = [(__objc2_class *)v6 _requestFromActivity:activityCopy];
    goto LABEL_12;
  }

  launchReason2 = [activityCopy launchReason];
  v8 = [launchReason2 isEqualToString:*MEMORY[0x1E699A568]];

  if (v8)
  {
    v6 = BGHealthResearchTaskRequest;
    goto LABEL_11;
  }

  launchReason3 = [activityCopy launchReason];
  v10 = [launchReason3 isEqualToString:*MEMORY[0x1E699A558]];

  if (v10)
  {
    v6 = BGContinuedProcessingTaskRequest;
    goto LABEL_11;
  }

  launchReason4 = [activityCopy launchReason];
  v12 = [launchReason4 isEqualToString:*MEMORY[0x1E699A560]];

  if (v12)
  {
    v6 = _BGContinuedProcessingTaskRequest;
    goto LABEL_11;
  }

  launchReason5 = [activityCopy launchReason];
  v14 = [launchReason5 isEqualToString:*MEMORY[0x1E699A550]];

  if (v14)
  {
    v6 = BGAppRefreshTaskRequest;
    goto LABEL_11;
  }

  v17 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    [(BGTaskRequest *)v17 _requestFromActivity:activityCopy];
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = [(BGTaskRequest *)self identifier];
  v6 = [v4 _initWithIdentifier:identifier];

  return v6;
}

+ (void)_requestFromActivity:(void *)a1 .cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v10 = [a2 launchReason];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

@end
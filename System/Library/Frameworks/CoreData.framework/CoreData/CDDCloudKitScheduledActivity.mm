@interface CDDCloudKitScheduledActivity
- (id)xpcActivityCriteria;
- (unint64_t)activityType;
- (void)populateFromCriteria:(id)criteria;
- (void)setActivityType:(unint64_t)type;
@end

@implementation CDDCloudKitScheduledActivity

- (unint64_t)activityType
{
  activityTypeNum = [(CDDCloudKitScheduledActivity *)self activityTypeNum];

  return [activityTypeNum unsignedIntegerValue];
}

- (void)setActivityType:(unint64_t)type
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];

  [(CDDCloudKitScheduledActivity *)self setActivityTypeNum:v4];
}

- (void)populateFromCriteria:(id)criteria
{
  v4 = [criteria objectForKey:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", *MEMORY[0x1E69E9DE0])}];
  if (v4 && (v5 = v4, xpc_BOOL_get_value(v4)))
  {
    if (!xpc_BOOL_get_value(v5))
    {
      return;
    }

    v6 = MEMORY[0x1E695E118];
  }

  else
  {
    v6 = MEMORY[0x1E695E110];
  }

  [(CDDCloudKitScheduledActivity *)self setIsUserRequestedBackupTask:v6];
}

- (id)xpcActivityCriteria
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  LODWORD(self) = [-[CDDCloudKitScheduledActivity isUserRequestedBackupTask](self "isUserRequestedBackupTask")];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9DE0]];
  if (self)
  {
    v5 = MEMORY[0x1E69E9E10];
  }

  else
  {
    v5 = MEMORY[0x1E69E9E08];
  }

  [v3 setObject:v5 forKey:v4];
  v6 = [v3 copy];

  return v6;
}

@end
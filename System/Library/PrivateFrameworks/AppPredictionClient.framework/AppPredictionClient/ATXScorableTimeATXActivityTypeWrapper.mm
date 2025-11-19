@interface ATXScorableTimeATXActivityTypeWrapper
- (ATXScorableTimeATXActivityTypeWrapper)initWithActivityType:(unint64_t)a3;
- (NSString)legacyScorableTimeIdentifier;
- (NSString)scorableTimeIdentifier;
@end

@implementation ATXScorableTimeATXActivityTypeWrapper

- (ATXScorableTimeATXActivityTypeWrapper)initWithActivityType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = ATXScorableTimeATXActivityTypeWrapper;
  result = [(ATXScorableTimeATXActivityTypeWrapper *)&v5 init];
  if (result)
  {
    result->_activityType = a3;
  }

  return result;
}

- (NSString)legacyScorableTimeIdentifier
{
  v2 = [[ATXScorableTimeATXModeWrapper alloc] initWithATXMode:ATXModeFromActivityType([(ATXScorableTimeATXActivityTypeWrapper *)self activityType])];
  v3 = [(ATXScorableTimeATXModeWrapper *)v2 scorableTimeIdentifier];

  return v3;
}

- (NSString)scorableTimeIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  [(ATXScorableTimeATXActivityTypeWrapper *)self activityType];
  v3 = ATXActivityTypeToString();
  v4 = [v2 stringWithFormat:@"activityType__%@", v3];

  return v4;
}

@end
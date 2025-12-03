@interface ATXScorableTimeATXActivityTypeWrapper
- (ATXScorableTimeATXActivityTypeWrapper)initWithActivityType:(unint64_t)type;
- (NSString)legacyScorableTimeIdentifier;
- (NSString)scorableTimeIdentifier;
@end

@implementation ATXScorableTimeATXActivityTypeWrapper

- (ATXScorableTimeATXActivityTypeWrapper)initWithActivityType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = ATXScorableTimeATXActivityTypeWrapper;
  result = [(ATXScorableTimeATXActivityTypeWrapper *)&v5 init];
  if (result)
  {
    result->_activityType = type;
  }

  return result;
}

- (NSString)legacyScorableTimeIdentifier
{
  v2 = [[ATXScorableTimeATXModeWrapper alloc] initWithATXMode:ATXModeFromActivityType([(ATXScorableTimeATXActivityTypeWrapper *)self activityType])];
  scorableTimeIdentifier = [(ATXScorableTimeATXModeWrapper *)v2 scorableTimeIdentifier];

  return scorableTimeIdentifier;
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
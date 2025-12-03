@interface ATXScorableTimeATXModeWrapper
- (ATXScorableTimeATXModeWrapper)initWithATXMode:(unint64_t)mode;
- (NSString)scorableTimeIdentifier;
@end

@implementation ATXScorableTimeATXModeWrapper

- (ATXScorableTimeATXModeWrapper)initWithATXMode:(unint64_t)mode
{
  v5.receiver = self;
  v5.super_class = ATXScorableTimeATXModeWrapper;
  result = [(ATXScorableTimeATXModeWrapper *)&v5 init];
  if (result)
  {
    result->_atxMode = mode;
  }

  return result;
}

- (NSString)scorableTimeIdentifier
{
  atxMode = [(ATXScorableTimeATXModeWrapper *)self atxMode];

  return ATXModeToString(atxMode);
}

@end
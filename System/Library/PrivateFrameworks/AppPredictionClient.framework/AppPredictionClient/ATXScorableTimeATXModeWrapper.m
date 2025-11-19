@interface ATXScorableTimeATXModeWrapper
- (ATXScorableTimeATXModeWrapper)initWithATXMode:(unint64_t)a3;
- (NSString)scorableTimeIdentifier;
@end

@implementation ATXScorableTimeATXModeWrapper

- (ATXScorableTimeATXModeWrapper)initWithATXMode:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = ATXScorableTimeATXModeWrapper;
  result = [(ATXScorableTimeATXModeWrapper *)&v5 init];
  if (result)
  {
    result->_atxMode = a3;
  }

  return result;
}

- (NSString)scorableTimeIdentifier
{
  v2 = [(ATXScorableTimeATXModeWrapper *)self atxMode];

  return ATXModeToString(v2);
}

@end
@interface TKTokenAccessUserPromptNoop
- (TKTokenAccessUserPromptNoop)initWithPreflightStatus:(int64_t)status;
@end

@implementation TKTokenAccessUserPromptNoop

- (TKTokenAccessUserPromptNoop)initWithPreflightStatus:(int64_t)status
{
  v5.receiver = self;
  v5.super_class = TKTokenAccessUserPromptNoop;
  result = [(TKTokenAccessUserPromptNoop *)&v5 init];
  if (result)
  {
    result->_preflightStatus = status;
  }

  return result;
}

@end
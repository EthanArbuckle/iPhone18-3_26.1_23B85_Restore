@interface TKTokenAccessUserPromptNoop
- (TKTokenAccessUserPromptNoop)initWithPreflightStatus:(int64_t)a3;
@end

@implementation TKTokenAccessUserPromptNoop

- (TKTokenAccessUserPromptNoop)initWithPreflightStatus:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = TKTokenAccessUserPromptNoop;
  result = [(TKTokenAccessUserPromptNoop *)&v5 init];
  if (result)
  {
    result->_preflightStatus = a3;
  }

  return result;
}

@end
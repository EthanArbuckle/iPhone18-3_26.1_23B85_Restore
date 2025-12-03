@interface LAPSPasscodeChangeAuthorizationOptions
- (LAPSPasscodeChangeAuthorizationOptions)initWithUseCase:(int64_t)case;
@end

@implementation LAPSPasscodeChangeAuthorizationOptions

- (LAPSPasscodeChangeAuthorizationOptions)initWithUseCase:(int64_t)case
{
  v5.receiver = self;
  v5.super_class = LAPSPasscodeChangeAuthorizationOptions;
  result = [(LAPSPasscodeChangeAuthorizationOptions *)&v5 init];
  if (result)
  {
    result->_useCase = case;
  }

  return result;
}

@end
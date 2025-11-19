@interface LAPSPasscodeChangeAuthorizationOptions
- (LAPSPasscodeChangeAuthorizationOptions)initWithUseCase:(int64_t)a3;
@end

@implementation LAPSPasscodeChangeAuthorizationOptions

- (LAPSPasscodeChangeAuthorizationOptions)initWithUseCase:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = LAPSPasscodeChangeAuthorizationOptions;
  result = [(LAPSPasscodeChangeAuthorizationOptions *)&v5 init];
  if (result)
  {
    result->_useCase = a3;
  }

  return result;
}

@end
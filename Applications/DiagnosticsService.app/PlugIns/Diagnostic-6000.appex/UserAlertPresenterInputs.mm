@interface UserAlertPresenterInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation UserAlertPresenterInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  if (parameters)
  {
    v4 = sub_100002C54();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v6 = sub_1000011D0(v4);

  return v6 & 1;
}

@end
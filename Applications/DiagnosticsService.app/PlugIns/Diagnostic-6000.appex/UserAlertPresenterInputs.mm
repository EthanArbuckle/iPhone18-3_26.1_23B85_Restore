@interface UserAlertPresenterInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation UserAlertPresenterInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  if (a3)
  {
    v4 = sub_100002C54();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  v6 = sub_1000011D0(v4);

  return v6 & 1;
}

@end
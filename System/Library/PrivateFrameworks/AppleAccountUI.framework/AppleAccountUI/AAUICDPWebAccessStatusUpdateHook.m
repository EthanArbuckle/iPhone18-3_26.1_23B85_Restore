@interface AAUICDPWebAccessStatusUpdateHook
- (id)changeControllerForAction:(id)a3;
@end

@implementation AAUICDPWebAccessStatusUpdateHook

- (id)changeControllerForAction:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"webaccess:enable"])
  {
    v4 = 1;
LABEL_5:
    v5 = [MEMORY[0x1E6997870] controllerWithTargetWebAccessStatus:v4];
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"webaccess:disable"])
  {
    v4 = 2;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end
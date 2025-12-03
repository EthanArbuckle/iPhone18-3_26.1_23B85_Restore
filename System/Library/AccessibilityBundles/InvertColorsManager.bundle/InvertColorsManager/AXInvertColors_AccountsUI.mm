@interface AXInvertColors_AccountsUI
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_AccountsUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ACUIAddAccountViewController"];
  [validationsCopy validateClass:@"ACUIAddAccountViewController" hasInstanceMethod:@"_specifierForAOLAccount" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ACUIAddAccountViewController" hasInstanceMethod:@"_specifierForiCloudAccount" withFullSignature:{"@", 0}];
}

@end
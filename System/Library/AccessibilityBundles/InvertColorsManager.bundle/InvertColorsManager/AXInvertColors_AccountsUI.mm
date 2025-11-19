@interface AXInvertColors_AccountsUI
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_AccountsUI

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ACUIAddAccountViewController"];
  [v3 validateClass:@"ACUIAddAccountViewController" hasInstanceMethod:@"_specifierForAOLAccount" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ACUIAddAccountViewController" hasInstanceMethod:@"_specifierForiCloudAccount" withFullSignature:{"@", 0}];
}

@end
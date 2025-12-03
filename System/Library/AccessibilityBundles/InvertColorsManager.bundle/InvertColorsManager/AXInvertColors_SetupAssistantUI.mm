@interface AXInvertColors_SetupAssistantUI
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_SetupAssistantUI

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BFFPaneHeaderView" hasInstanceMethod:@"setIcon:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"BFFPaneHeaderView" hasInstanceVariable:@"_iconView" withType:"UIImageView"];
}

@end
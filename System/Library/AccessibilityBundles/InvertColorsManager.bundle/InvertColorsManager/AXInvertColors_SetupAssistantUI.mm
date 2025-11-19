@interface AXInvertColors_SetupAssistantUI
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_SetupAssistantUI

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BFFPaneHeaderView" hasInstanceMethod:@"setIcon:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"BFFPaneHeaderView" hasInstanceVariable:@"_iconView" withType:"UIImageView"];
}

@end
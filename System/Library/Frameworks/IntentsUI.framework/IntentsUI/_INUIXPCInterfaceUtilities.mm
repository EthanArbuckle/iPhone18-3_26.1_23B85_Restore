@interface _INUIXPCInterfaceUtilities
+ (id)extensionContextVendingInterface;
@end

@implementation _INUIXPCInterfaceUtilities

+ (id)extensionContextVendingInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283FE0E90];
  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_setExtensionContextState_completion_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  [v2 setClasses:v7 forSelector:sel_configureForParameters_ofInteraction_interactiveBehavior_context_completion_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v4 forSelector:sel_configureForParameters_ofInteraction_interactiveBehavior_context_completion_ argumentIndex:1 ofReply:0];
  [v2 setClasses:v7 forSelector:sel_configureForParameters_ofInteraction_interactiveBehavior_context_completion_ argumentIndex:1 ofReply:1];

  return v2;
}

@end
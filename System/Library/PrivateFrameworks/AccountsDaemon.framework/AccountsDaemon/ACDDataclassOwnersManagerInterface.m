@interface ACDDataclassOwnersManagerInterface
+ (NSXPCInterface)XPCInterface;
@end

@implementation ACDDataclassOwnersManagerInterface

+ (NSXPCInterface)XPCInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28354FF48];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_actionsForAddingAccount_affectingDataclass_completion_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_actionsForDeletingAccount_affectingDataclass_completion_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_actionsForEnablingDataclass_onAccount_completion_ argumentIndex:0 ofReply:1];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v2 setClasses:v14 forSelector:sel_actionsForDisablingDataclass_onAccount_completion_ argumentIndex:0 ofReply:1];

  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
  [v2 setClasses:v18 forSelector:sel_performDataclassActions_forAccount_withChildren_completion_ argumentIndex:0 ofReply:0];

  v19 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  [v2 setClasses:v21 forSelector:sel_performDataclassActions_forAccount_withChildren_completion_ argumentIndex:2 ofReply:0];

  return v2;
}

@end
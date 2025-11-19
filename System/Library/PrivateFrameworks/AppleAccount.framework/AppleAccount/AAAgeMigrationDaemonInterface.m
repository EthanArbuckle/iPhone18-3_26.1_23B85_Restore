@interface AAAgeMigrationDaemonInterface
+ (id)XPCInterface;
@end

@implementation AAAgeMigrationDaemonInterface

+ (id)XPCInterface
{
  if (XPCInterface_onceToken_1 != -1)
  {
    +[AAAgeMigrationDaemonInterface XPCInterface];
  }

  v3 = XPCInterface_interface_1;

  return v3;
}

void __45__AAAgeMigrationDaemonInterface_XPCInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2F27548];
  v1 = XPCInterface_interface_1;
  XPCInterface_interface_1 = v0;

  v2 = XPCInterface_interface_1;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_clearAgeMigrationFollowUpWithCompletion_ argumentIndex:0 ofReply:1];

  v6 = XPCInterface_interface_1;
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  [v6 setClasses:v10 forSelector:sel_displayMisconfiguredAgePromptWithContext_completion_ argumentIndex:0 ofReply:1];

  v11 = XPCInterface_interface_1;
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
  [v11 setClasses:v15 forSelector:sel_clearUserAcknowledgeMisconfiguredAgedPromptWithContext_completion_ argumentIndex:0 ofReply:1];

  v16 = XPCInterface_interface_1;
  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = [v17 setWithObjects:{v18, v19, objc_opt_class(), 0}];
  [v16 setClasses:v20 forSelector:sel_didUserAcknowledgeMisconfiguredAgedPromptWithContext_completion_ argumentIndex:0 ofReply:1];

  v21 = XPCInterface_interface_1;
  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = [v22 setWithObjects:{v23, v24, objc_opt_class(), 0}];
  [v21 setClasses:v25 forSelector:sel_saveUserAcknowledgeMisconfiguredAgedPromptWithContext_action_completion_ argumentIndex:0 ofReply:1];
}

@end
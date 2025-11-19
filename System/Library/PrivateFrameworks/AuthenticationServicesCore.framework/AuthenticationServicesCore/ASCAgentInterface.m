@interface ASCAgentInterface
+ (id)xpcInterface;
@end

@implementation ASCAgentInterface

+ (id)xpcInterface
{
  if (xpcInterface_onceToken != -1)
  {
    +[ASCAgentInterface xpcInterface];
  }

  v3 = xpcInterface_interface;

  return v3;
}

void __33__ASCAgentInterface_xpcInterface__block_invoke()
{
  v25[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F41ADED8];
  v1 = xpcInterface_interface;
  xpcInterface_interface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v2 setWithObjects:{v3, v4, v5, v6, v7, objc_opt_class(), 0}];
  v9 = [v8 setByAddingObject:objc_opt_class()];

  [xpcInterface_interface setClasses:v9 forSelector:sel_performAuthorizationRequestsForContext_withCompletionHandler_ argumentIndex:0 ofReply:1];
  v10 = xpcInterface_interface;
  v11 = MEMORY[0x1E695DFD8];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v13 = [v11 setWithArray:v12];
  [v10 setClasses:v13 forSelector:sel_browserPasskeysForRelyingParty_completionHandler_ argumentIndex:0 ofReply:1];

  v14 = xpcInterface_interface;
  v15 = MEMORY[0x1E695DFD8];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v17 = [v15 setWithArray:v16];
  [v14 setClasses:v17 forSelector:sel_browserPasskeysForRelyingParty_testOptions_completionHandler_ argumentIndex:0 ofReply:1];

  v18 = xpcInterface_interface;
  v19 = MEMORY[0x1E695DFD8];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v21 = [v19 setWithArray:v20];
  [v18 setClasses:v21 forSelector:sel_performSilentAuthorizationRequestsForContext_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v22 = *MEMORY[0x1E69E9840];
}

@end
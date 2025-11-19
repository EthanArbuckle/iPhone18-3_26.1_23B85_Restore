@interface LAInternalProtocols
+ (id)interfaceWithInternalProtocol:(id)a3;
@end

@implementation LAInternalProtocols

+ (id)interfaceWithInternalProtocol:(id)a3
{
  v3 = a3;
  if (interfaceWithInternalProtocol__onceToken != -1)
  {
    +[LAInternalProtocols interfaceWithInternalProtocol:];
  }

  v4 = [interfaceWithInternalProtocol__protocolCache objectForKey:v3];
  if (!v4)
  {
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:v3];
    if (&unk_1F5A7CE08 != v3)
    {
      if (&unk_1F5A7CF18 == v3)
      {
        v6 = [LAInternalProtocols interfaceWithInternalProtocol:&unk_1F5A7CFF0];
        [v4 setInterface:v6 forSelector:sel_connectToExistingContext_callback_clientId_flags_reply_ argumentIndex:0 ofReply:1];

        v7 = [MEMORY[0x1E69AD2D0] interfaceForXPCProtocol:&unk_1F5A7D090];
        [v4 setInterface:v7 forSelector:sel_connectToExistingContext_callback_clientId_flags_reply_ argumentIndex:1 ofReply:0];

        v8 = [LAInternalProtocols interfaceWithInternalProtocol:&unk_1F5A7CFF0];
        [v4 setInterface:v8 forSelector:sel_connectToContextWithUUID_callback_clientId_token_senderAuditTokenData_reply_ argumentIndex:0 ofReply:1];

        v9 = [MEMORY[0x1E69AD2D0] interfaceForXPCProtocol:&unk_1F5A7D090];
        [v4 setInterface:v9 forSelector:sel_connectToContextWithUUID_callback_clientId_token_senderAuditTokenData_reply_ argumentIndex:1 ofReply:0];

        v10 = [LAInternalProtocols interfaceWithInternalProtocol:&unk_1F5A7D0F0];
        [v4 setInterface:v10 forSelector:sel_prearmTouchIdWithReply_ argumentIndex:0 ofReply:1];

        v5 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
        goto LABEL_14;
      }

      if (&unk_1F5A7CFF0 == v3)
      {
        v11 = [LAInternalProtocols interfaceWithInternalProtocol:&unk_1F5A7D178];
        [v4 setInterface:v11 forSelector:? argumentIndex:? ofReply:?];

        v12 = [LAInternalProtocols interfaceWithInternalProtocol:&unk_1F5A7D178];
        [v4 setInterface:v12 forSelector:sel_evaluateACL_operation_options_uiDelegate_reply_ argumentIndex:3 ofReply:0];

        v13 = MEMORY[0x1E695DFD8];
        v14 = objc_opt_class();
        v15 = objc_opt_class();
        v16 = objc_opt_class();
        v17 = objc_opt_class();
        v18 = objc_opt_class();
        v19 = objc_opt_class();
        v5 = [v13 setWithObjects:{v14, v15, v16, v17, v18, v19, objc_opt_class(), 0}];
        v36 = MEMORY[0x1E695DFD8];
        v20 = objc_opt_class();
        v21 = objc_opt_class();
        v22 = objc_opt_class();
        v23 = objc_opt_class();
        v24 = objc_opt_class();
        v25 = objc_opt_class();
        v26 = [v36 setWithObjects:{v20, v21, v22, v23, v24, v25, objc_opt_class(), 0}];
        [v4 setClasses:v5 forSelector:sel_evaluatePolicy_options_uiDelegate_reply_ argumentIndex:1 ofReply:0];
        [v4 setClasses:v26 forSelector:sel_evaluatePolicy_options_uiDelegate_reply_ argumentIndex:0 ofReply:1];
        [v4 setClasses:v5 forSelector:sel_getDomainStateWithOptions_reply_ argumentIndex:0 ofReply:0];
        [v4 setClasses:v26 forSelector:sel_getDomainStateWithOptions_reply_ argumentIndex:0 ofReply:1];

        goto LABEL_14;
      }

      if (&unk_1F5A7D178 == v3)
      {
        v37 = MEMORY[0x1E695DFD8];
        v27 = objc_opt_class();
        v28 = objc_opt_class();
        v29 = objc_opt_class();
        v30 = objc_opt_class();
        v31 = objc_opt_class();
        v32 = objc_opt_class();
        v33 = objc_opt_class();
        v5 = [v37 setWithObjects:{v27, v28, v29, v30, v31, v32, v33, objc_opt_class(), 0}];
        [v4 setClasses:v5 forSelector:sel_event_params_reply_ argumentIndex:1 ofReply:0];
        goto LABEL_14;
      }

      if (&unk_1F5A7D278 != v3 && &unk_1F5A7D360 != v3)
      {
        goto LABEL_15;
      }
    }

    [MEMORY[0x1E69AD2D0] interfaceForXPCProtocol:v3];
    v4 = v5 = v4;
LABEL_14:

LABEL_15:
    [interfaceWithInternalProtocol__protocolCache setObject:v4 forKey:v3];
  }

  v34 = v4;

  return v34;
}

uint64_t __53__LAInternalProtocols_interfaceWithInternalProtocol___block_invoke()
{
  interfaceWithInternalProtocol__protocolCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end
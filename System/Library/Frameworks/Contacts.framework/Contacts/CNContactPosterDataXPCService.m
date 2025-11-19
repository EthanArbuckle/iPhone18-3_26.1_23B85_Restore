@interface CNContactPosterDataXPCService
+ (NSXPCInterface)interface;
+ (id)newConnection;
@end

@implementation CNContactPosterDataXPCService

+ (id)newConnection
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.contacts.poster.api" options:0];
  v3 = +[CNContactPosterDataXPCService interface];
  [v2 setRemoteObjectInterface:v3];

  return v2;
}

+ (NSXPCInterface)interface
{
  v47[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F09B13E8];
  v3 = MEMORY[0x1E695DFD8];
  v47[0] = objc_opt_class();
  v47[1] = objc_opt_class();
  v47[2] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_executeFetchRequest_reply_ argumentIndex:0 ofReply:0];

  v6 = MEMORY[0x1E695DFD8];
  v46[0] = objc_opt_class();
  v46[1] = objc_opt_class();
  v46[2] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];
  v8 = [v6 setWithArray:v7];
  [v2 setClasses:v8 forSelector:sel_executeFetchRequest_reply_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x1E695DFD8];
  v45 = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v11 = [v9 setWithArray:v10];
  [v2 setClasses:v11 forSelector:sel_executeFetchRequest_reply_ argumentIndex:1 ofReply:1];

  v12 = MEMORY[0x1E695DFD8];
  v44[0] = objc_opt_class();
  v44[1] = objc_opt_class();
  v44[2] = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
  v14 = [v12 setWithArray:v13];
  [v2 setClasses:v14 forSelector:sel_countForFetchRequest_reply_ argumentIndex:0 ofReply:0];

  v15 = MEMORY[0x1E695DFD8];
  v43 = objc_opt_class();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  v17 = [v15 setWithArray:v16];
  [v2 setClasses:v17 forSelector:sel_countForFetchRequest_reply_ argumentIndex:1 ofReply:1];

  v18 = MEMORY[0x1E695DFD8];
  v42[0] = objc_opt_class();
  v42[1] = objc_opt_class();
  v42[2] = objc_opt_class();
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:3];
  v20 = [v18 setWithArray:v19];
  [v2 setClasses:v20 forSelector:sel_executeCreateRequest_reply_ argumentIndex:0 ofReply:0];

  v21 = MEMORY[0x1E695DFD8];
  v41 = objc_opt_class();
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
  v23 = [v21 setWithArray:v22];
  [v2 setClasses:v23 forSelector:sel_executeCreateRequest_reply_ argumentIndex:0 ofReply:1];

  v24 = MEMORY[0x1E695DFD8];
  v40[0] = objc_opt_class();
  v40[1] = objc_opt_class();
  v40[2] = objc_opt_class();
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
  v26 = [v24 setWithArray:v25];
  [v2 setClasses:v26 forSelector:sel_executeUpdateRequest_reply_ argumentIndex:0 ofReply:0];

  v27 = MEMORY[0x1E695DFD8];
  v39 = objc_opt_class();
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v29 = [v27 setWithArray:v28];
  [v2 setClasses:v29 forSelector:sel_executeUpdateRequest_reply_ argumentIndex:0 ofReply:1];

  v30 = MEMORY[0x1E695DFD8];
  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v38[2] = objc_opt_class();
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
  v32 = [v30 setWithArray:v31];
  [v2 setClasses:v32 forSelector:sel_executeDeleteRequest_reply_ argumentIndex:0 ofReply:0];

  v33 = MEMORY[0x1E695DFD8];
  v37 = objc_opt_class();
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v35 = [v33 setWithArray:v34];
  [v2 setClasses:v35 forSelector:sel_executeDeleteRequest_reply_ argumentIndex:0 ofReply:1];

  return v2;
}

@end
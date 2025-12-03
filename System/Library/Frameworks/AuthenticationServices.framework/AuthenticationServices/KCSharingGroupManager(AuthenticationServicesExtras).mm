@interface KCSharingGroupManager(AuthenticationServicesExtras)
- (void)as_getKCSharingParticipantsForFamilyMembersWithCompletionHandler:()AuthenticationServicesExtras;
@end

@implementation KCSharingGroupManager(AuthenticationServicesExtras)

- (void)as_getKCSharingParticipantsForFamilyMembersWithCompletionHandler:()AuthenticationServicesExtras
{
  v3 = a3;
  v4 = dispatch_group_create();
  array = [MEMORY[0x1E695DF70] array];
  v6 = objc_alloc_init(MEMORY[0x1E699C070]);
  dispatch_group_enter(v4);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __120__KCSharingGroupManager_AuthenticationServicesExtras__as_getKCSharingParticipantsForFamilyMembersWithCompletionHandler___block_invoke;
  v14[3] = &unk_1E7AF8028;
  v15 = v4;
  v7 = array;
  v16 = v7;
  v8 = v4;
  [v6 startRequestWithCompletionHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __120__KCSharingGroupManager_AuthenticationServicesExtras__as_getKCSharingParticipantsForFamilyMembersWithCompletionHandler___block_invoke_22;
  v11[3] = &unk_1E7AF8050;
  v12 = v7;
  v13 = v3;
  v9 = v7;
  v10 = v3;
  dispatch_group_notify(v8, MEMORY[0x1E69E96A0], v11);
}

@end
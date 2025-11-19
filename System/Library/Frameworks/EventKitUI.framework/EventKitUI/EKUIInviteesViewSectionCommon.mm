@interface EKUIInviteesViewSectionCommon
+ (id)deleteRowAction:(id)a3 forRow:(id)a4;
+ (id)setRoleRowActionWithParticipant:(id)a3 withSetRoleBlock:(id)a4 forSections:(id)a5;
@end

@implementation EKUIInviteesViewSectionCommon

+ (id)deleteRowAction:(id)a3 forRow:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E69DC8E8];
  v8 = [v5 titleForDeleteConfirmationButtonForRow:v6];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__EKUIInviteesViewSectionCommon_deleteRowAction_forRow___block_invoke;
  v13[3] = &unk_1E84426B0;
  v14 = v5;
  v15 = v6;
  v9 = v6;
  v10 = v5;
  v11 = [v7 contextualActionWithStyle:1 title:v8 handler:v13];

  return v11;
}

void __56__EKUIInviteesViewSectionCommon_deleteRowAction_forRow___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a4;
  [v4 commitEditingStyle:1 forRow:v5];
  v6[2](v6, 1);
}

+ (id)setRoleRowActionWithParticipant:(id)a3 withSetRoleBlock:(id)a4 forSections:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 participant];
  v10 = [v9 participantRole];
  v11 = EventKitUIBundle();
  v12 = v11;
  if (v10 == 2)
  {
    v13 = [v11 localizedStringForKey:@"Make Required" value:&stru_1F4EF6790 table:0];

    v14 = MEMORY[0x1E69DC8E8];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __94__EKUIInviteesViewSectionCommon_setRoleRowActionWithParticipant_withSetRoleBlock_forSections___block_invoke;
    v34[3] = &unk_1E84426D8;
    v15 = &v37;
    v36 = v8;
    v37 = v7;
    v16 = &v35;
    v17 = &v36;
    v35 = v9;
    v18 = v8;
    v19 = v9;
    v20 = v7;
    v21 = v34;
  }

  else
  {
    v13 = [v11 localizedStringForKey:@"Make Optional" value:&stru_1F4EF6790 table:0];

    v14 = MEMORY[0x1E69DC8E8];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __94__EKUIInviteesViewSectionCommon_setRoleRowActionWithParticipant_withSetRoleBlock_forSections___block_invoke_17;
    v30 = &unk_1E84426D8;
    v15 = &v33;
    v32 = v8;
    v33 = v7;
    v16 = &v31;
    v17 = &v32;
    v31 = v9;
    v22 = v8;
    v23 = v9;
    v24 = v7;
    v21 = &v27;
  }

  v25 = [v14 contextualActionWithStyle:0 title:v13 handler:{v21, v27, v28, v29, v30}];

  return v25;
}

void __94__EKUIInviteesViewSectionCommon_setRoleRowActionWithParticipant_withSetRoleBlock_forSections___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a1[6];
  if (v10)
  {
    (*(v10 + 16))(v10, a1[4], 1, a1[5]);
    v9[2](v9, 1);
  }

  else
  {
    v11 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 0;
      _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_ERROR, "No 'participant set role' callback defined.  Will not toggle participant", v12, 2u);
    }

    v9[2](v9, 0);
  }
}

void __94__EKUIInviteesViewSectionCommon_setRoleRowActionWithParticipant_withSetRoleBlock_forSections___block_invoke_17(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a1[6];
  if (v10)
  {
    (*(v10 + 16))(v10, a1[4], 2, a1[5]);
    v9[2](v9, 1);
  }

  else
  {
    v11 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 0;
      _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_ERROR, "No 'participant set role' callback defined.  Will not toggle participant.", v12, 2u);
    }

    v9[2](v9, 0);
  }
}

@end
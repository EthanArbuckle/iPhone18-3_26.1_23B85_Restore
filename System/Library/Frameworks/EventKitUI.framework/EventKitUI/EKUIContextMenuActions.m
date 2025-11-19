@interface EKUIContextMenuActions
+ (BOOL)_canEmailOrganizerForEvent:(id)a3;
+ (BOOL)eventsAllDeletable:(id)a3;
+ (BOOL)remindersAllCompleted:(id)a3;
+ (BOOL)remindersAllTogglable:(id)a3;
+ (id)_allActionInfos;
+ (id)_createCalendarsMenuForEvents:(id)a3 presentationController:(id)a4 isEditMenu:(BOOL)a5 overrideActionBlock:(id)a6 completionBlock:(id)a7;
+ (id)_filteredSortedActionInfosForEvents:(id)a3 presentationController:(id)a4 isEditMenu:(BOOL)a5;
+ (id)_organizerContactForEvent:(id)a3;
+ (id)_proposedDateForEvent:(id)a3;
+ (id)menuForEvents:(id)a3 presentationController:(id)a4 isEditMenu:(BOOL)a5 overrideActionBlock:(id)a6 completionBlock:(id)a7;
+ (int64_t)_menuStateForStatus:(int64_t)a3 events:(id)a4;
+ (void)_acceptProposedTimeForEvent:(id)a3 presentationController:(id)a4;
+ (void)_performSaveWithEvent:(id)a3 span:(int64_t)a4 editor:(id)a5;
+ (void)_presentMailViewControllerSendingToOrganizer:(BOOL)a3 event:(id)a4 presentationController:(id)a5;
+ (void)_saveStatus:(int64_t)a3 forEvent:(id)a4 presentationController:(id)a5;
+ (void)deleteEvents:(id)a3 presentationController:(id)a4;
+ (void)markReminders:(id)a3 completed:(BOOL)a4 editor:(id)a5;
@end

@implementation EKUIContextMenuActions

+ (id)_allActionInfos
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_allActionInfos_onceToken != -1)
  {
    dispatch_once(&_allActionInfos_onceToken, block);
  }

  v2 = _allActionInfos_actions;

  return v2;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke(uint64_t a1)
{
  v61[22] = *MEMORY[0x1E69E9840];
  v2 = [EKUIContextMenuActionInfo alloc];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke_2;
  v59[3] = &__block_descriptor_40_e35_B16__0__ShouldShowBlockParameters_8l;
  v60 = *(a1 + 32);
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke_3;
  v58[3] = &__block_descriptor_40_e33_v28__0__NSArray_8__UIAction_16B24l;
  v58[4] = v60;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke_4;
  v57[3] = &__block_descriptor_40_e38_v24__0__NSArray_8__UIViewController_16l;
  v57[4] = v60;
  v36 = [(EKUIContextMenuActionInfo *)v2 initWithAction:0x400000 showsInEditMenu:1 group:6 positionInGroup:0 shouldShowBlock:v59 configureUIActionBlock:v58 actionBlock:v57];
  v61[0] = v36;
  v35 = [[EKUIContextMenuActionInfo alloc] initWithAction:0x800000 showsInEditMenu:1 group:6 positionInGroup:0 shouldShowBlock:&__block_literal_global_52 configureUIActionBlock:&__block_literal_global_96 actionBlock:&__block_literal_global_107_0];
  v61[1] = v35;
  v3 = [EKUIContextMenuActionInfo alloc];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke_2_116;
  v55[3] = &__block_descriptor_40_e33_v28__0__NSArray_8__UIAction_16B24l;
  v56 = *(a1 + 32);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke_3_126;
  v54[3] = &__block_descriptor_40_e38_v24__0__NSArray_8__UIViewController_16l;
  v54[4] = v56;
  v34 = [(EKUIContextMenuActionInfo *)v3 initWithAction:1 showsInEditMenu:1 group:2 positionInGroup:0 shouldShowBlock:&__block_literal_global_115 configureUIActionBlock:v55 actionBlock:v54];
  v61[2] = v34;
  v4 = [EKUIContextMenuActionInfo alloc];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke_5_130;
  v52[3] = &__block_descriptor_40_e33_v28__0__NSArray_8__UIAction_16B24l;
  v53 = *(a1 + 32);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke_6_140;
  v51[3] = &__block_descriptor_40_e38_v24__0__NSArray_8__UIViewController_16l;
  v51[4] = v53;
  v33 = [(EKUIContextMenuActionInfo *)v4 initWithAction:2 showsInEditMenu:1 group:2 positionInGroup:1 shouldShowBlock:&__block_literal_global_129 configureUIActionBlock:v52 actionBlock:v51];
  v61[3] = v33;
  v5 = [EKUIContextMenuActionInfo alloc];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke_8_144;
  v49[3] = &__block_descriptor_40_e33_v28__0__NSArray_8__UIAction_16B24l;
  v50 = *(a1 + 32);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke_9;
  v48[3] = &__block_descriptor_40_e38_v24__0__NSArray_8__UIViewController_16l;
  v48[4] = v50;
  v32 = [(EKUIContextMenuActionInfo *)v5 initWithAction:4 showsInEditMenu:1 group:2 positionInGroup:2 shouldShowBlock:&__block_literal_global_143_0 configureUIActionBlock:v49 actionBlock:v48];
  v61[4] = v32;
  v6 = [EKUIContextMenuActionInfo alloc];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke_12;
  v47[3] = &__block_descriptor_40_e38_v24__0__NSArray_8__UIViewController_16l;
  v47[4] = *(a1 + 32);
  v31 = [(EKUIContextMenuActionInfo *)v6 initWithAction:128 showsInEditMenu:1 group:1 positionInGroup:2 shouldShowBlock:&__block_literal_global_155 configureUIActionBlock:&__block_literal_global_157 actionBlock:v47];
  v61[5] = v31;
  v7 = [EKUIContextMenuActionInfo alloc];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke_15;
  v46[3] = &__block_descriptor_40_e38_v24__0__NSArray_8__UIViewController_16l;
  v46[4] = *(a1 + 32);
  v30 = [(EKUIContextMenuActionInfo *)v7 initWithAction:256 showsInEditMenu:1 group:1 positionInGroup:3 shouldShowBlock:&__block_literal_global_168 configureUIActionBlock:&__block_literal_global_170 actionBlock:v46];
  v61[6] = v30;
  v29 = [[EKUIContextMenuActionInfo alloc] initWithAction:8 showsInEditMenu:1 group:1 positionInGroup:0 shouldShowBlock:&__block_literal_global_182_0 configureUIActionBlock:&__block_literal_global_184 actionBlock:&__block_literal_global_193];
  v61[7] = v29;
  v28 = [[EKUIContextMenuActionInfo alloc] initWithAction:32 showsInEditMenu:1 group:1 positionInGroup:1 shouldShowBlock:&__block_literal_global_196 configureUIActionBlock:&__block_literal_global_198 actionBlock:&__block_literal_global_203];
  v61[8] = v28;
  v27 = [[EKUIContextMenuActionInfo alloc] initWithAction:0x200000 showsInEditMenu:1 group:4 positionInGroup:0 shouldShowBlock:&__block_literal_global_205 configureUIActionBlock:&__block_literal_global_209 actionBlock:&__block_literal_global_226];
  v61[9] = v27;
  v26 = [[EKUIContextMenuActionInfo alloc] initWithAction:0x100000 showsInEditMenu:1 group:4 positionInGroup:1 shouldShowBlock:&__block_literal_global_228 configureUIActionBlock:&__block_literal_global_230 actionBlock:&__block_literal_global_247_0];
  v61[10] = v26;
  v8 = [EKUIContextMenuActionInfo alloc];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke_28;
  v44[3] = &__block_descriptor_40_e35_B16__0__ShouldShowBlockParameters_8l;
  v45 = *(a1 + 32);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke_30;
  v43[3] = &__block_descriptor_40_e38_v24__0__NSArray_8__UIViewController_16l;
  v43[4] = v45;
  v25 = [(EKUIContextMenuActionInfo *)v8 initWithAction:2048 showsInEditMenu:0 group:5 positionInGroup:0 shouldShowBlock:v44 configureUIActionBlock:&__block_literal_global_249 actionBlock:v43];
  v61[11] = v25;
  v9 = [EKUIContextMenuActionInfo alloc];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke_31;
  v41[3] = &__block_descriptor_40_e35_B16__0__ShouldShowBlockParameters_8l;
  v42 = *(a1 + 32);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke_33;
  v40[3] = &__block_descriptor_40_e38_v24__0__NSArray_8__UIViewController_16l;
  v40[4] = v42;
  v24 = [(EKUIContextMenuActionInfo *)v9 initWithAction:4096 showsInEditMenu:0 group:5 positionInGroup:1 shouldShowBlock:v41 configureUIActionBlock:&__block_literal_global_263 actionBlock:v40];
  v61[12] = v24;
  v10 = [EKUIContextMenuActionInfo alloc];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke_36;
  v39[3] = &__block_descriptor_40_e38_v24__0__NSArray_8__UIViewController_16l;
  v39[4] = *(a1 + 32);
  v11 = [(EKUIContextMenuActionInfo *)v10 initWithAction:0x2000 showsInEditMenu:0 group:5 positionInGroup:2 shouldShowBlock:&__block_literal_global_274 configureUIActionBlock:&__block_literal_global_277 actionBlock:v39];
  v61[13] = v11;
  v12 = [[EKUIContextMenuActionInfo alloc] initWithAction:0x4000 showsInEditMenu:0 group:5 positionInGroup:3 shouldShowBlock:&__block_literal_global_285 configureUIActionBlock:&__block_literal_global_288 actionBlock:&__block_literal_global_299];
  v61[14] = v12;
  v13 = [[EKUIContextMenuActionInfo alloc] initWithAction:0x80000 showsInEditMenu:1 group:0 positionInGroup:0 shouldShowBlock:&__block_literal_global_304 configureUIActionBlock:&__block_literal_global_310 actionBlock:&__block_literal_global_322];
  v61[15] = v13;
  v14 = [[EKUIContextMenuActionInfo alloc] initWithAction:0x8000 showsInEditMenu:1 group:0 positionInGroup:1 shouldShowBlock:&__block_literal_global_379 configureUIActionBlock:&__block_literal_global_382 actionBlock:&__block_literal_global_404];
  v61[16] = v14;
  v15 = [[EKUIContextMenuActionInfo alloc] initWithAction:1024 showsInEditMenu:1 group:0 positionInGroup:2 shouldShowBlock:&__block_literal_global_410 configureUIActionBlock:&__block_literal_global_413 actionBlock:&__block_literal_global_422];
  v61[17] = v15;
  v16 = [EKUIContextMenuActionInfo alloc];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke_3_439;
  v38[3] = &__block_descriptor_40_e38_v24__0__NSArray_8__UIViewController_16l;
  v38[4] = *(a1 + 32);
  v17 = [(EKUIContextMenuActionInfo *)v16 initWithAction:512 showsInEditMenu:1 group:1 positionInGroup:4 shouldShowBlock:&__block_literal_global_429 configureUIActionBlock:&__block_literal_global_432 actionBlock:v38];
  v61[18] = v17;
  v18 = [[EKUIContextMenuActionInfo alloc] initWithAction:0x10000 showsInEditMenu:1 group:7 positionInGroup:0 shouldShowBlock:&__block_literal_global_442 configureUIActionBlock:&__block_literal_global_446 actionBlock:&__block_literal_global_458];
  v61[19] = v18;
  v19 = [[EKUIContextMenuActionInfo alloc] initCalendarMenuPlaceholderInGroup:3 positionInGroup:1];
  v61[20] = v19;
  v20 = [EKUIContextMenuActionInfo alloc];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke_3_478;
  v37[3] = &__block_descriptor_40_e38_v24__0__NSArray_8__UIViewController_16l;
  v37[4] = *(a1 + 32);
  v21 = [(EKUIContextMenuActionInfo *)v20 initWithAction:0x40000 showsInEditMenu:0 group:3 positionInGroup:2 shouldShowBlock:&__block_literal_global_465_0 configureUIActionBlock:&__block_literal_global_468 actionBlock:v37];
  v61[21] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:22];
  v23 = _allActionInfos_actions;
  _allActionInfos_actions = v22;
}

uint64_t __41__EKUIContextMenuActions__allActionInfos__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 events];
  v4 = [*(a1 + 32) remindersAllTogglable:v3];

  return v4;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_3(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  LODWORD(v6) = [v6 remindersAllCompleted:a2];
  v8 = EventKitUIBundle();
  v9 = v8;
  if (v6)
  {
    v15 = [v8 localizedStringForKey:@"Uncomplete - context menu" value:@"Mark as Incomplete" table:0];

    if (a4)
    {
      v10 = EventKitUIBundle();
      v11 = [v10 localizedStringForKey:@"Uncomplete - edit menu" value:@"Mark as Incomplete" table:0];
      v12 = MEMORY[0x1E69932F8];
LABEL_6:

      v13 = v11;
      goto LABEL_10;
    }

    v12 = MEMORY[0x1E69932F8];
  }

  else
  {
    v15 = [v8 localizedStringForKey:@"Complete - context menu" value:@"Mark as Completed" table:0];

    if (a4)
    {
      v10 = EventKitUIBundle();
      v11 = [v10 localizedStringForKey:@"Complete - edit menu" value:@"Complete" table:0];
      v12 = MEMORY[0x1E69932E0];
      goto LABEL_6;
    }

    v12 = MEMORY[0x1E69932E0];
  }

  v13 = v15;
LABEL_10:
  v16 = v13;
  [v7 setTitle:v13];
  v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:*v12];
  [v7 setImage:v14];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 remindersAllCompleted:v6];
  v8 = [v5 EKUI_editor];

  [v4 markReminders:v6 completed:v7 ^ 1u editor:v8];
}

uint64_t __41__EKUIContextMenuActions__allActionInfos__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 events];
  if ([v2 count] == 1)
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = [v3 isReminderIntegrationEvent];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"Show in Reminders" value:&stru_1F4EF6790 table:0];
  [v3 setTitle:v5];

  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.forward.app"];
  [v3 setImage:v6];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [a2 objectAtIndexedSubscript:0];
  v4 = [v3 uniqueID];
  v6 = [v2 URLWithString:v4];

  v5 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v5 openURL:v6 configuration:0 completionHandler:&__block_literal_global_112];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (!v4)
  {
    v6 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_ERROR, "Failed to open URL when Open in Reminders tapped: %@", &v7, 0xCu);
    }
  }
}

uint64_t __41__EKUIContextMenuActions__allActionInfos__block_invoke_113(uint64_t a1, void *a2)
{
  v2 = [a2 events];
  if ([v2 count] == 1)
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = [v3 allowsParticipationStatusModifications];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_2_116(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 _menuStateForStatus:2 events:a2];
  v7 = EventKitUIBundle();
  v9 = [v7 localizedStringForKey:@"Accept - context menu" value:@"Accept" table:0];

  [v5 setTitle:v9];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle"];
  [v5 setImage:v8];

  [v5 setState:v6];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_3_126(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 objectAtIndexedSubscript:0];
  [v4 _saveStatus:2 forEvent:v6 presentationController:v5];
}

uint64_t __41__EKUIContextMenuActions__allActionInfos__block_invoke_4_127(uint64_t a1, void *a2)
{
  v2 = [a2 events];
  if ([v2 count] == 1)
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = [v3 allowsParticipationStatusModifications];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_5_130(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 _menuStateForStatus:4 events:a2];
  v7 = EventKitUIBundle();
  v9 = [v7 localizedStringForKey:@"Maybe - context menu" value:@"Maybe" table:0];

  [v5 setTitle:v9];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"questionmark.circle"];
  [v5 setImage:v8];

  [v5 setState:v6];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_6_140(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 objectAtIndexedSubscript:0];
  [v4 _saveStatus:4 forEvent:v6 presentationController:v5];
}

uint64_t __41__EKUIContextMenuActions__allActionInfos__block_invoke_7_141(uint64_t a1, void *a2)
{
  v2 = [a2 events];
  if ([v2 count] == 1)
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = [v3 allowsParticipationStatusModifications];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_8_144(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 _menuStateForStatus:3 events:a2];
  v7 = EventKitUIBundle();
  v9 = [v7 localizedStringForKey:@"Decline - context menu" value:@"Decline" table:0];

  [v5 setTitle:v9];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle"];
  [v5 setImage:v8];

  [v5 setState:v6];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 objectAtIndexedSubscript:0];
  [v4 _saveStatus:3 forEvent:v6 presentationController:v5];
}

BOOL __41__EKUIContextMenuActions__allActionInfos__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = [a2 events];
  if ([v2 count] == 1)
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    if ([v3 isSelfOrganizedInvitation])
    {
      v4 = [v2 objectAtIndexedSubscript:0];
      if ([v4 isProposedTimeEvent])
      {
        v5 = 1;
      }

      else
      {
        v6 = [v2 objectAtIndexedSubscript:0];
        v5 = [v6 countOfAttendeeProposedTimes] == 1;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_11(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"Accept New Time - context menu" value:@"Accept New Time" table:0];
  [v3 setTitle:v5];

  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
  [v3 setImage:v6];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 objectAtIndexedSubscript:0];
  [v4 _acceptProposedTimeForEvent:v6 presentationController:v5];
}

BOOL __41__EKUIContextMenuActions__allActionInfos__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = [a2 events];
  if ([v2 count] == 1)
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    if ([v3 isSelfOrganizedInvitation])
    {
      v4 = [v2 objectAtIndexedSubscript:0];
      if ([v4 isProposedTimeEvent])
      {
        v5 = 1;
      }

      else
      {
        v6 = [v2 objectAtIndexedSubscript:0];
        v5 = [v6 countOfAttendeeProposedTimes] == 1;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_14(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"Reject New Time - context menu" value:@"Reject New Time" table:0];
  [v3 setTitle:v5];

  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
  [v3 setImage:v6];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v5 objectAtIndexedSubscript:{0, 0}];
  v8 = [v7 attendees];

  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          [v14 setCommentChanged:0];
          [v14 setStatusChanged:0];
          [v14 setProposedStartDateChanged:0];
          [v14 setProposedStartDateStatus:3];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v15 = [v5 objectAtIndexedSubscript:0];
  if ([v15 isOrWasPartOfRecurringSeries])
  {
    v16 = 4;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a1 + 32);
  v18 = [v5 objectAtIndexedSubscript:0];
  v19 = [v6 EKUI_editor];
  [v17 _performSaveWithEvent:v18 span:v16 editor:v19];
}

uint64_t __41__EKUIContextMenuActions__allActionInfos__block_invoke_16(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  [a2 events];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if (([v7 allowsParticipationStatusModifications] & 1) == 0)
        {
          v8 = [v7 calendar];
          v9 = [v8 type];

          if (v9 == 5)
          {
            continue;
          }
        }

        v10 = 0;
        goto LABEL_13;
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 1;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_13:

  return v10;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = a2;
  v7 = EventKitUIBundle();
  v8 = [v7 localizedStringForKey:@"add_x_suggested_events_to_calendar" value:&stru_1F4EF6790 table:0];
  v9 = [v6 count];

  v10 = [v4 localizedStringWithFormat:v8, v9];
  [v5 setTitle:v10];

  v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"calendar.badge.plus"];
  [v5 setImage:v11];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_18(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 suggestionInfo];
        [v8 setChangedFields:0];

        v9 = [v7 eventStore];
        [v9 acceptSuggestedEvent:v7];

        v10 = MEMORY[0x1E69930D8];
        v11 = [v7 suggestionInfo];
        v12 = [v11 uniqueIdentifier];
        [v10 logEventConfirmedDetailsWithUniqueKey:v12];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

uint64_t __41__EKUIContextMenuActions__allActionInfos__block_invoke_19(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  [a2 events];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if (([v7 allowsParticipationStatusModifications] & 1) == 0)
        {
          v8 = [v7 calendar];
          v9 = [v8 type];

          if (v9 == 5)
          {
            continue;
          }
        }

        v10 = 0;
        goto LABEL_13;
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 1;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_13:

  return v10;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v11 = a3;
  v5 = a2;
  v6 = EventKitUIBundle();
  v7 = [v6 localizedStringForKey:@"ignore_x_suggested_events" value:&stru_1F4EF6790 table:0];
  v8 = [v5 count];

  v9 = [v4 localizedStringWithFormat:v7, v8];
  [v11 setTitle:v9];

  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
  [v11 setImage:v10];

  [v11 setAttributes:2];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_21(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 suggestionInfo];
        [v8 setChangedFields:0];

        v9 = MEMORY[0x1E69930D8];
        v10 = [v7 suggestionInfo];
        v11 = [v10 uniqueIdentifier];
        [v9 logEventRejectedDetailsWithUniqueKey:v11];

        v12 = [v7 eventStore];
        [v12 deleteSuggestedEvent:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

uint64_t __41__EKUIContextMenuActions__allActionInfos__block_invoke_22(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 presentationController];
  v4 = [v2 events];

  if ([v4 count] == 1 && (objc_msgSend(v4, "objectAtIndexedSubscript:", 0), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasRecurrenceRules"), v5, v6) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v4 objectAtIndexedSubscript:0];
    v8 = [v3 eventViewDelegateShouldShowNextOccurrenceOfEvent:v7 forward:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_23(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v11 = a3;
  v5 = EventKitUIBundle();
  v6 = v5;
  if (a4)
  {
    v7 = @"Previous - context menu";
    v8 = @"Previous";
  }

  else
  {
    v7 = @"Show Previous Occurrence - context menu";
    v8 = @"Go to Previous Occurrence";
  }

  v9 = [v5 localizedStringForKey:v7 value:v8 table:0];
  [v11 setTitle:v9];

  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.backward.circle"];
  [v11 setImage:v10];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectAtIndexedSubscript:0];
  [v4 eventViewDelegateShowNextOccurrenceOfEvent:v5 forward:0];
}

uint64_t __41__EKUIContextMenuActions__allActionInfos__block_invoke_25(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 presentationController];
  v4 = [v2 events];

  if ([v4 count] == 1 && (objc_msgSend(v4, "objectAtIndexedSubscript:", 0), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasRecurrenceRules"), v5, v6) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v4 objectAtIndexedSubscript:0];
    v8 = [v3 eventViewDelegateShouldShowNextOccurrenceOfEvent:v7 forward:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_26(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v11 = a3;
  v5 = EventKitUIBundle();
  v6 = v5;
  if (a4)
  {
    v7 = @"Next - context menu";
    v8 = @"Next";
  }

  else
  {
    v7 = @"Show Next Occurrence - context menu";
    v8 = @"Go to Next Occurrence";
  }

  v9 = [v5 localizedStringForKey:v7 value:v8 table:0];
  [v11 setTitle:v9];

  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.forward.circle"];
  [v11 setImage:v10];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectAtIndexedSubscript:0];
  [v4 eventViewDelegateShowNextOccurrenceOfEvent:v5 forward:1];
}

BOOL __41__EKUIContextMenuActions__allActionInfos__block_invoke_28(uint64_t a1, void *a2)
{
  v3 = [a2 events];
  if ([v3 count] == 1)
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    if ([v4 isExternallyOrganizedInvitation])
    {
      v5 = *(a1 + 32);
      v6 = [v3 objectAtIndexedSubscript:0];
      v7 = [v5 _organizerContactForEvent:v6];
      v8 = v7 != 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_29(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"Show Organizer - context menu" value:@"Show Organizer" table:0];
  [v3 setTitle:v5];

  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle"];
  [v3 setImage:v6];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_30(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = MEMORY[0x1E696AEC0];
  v4 = *(a1 + 32);
  v5 = [a2 objectAtIndexedSubscript:0];
  v6 = [v4 _organizerContactForEvent:v5];
  v7 = [v6 identifier];
  v8 = [v3 stringWithFormat:@"contact://show?id=%@", v7];
  v10 = [v2 URLWithString:v8];

  v9 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v9 openSensitiveURL:v10 withOptions:0];
}

uint64_t __41__EKUIContextMenuActions__allActionInfos__block_invoke_31(uint64_t a1, void *a2)
{
  v3 = [a2 events];
  if ([v3 count] == 1)
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    if ([v4 isExternallyOrganizedInvitation])
    {
      v5 = *(a1 + 32);
      v6 = [v3 objectAtIndexedSubscript:0];
      v7 = [v5 _organizerContactForEvent:v6];
      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v9 = *(a1 + 32);
        v10 = [v3 objectAtIndexedSubscript:0];
        v8 = [v9 _canEmailOrganizerForEvent:v10];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_32(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"Email Organizer - context menu" value:@"Email Organizer" table:0];
  [v3 setTitle:v5];

  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"envelope"];
  [v3 setImage:v6];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 objectAtIndexedSubscript:0];
  [v4 _presentMailViewControllerSendingToOrganizer:1 event:v6 presentationController:v5];
}

BOOL __41__EKUIContextMenuActions__allActionInfos__block_invoke_34(uint64_t a1, void *a2)
{
  v2 = [a2 events];
  if ([v2 count] == 1)
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = [EKUIEmailCompositionManager canShowViewControllerForEvent:v3 withParticipantRecipients:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_35(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"Email Participants - context menu" value:@"Email Participants" table:0];
  [v3 setTitle:v5];

  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"envelope"];
  [v3 setImage:v6];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 objectAtIndexedSubscript:0];
  [v4 _presentMailViewControllerSendingToOrganizer:0 event:v6 presentationController:v5];
}

BOOL __41__EKUIContextMenuActions__allActionInfos__block_invoke_37(uint64_t a1, void *a2)
{
  v2 = [a2 events];
  if ([v2 count] == 1)
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = [EKUITextSendingManager canSendMessageToRecipientsOnEvent:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_38(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"Message Participants - context menu" value:@"Message Participants" table:0];
  [v3 setTitle:v5];

  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"message"];
  [v3 setImage:v6];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_39(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [EKUITextSendingManager alloc];
  v7 = [v4 objectAtIndexedSubscript:0];
  v8 = [(EKUITextSendingManager *)v6 initWithEvent:v7];

  v9 = [(EKUITextSendingManager *)v8 viewController];
  [v9 setModalPresentationStyle:2];

  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__18;
  v13[4] = __Block_byref_object_dispose__18;
  v10 = v8;
  v14 = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke_300;
  v12[3] = &unk_1E8442128;
  v12[4] = v13;
  [(EKUITextSendingManager *)v10 setMessageSendingComplete:v12];
  v11 = [(EKUITextSendingManager *)v10 viewController];
  [v5 presentViewController:v11 animated:1 completion:0];

  _Block_object_dispose(v13, 8);
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_300(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    v3 = [v2 viewController];
    v4 = [v3 presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];

    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

uint64_t __41__EKUIContextMenuActions__allActionInfos__block_invoke_2_302(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 events];
  v4 = [v2 presentationController];

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v4 pasteboardManager], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 calendarToPasteTo];
    if (v7)
    {
      v8 = [MEMORY[0x1E6993458] allEventsValidForAction:2 fromEvents:v3];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_3_308(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"Duplicate - context menu" value:@"Duplicate" table:0];
  [v3 setTitle:v5];

  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.square.on.square"];
  [v3 setImage:v6];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_4_320(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 pasteboardManager];
    if (v5 && [v4 conformsToProtocol:&unk_1F4F8A520])
    {
      v6 = [MEMORY[0x1E695DFD8] setWithArray:v7];
      [v5 duplicateEvents:v6 withDateMode:3 delegate:v4];
    }
  }

  else
  {
    v5 = 0;
  }
}

BOOL __41__EKUIContextMenuActions__allActionInfos__block_invoke_5_377(uint64_t a1, void *a2)
{
  v2 = [a2 events];
  if ([v2 count] == 1)
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = [v3 virtualConference];
    v5 = [v4 joinMethods];
    v6 = [v5 firstObject];
    v7 = [v6 URL];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v9 = [v2 objectAtIndexedSubscript:0];
      v10 = [v9 conferenceURLForDisplay];
      v8 = v10 != 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_6_380(uint64_t a1, void *a2, void *a3)
{
  v26 = a2;
  v4 = a3;
  v5 = [v26 objectAtIndexedSubscript:0];
  v6 = [v5 virtualConference];
  v7 = [v6 joinMethods];
  v8 = [v7 firstObject];
  v9 = [v8 URL];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [v26 objectAtIndexedSubscript:0];
    v11 = [v12 conferenceURLForDisplay];
  }

  v13 = [v26 objectAtIndexedSubscript:0];
  v14 = [v13 virtualConference];
  v15 = [v14 joinMethods];
  v16 = [v15 firstObject];
  v17 = [v16 isBroadcast];

  if (v17)
  {
    v18 = EventKitUIBundle();
    v19 = v18;
    v20 = @"Watch Broadcast - context menu";
    v21 = @"Watch Broadcast";
  }

  else
  {
    v22 = [v11 cal_hasSchemeTel];
    v18 = EventKitUIBundle();
    v19 = v18;
    if (v22)
    {
      v20 = @"Call In - context menu";
      v21 = @"Call In";
    }

    else
    {
      v20 = @"Join Meeting - context menu";
      v21 = @"Join Meeting";
    }
  }

  v23 = [v18 localizedStringForKey:v20 value:v21 table:0];

  [v4 setTitle:v23];
  v24 = [MEMORY[0x1E69933C0] synchronousTitleForURL:v11 incomplete:0];
  [v4 setDiscoverabilityTitle:v24];

  v25 = [MEMORY[0x1E69933C0] synchronousOutlineIconForURL:v11 isBroadcast:v17 outImageName:0 incomplete:0];
  [v4 setImage:v25];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_7_402(uint64_t a1, void *a2)
{
  v11 = a2;
  v2 = [v11 objectAtIndexedSubscript:0];
  v3 = [v2 virtualConference];
  v4 = [v3 joinMethods];
  v5 = [v4 firstObject];
  v6 = [v5 URL];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [v11 objectAtIndexedSubscript:0];
    v8 = [v9 conferenceURLForDisplay];
  }

  v10 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v10 openURL:v8 configuration:0 completionHandler:&__block_literal_global_407];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_8_405(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (!v4)
  {
    v6 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_ERROR, "Failed to open URL when url link in context menu tapped: %@", &v7, 0xCu);
    }
  }
}

uint64_t __41__EKUIContextMenuActions__allActionInfos__block_invoke_408(uint64_t a1, void *a2)
{
  v2 = [a2 events];
  if ([v2 count] == 1)
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = [v3 preferredLocation];
    v5 = [v4 geoLocation];
    if (v5)
    {
      v6 = [v2 objectAtIndexedSubscript:0];
      v7 = [v6 preferredLocation];
      v8 = [v7 isPrediction] ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_2_411(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"Open in Maps - context menu" value:@"Open in Maps" table:0];
  [v3 setTitle:v5];

  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.forward.app"];
  [v3 setImage:v6];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_3_420(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6966A50];
  v3 = [a2 objectAtIndexedSubscript:0];
  v5 = [v2 mapsURLForLocation:0 onEvent:v3 hasMapItemLaunchOptionFromTimeToLeaveNotification:0];

  v4 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v4 openURL:v5 configuration:0 completionHandler:&__block_literal_global_426];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_4_424(uint64_t a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (!v4)
  {
    v6 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_ERROR, "Failed to open URL when maps link in context menu tapped: %@", &v7, 0xCu);
    }
  }
}

BOOL __41__EKUIContextMenuActions__allActionInfos__block_invoke_427(uint64_t a1, void *a2)
{
  v2 = [a2 events];
  if ([v2 count] == 1)
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    if ([v3 allowsParticipationStatusModifications])
    {
      v4 = [v2 objectAtIndexedSubscript:0];
      v5 = [v4 proposedStartDate];
      v6 = v5 != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_2_430(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v3 = EventKitUIBundle();
  v4 = [v3 localizedStringForKey:@"Cancel Proposed Time - context menu" value:@"Cancel Proposed Time" table:0];
  [v6 setTitle:v4];

  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
  [v6 setImage:v5];

  [v6 setAttributes:2];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_3_439(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 objectAtIndexedSubscript:0];
  [v7 setProposedStartDate:0];

  v8 = *(a1 + 32);
  v10 = [v6 objectAtIndexedSubscript:0];

  v9 = [v5 EKUI_editor];

  [v8 _performSaveWithEvent:v10 span:0 editor:v9];
}

uint64_t __41__EKUIContextMenuActions__allActionInfos__block_invoke_4_440(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  [a2 events];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = v20 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v17 + 1) + 8 * v6) calendar];
        v8 = [v2 objectAtIndexedSubscript:0];
        v9 = [v8 calendar];
        v10 = [v7 isEqual:v9];

        if (!v10)
        {
          v15 = 0;
          v11 = v2;
          goto LABEL_17;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = [v2 objectAtIndexedSubscript:0];
  v12 = [v11 calendar];
  if ([v12 isSubscribed])
  {
    v13 = [v2 objectAtIndexedSubscript:0];
    v14 = [v13 calendar];
    if ([v14 isSubscribedHolidayCalendar])
    {
      v15 = 0;
    }

    else
    {
      v15 = [MEMORY[0x1E6992FA0] currentProcessIsFirstPartyCalendarApp];
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_17:
  return v15;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_5_444(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v4 = a2;
  v5 = EventKitUIBundle();
  v6 = [v5 localizedStringForKey:@"Unsubscribe from This Calendar - context menu" value:@"Unsubscribe from This Calendar" table:0];
  [v11 setTitle:v6];

  v7 = [v4 objectAtIndexedSubscript:0];

  v8 = [v7 calendar];
  v9 = CUIKDisplayedTitleForCalendar();
  [v11 setDiscoverabilityTitle:v9];

  v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
  [v11 setImage:v10];

  [v11 setAttributes:2];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_6_456(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectAtIndexedSubscript:0];
  v6 = [v5 calendar];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke_7_459;
  aBlock[3] = &unk_1E843FE10;
  v12 = v6;
  v7 = v6;
  v8 = _Block_copy(aBlock);
  v9 = [EKUIRecurrenceAlertController presentUnsubscribeAlertWithOptions:0 viewController:v4 sourceView:0 sourceRect:v8 withCompletionHandler:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  v10 = _presentedAlert;
  _presentedAlert = v9;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_7_459(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = _presentedAlert;
  _presentedAlert = 0;

  if (a2 != 3)
  {
    if (a2 == 5)
    {
      v5 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_DEFAULT, "Removing calendar %@ because the user unsubscribed from event details, and reporting it as junk", &v9, 0xCu);
      }

      [MEMORY[0x1E6993498] unsubscribeFromCalendar:*(a1 + 32) reportAsJunk:1];
    }

    else
    {
      v7 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_DEFAULT, "Removing calendar %@ because the user unsubscribed from event details", &v9, 0xCu);
      }

      [MEMORY[0x1E6993498] unsubscribeFromCalendar:*(a1 + 32)];
    }
  }
}

uint64_t __41__EKUIContextMenuActions__allActionInfos__block_invoke_463(uint64_t a1, void *a2)
{
  v2 = [a2 events];
  if ([v2 count] == 1)
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    if ([v3 hasAttendees])
    {
      v4 = [v2 objectAtIndexedSubscript:0];
      v5 = [v4 calendar];
      v6 = [v5 source];
      v7 = [v6 supportsAvailabilityRequests];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_2_466(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"Show Availability - context menu" value:@"Show Availability" table:0];
  [v3 setTitle:v5];

  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.fill.questionmark"];
  [v3 setImage:v6];
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_3_478(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 firstObject];
  v8 = [EKUIAvailabilityViewController presentAvailabilityViewControllerForEvent:v7 fromViewController:v6];

  objc_initWeak(&location, v8);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__EKUIContextMenuActions__allActionInfos__block_invoke_4_480;
  v10[3] = &unk_1E8442150;
  objc_copyWeak(v12, &location);
  v12[1] = *(a1 + 32);
  v9 = v6;
  v11 = v9;
  [v8 setSaveBlock:v10];

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __41__EKUIContextMenuActions__allActionInfos__block_invoke_4_480(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained modifiedStartDate];
  [v5 setStartDate:v7];

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 modifiedEndDate];
  [v5 setEndDateUnadjustedForLegacyClients:v9];

  v10 = *(a1 + 48);
  v11 = [*(a1 + 32) EKUI_editor];
  [v10 _performSaveWithEvent:v5 span:a3 editor:v11];
}

+ (int64_t)_menuStateForStatus:(int64_t)a3 events:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v16;
  v10 = 1;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v12 = [*(*(&v15 + 1) + 8 * i) participationStatus] == a3;
      v10 &= v12;
      v8 |= v12;
    }

    v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v7);
  v13 = (v8 & 1) != 0 ? 2 : 0;
  if (v10)
  {
LABEL_12:
    v13 = 1;
  }

  return v13;
}

+ (id)_filteredSortedActionInfosForEvents:(id)a3 presentationController:(id)a4 isEditMenu:(BOOL)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[ShouldShowBlockParameters alloc] initWithEvents:v9 presentationController:v8];

  v11 = [a1 _allActionInfos];
  v12 = MEMORY[0x1E696AE18];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __96__EKUIContextMenuActions__filteredSortedActionInfosForEvents_presentationController_isEditMenu___block_invoke;
  v21 = &unk_1E8442178;
  v23 = a5;
  v22 = v10;
  v13 = v10;
  v14 = [v12 predicateWithBlock:&v18];
  v15 = [v11 filteredArrayUsingPredicate:{v14, v18, v19, v20, v21}];

  v16 = [v15 sortedArrayUsingComparator:&__block_literal_global_490];

  return v16;
}

uint64_t __96__EKUIContextMenuActions__filteredSortedActionInfosForEvents_presentationController_isEditMenu___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 action] == 0x20000)
  {
    v4 = 1;
  }

  else if (*(a1 + 40) == 1 && ![v3 showsInEditMenu])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 shouldShowBlock];
    v4 = v5[2](v5, *(a1 + 32));
  }

  return v4;
}

uint64_t __96__EKUIContextMenuActions__filteredSortedActionInfosForEvents_presentationController_isEditMenu___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 group];
  if (v6 >= [v5 group])
  {
    v8 = [v4 group];
    if (v8 > [v5 group])
    {
      v7 = 1;
      goto LABEL_7;
    }

    v9 = [v4 positionInGroup];
    if (v9 >= [v5 positionInGroup])
    {
      v10 = [v4 positionInGroup];
      v7 = v10 > [v5 positionInGroup];
      goto LABEL_7;
    }
  }

  v7 = -1;
LABEL_7:

  return v7;
}

+ (id)_createCalendarsMenuForEvents:(id)a3 presentationController:(id)a4 isEditMenu:(BOOL)a5 overrideActionBlock:(id)a6 completionBlock:(id)a7
{
  v63 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v44 = a4;
  v45 = a6;
  v13 = a7;
  v46 = v12;
  if (a5)
  {
    v14 = 0;
  }

  else
  {
    val = a1;
    v43 = v13;
    v15 = [v12 objectAtIndexedSubscript:0];
    v16 = [v15 calendar];
    v47 = [v16 source];

    v17 = [MEMORY[0x1E695DFA8] set];
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v18 = v12;
    v19 = 0;
    v20 = [v18 countByEnumeratingWithState:&v58 objects:v62 count:16];
    if (v20)
    {
      v21 = *v59;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v59 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v58 + 1) + 8 * i);
          v24 = [v23 calendar];
          v25 = [v24 source];
          v26 = [v25 isEqual:v47];

          if (!v26 || ![v23 allowsCalendarModifications] || (v27 = objc_msgSend(v23, "hasAttendees"), objc_msgSend(v23, "isExternallyOrganizedInvitation")) && !objc_msgSend(v23, "allowsParticipationStatusModifications") || (objc_msgSend(v23, "isIntegrationEvent") & 1) != 0)
          {
            v14 = 0;
            goto LABEL_24;
          }

          v28 = [v23 calendar];
          [v17 addObject:v28];

          v19 |= v27;
        }

        v20 = [v18 countByEnumeratingWithState:&v58 objects:v62 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v29 = [v17 count];
    v30 = v29 == 1;
    if ((v19 & 1) != 0 || [v47 isDelegate])
    {
      v31 = v47;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;
    v33 = [v18 objectAtIndexedSubscript:0];
    v34 = [v33 eventStore];

    v41 = [MEMORY[0x1E69933B0] calendarsLimitedToSource:v32 writability:2 onlyUnmanagedAccounts:0 forEvents:v18 entityType:0 inEventStore:v34];
    objc_initWeak(&location, val);
    if (v29 == 1)
    {
      v35 = [v17 anyObject];
      v36 = CUIKDisplayedTitleForCalendar();
    }

    else
    {
      v37 = MEMORY[0x1E696AEC0];
      v35 = EventKitUIBundle();
      v38 = [v35 localizedStringForKey:@"x_calendars_selected" value:&stru_1F4EF6790 table:0];
      v36 = [v37 localizedStringWithFormat:v38, objc_msgSend(v17, "count")];
    }

    v39 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __126__EKUIContextMenuActions__createCalendarsMenuForEvents_presentationController_isEditMenu_overrideActionBlock_completionBlock___block_invoke;
    v54[3] = &unk_1E84421C0;
    v55 = v17;
    v56 = v30;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __126__EKUIContextMenuActions__createCalendarsMenuForEvents_presentationController_isEditMenu_overrideActionBlock_completionBlock___block_invoke_2;
    v48[3] = &unk_1E84421E8;
    objc_copyWeak(&v53, &location);
    v51 = v45;
    v49 = v44;
    v50 = v18;
    v52 = v43;
    v14 = [EKUICalendarMenu calendarSubmenuWithSubtitle:v36 calendars:v41 eventStore:v34 backgroundColor:v39 setupActionHandler:v54 selectionHandler:v48];

    objc_destroyWeak(&v53);
    objc_destroyWeak(&location);

    v18 = v32;
LABEL_24:

    v13 = v43;
  }

  return v14;
}

void __126__EKUIContextMenuActions__createCalendarsMenuForEvents_presentationController_isEditMenu_overrideActionBlock_completionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if ([*(a1 + 32) containsObject:a3])
  {
    if (*(a1 + 40))
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  [v6 setState:v5];
}

void __126__EKUIContextMenuActions__createCalendarsMenuForEvents_presentationController_isEditMenu_overrideActionBlock_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v5 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v27 = 0x20000;
      _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_DEBUG, "Context menu action %lu was picked.", buf, 0xCu);
    }

    v6 = *(a1 + 48);
    if (!v6 || ((*(v6 + 16))(v6, 0x20000, v3) & 1) == 0)
    {
      v7 = [*(a1 + 32) EKUI_editor];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v20 = a1;
      v8 = *(a1 + 40);
      v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v21 + 1) + 8 * i);
            v14 = [v13 calendar];
            v15 = [v3 isEqual:v14];

            if ((v15 & 1) == 0)
            {
              v16 = [v13 calendar];
              v17 = [v13 requiresCopyToMoveFromCalendar:v16 toCalendar:v3];

              if (v17)
              {
                v18 = [v13 copyToCalendar:v3 withOptions:0];
                [WeakRetained _performSaveWithEvent:v18 span:0 editor:v7];
              }

              else
              {
                [v13 setCalendar:v3];
                [WeakRetained _performSaveWithEvent:v13 span:0 editor:v7];
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v10);
      }

      v19 = *(v20 + 56);
      if (v19)
      {
        (*(v19 + 16))(v19, 0x20000);
      }
    }
  }
}

+ (id)menuForEvents:(id)a3 presentationController:(id)a4 isEditMenu:(BOOL)a5 overrideActionBlock:(id)a6 completionBlock:(id)a7
{
  v9 = a5;
  v64 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if ([v12 count])
  {
    v48 = v15;
    v16 = [a1 _createCalendarsMenuForEvents:v12 presentationController:v13 isEditMenu:v9 overrideActionBlock:v14 completionBlock:v15];
    v49 = v13;
    v46 = v9;
    v17 = [a1 _filteredSortedActionInfosForEvents:v12 presentationController:v13 isEditMenu:v9];
    v47 = [MEMORY[0x1E695DF70] array];
    v18 = [v17 objectAtIndexedSubscript:0];
    v19 = [v18 group];

    v20 = [MEMORY[0x1E695DF70] array];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v17;
    v21 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v59;
      v45 = v53;
      do
      {
        v24 = 0;
        v50 = v22;
        do
        {
          if (*v59 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v58 + 1) + 8 * v24);
          v26 = [v25 action];
          if (v26 != 0x20000 || v16 != 0)
          {
            v28 = v26;
            if ([v25 group] != v19)
            {
              v29 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4EF6790 image:0 identifier:0 options:1 children:v20];
              [v47 addObject:v29];

              v19 = [v25 group];
              [v20 removeAllObjects];
            }

            if (v28 == 0x20000)
            {
              [v20 addObject:v16];
            }

            else
            {
              v30 = MEMORY[0x1E69DC628];
              v52[0] = MEMORY[0x1E69E9820];
              v52[1] = 3221225472;
              v53[0] = __110__EKUIContextMenuActions_menuForEvents_presentationController_isEditMenu_overrideActionBlock_completionBlock___block_invoke;
              v53[1] = &unk_1E8442210;
              v53[2] = v25;
              v56 = v14;
              v31 = v23;
              v32 = v16;
              v33 = v20;
              v34 = v19;
              v35 = v14;
              v36 = v12;
              v37 = v12;
              v54 = v37;
              v55 = v49;
              v57 = v48;
              v38 = [v30 actionWithTitle:&stru_1F4EF6790 image:0 identifier:0 handler:v52];
              v39 = [v25 configureUIActionBlock];
              v40 = v37;
              v12 = v36;
              v14 = v35;
              v19 = v34;
              v20 = v33;
              v16 = v32;
              v23 = v31;
              v22 = v50;
              (v39)[2](v39, v40, v38, v46);

              [v20 addObject:v38];
            }
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v22);
    }

    if (v20)
    {
      v41 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4EF6790 image:0 identifier:0 options:1 children:v20];
      [v47 addObject:v41];
    }

    v42 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4EF6790 image:0 identifier:0 options:1 children:v47];

    v15 = v48;
    v13 = v49;
  }

  else
  {
    v43 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D3400000, v43, OS_LOG_TYPE_ERROR, "No events provided for EKUIContextMenuActions menuForEvents. Returning empty context menu.", buf, 2u);
    }

    v42 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4EF6790 image:0 identifier:0 options:1 children:MEMORY[0x1E695E0F0]];
  }

  return v42;
}

void __110__EKUIContextMenuActions_menuForEvents_presentationController_isEditMenu_overrideActionBlock_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v10 = 134217984;
    v11 = [v5 action];
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_DEBUG, "Context menu action %lu was picked.", &v10, 0xCu);
  }

  v7 = *(a1 + 56);
  if (!v7 || ((*(v7 + 16))(v7, [*(a1 + 32) action], 0) & 1) == 0)
  {
    v8 = [*(a1 + 32) actionBlock];
    v8[2](v8, *(a1 + 40), *(a1 + 48));

    v9 = *(a1 + 64);
    if (v9)
    {
      (*(v9 + 16))(v9, [*(a1 + 32) action]);
    }
  }
}

+ (id)_organizerContactForEvent:(id)a3
{
  v3 = [a3 organizer];
  v4 = [MEMORY[0x1E6992F50] defaultProvider];
  v5 = [v3 emailAddress];
  if (!v5 || ([v4 unifiedContactWithEmailAddress:v5], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = [v3 phoneNumber];
    if (v7)
    {
      v6 = [v4 unifiedContactWithPhoneNumber:v7];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (BOOL)_canEmailOrganizerForEvent:(id)a3
{
  v3 = [a3 organizer];
  v4 = v3;
  if (v3 && ([v3 isCurrentUser] & 1) == 0)
  {
    v6 = [v4 emailAddress];
    v7 = v6;
    if (v6 && [v6 length])
    {
      v5 = [MEMORY[0x1E69ADAC0] canSendMail];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)_presentMailViewControllerSendingToOrganizer:(BOOL)a3 event:(id)a4 presentationController:(id)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [EKUIEmailCompositionManager alloc];
  v10 = v9;
  if (a3)
  {
    v11 = [v7 organizer];
    v20[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v13 = [(EKUIEmailCompositionManager *)v10 initWithEvent:v7 participantRecipients:v12 subjectPrefix:0 bodyPrefix:0];
  }

  else
  {
    v13 = [(EKUIEmailCompositionManager *)v9 initWithEvent:v7 participantRecipients:0 subjectPrefix:0 bodyPrefix:0];
  }

  v14 = [(EKUIEmailCompositionManager *)v13 viewController];
  [v14 setModalPresentationStyle:2];

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__18;
  v18[4] = __Block_byref_object_dispose__18;
  v15 = v13;
  v19 = v15;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __100__EKUIContextMenuActions__presentMailViewControllerSendingToOrganizer_event_presentationController___block_invoke;
  v17[3] = &unk_1E8442128;
  v17[4] = v18;
  [(EKUIEmailCompositionManager *)v15 setMessageSendingComplete:v17];
  v16 = [(EKUIEmailCompositionManager *)v15 viewController];
  [v8 presentViewController:v16 animated:1 completion:0];

  _Block_object_dispose(v18, 8);
}

void __100__EKUIContextMenuActions__presentMailViewControllerSendingToOrganizer_event_presentationController___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    v3 = [v2 viewController];
    v4 = [v3 presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];

    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

+ (void)_performSaveWithEvent:(id)a3 span:(int64_t)a4 editor:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v13 = 0;
  LOBYTE(a4) = [a5 saveEvent:v7 span:a4 error:&v13];
  v8 = v13;
  v9 = v8;
  if ((a4 & 1) != 0 || !v8)
  {
    goto LABEL_9;
  }

  v10 = [v8 domain];
  if (v10 == *MEMORY[0x1E6966808])
  {
    v11 = [v9 code];

    if (v11 != 1010)
    {
      goto LABEL_7;
    }

    v10 = [v7 eventStore];
    [v10 rollback];
  }

LABEL_7:
  v12 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v15 = v9;
    _os_log_impl(&dword_1D3400000, v12, OS_LOG_TYPE_ERROR, "Error saving event as part of context menu action: %@", buf, 0xCu);
  }

LABEL_9:
}

+ (void)_saveStatus:(int64_t)a3 forEvent:(id)a4 presentationController:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([v8 responseMustApplyToAll])
  {
    v10 = 4;
LABEL_6:
    [v8 setParticipationStatus:a3];
    [v8 setInvitationStatus:0];
    v16 = [v9 EKUI_editor];
    [a1 _performSaveWithEvent:v8 span:v10 editor:v16];

    goto LABEL_7;
  }

  if (![v8 isOrWasPartOfRecurringSeries])
  {
    v10 = 0;
    goto LABEL_6;
  }

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __70__EKUIContextMenuActions__saveStatus_forEvent_presentationController___block_invoke;
  v20 = &unk_1E8442238;
  v11 = v8;
  v21 = v11;
  v23 = a3;
  v24 = a1;
  v12 = v9;
  v22 = v12;
  v13 = _Block_copy(&v17);
  v14 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:v12 sourceView:0 sourceRect:v11 forEvent:v13 withCompletionHandler:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24), v17, v18, v19, v20];
  v15 = _presentedAlert;
  _presentedAlert = v14;

LABEL_7:
}

void __70__EKUIContextMenuActions__saveStatus_forEvent_presentationController___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a2 > 3)
  {
    if ((a2 - 4) < 2)
    {
      return;
    }

    goto LABEL_9;
  }

  if (a2 == 1 || a2 == 2)
  {
    v3 = a2;
LABEL_9:
    [*(a1 + 32) setParticipationStatus:*(a1 + 48)];
    [*(a1 + 32) setInvitationStatus:0];
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) EKUI_editor];
    [v4 _performSaveWithEvent:v5 span:v3 editor:v6];

    goto LABEL_10;
  }

  if (a2 != 3)
  {
    goto LABEL_9;
  }

LABEL_10:
  v7 = _presentedAlert;
  _presentedAlert = 0;
}

+ (void)_acceptProposedTimeForEvent:(id)a3 presentationController:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [a1 _proposedDateForEvent:v6];
  if (v8)
  {
    v9 = [v6 endDateUnadjustedForLegacyClients];
    v10 = [v6 startDate];
    [v9 timeIntervalSinceDate:v10];
    v12 = v11;

    [v6 setStartDate:v8];
    v13 = [v8 dateByAddingTimeInterval:v12];
    [v6 setEndDateUnadjustedForLegacyClients:v13];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = [v6 attendees];
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        v18 = 0;
        do
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * v18);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = v19;
            [v20 setCommentChanged:0];
            [v20 setStatusChanged:0];
            [v20 setProposedStartDateChanged:0];
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }

    [v6 dismissAcceptedProposeNewTimeNotification];
    if ([v6 isOrWasPartOfRecurringSeries])
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __77__EKUIContextMenuActions__acceptProposedTimeForEvent_presentationController___block_invoke;
      v24[3] = &unk_1E8442260;
      v27 = a1;
      v25 = v6;
      v26 = v7;
      v21 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:v26 sourceView:0 sourceRect:v25 forEvent:v24 withCompletionHandler:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v22 = _presentedAlert;
      _presentedAlert = v21;

      v23 = v25;
    }

    else
    {
      v23 = [v7 EKUI_editor];
      [a1 _performSaveWithEvent:v6 span:0 editor:v23];
    }
  }
}

void __77__EKUIContextMenuActions__acceptProposedTimeForEvent_presentationController___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((a2 - 3) >= 3)
  {
    if (a2 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = a2 == 1;
    }

    v6 = _presentedAlert;
    _presentedAlert = 0;

    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) EKUI_editor];
    [v7 _performSaveWithEvent:v8 span:v4 editor:v9];
    v3 = v9;
  }

  else
  {
    v3 = _presentedAlert;
    _presentedAlert = 0;
  }
}

+ (id)_proposedDateForEvent:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 attendees];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          if ([v10 proposedStartDateStatus] == 1 || !objc_msgSend(v10, "proposedStartDateStatus"))
          {
            v11 = [v10 proposedStartDateForEvent:v3];
            if (v11)
            {
              v12 = v11;

              goto LABEL_15;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_15:

  return v12;
}

+ (void)deleteEvents:(id)a3 presentationController:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 EKUI_editor];
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v5];
  v9 = [MEMORY[0x1E695DFA8] set];
  v10 = [MEMORY[0x1E695DFA8] set];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v43;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v42 + 1) + 8 * i);
        v17 = [v16 isProposedTimeEvent];
        v18 = v10;
        if ((v17 & 1) == 0)
        {
          v19 = [v16 CUIK_deleteActionShouldDeclineEvent];
          v18 = v9;
          if (!v19)
          {
            continue;
          }
        }

        [v18 addObject:v16];
        [v8 removeObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v13);
  }

  if ([v11 count] == 1)
  {
    v20 = [v11 objectAtIndexedSubscript:0];
    v21 = [v20 status];

    v22 = v21 == 3;
    if (v21 == 3)
    {
      v23 = 19;
    }

    else
    {
      v23 = 18;
    }
  }

  else
  {
    v22 = 0;
    v23 = 18;
  }

  v24 = [[EKUIIntegrationAlertDisplayer alloc] initWithViewController:v6 options:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__EKUIContextMenuActions_deleteEvents_presentationController___block_invoke;
  aBlock[3] = &unk_1E84422D8;
  v35 = v7;
  v36 = v24;
  v41 = v22;
  v37 = v10;
  v38 = v9;
  v39 = v8;
  v40 = v6;
  v25 = v6;
  v26 = v8;
  v27 = v9;
  v28 = v10;
  v29 = v24;
  v30 = v7;
  v31 = _Block_copy(aBlock);
  v32 = [EKUIRecurrenceAlertController presentDeleteAlertWithOptions:v23 viewController:v25 forEvents:v11 withCompletionHandler:v31];
  v33 = _presentedAlert;
  _presentedAlert = v32;
}

void __62__EKUIContextMenuActions_deleteEvents_presentationController___block_invoke(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v15 = *MEMORY[0x1E69932E8];
  v16[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__EKUIContextMenuActions_deleteEvents_presentationController___block_invoke_2;
  v7[3] = &unk_1E84422B0;
  v13 = a2;
  v14 = *(a1 + 80);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  [v5 performWithOptions:v6 block:v7];
}

void __62__EKUIContextMenuActions_deleteEvents_presentationController___block_invoke_2(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 72);
  if (v2 > 2)
  {
    if ((v2 - 3) < 3)
    {
      v5 = _presentedAlert;
      _presentedAlert = 0;

      return;
    }

    v4 = 0;
  }

  else if (v2)
  {
    if (v2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    if (v2 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3;
    }
  }

  else if (*(a1 + 80))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  if ([*(a1 + 32) count])
  {
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v61;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v61 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v60 + 1) + 8 * i) setProposedStartDate:0];
        }

        v8 = [v6 countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v8);
    }

    [*(a1 + 40) saveChangesToEvents:*(a1 + 32) span:v4];
  }

  if ([*(a1 + 48) count])
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v11 = *(a1 + 48);
    v12 = [v11 countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v57;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v57 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v56 + 1) + 8 * j);
          [v16 setParticipationStatus:3];
          [v16 setInvitationStatus:0];
        }

        v13 = [v11 countByEnumeratingWithState:&v56 objects:v65 count:16];
      }

      while (v13);
    }

    [*(a1 + 40) saveChangesToEvents:*(a1 + 48) span:v4];
  }

  if ([*(a1 + 56) count])
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v17 = *(a1 + 56);
    v18 = [v17 countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (v18)
    {
      v19 = *v53;
      while (2)
      {
        for (k = 0; k != v18; ++k)
        {
          if (*v53 != v19)
          {
            objc_enumerationMutation(v17);
          }

          if ([*(*(&v52 + 1) + 8 * k) hasAttendees])
          {
            LODWORD(v18) = 1;
            goto LABEL_46;
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v52 objects:v64 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_46:

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__EKUIContextMenuActions_deleteEvents_presentationController___block_invoke_3;
    aBlock[3] = &unk_1E8441000;
    v49 = *(a1 + 56);
    v50 = *(a1 + 40);
    v51 = v4;
    v21 = _Block_copy(aBlock);
    v22 = v21;
    if (v18)
    {
      v23 = [*(a1 + 56) count];
      v24 = EventKitUIBundle();
      v25 = v24;
      if (v23 == 1)
      {
        v26 = @"Are you sure you want to delete this event?";
      }

      else
      {
        v26 = @"Are you sure you want to delete these events?";
      }

      if (v23 == 1)
      {
        v27 = @"Deleting this event will remove it from your calendar and notify the invitees that this event has been deleted. You can’t undo this action.";
      }

      else
      {
        v27 = @"Deleting these events will notify the invitees that the events have been deleted. You can’t undo this action.";
      }

      v28 = [v24 localizedStringForKey:v26 value:&stru_1F4EF6790 table:0];

      v29 = EventKitUIBundle();
      v30 = [v29 localizedStringForKey:v27 value:&stru_1F4EF6790 table:0];

      v31 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v28 message:v30 preferredStyle:1];
      v32 = MEMORY[0x1E69DC648];
      v33 = EventKitUIBundle();
      v34 = [v33 localizedStringForKey:@"Delete and Notify" value:&stru_1F4EF6790 table:0];
      v43 = MEMORY[0x1E69E9820];
      v44 = 3221225472;
      v45 = __62__EKUIContextMenuActions_deleteEvents_presentationController___block_invoke_4;
      v46 = &unk_1E8442288;
      v47 = v22;
      v35 = [v32 actionWithTitle:v34 style:2 handler:&v43];
      [v31 addAction:{v35, v43, v44, v45, v46}];

      v36 = MEMORY[0x1E69DC648];
      v37 = EventKitUIBundle();
      v38 = [v37 localizedStringForKey:@"Cancel - recurrence alert controller" value:@"Cancel" table:0];
      v39 = [v36 actionWithTitle:v38 style:1 handler:&__block_literal_global_534];
      [v31 addAction:v39];

      [*(a1 + 64) presentViewController:v31 animated:1 completion:0];
      v40 = _presentedAlert;
      _presentedAlert = v31;
      v41 = v31;
    }

    else
    {
      (*(v21 + 2))(v21);
    }
  }

  v42 = _presentedAlert;
  _presentedAlert = 0;
}

void __62__EKUIContextMenuActions_deleteEvents_presentationController___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [MEMORY[0x1E6966A10] sharedInstance];
        [v8 handleEventDeletion:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  [*(a1 + 40) deleteEvents:*(a1 + 32) span:*(a1 + 48)];
  v9 = _presentedAlert;
  _presentedAlert = 0;
}

void __62__EKUIContextMenuActions_deleteEvents_presentationController___block_invoke_5()
{
  v0 = _presentedAlert;
  _presentedAlert = 0;
}

+ (void)markReminders:(id)a3 completed:(BOOL)a4 editor:(id)a5
{
  v6 = a4;
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * i);
        if ([v15 isReminderIntegrationEvent] && objc_msgSend(v15, "CUIK_reminderShouldBeEditable") && objc_msgSend(v15, "completed") != v6)
        {
          [v15 setCompleted:v6];
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  [v8 saveChangesToEvents:v9 span:0];
}

+ (BOOL)remindersAllTogglable:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (![v8 isReminderIntegrationEvent] || !objc_msgSend(v8, "CUIK_reminderShouldBeEditable"))
        {
          v9 = 0;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 1;
  }

LABEL_13:

  return v9;
}

+ (BOOL)remindersAllCompleted:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v10 + 1) + 8 * i) completed])
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

+ (BOOL)eventsAllDeletable:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (![v8 isDeletable] || objc_msgSend(v8, "isExternallyOrganizedInvitation") && objc_msgSend(v8, "status") != 3 && objc_msgSend(v8, "participationStatus") != 3 && !objc_msgSend(v8, "isOrganizedBySharedCalendarOwner") || objc_msgSend(v8, "isReminderIntegrationEvent") && !objc_msgSend(v8, "CUIK_reminderShouldBeEditable"))
        {
          v9 = 0;
          goto LABEL_18;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 1;
  }

LABEL_18:

  return v9;
}

@end
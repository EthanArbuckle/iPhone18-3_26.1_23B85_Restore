@interface EKUIInviteeContextMenuData
- (EKUIInviteeContextMenuData)initWithDefaultActionsForSection:(id)a3 indexPath:(id)a4 participant:(id)a5 interaction:(id)a6 participantSetRole:(id)a7;
- (id)_buildCombinedCalendarAndContactsMenu;
- (void)_setupCalendarMenuForSection:(id)a3 indexPath:(id)a4 participant:(id)a5 participantSetRole:(id)a6;
- (void)_setupContactsOrbActionControllerForParticipant:(id)a3;
- (void)contactOrbActionsController:(id)a3 didUpdateWithMenu:(id)a4;
@end

@implementation EKUIInviteeContextMenuData

- (EKUIInviteeContextMenuData)initWithDefaultActionsForSection:(id)a3 indexPath:(id)a4 participant:(id)a5 interaction:(id)a6 participantSetRole:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = EKUIInviteeContextMenuData;
  v17 = [(EKUIInviteeContextMenuData *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_interaction, a6);
    [(EKUIInviteeContextMenuData *)v18 _setupContactsOrbActionControllerForParticipant:v14];
    [(EKUIInviteeContextMenuData *)v18 _setupCalendarMenuForSection:v12 indexPath:v13 participant:v14 participantSetRole:v16];
    v19 = [(EKUIInviteeContextMenuData *)v18 _buildCombinedCalendarAndContactsMenu];
    menu = v18->_menu;
    v18->_menu = v19;
  }

  return v18;
}

- (id)_buildCombinedCalendarAndContactsMenu
{
  v3 = [(EKUIInviteeContextMenuData *)self _contactsMenu];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count") + -[NSArray count](self->_calendarMenuStartItems, "count") + -[NSArray count](self->_calendarMenuEndItems, "count")}];
  [v4 addObjectsFromArray:self->_calendarMenuStartItems];
  [v4 addObjectsFromArray:v3];
  [v4 addObjectsFromArray:self->_calendarMenuEndItems];
  v5 = [MEMORY[0x1E69DCC60] menuWithChildren:v4];

  return v5;
}

- (void)_setupContactsOrbActionControllerForParticipant:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = EKWeakLinkClass();
  v6 = [v5 descriptorForRequiredKeys];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [EKIdentityViewController contactForIdentity:v4 keysToFetch:v7];

  v9 = [[v5 alloc] initWithContact:v8];
  [v9 setDelegate:self];
  contactActionsController = self->_contactActionsController;
  self->_contactActionsController = v9;
}

- (void)_setupCalendarMenuForSection:(id)a3 indexPath:(id)a4 participant:(id)a5 participantSetRole:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v45 = a6;
  v12 = [MEMORY[0x1E695DF70] array];
  v13 = [MEMORY[0x1E695DF70] array];
  v14 = MEMORY[0x1E69DC628];
  v15 = EventKitUIBundle();
  v16 = [v15 localizedStringForKey:@"View Contact" value:&stru_1F4EF6790 table:0];
  v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle"];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __100__EKUIInviteeContextMenuData__setupCalendarMenuForSection_indexPath_participant_participantSetRole___block_invoke;
  v57[3] = &unk_1E843F560;
  v18 = v9;
  v58 = v18;
  v19 = v10;
  v59 = v19;
  v20 = [v14 actionWithTitle:v16 image:v17 identifier:0 handler:v57];

  [(NSArray *)v12 addObject:v20];
  if ([v18 canEditRow:v19])
  {
    v21 = [v11 participantRole];
    v22 = EventKitUIBundle();
    v23 = v22;
    v43 = v11;
    if (v21 == 2)
    {
      v24 = [v22 localizedStringForKey:@"Make Required" value:&stru_1F4EF6790 table:0];

      v41 = MEMORY[0x1E69DC628];
      v25 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.fill.checkmark"];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __100__EKUIInviteeContextMenuData__setupCalendarMenuForSection_indexPath_participant_participantSetRole___block_invoke_2;
      v53[3] = &unk_1E843F588;
      v42 = &v56;
      v56 = v45;
      v26 = &v54;
      v27 = v11;
      v28 = v24;
      v54 = v27;
      v29 = &v55;
      v55 = v19;
      v30 = v53;
    }

    else
    {
      v24 = [v22 localizedStringForKey:@"Make Optional" value:&stru_1F4EF6790 table:0];

      v41 = MEMORY[0x1E69DC628];
      v25 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.fill.questionmark"];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __100__EKUIInviteeContextMenuData__setupCalendarMenuForSection_indexPath_participant_participantSetRole___block_invoke_3;
      v49[3] = &unk_1E843F588;
      v42 = &v52;
      v52 = v45;
      v26 = &v50;
      v31 = v11;
      v28 = v24;
      v50 = v31;
      v29 = &v51;
      v51 = v19;
      v30 = v49;
    }

    v32 = [v41 actionWithTitle:v24 image:v25 identifier:0 handler:v30];

    [(NSArray *)v12 addObject:v32];
    v33 = MEMORY[0x1E69DC628];
    v34 = [v18 titleForDeleteConfirmationButtonForRow:v19];
    v35 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __100__EKUIInviteeContextMenuData__setupCalendarMenuForSection_indexPath_participant_participantSetRole___block_invoke_4;
    v46[3] = &unk_1E843F560;
    v47 = v18;
    v48 = v19;
    v36 = [v33 actionWithTitle:v34 image:v35 identifier:0 handler:v46];

    [v36 setAttributes:2];
    [(NSArray *)v13 addObject:v36];

    v11 = v43;
  }

  calendarMenuStartItems = self->_calendarMenuStartItems;
  self->_calendarMenuStartItems = v12;
  v38 = v12;

  calendarMenuEndItems = self->_calendarMenuEndItems;
  self->_calendarMenuEndItems = v13;
  v40 = v13;
}

void __100__EKUIInviteeContextMenuData__setupCalendarMenuForSection_indexPath_participant_participantSetRole___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(*(a1 + 40), "section")}];
  (*(v2 + 16))(v2, v1, 1, v3);
}

void __100__EKUIInviteeContextMenuData__setupCalendarMenuForSection_indexPath_participant_participantSetRole___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(*(a1 + 40), "section")}];
  (*(v2 + 16))(v2, v1, 2, v3);
}

- (void)contactOrbActionsController:(id)a3 didUpdateWithMenu:(id)a4
{
  v5 = [(EKUIInviteeContextMenuData *)self _buildCombinedCalendarAndContactsMenu:a3];
  menu = self->_menu;
  self->_menu = v5;

  interaction = self->_interaction;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__EKUIInviteeContextMenuData_contactOrbActionsController_didUpdateWithMenu___block_invoke;
  v8[3] = &unk_1E843F5B0;
  v8[4] = self;
  [(UIContextMenuInteraction *)interaction updateVisibleMenuWithBlock:v8];
}

@end
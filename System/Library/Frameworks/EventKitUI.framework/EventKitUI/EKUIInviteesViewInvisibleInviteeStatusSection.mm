@interface EKUIInviteesViewInvisibleInviteeStatusSection
- (BOOL)canEditRow:(id)a3;
- (id)actionsForRow:(id)a3;
- (id)cellForIndexPath:(id)a3 inTableView:(id)a4;
- (id)contextMenuDataForIndexPath:(id)a3 interaction:(id)a4;
- (id)debugTitle;
- (id)titleForDeleteConfirmationButtonForRow:(id)a3;
- (unint64_t)numberOfRows;
- (void)commitEditingStyle:(int64_t)a3 forRow:(id)a4;
- (void)reloadAndRegisterReusableCellsWithTableView:(id)a3;
- (void)selectRow:(id)a3;
- (void)updateWithEvent:(id)a3 editable:(BOOL)a4 fromDetail:(BOOL)a5;
@end

@implementation EKUIInviteesViewInvisibleInviteeStatusSection

- (id)debugTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)numberOfRows
{
  v3 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participants];

  if (!v3)
  {
    return 0;
  }

  v4 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participants];
  v5 = [v4 count];

  return v5;
}

- (id)cellForIndexPath:(id)a3 inTableView:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 row];
  v9 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participants];
  v10 = [v9 count];
  if ([(EKUIInviteesViewInvisibleInviteeStatusSection *)self _isValidRow:v8])
  {
    v11 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self cachedCellReuseIdentifier];
    v12 = [v7 dequeueReusableCellWithIdentifier:v11 forIndexPath:v6];

    [(EKUIInviteesViewInviteesCell *)v12 setHideStatus:1];
    v13 = [v9 objectAtIndex:v8];
    v14 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self event];
    [(EKUIInviteesViewInviteesCell *)v12 updateWithParticipantForSorting:v13 hideStatus:CanSeeAttendeeStatuses(v14)];
  }

  else
  {
    v15 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      v16 = MEMORY[0x1E696AD98];
      v17 = v15;
      v18 = [v16 numberWithInteger:v8];
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
      v21 = 138412546;
      v22 = v18;
      v23 = 2112;
      v24 = v19;
      _os_log_impl(&dword_1D3400000, v17, OS_LOG_TYPE_ERROR, "A cell was requested for a nonexistent row.  Giving back a fresh cell.  Row: [%@].  Number of participants: [%@]", &v21, 0x16u);
    }

    v12 = objc_alloc_init(EKUIInviteesViewInviteesCell);
    [(EKUIInviteesViewInviteesCell *)v12 setHideStatus:1];
  }

  return v12;
}

- (void)reloadAndRegisterReusableCellsWithTableView:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = NSStringFromClass(v5);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewInvisibleInviteeStatusSection reuseIdentifierVersion](self, "reuseIdentifierVersion")}];
  v9 = [v6 initWithFormat:@"%@-%@", v7, v8];
  [(EKUIInviteesViewInvisibleInviteeStatusSection *)self setCachedCellReuseIdentifier:v9];

  v10 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self cachedCellReuseIdentifier];
  [v4 registerClass:v5 forCellReuseIdentifier:v10];

  v11 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self reuseIdentifierVersion]+ 1;

  [(EKUIInviteesViewInvisibleInviteeStatusSection *)self setReuseIdentifierVersion:v11];
}

- (void)selectRow:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 row];
  if ([(EKUIInviteesViewInvisibleInviteeStatusSection *)self _isValidRow:v5])
  {
    v6 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participants];
    v7 = [v6 objectAtIndex:v5];

    v8 = [v7 participant];
    if (v8)
    {
      v9 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participantTapped];

      if (v9)
      {
        v10 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participantTapped];
        (v10)[2](v10, v8);

LABEL_12:
        goto LABEL_13;
      }

      v12 = kEKUILogInviteesHandle;
      if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v14 = 138412290;
      v15 = v4;
      v13 = "No 'participant tapped' callback defined.  Will not select row.  Index path: [%@]";
    }

    else
    {
      v12 = kEKUILogInviteesHandle;
      if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v14 = 138412290;
      v15 = v4;
      v13 = "Cannot find participant.  Will not select row.  Index path: [%@]";
    }

    _os_log_impl(&dword_1D3400000, v12, OS_LOG_TYPE_ERROR, v13, &v14, 0xCu);
    goto LABEL_12;
  }

  v11 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_ERROR, "Cannot find row to select.  Will not select row.  Index path: [%@]", &v14, 0xCu);
  }

LABEL_13:
}

- (BOOL)canEditRow:(id)a3
{
  v4 = a3;
  if ([(EKUIInviteesViewInvisibleInviteeStatusSection *)self editable])
  {
    v5 = -[EKUIInviteesViewInvisibleInviteeStatusSection _isValidRow:](self, "_isValidRow:", [v4 row]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)titleForDeleteConfirmationButtonForRow:(id)a3
{
  v3 = EventKitUIBundle();
  v4 = [v3 localizedStringForKey:@"Remove invitee - invisible invitee status section" value:@"Remove" table:0];

  return v4;
}

- (void)commitEditingStyle:(int64_t)a3 forRow:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 row];
  if (a3 == 1)
  {
    v8 = v7;
    if ([(EKUIInviteesViewInvisibleInviteeStatusSection *)self _isValidRow:v7])
    {
      v9 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participantRemoved];

      if (v9)
      {
        v10 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participants];
        v11 = [v10 objectAtIndex:v8];

        v12 = [v11 participant];
        v13 = kEKUILogInviteesHandle;
        if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v28 = v12;
          v29 = 2112;
          v30 = v6;
          _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_DEBUG, "Invoking participant removed callback with participant [%@] and index path [%@]", buf, 0x16u);
        }

        v14 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participantRemoved];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __75__EKUIInviteesViewInvisibleInviteeStatusSection_commitEditingStyle_forRow___block_invoke;
        v22[3] = &unk_1E843EE88;
        v23 = v12;
        v24 = v6;
        v25 = self;
        v26 = v8;
        v15 = v14[2];
        v16 = v12;
        v15(v14, v16, v24, v22);
      }
    }

    else
    {
      v21 = kEKUILogInviteesHandle;
      if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = v6;
        _os_log_impl(&dword_1D3400000, v21, OS_LOG_TYPE_ERROR, "Received commit for nonexistent row: [%@]", buf, 0xCu);
      }
    }
  }

  else
  {
    v17 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      v18 = MEMORY[0x1E696AD98];
      v19 = v17;
      v20 = [v18 numberWithInteger:a3];
      *buf = 138412290;
      v28 = v20;
      _os_log_impl(&dword_1D3400000, v19, OS_LOG_TYPE_ERROR, "Received commit for unrecognized editing style: [%@]", buf, 0xCu);
    }
  }
}

void __75__EKUIInviteesViewInvisibleInviteeStatusSection_commitEditingStyle_forRow___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1D3400000, v2, OS_LOG_TYPE_DEBUG, "Removing participant [%@] at index path [%@] from EKUIInviteesViewInvisibleInviteeStatusSection", &v6, 0x16u);
  }

  v5 = [*(a1 + 48) participants];
  [v5 removeObjectAtIndex:*(a1 + 56)];
}

- (id)actionsForRow:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [EKUIInviteesViewSectionCommon deleteRowAction:self forRow:v4];
  v6 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participants];
  v7 = [v6 objectAtIndex:{objc_msgSend(v4, "row")}];

  v8 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participantSetRole];
  v9 = MEMORY[0x1E696AC90];
  v10 = [v4 section];

  v11 = [v9 indexSetWithIndex:v10];
  v12 = [EKUIInviteesViewSectionCommon setRoleRowActionWithParticipant:v7 withSetRoleBlock:v8 forSections:v11];

  v15[0] = v5;
  v15[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];

  return v13;
}

- (id)contextMenuDataForIndexPath:(id)a3 interaction:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participants];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
  v10 = [v9 participant];

  v11 = [EKUIInviteeContextMenuData alloc];
  v12 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participantSetRole];
  v13 = [(EKUIInviteeContextMenuData *)v11 initWithDefaultActionsForSection:self indexPath:v7 participant:v10 interaction:v6 participantSetRole:v12];

  return v13;
}

- (void)updateWithEvent:(id)a3 editable:(BOOL)a4 fromDetail:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  [(EKUIInviteesViewInvisibleInviteeStatusSection *)self setEvent:v8];
  if (CanSeeAttendeeStatuses(v8))
  {
    v9 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = self;
      _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_DEBUG, "Can see attendee statuses.  Will not analyze attendees for section: [%@]", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = [v8 organizer];
    v13 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self event];
    if (([v13 isExternallyOrganizedInvitation] & 1) == 0 && !-[EKUIInviteesViewInvisibleInviteeStatusSection editable](self, "editable"))
    {
      v5 = 0;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = v8;
    v14 = [v8 attendees];
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v23 + 1) + 8 * i);
          if ([v19 participantType] != 2 && (objc_msgSend(v19, "isEqualToParticipant:", v12) & 1) == 0 && (!v5 || (objc_msgSend(v19, "isNew") & 1) == 0))
          {
            v20 = [MEMORY[0x1E6966A88] participantForSortingWithEKParticipant:v19];
            [v11 addObject:v20];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v16);
    }

    v10 = [v11 sortedArrayUsingComparator:&__block_literal_global_28];

    v8 = v22;
    v6 = v6;
  }

  [(EKUIInviteesViewInvisibleInviteeStatusSection *)self setEditable:v6];
  v21 = [v10 mutableCopy];
  [(EKUIInviteesViewInvisibleInviteeStatusSection *)self setParticipants:v21];
}

@end
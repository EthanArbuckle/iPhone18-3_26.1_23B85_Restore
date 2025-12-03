@interface EKUIInviteesViewInvisibleInviteeStatusSection
- (BOOL)canEditRow:(id)row;
- (id)actionsForRow:(id)row;
- (id)cellForIndexPath:(id)path inTableView:(id)view;
- (id)contextMenuDataForIndexPath:(id)path interaction:(id)interaction;
- (id)debugTitle;
- (id)titleForDeleteConfirmationButtonForRow:(id)row;
- (unint64_t)numberOfRows;
- (void)commitEditingStyle:(int64_t)style forRow:(id)row;
- (void)reloadAndRegisterReusableCellsWithTableView:(id)view;
- (void)selectRow:(id)row;
- (void)updateWithEvent:(id)event editable:(BOOL)editable fromDetail:(BOOL)detail;
@end

@implementation EKUIInviteesViewInvisibleInviteeStatusSection

- (id)debugTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)numberOfRows
{
  participants = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participants];

  if (!participants)
  {
    return 0;
  }

  participants2 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participants];
  v5 = [participants2 count];

  return v5;
}

- (id)cellForIndexPath:(id)path inTableView:(id)view
{
  v25 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  viewCopy = view;
  v8 = [pathCopy row];
  participants = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participants];
  v10 = [participants count];
  if ([(EKUIInviteesViewInvisibleInviteeStatusSection *)self _isValidRow:v8])
  {
    cachedCellReuseIdentifier = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self cachedCellReuseIdentifier];
    v12 = [viewCopy dequeueReusableCellWithIdentifier:cachedCellReuseIdentifier forIndexPath:pathCopy];

    [(EKUIInviteesViewInviteesCell *)v12 setHideStatus:1];
    v13 = [participants objectAtIndex:v8];
    event = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self event];
    [(EKUIInviteesViewInviteesCell *)v12 updateWithParticipantForSorting:v13 hideStatus:CanSeeAttendeeStatuses(event)];
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

- (void)reloadAndRegisterReusableCellsWithTableView:(id)view
{
  viewCopy = view;
  v5 = objc_opt_class();
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = NSStringFromClass(v5);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewInvisibleInviteeStatusSection reuseIdentifierVersion](self, "reuseIdentifierVersion")}];
  v9 = [v6 initWithFormat:@"%@-%@", v7, v8];
  [(EKUIInviteesViewInvisibleInviteeStatusSection *)self setCachedCellReuseIdentifier:v9];

  cachedCellReuseIdentifier = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self cachedCellReuseIdentifier];
  [viewCopy registerClass:v5 forCellReuseIdentifier:cachedCellReuseIdentifier];

  v11 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self reuseIdentifierVersion]+ 1;

  [(EKUIInviteesViewInvisibleInviteeStatusSection *)self setReuseIdentifierVersion:v11];
}

- (void)selectRow:(id)row
{
  v16 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  v5 = [rowCopy row];
  if ([(EKUIInviteesViewInvisibleInviteeStatusSection *)self _isValidRow:v5])
  {
    participants = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participants];
    v7 = [participants objectAtIndex:v5];

    participant = [v7 participant];
    if (participant)
    {
      participantTapped = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participantTapped];

      if (participantTapped)
      {
        participantTapped2 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participantTapped];
        (participantTapped2)[2](participantTapped2, participant);

LABEL_12:
        goto LABEL_13;
      }

      v12 = kEKUILogInviteesHandle;
      if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v14 = 138412290;
      v15 = rowCopy;
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
      v15 = rowCopy;
      v13 = "Cannot find participant.  Will not select row.  Index path: [%@]";
    }

    _os_log_impl(&dword_1D3400000, v12, OS_LOG_TYPE_ERROR, v13, &v14, 0xCu);
    goto LABEL_12;
  }

  v11 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
  {
    v14 = 138412290;
    v15 = rowCopy;
    _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_ERROR, "Cannot find row to select.  Will not select row.  Index path: [%@]", &v14, 0xCu);
  }

LABEL_13:
}

- (BOOL)canEditRow:(id)row
{
  rowCopy = row;
  if ([(EKUIInviteesViewInvisibleInviteeStatusSection *)self editable])
  {
    v5 = -[EKUIInviteesViewInvisibleInviteeStatusSection _isValidRow:](self, "_isValidRow:", [rowCopy row]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)titleForDeleteConfirmationButtonForRow:(id)row
{
  v3 = EventKitUIBundle();
  v4 = [v3 localizedStringForKey:@"Remove invitee - invisible invitee status section" value:@"Remove" table:0];

  return v4;
}

- (void)commitEditingStyle:(int64_t)style forRow:(id)row
{
  v31 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  v7 = [rowCopy row];
  if (style == 1)
  {
    v8 = v7;
    if ([(EKUIInviteesViewInvisibleInviteeStatusSection *)self _isValidRow:v7])
    {
      participantRemoved = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participantRemoved];

      if (participantRemoved)
      {
        participants = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participants];
        v11 = [participants objectAtIndex:v8];

        participant = [v11 participant];
        v13 = kEKUILogInviteesHandle;
        if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v28 = participant;
          v29 = 2112;
          v30 = rowCopy;
          _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_DEBUG, "Invoking participant removed callback with participant [%@] and index path [%@]", buf, 0x16u);
        }

        participantRemoved2 = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participantRemoved];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __75__EKUIInviteesViewInvisibleInviteeStatusSection_commitEditingStyle_forRow___block_invoke;
        v22[3] = &unk_1E843EE88;
        v23 = participant;
        v24 = rowCopy;
        selfCopy = self;
        v26 = v8;
        v15 = participantRemoved2[2];
        v16 = participant;
        v15(participantRemoved2, v16, v24, v22);
      }
    }

    else
    {
      v21 = kEKUILogInviteesHandle;
      if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v28 = rowCopy;
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
      v20 = [v18 numberWithInteger:style];
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

- (id)actionsForRow:(id)row
{
  v15[2] = *MEMORY[0x1E69E9840];
  rowCopy = row;
  v5 = [EKUIInviteesViewSectionCommon deleteRowAction:self forRow:rowCopy];
  participants = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participants];
  v7 = [participants objectAtIndex:{objc_msgSend(rowCopy, "row")}];

  participantSetRole = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participantSetRole];
  v9 = MEMORY[0x1E696AC90];
  section = [rowCopy section];

  v11 = [v9 indexSetWithIndex:section];
  v12 = [EKUIInviteesViewSectionCommon setRoleRowActionWithParticipant:v7 withSetRoleBlock:participantSetRole forSections:v11];

  v15[0] = v5;
  v15[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];

  return v13;
}

- (id)contextMenuDataForIndexPath:(id)path interaction:(id)interaction
{
  interactionCopy = interaction;
  pathCopy = path;
  participants = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participants];
  v9 = [participants objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  participant = [v9 participant];

  v11 = [EKUIInviteeContextMenuData alloc];
  participantSetRole = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self participantSetRole];
  v13 = [(EKUIInviteeContextMenuData *)v11 initWithDefaultActionsForSection:self indexPath:pathCopy participant:participant interaction:interactionCopy participantSetRole:participantSetRole];

  return v13;
}

- (void)updateWithEvent:(id)event editable:(BOOL)editable fromDetail:(BOOL)detail
{
  detailCopy = detail;
  editableCopy = editable;
  v30 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  [(EKUIInviteesViewInvisibleInviteeStatusSection *)self setEvent:eventCopy];
  if (CanSeeAttendeeStatuses(eventCopy))
  {
    v9 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_DEBUG, "Can see attendee statuses.  Will not analyze attendees for section: [%@]", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    organizer = [eventCopy organizer];
    event = [(EKUIInviteesViewInvisibleInviteeStatusSection *)self event];
    if (([event isExternallyOrganizedInvitation] & 1) == 0 && !-[EKUIInviteesViewInvisibleInviteeStatusSection editable](self, "editable"))
    {
      detailCopy = 0;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = eventCopy;
    attendees = [eventCopy attendees];
    v15 = [attendees countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(attendees);
          }

          v19 = *(*(&v23 + 1) + 8 * i);
          if ([v19 participantType] != 2 && (objc_msgSend(v19, "isEqualToParticipant:", organizer) & 1) == 0 && (!detailCopy || (objc_msgSend(v19, "isNew") & 1) == 0))
          {
            v20 = [MEMORY[0x1E6966A88] participantForSortingWithEKParticipant:v19];
            [v11 addObject:v20];
          }
        }

        v16 = [attendees countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v16);
    }

    v10 = [v11 sortedArrayUsingComparator:&__block_literal_global_28];

    eventCopy = v22;
    editableCopy = editableCopy;
  }

  [(EKUIInviteesViewInvisibleInviteeStatusSection *)self setEditable:editableCopy];
  v21 = [v10 mutableCopy];
  [(EKUIInviteesViewInvisibleInviteeStatusSection *)self setParticipants:v21];
}

@end
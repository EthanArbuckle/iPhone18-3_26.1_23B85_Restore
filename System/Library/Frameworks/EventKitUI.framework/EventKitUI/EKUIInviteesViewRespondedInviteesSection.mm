@interface EKUIInviteesViewRespondedInviteesSection
+ (id)_participantAddressForParticipant:(id)participant;
- (BOOL)_isAddInviteesRow:(int64_t)row;
- (BOOL)_setOfAddressesToInflightOperationsContainsAddress:(id)address;
- (BOOL)canEditRow:(id)row;
- (BOOL)shouldIgnoreStatusBecauseDirtyDate:(id)date;
- (BOOL)shouldShowAddButton;
- (EKUIInviteesViewRespondedInviteesSection)initWithResponseType:(int)type;
- (id)_lookUpAvailabilityTypeForParticipantAddress:(id)address;
- (id)_lookUpParticipantIndexForParticipantAddress:(id)address;
- (id)actionsForRow:(id)row;
- (id)cellForIndexPath:(id)path inTableView:(id)view;
- (id)contextMenuDataForIndexPath:(id)path interaction:(id)interaction;
- (id)debugTitle;
- (id)headerTitle;
- (id)legacySortInviteesFromEvent:(id)event existingParticipants:(id)participants;
- (id)sortInviteesFromEvent:(id)event existingParticipants:(id)participants;
- (id)titleForDeleteConfirmationButtonForRow:(id)row;
- (unint64_t)numberOfRows;
- (void)_addAddressToSetOfAddressesToInflightOperations:(id)operations;
- (void)_removeAddressFromDictionaryOfAddressesToAvailabilityType:(id)type;
- (void)_removeAddressFromDictionaryOfAddressesToParticipantIndex:(id)index;
- (void)_removeAddressFromSetOfAddressesToInflightOperations:(id)operations;
- (void)_setAvailabilityType:(id)type forParticipantAddress:(id)address;
- (void)_setParticipantIndex:(id)index forParticipantAddress:(id)address;
- (void)_updateCell:(id)cell forParticipantAtIndex:(int64_t)index animated:(BOOL)animated;
- (void)_updateCellForParticipantWithAddress:(id)address;
- (void)availabilityRequestForConflicts:(id)conflicts event:(id)event;
- (void)cancelOutstandingOperations;
- (void)commitEditingStyle:(int64_t)style forRow:(id)row;
- (void)reloadAndRegisterReusableCellsWithTableView:(id)view;
- (void)selectRow:(id)row;
- (void)updateWithEvent:(id)event editable:(BOOL)editable;
@end

@implementation EKUIInviteesViewRespondedInviteesSection

- (EKUIInviteesViewRespondedInviteesSection)initWithResponseType:(int)type
{
  v20 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = EKUIInviteesViewRespondedInviteesSection;
  v4 = [(EKUIInviteesViewRespondedInviteesSection *)&v17 init];
  v5 = v4;
  if (v4)
  {
    v4->_responseType = type;
    if (CalSolariumEnabled())
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(EKUIInviteesViewRespondedInviteesSection *)v5 setParticipantAddressesToAvailabilityType:v6];

      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(EKUIInviteesViewRespondedInviteesSection *)v5 setParticipantAddressesToParticipantIndex:v7];

      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [(EKUIInviteesViewRespondedInviteesSection *)v5 setParticipantAddressesForInFlightAvailabilityOperations:v8];

      v9 = objc_alloc_init(MEMORY[0x1E696ADC8]);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.mobilecal.%@.availability", v11];
      [v9 setName:v12];

      [(EKUIInviteesViewRespondedInviteesSection *)v5 setAvailabilityRequestsQueue:v9];
      v13 = kEKUILogInviteesHandle;
      if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
      {
        v14 = v13;
        name = [v9 name];
        *buf = 138412290;
        v19 = name;
        _os_log_impl(&dword_1D3400000, v14, OS_LOG_TYPE_DEBUG, "Created availability queue named [%@]", buf, 0xCu);
      }
    }
  }

  return v5;
}

- (id)debugTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)headerTitle
{
  if (CalSolariumEnabled())
  {
    v3 = &stru_1F4EF6790;
  }

  else
  {
    responseType = [(EKUIInviteesViewRespondedInviteesSection *)self responseType];
    v5 = EventKitUIBundle();
    v6 = v5;
    if (responseType == 2)
    {
      v7 = @"Header_Maybe";
      v8 = @"Maybe";
    }

    else if (responseType == 1)
    {
      v7 = @"Header_Declined";
      v8 = @"Declined";
    }

    else if (responseType)
    {
      v7 = @"Header_Responded";
      v8 = @"Responded";
    }

    else
    {
      v7 = @"Header_Accepted";
      v8 = @"Accepted";
    }

    v3 = [v5 localizedStringForKey:v7 value:v8 table:0];
  }

  return v3;
}

- (unint64_t)numberOfRows
{
  if (CalSolariumEnabled() && [(EKUIInviteesViewRespondedInviteesSection *)self shouldShowAddButton])
  {
    participants = [(EKUIInviteesViewRespondedInviteesSection *)self participants];
    v4 = [participants count];

    if (!v4)
    {
      return 1;
    }

    participants2 = [(EKUIInviteesViewRespondedInviteesSection *)self participants];
    participants3 = ([participants2 count] + 1);
    goto LABEL_7;
  }

  participants3 = [(EKUIInviteesViewRespondedInviteesSection *)self participants];

  if (participants3)
  {
    participants2 = [(EKUIInviteesViewRespondedInviteesSection *)self participants];
    participants3 = [participants2 count];
LABEL_7:
  }

  return participants3;
}

- (id)cellForIndexPath:(id)path inTableView:(id)view
{
  v25 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  viewCopy = view;
  v8 = [pathCopy row];
  if ([(EKUIInviteesViewRespondedInviteesSection *)self _isValidRow:v8])
  {
    if ([(EKUIInviteesViewRespondedInviteesSection *)self _isAddInviteesRow:v8]&& [(EKUIInviteesViewRespondedInviteesSection *)self shouldShowAddButton])
    {
      cachedAddInviteeCellReuseIdentifier = [(EKUIInviteesViewRespondedInviteesSection *)self cachedAddInviteeCellReuseIdentifier];
      v10 = [viewCopy dequeueReusableCellWithIdentifier:cachedAddInviteeCellReuseIdentifier forIndexPath:pathCopy];

      [(EKUIInviteesViewInviteesCell *)v10 setSeparatorInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    }

    else
    {
      cachedCellReuseIdentifier = [(EKUIInviteesViewRespondedInviteesSection *)self cachedCellReuseIdentifier];
      v10 = [viewCopy dequeueReusableCellWithIdentifier:cachedCellReuseIdentifier forIndexPath:pathCopy];

      [(EKUIInviteesViewInviteesCell *)v10 setHideStatus:0];
      participants = [(EKUIInviteesViewRespondedInviteesSection *)self participants];
      v18 = [participants objectAtIndex:v8];

      event = [(EKUIInviteesViewRespondedInviteesSection *)self event];
      [(EKUIInviteesViewInviteesCell *)v10 updateWithParticipantForSorting:v18 hideStatus:CanSeeAttendeeStatuses(event)];
    }
  }

  else
  {
    v11 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AD98];
      v13 = v11;
      v14 = [v12 numberWithInteger:v8];
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewRespondedInviteesSection numberOfRows](self, "numberOfRows")}];
      v21 = 138412546;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_ERROR, "A cell was requested for a nonexistent row.  Giving back a fresh cell.  Row: [%@].  Number of rows: [%@]", &v21, 0x16u);
    }

    v10 = objc_alloc_init(EKUIInviteesViewInviteesCell);
  }

  return v10;
}

- (void)reloadAndRegisterReusableCellsWithTableView:(id)view
{
  viewCopy = view;
  v5 = objc_opt_class();
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = NSStringFromClass(v5);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewRespondedInviteesSection reuseIdentifierVersion](self, "reuseIdentifierVersion")}];
  v9 = [v6 initWithFormat:@"%@-%@", v7, v8];
  [(EKUIInviteesViewRespondedInviteesSection *)self setCachedCellReuseIdentifier:v9];

  cachedCellReuseIdentifier = [(EKUIInviteesViewRespondedInviteesSection *)self cachedCellReuseIdentifier];
  [viewCopy registerClass:v5 forCellReuseIdentifier:cachedCellReuseIdentifier];

  v11 = objc_opt_class();
  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = NSStringFromClass(v11);
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewRespondedInviteesSection reuseIdentifierVersion](self, "reuseIdentifierVersion")}];
  v15 = [v12 initWithFormat:@"%@-%@", v13, v14];
  [(EKUIInviteesViewRespondedInviteesSection *)self setCachedAddInviteeCellReuseIdentifier:v15];

  cachedAddInviteeCellReuseIdentifier = [(EKUIInviteesViewRespondedInviteesSection *)self cachedAddInviteeCellReuseIdentifier];
  [viewCopy registerClass:v11 forCellReuseIdentifier:cachedAddInviteeCellReuseIdentifier];

  v17 = [(EKUIInviteesViewRespondedInviteesSection *)self reuseIdentifierVersion]+ 1;

  [(EKUIInviteesViewRespondedInviteesSection *)self setReuseIdentifierVersion:v17];
}

- (void)selectRow:(id)row
{
  v23 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  v5 = [rowCopy row];
  if ([(EKUIInviteesViewRespondedInviteesSection *)self _isValidRow:v5])
  {
    if ([(EKUIInviteesViewRespondedInviteesSection *)self _isAddInviteesRow:v5]&& [(EKUIInviteesViewRespondedInviteesSection *)self shouldShowAddButton])
    {
      addInviteesTapped = [(EKUIInviteesViewRespondedInviteesSection *)self addInviteesTapped];

      if (addInviteesTapped)
      {
        addInviteesTapped2 = [(EKUIInviteesViewRespondedInviteesSection *)self addInviteesTapped];
        addInviteesTapped2[2]();
LABEL_18:

        goto LABEL_19;
      }

      v8 = kEKUILogInviteesHandle;
      if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v19 = 138412290;
      v20 = rowCopy;
      v9 = "No 'add invitees tapped' callback defined.  Will not select row.  Index path: [%@]";
      goto LABEL_8;
    }

    participants = [(EKUIInviteesViewRespondedInviteesSection *)self participants];
    addInviteesTapped2 = [participants objectAtIndex:v5];

    participant = [addInviteesTapped2 participant];
    if (participant)
    {
      participantTapped = [(EKUIInviteesViewRespondedInviteesSection *)self participantTapped];

      if (participantTapped)
      {
        participantTapped2 = [(EKUIInviteesViewRespondedInviteesSection *)self participantTapped];
        (participantTapped2)[2](participantTapped2, participant);

LABEL_17:
        goto LABEL_18;
      }

      v18 = kEKUILogInviteesHandle;
      if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v19 = 138412290;
      v20 = rowCopy;
      v15 = "No 'participant tapped' callback defined.  Will not select row.  Index path: [%@]";
      v16 = v18;
      v17 = 12;
    }

    else
    {
      v14 = kEKUILogInviteesHandle;
      if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v19 = 138412546;
      v20 = rowCopy;
      v21 = 2112;
      v22 = addInviteesTapped2;
      v15 = "Cannot find participant.  Index path: [%@]  Participant for sorting: [%@]";
      v16 = v14;
      v17 = 22;
    }

    _os_log_impl(&dword_1D3400000, v16, OS_LOG_TYPE_ERROR, v15, &v19, v17);
    goto LABEL_17;
  }

  v8 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
  {
    v19 = 138412290;
    v20 = rowCopy;
    v9 = "Cannot find row to select.  Index path: [%@]";
LABEL_8:
    _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_ERROR, v9, &v19, 0xCu);
  }

LABEL_19:
}

- (BOOL)canEditRow:(id)row
{
  rowCopy = row;
  if (-[EKUIInviteesViewRespondedInviteesSection editable](self, "editable") && -[EKUIInviteesViewRespondedInviteesSection _isValidRow:](self, "_isValidRow:", [rowCopy row]))
  {
    v5 = !-[EKUIInviteesViewRespondedInviteesSection _isAddInviteesRow:](self, "_isAddInviteesRow:", [rowCopy row]);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)titleForDeleteConfirmationButtonForRow:(id)row
{
  v3 = EventKitUIBundle();
  v4 = [v3 localizedStringForKey:@"Remove invitee - responded invitees section" value:@"Remove" table:0];

  return v4;
}

- (void)commitEditingStyle:(int64_t)style forRow:(id)row
{
  v32 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  v7 = [rowCopy row];
  if (style == 1)
  {
    v8 = v7;
    if ([(EKUIInviteesViewRespondedInviteesSection *)self _isValidRow:v7])
    {
      participantRemoved = [(EKUIInviteesViewRespondedInviteesSection *)self participantRemoved];

      if (participantRemoved)
      {
        participants = [(EKUIInviteesViewRespondedInviteesSection *)self participants];
        v11 = [participants objectAtIndex:v8];

        participant = [v11 participant];
        v13 = kEKUILogInviteesHandle;
        if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v29 = participant;
          v30 = 2112;
          v31 = rowCopy;
          _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_DEBUG, "Invoking participant removed callback with participant [%@] and index path [%@]", buf, 0x16u);
        }

        participantRemoved2 = [(EKUIInviteesViewRespondedInviteesSection *)self participantRemoved];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __70__EKUIInviteesViewRespondedInviteesSection_commitEditingStyle_forRow___block_invoke;
        v23[3] = &unk_1E843EE88;
        v24 = participant;
        v25 = rowCopy;
        selfCopy = self;
        v27 = v8;
        v15 = participantRemoved2[2];
        v16 = participant;
        v15(participantRemoved2, v16, v25, v23);

        goto LABEL_14;
      }

      v21 = kEKUILogInviteesHandle;
      if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 138412290;
      v29 = rowCopy;
      v22 = "No 'participant removed' callback defined.  Will not remove participant.  Index path: [%@]";
    }

    else
    {
      v21 = kEKUILogInviteesHandle;
      if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 138412290;
      v29 = rowCopy;
      v22 = "Received commit for nonexistent row: [%@]";
    }

    _os_log_impl(&dword_1D3400000, v21, OS_LOG_TYPE_ERROR, v22, buf, 0xCu);
    goto LABEL_14;
  }

  v17 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
  {
    v18 = MEMORY[0x1E696AD98];
    v19 = v17;
    v20 = [v18 numberWithInteger:style];
    *buf = 138412290;
    v29 = v20;
    _os_log_impl(&dword_1D3400000, v19, OS_LOG_TYPE_ERROR, "Received commit for unrecognized editing style: [%@]", buf, 0xCu);
  }

LABEL_14:
}

void __70__EKUIInviteesViewRespondedInviteesSection_commitEditingStyle_forRow___block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_1D3400000, v2, OS_LOG_TYPE_DEBUG, "Removing participant [%@] at index path [%@] from EKUIInviteesViewRespondedInviteesSection", &v6, 0x16u);
  }

  v5 = [*(a1 + 48) participants];
  [v5 removeObjectAtIndex:*(a1 + 56)];
}

- (void)_updateCellForParticipantWithAddress:(id)address
{
  v20 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  v5 = [(EKUIInviteesViewRespondedInviteesSection *)self _lookUpParticipantIndexForParticipantAddress:addressCopy];
  if (!v5)
  {
    v10 = kEKUILogInviteesHandle;
    if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v16 = 138412290;
    v17 = addressCopy;
    v11 = "Could not find participant index.  Will not update cell for address: [%@].";
LABEL_9:
    _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_ERROR, v11, &v16, 0xCu);
    goto LABEL_13;
  }

  tableViewCellHook = [(EKUIInviteesViewRespondedInviteesSection *)self tableViewCellHook];

  if (!tableViewCellHook)
  {
    v10 = kEKUILogInviteesHandle;
    if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v16 = 138412290;
    v17 = addressCopy;
    v11 = "No 'table view cell hook' callback defined.  Will not update cell for address: [%@].";
    goto LABEL_9;
  }

  integerValue = [v5 integerValue];
  tableViewCellHook2 = [(EKUIInviteesViewRespondedInviteesSection *)self tableViewCellHook];
  v9 = tableViewCellHook2[2](tableViewCellHook2, integerValue);

  if (v9)
  {
    [(EKUIInviteesViewRespondedInviteesSection *)self _updateCell:v9 forParticipantAtIndex:integerValue animated:1];
  }

  else
  {
    v12 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      v13 = MEMORY[0x1E696AD98];
      v14 = v12;
      v15 = [v13 numberWithInteger:integerValue];
      v16 = 138412546;
      v17 = v15;
      v18 = 2112;
      v19 = addressCopy;
      _os_log_impl(&dword_1D3400000, v14, OS_LOG_TYPE_DEBUG, "Could not find cell for index: [%@].  It may be offscreen.  Will not update cell for address: [%@].", &v16, 0x16u);
    }
  }

LABEL_13:
}

- (void)_updateCell:(id)cell forParticipantAtIndex:(int64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  v26 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  participants = [(EKUIInviteesViewRespondedInviteesSection *)self participants];
  v10 = [participants objectAtIndex:index];

  participant = [v10 participant];
  v12 = [objc_opt_class() _participantAddressForParticipant:participant];
  if (v12)
  {
    v13 = [(EKUIInviteesViewRespondedInviteesSection *)self _lookUpAvailabilityTypeForParticipantAddress:v12];
    v14 = v13;
    if (v13)
    {
      integerValue = [v13 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    v17 = MEMORY[0x1E6966988];
    event = [(EKUIInviteesViewRespondedInviteesSection *)self event];
    v19 = [v17 availabilityPanelVisibilityForEvent:event];

    if (v19)
    {
      integerValue = 3;
    }

    v20 = [(EKUIInviteesViewRespondedInviteesSection *)self _setOfAddressesToInflightOperationsContainsAddress:v12];
    event2 = [(EKUIInviteesViewRespondedInviteesSection *)self event];
    [cellCopy updateWithParticipantForSorting:v10 availabilityType:integerValue hideStatus:CanSeeAttendeeStatuses(event2) showSpinner:v20 animated:animatedCopy];
  }

  else
  {
    v16 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      v22 = 138412546;
      v23 = participant;
      v24 = 2112;
      v25 = cellCopy;
      _os_log_impl(&dword_1D3400000, v16, OS_LOG_TYPE_ERROR, "Could not find address for participant: [%@].  Will not update cell: [%@]", &v22, 0x16u);
    }
  }
}

- (void)cancelOutstandingOperations
{
  availabilityRequestsQueue = [(EKUIInviteesViewRespondedInviteesSection *)self availabilityRequestsQueue];
  [availabilityRequestsQueue cancelAllOperations];
}

- (id)actionsForRow:(id)row
{
  v13[2] = *MEMORY[0x1E69E9840];
  rowCopy = row;
  if (-[EKUIInviteesViewRespondedInviteesSection _isAddInviteesRow:](self, "_isAddInviteesRow:", [rowCopy row]))
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v6 = [EKUIInviteesViewSectionCommon deleteRowAction:self forRow:rowCopy];
    participants = [(EKUIInviteesViewRespondedInviteesSection *)self participants];
    v8 = [participants objectAtIndex:{objc_msgSend(rowCopy, "row")}];

    participantSetRole = [(EKUIInviteesViewRespondedInviteesSection *)self participantSetRole];
    v10 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(rowCopy, "section")}];
    v11 = [EKUIInviteesViewSectionCommon setRoleRowActionWithParticipant:v8 withSetRoleBlock:participantSetRole forSections:v10];

    v13[0] = v6;
    v13[1] = v11;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  }

  return v5;
}

- (id)contextMenuDataForIndexPath:(id)path interaction:(id)interaction
{
  interactionCopy = interaction;
  pathCopy = path;
  participants = [(EKUIInviteesViewRespondedInviteesSection *)self participants];
  v9 = [participants objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  participant = [v9 participant];

  v11 = [EKUIInviteeContextMenuData alloc];
  participantSetRole = [(EKUIInviteesViewRespondedInviteesSection *)self participantSetRole];
  v13 = [(EKUIInviteeContextMenuData *)v11 initWithDefaultActionsForSection:self indexPath:pathCopy participant:participant interaction:interactionCopy participantSetRole:participantSetRole];

  return v13;
}

- (void)updateWithEvent:(id)event editable:(BOOL)editable
{
  editableCopy = editable;
  v27 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  [(EKUIInviteesViewRespondedInviteesSection *)self setEvent:eventCopy];
  if ((CanSeeAttendeeStatuses(eventCopy) & 1) == 0)
  {
    v11 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      v21 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_DEBUG, "Cannot see attendee statuses.  Will not analyze attendees for section: [%@]", &v21, 0xCu);
    }

    goto LABEL_7;
  }

  if ([(EKUIInviteesViewRespondedInviteesSection *)self shouldIgnoreStatusBecauseDirtyDate:eventCopy])
  {
    v7 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
      [eventCopy isStartDateDirty];
      v9 = CalBooleanAsString();
      [eventCopy isEndDateDirty];
      v10 = CalBooleanAsString();
      v21 = 138412802;
      selfCopy2 = self;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_DEBUG, "This event has a dirty date, thus invitee responses are invalid for this time.  Will not show section: [%@].  Start date is dirty: [%@].  End date is dirty: [%@]", &v21, 0x20u);
    }

LABEL_7:
    v12 = 0;
    goto LABEL_12;
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  organizer = [eventCopy organizer];
  v15 = MEMORY[0x1E6966A58];
  attendees = [eventCopy attendees];
  eventStore = [organizer eventStore];
  v18 = [v15 objectsIDsExistingInStoreFromObjects:attendees eventStore:eventStore];

  if (CalSolariumEnabled())
  {
    v12 = [(EKUIInviteesViewRespondedInviteesSection *)self sortInviteesFromEvent:eventCopy existingParticipants:v18];
  }

  else
  {
    v19 = [(EKUIInviteesViewRespondedInviteesSection *)self legacySortInviteesFromEvent:eventCopy existingParticipants:v18];

    v12 = [v19 sortedArrayUsingComparator:&__block_literal_global_3];
    v13 = v19;
  }

LABEL_12:
  [(EKUIInviteesViewRespondedInviteesSection *)self setEditable:editableCopy];
  v20 = [v12 mutableCopy];
  [(EKUIInviteesViewRespondedInviteesSection *)self setParticipants:v20];
}

- (id)sortInviteesFromEvent:(id)event existingParticipants:(id)participants
{
  v45 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  participantsCopy = participants;
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  attendees = [eventCopy attendees];
  v7 = [attendees countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(attendees);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        if ([v11 participantType] != 2)
        {
          organizer = [eventCopy organizer];
          v13 = [v11 isEqualToParticipant:organizer];

          if ((v13 & 1) == 0)
          {
            v14 = [MEMORY[0x1E6966A88] participantForSortingWithEKParticipant:v11];
            if (EKUIAttendeeUtils_AttendeeHasResponded(v11) && ([v11 CADObjectID], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(participantsCopy, "containsObject:", v15), v15, v16))
            {
              participantStatus = [v11 participantStatus];
              v18 = v35;
              if (participantStatus != 3)
              {
                v18 = v34;
              }

              if (participantStatus == 2)
              {
                v19 = v36;
              }

              else
              {
                v19 = v18;
              }

LABEL_16:
              [v19 addObject:v14];
            }

            else
            {
              participantType = [v11 participantType];
              v19 = v38;
              if (participantType != 2)
              {
                goto LABEL_16;
              }
            }

            continue;
          }
        }
      }

      v8 = [attendees countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v8);
  }

  v21 = [v36 sortedArrayUsingComparator:&__block_literal_global_63];
  v22 = [v35 sortedArrayUsingComparator:&__block_literal_global_65];
  v23 = [v34 sortedArrayUsingComparator:&__block_literal_global_67];
  v24 = [v38 sortedArrayUsingComparator:&__block_literal_global_69];
  [v33 addObjectsFromArray:v21];
  [v33 addObjectsFromArray:v23];
  v31 = v22;
  [v33 addObjectsFromArray:v22];
  [v33 addObjectsFromArray:v24];
  objc_storeStrong(&self->_pendingParticipants, v24);
  calendar = [eventCopy calendar];
  source = [calendar source];
  constraints = [source constraints];
  supportsAvailabilityRequests = [constraints supportsAvailabilityRequests];

  if (supportsAvailabilityRequests)
  {
    if ([v24 count])
    {
      [(EKUIInviteesViewRespondedInviteesSection *)self availabilityRequestForConflicts:v24 event:eventCopy];
    }
  }

  else
  {
    v29 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1D3400000, v29, OS_LOG_TYPE_DEBUG, "The event's source does not support availability requests.  Will not issue any.", buf, 2u);
    }
  }

  return v33;
}

- (id)legacySortInviteesFromEvent:(id)event existingParticipants:(id)participants
{
  v27 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  participantsCopy = participants;
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  attendees = [eventCopy attendees];
  v9 = [attendees countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(attendees);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if ([v13 participantType] != 2)
        {
          organizer = [eventCopy organizer];
          v15 = [v13 isEqualToParticipant:organizer];

          if ((v15 & 1) == 0)
          {
            if (EKUIAttendeeUtils_AttendeeHasResponded(v13))
            {
              cADObjectID = [v13 CADObjectID];
              v17 = [participantsCopy containsObject:cADObjectID];

              if (v17)
              {
                v18 = [MEMORY[0x1E6966A88] participantForSortingWithEKParticipant:v13];
                participantStatus = [v13 participantStatus];
                if (([(EKUIInviteesViewRespondedInviteesSection *)self responseType]|| participantStatus == 2) && ([(EKUIInviteesViewRespondedInviteesSection *)self responseType]!= 1 || participantStatus == 3) && ([(EKUIInviteesViewRespondedInviteesSection *)self responseType]!= 2 || (participantStatus & 0xFFFFFFFFFFFFFFFELL) != 2))
                {
                  [v21 addObject:v18];
                }
              }
            }
          }
        }
      }

      v10 = [attendees countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  return v21;
}

- (void)availabilityRequestForConflicts:(id)conflicts event:(id)event
{
  v37 = *MEMORY[0x1E69E9840];
  conflictsCopy = conflicts;
  eventCopy = event;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = conflictsCopy;
  v8 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        participant = [*(*(&v30 + 1) + 8 * i) participant];
        v13 = [objc_opt_class() _participantAddressForParticipant:participant];
        if (v13)
        {
          [v7 addObject:v13];
          v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:v9];
          [(EKUIInviteesViewRespondedInviteesSection *)self _setParticipantIndex:v14 forParticipantAddress:v13];
          [(EKUIInviteesViewRespondedInviteesSection *)self _addAddressToSetOfAddressesToInflightOperations:v13];
        }

        else
        {
          v15 = kEKUILogInviteesHandle;
          if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v35 = participant;
            _os_log_impl(&dword_1D3400000, v15, OS_LOG_TYPE_DEBUG, "Could not find address for participant: [%@].  Will not include this participant in final list of participants.", buf, 0xCu);
          }
        }

        ++v9;
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v8);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__EKUIInviteesViewRespondedInviteesSection_availabilityRequestForConflicts_event___block_invoke;
  aBlock[3] = &unk_1E843EFE0;
  aBlock[4] = self;
  v16 = _Block_copy(aBlock);
  calendar = [eventCopy calendar];
  source = [calendar source];

  startDate = [eventCopy startDate];
  endDateUnadjustedForLegacyClients = [eventCopy endDateUnadjustedForLegacyClients];
  v21 = [objc_alloc(MEMORY[0x1E6966AE0]) initWithSource:source startDate:startDate endDate:endDateUnadjustedForLegacyClients ignoredEvent:eventCopy addresses:v7 resultsBlock:v16];
  objc_initWeak(buf, self);
  objc_initWeak(&location, v21);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __82__EKUIInviteesViewRespondedInviteesSection_availabilityRequestForConflicts_event___block_invoke_4;
  v25[3] = &unk_1E843F008;
  objc_copyWeak(&v26, &location);
  objc_copyWeak(&v27, buf);
  [v21 setCompletionBlock:v25];
  availabilityRequestsQueue = [(EKUIInviteesViewRespondedInviteesSection *)self availabilityRequestsQueue];
  [availabilityRequestsQueue addOperation:v21];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

void __82__EKUIInviteesViewRespondedInviteesSection_availabilityRequestForConflicts_event___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__EKUIInviteesViewRespondedInviteesSection_availabilityRequestForConflicts_event___block_invoke_2;
  v6[3] = &unk_1E843EFB8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __82__EKUIInviteesViewRespondedInviteesSection_availabilityRequestForConflicts_event___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __82__EKUIInviteesViewRespondedInviteesSection_availabilityRequestForConflicts_event___block_invoke_3;
  v3[3] = &unk_1E843EF90;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void __82__EKUIInviteesViewRespondedInviteesSection_availabilityRequestForConflicts_event___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([*(a1 + 32) _setOfAddressesToInflightOperationsContainsAddress:v8])
  {
    v6 = [MEMORY[0x1E6966988] summarizedAvailabilityTypeForSpans:v5];
    v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:v6];
    [*(a1 + 32) _setAvailabilityType:v7 forParticipantAddress:v8];
    [*(a1 + 32) _removeAddressFromSetOfAddressesToInflightOperations:v8];
    [*(a1 + 32) _updateCellForParticipantWithAddress:v8];
  }
}

void __82__EKUIInviteesViewRespondedInviteesSection_availabilityRequestForConflicts_event___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  if (!v3)
  {
    v4 = kEKUILogInviteesHandle;
    if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v5 = "self went away.  Will not proceed.";
LABEL_9:
    _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_DEBUG, v5, buf, 2u);
    goto LABEL_10;
  }

  if (!WeakRetained)
  {
    v4 = kEKUILogInviteesHandle;
    if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v5 = "The availability operation went away.  Will not proceed.";
    goto LABEL_9;
  }

  if (([WeakRetained isCancelled] & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__EKUIInviteesViewRespondedInviteesSection_availabilityRequestForConflicts_event___block_invoke_73;
    block[3] = &unk_1E843EC60;
    block[4] = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

LABEL_10:
}

void __82__EKUIInviteesViewRespondedInviteesSection_availabilityRequestForConflicts_event___block_invoke_73(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) participantAddressesForInFlightAvailabilityOperations];
  v3 = [v2 copy];

  v4 = [*(a1 + 32) participantAddressesForInFlightAvailabilityOperations];
  [v4 removeAllObjects];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) _updateCellForParticipantWithAddress:{*(*(&v10 + 1) + 8 * v9++), v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)_isAddInviteesRow:(int64_t)row
{
  participants = [(EKUIInviteesViewRespondedInviteesSection *)self participants];
  LOBYTE(row) = [participants count] == row;

  return row;
}

- (BOOL)shouldShowAddButton
{
  v3 = CalSolariumEnabled();
  if (v3)
  {
    event = [(EKUIInviteesViewRespondedInviteesSection *)self event];
    allowsAttendeesModifications = [event allowsAttendeesModifications];

    LOBYTE(v3) = allowsAttendeesModifications;
  }

  return v3;
}

- (BOOL)shouldIgnoreStatusBecauseDirtyDate:(id)date
{
  dateCopy = date;
  if (CalSolariumEnabled() && ([dateCopy isNew] & 1) != 0)
  {
    isEndDateDirty = 0;
  }

  else if ([dateCopy isStartDateDirty])
  {
    isEndDateDirty = 1;
  }

  else
  {
    isEndDateDirty = [dateCopy isEndDateDirty];
  }

  return isEndDateDirty;
}

+ (id)_participantAddressForParticipant:(id)participant
{
  participantCopy = participant;
  v4 = participantCopy;
  if (participantCopy)
  {
    v5 = [participantCopy URL];
    absoluteString = [v5 absoluteString];
  }

  else
  {
    v7 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_ERROR, "No participant given.  Will not return address.", v9, 2u);
    }

    absoluteString = 0;
  }

  return absoluteString;
}

- (id)_lookUpAvailabilityTypeForParticipantAddress:(id)address
{
  addressCopy = address;
  participantAddressesToAvailabilityType = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToAvailabilityType];
  v6 = [participantAddressesToAvailabilityType objectForKey:addressCopy];

  if (!v6)
  {
    v7 = EKUtils_AdjustedAttendeeAddress();
    participantAddressesToAvailabilityType2 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToAvailabilityType];
    v6 = [participantAddressesToAvailabilityType2 objectForKey:v7];
  }

  return v6;
}

- (void)_setAvailabilityType:(id)type forParticipantAddress:(id)address
{
  addressCopy = address;
  typeCopy = type;
  participantAddressesToAvailabilityType = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToAvailabilityType];
  [participantAddressesToAvailabilityType setObject:typeCopy forKey:addressCopy];

  v10 = EKUtils_AdjustedAttendeeAddress();

  participantAddressesToAvailabilityType2 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToAvailabilityType];
  [participantAddressesToAvailabilityType2 setObject:typeCopy forKey:v10];
}

- (void)_removeAddressFromDictionaryOfAddressesToAvailabilityType:(id)type
{
  typeCopy = type;
  participantAddressesToAvailabilityType = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToAvailabilityType];
  [participantAddressesToAvailabilityType removeObjectForKey:typeCopy];

  v7 = EKUtils_AdjustedAttendeeAddress();

  participantAddressesToAvailabilityType2 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToAvailabilityType];
  [participantAddressesToAvailabilityType2 removeObjectForKey:v7];
}

- (id)_lookUpParticipantIndexForParticipantAddress:(id)address
{
  addressCopy = address;
  participantAddressesToParticipantIndex = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToParticipantIndex];
  v6 = [participantAddressesToParticipantIndex objectForKey:addressCopy];

  if (!v6)
  {
    v7 = EKUtils_AdjustedAttendeeAddress();
    participantAddressesToParticipantIndex2 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToParticipantIndex];
    v6 = [participantAddressesToParticipantIndex2 objectForKey:v7];
  }

  return v6;
}

- (void)_removeAddressFromDictionaryOfAddressesToParticipantIndex:(id)index
{
  indexCopy = index;
  participantAddressesToParticipantIndex = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToParticipantIndex];
  [participantAddressesToParticipantIndex removeObjectForKey:indexCopy];

  v7 = EKUtils_AdjustedAttendeeAddress();

  participantAddressesToParticipantIndex2 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToParticipantIndex];
  [participantAddressesToParticipantIndex2 removeObjectForKey:v7];
}

- (void)_setParticipantIndex:(id)index forParticipantAddress:(id)address
{
  addressCopy = address;
  indexCopy = index;
  participantAddressesToParticipantIndex = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToParticipantIndex];
  [participantAddressesToParticipantIndex setObject:indexCopy forKey:addressCopy];

  v10 = EKUtils_AdjustedAttendeeAddress();

  participantAddressesToParticipantIndex2 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToParticipantIndex];
  [participantAddressesToParticipantIndex2 setObject:indexCopy forKey:v10];
}

- (void)_removeAddressFromSetOfAddressesToInflightOperations:(id)operations
{
  operationsCopy = operations;
  participantAddressesForInFlightAvailabilityOperations = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [participantAddressesForInFlightAvailabilityOperations removeObject:operationsCopy];

  v7 = EKUtils_AdjustedAttendeeAddress();

  participantAddressesForInFlightAvailabilityOperations2 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [participantAddressesForInFlightAvailabilityOperations2 removeObject:v7];
}

- (void)_addAddressToSetOfAddressesToInflightOperations:(id)operations
{
  operationsCopy = operations;
  participantAddressesForInFlightAvailabilityOperations = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [participantAddressesForInFlightAvailabilityOperations addObject:operationsCopy];

  v7 = EKUtils_AdjustedAttendeeAddress();

  participantAddressesForInFlightAvailabilityOperations2 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [participantAddressesForInFlightAvailabilityOperations2 addObject:v7];
}

- (BOOL)_setOfAddressesToInflightOperationsContainsAddress:(id)address
{
  addressCopy = address;
  participantAddressesForInFlightAvailabilityOperations = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  v6 = [participantAddressesForInFlightAvailabilityOperations containsObject:addressCopy];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = EKUtils_AdjustedAttendeeAddress();
    participantAddressesForInFlightAvailabilityOperations2 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
    v7 = [participantAddressesForInFlightAvailabilityOperations2 containsObject:v8];
  }

  return v7;
}

@end
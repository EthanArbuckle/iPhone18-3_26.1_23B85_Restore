@interface EKUIInviteesViewRespondedInviteesSection
+ (id)_participantAddressForParticipant:(id)a3;
- (BOOL)_isAddInviteesRow:(int64_t)a3;
- (BOOL)_setOfAddressesToInflightOperationsContainsAddress:(id)a3;
- (BOOL)canEditRow:(id)a3;
- (BOOL)shouldIgnoreStatusBecauseDirtyDate:(id)a3;
- (BOOL)shouldShowAddButton;
- (EKUIInviteesViewRespondedInviteesSection)initWithResponseType:(int)a3;
- (id)_lookUpAvailabilityTypeForParticipantAddress:(id)a3;
- (id)_lookUpParticipantIndexForParticipantAddress:(id)a3;
- (id)actionsForRow:(id)a3;
- (id)cellForIndexPath:(id)a3 inTableView:(id)a4;
- (id)contextMenuDataForIndexPath:(id)a3 interaction:(id)a4;
- (id)debugTitle;
- (id)headerTitle;
- (id)legacySortInviteesFromEvent:(id)a3 existingParticipants:(id)a4;
- (id)sortInviteesFromEvent:(id)a3 existingParticipants:(id)a4;
- (id)titleForDeleteConfirmationButtonForRow:(id)a3;
- (unint64_t)numberOfRows;
- (void)_addAddressToSetOfAddressesToInflightOperations:(id)a3;
- (void)_removeAddressFromDictionaryOfAddressesToAvailabilityType:(id)a3;
- (void)_removeAddressFromDictionaryOfAddressesToParticipantIndex:(id)a3;
- (void)_removeAddressFromSetOfAddressesToInflightOperations:(id)a3;
- (void)_setAvailabilityType:(id)a3 forParticipantAddress:(id)a4;
- (void)_setParticipantIndex:(id)a3 forParticipantAddress:(id)a4;
- (void)_updateCell:(id)a3 forParticipantAtIndex:(int64_t)a4 animated:(BOOL)a5;
- (void)_updateCellForParticipantWithAddress:(id)a3;
- (void)availabilityRequestForConflicts:(id)a3 event:(id)a4;
- (void)cancelOutstandingOperations;
- (void)commitEditingStyle:(int64_t)a3 forRow:(id)a4;
- (void)reloadAndRegisterReusableCellsWithTableView:(id)a3;
- (void)selectRow:(id)a3;
- (void)updateWithEvent:(id)a3 editable:(BOOL)a4;
@end

@implementation EKUIInviteesViewRespondedInviteesSection

- (EKUIInviteesViewRespondedInviteesSection)initWithResponseType:(int)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = EKUIInviteesViewRespondedInviteesSection;
  v4 = [(EKUIInviteesViewRespondedInviteesSection *)&v17 init];
  v5 = v4;
  if (v4)
  {
    v4->_responseType = a3;
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
        v15 = [v9 name];
        *buf = 138412290;
        v19 = v15;
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
    v4 = [(EKUIInviteesViewRespondedInviteesSection *)self responseType];
    v5 = EventKitUIBundle();
    v6 = v5;
    if (v4 == 2)
    {
      v7 = @"Header_Maybe";
      v8 = @"Maybe";
    }

    else if (v4 == 1)
    {
      v7 = @"Header_Declined";
      v8 = @"Declined";
    }

    else if (v4)
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
    v3 = [(EKUIInviteesViewRespondedInviteesSection *)self participants];
    v4 = [v3 count];

    if (!v4)
    {
      return 1;
    }

    v5 = [(EKUIInviteesViewRespondedInviteesSection *)self participants];
    v6 = ([v5 count] + 1);
    goto LABEL_7;
  }

  v6 = [(EKUIInviteesViewRespondedInviteesSection *)self participants];

  if (v6)
  {
    v5 = [(EKUIInviteesViewRespondedInviteesSection *)self participants];
    v6 = [v5 count];
LABEL_7:
  }

  return v6;
}

- (id)cellForIndexPath:(id)a3 inTableView:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 row];
  if ([(EKUIInviteesViewRespondedInviteesSection *)self _isValidRow:v8])
  {
    if ([(EKUIInviteesViewRespondedInviteesSection *)self _isAddInviteesRow:v8]&& [(EKUIInviteesViewRespondedInviteesSection *)self shouldShowAddButton])
    {
      v9 = [(EKUIInviteesViewRespondedInviteesSection *)self cachedAddInviteeCellReuseIdentifier];
      v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

      [(EKUIInviteesViewInviteesCell *)v10 setSeparatorInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    }

    else
    {
      v16 = [(EKUIInviteesViewRespondedInviteesSection *)self cachedCellReuseIdentifier];
      v10 = [v7 dequeueReusableCellWithIdentifier:v16 forIndexPath:v6];

      [(EKUIInviteesViewInviteesCell *)v10 setHideStatus:0];
      v17 = [(EKUIInviteesViewRespondedInviteesSection *)self participants];
      v18 = [v17 objectAtIndex:v8];

      v19 = [(EKUIInviteesViewRespondedInviteesSection *)self event];
      [(EKUIInviteesViewInviteesCell *)v10 updateWithParticipantForSorting:v18 hideStatus:CanSeeAttendeeStatuses(v19)];
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

- (void)reloadAndRegisterReusableCellsWithTableView:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = NSStringFromClass(v5);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewRespondedInviteesSection reuseIdentifierVersion](self, "reuseIdentifierVersion")}];
  v9 = [v6 initWithFormat:@"%@-%@", v7, v8];
  [(EKUIInviteesViewRespondedInviteesSection *)self setCachedCellReuseIdentifier:v9];

  v10 = [(EKUIInviteesViewRespondedInviteesSection *)self cachedCellReuseIdentifier];
  [v4 registerClass:v5 forCellReuseIdentifier:v10];

  v11 = objc_opt_class();
  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = NSStringFromClass(v11);
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewRespondedInviteesSection reuseIdentifierVersion](self, "reuseIdentifierVersion")}];
  v15 = [v12 initWithFormat:@"%@-%@", v13, v14];
  [(EKUIInviteesViewRespondedInviteesSection *)self setCachedAddInviteeCellReuseIdentifier:v15];

  v16 = [(EKUIInviteesViewRespondedInviteesSection *)self cachedAddInviteeCellReuseIdentifier];
  [v4 registerClass:v11 forCellReuseIdentifier:v16];

  v17 = [(EKUIInviteesViewRespondedInviteesSection *)self reuseIdentifierVersion]+ 1;

  [(EKUIInviteesViewRespondedInviteesSection *)self setReuseIdentifierVersion:v17];
}

- (void)selectRow:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 row];
  if ([(EKUIInviteesViewRespondedInviteesSection *)self _isValidRow:v5])
  {
    if ([(EKUIInviteesViewRespondedInviteesSection *)self _isAddInviteesRow:v5]&& [(EKUIInviteesViewRespondedInviteesSection *)self shouldShowAddButton])
    {
      v6 = [(EKUIInviteesViewRespondedInviteesSection *)self addInviteesTapped];

      if (v6)
      {
        v7 = [(EKUIInviteesViewRespondedInviteesSection *)self addInviteesTapped];
        v7[2]();
LABEL_18:

        goto LABEL_19;
      }

      v8 = kEKUILogInviteesHandle;
      if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v19 = 138412290;
      v20 = v4;
      v9 = "No 'add invitees tapped' callback defined.  Will not select row.  Index path: [%@]";
      goto LABEL_8;
    }

    v10 = [(EKUIInviteesViewRespondedInviteesSection *)self participants];
    v7 = [v10 objectAtIndex:v5];

    v11 = [v7 participant];
    if (v11)
    {
      v12 = [(EKUIInviteesViewRespondedInviteesSection *)self participantTapped];

      if (v12)
      {
        v13 = [(EKUIInviteesViewRespondedInviteesSection *)self participantTapped];
        (v13)[2](v13, v11);

LABEL_17:
        goto LABEL_18;
      }

      v18 = kEKUILogInviteesHandle;
      if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v19 = 138412290;
      v20 = v4;
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
      v20 = v4;
      v21 = 2112;
      v22 = v7;
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
    v20 = v4;
    v9 = "Cannot find row to select.  Index path: [%@]";
LABEL_8:
    _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_ERROR, v9, &v19, 0xCu);
  }

LABEL_19:
}

- (BOOL)canEditRow:(id)a3
{
  v4 = a3;
  if (-[EKUIInviteesViewRespondedInviteesSection editable](self, "editable") && -[EKUIInviteesViewRespondedInviteesSection _isValidRow:](self, "_isValidRow:", [v4 row]))
  {
    v5 = !-[EKUIInviteesViewRespondedInviteesSection _isAddInviteesRow:](self, "_isAddInviteesRow:", [v4 row]);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)titleForDeleteConfirmationButtonForRow:(id)a3
{
  v3 = EventKitUIBundle();
  v4 = [v3 localizedStringForKey:@"Remove invitee - responded invitees section" value:@"Remove" table:0];

  return v4;
}

- (void)commitEditingStyle:(int64_t)a3 forRow:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 row];
  if (a3 == 1)
  {
    v8 = v7;
    if ([(EKUIInviteesViewRespondedInviteesSection *)self _isValidRow:v7])
    {
      v9 = [(EKUIInviteesViewRespondedInviteesSection *)self participantRemoved];

      if (v9)
      {
        v10 = [(EKUIInviteesViewRespondedInviteesSection *)self participants];
        v11 = [v10 objectAtIndex:v8];

        v12 = [v11 participant];
        v13 = kEKUILogInviteesHandle;
        if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v29 = v12;
          v30 = 2112;
          v31 = v6;
          _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_DEBUG, "Invoking participant removed callback with participant [%@] and index path [%@]", buf, 0x16u);
        }

        v14 = [(EKUIInviteesViewRespondedInviteesSection *)self participantRemoved];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __70__EKUIInviteesViewRespondedInviteesSection_commitEditingStyle_forRow___block_invoke;
        v23[3] = &unk_1E843EE88;
        v24 = v12;
        v25 = v6;
        v26 = self;
        v27 = v8;
        v15 = v14[2];
        v16 = v12;
        v15(v14, v16, v25, v23);

        goto LABEL_14;
      }

      v21 = kEKUILogInviteesHandle;
      if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 138412290;
      v29 = v6;
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
      v29 = v6;
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
    v20 = [v18 numberWithInteger:a3];
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

- (void)_updateCellForParticipantWithAddress:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EKUIInviteesViewRespondedInviteesSection *)self _lookUpParticipantIndexForParticipantAddress:v4];
  if (!v5)
  {
    v10 = kEKUILogInviteesHandle;
    if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v16 = 138412290;
    v17 = v4;
    v11 = "Could not find participant index.  Will not update cell for address: [%@].";
LABEL_9:
    _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_ERROR, v11, &v16, 0xCu);
    goto LABEL_13;
  }

  v6 = [(EKUIInviteesViewRespondedInviteesSection *)self tableViewCellHook];

  if (!v6)
  {
    v10 = kEKUILogInviteesHandle;
    if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v16 = 138412290;
    v17 = v4;
    v11 = "No 'table view cell hook' callback defined.  Will not update cell for address: [%@].";
    goto LABEL_9;
  }

  v7 = [v5 integerValue];
  v8 = [(EKUIInviteesViewRespondedInviteesSection *)self tableViewCellHook];
  v9 = v8[2](v8, v7);

  if (v9)
  {
    [(EKUIInviteesViewRespondedInviteesSection *)self _updateCell:v9 forParticipantAtIndex:v7 animated:1];
  }

  else
  {
    v12 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      v13 = MEMORY[0x1E696AD98];
      v14 = v12;
      v15 = [v13 numberWithInteger:v7];
      v16 = 138412546;
      v17 = v15;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_1D3400000, v14, OS_LOG_TYPE_DEBUG, "Could not find cell for index: [%@].  It may be offscreen.  Will not update cell for address: [%@].", &v16, 0x16u);
    }
  }

LABEL_13:
}

- (void)_updateCell:(id)a3 forParticipantAtIndex:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(EKUIInviteesViewRespondedInviteesSection *)self participants];
  v10 = [v9 objectAtIndex:a4];

  v11 = [v10 participant];
  v12 = [objc_opt_class() _participantAddressForParticipant:v11];
  if (v12)
  {
    v13 = [(EKUIInviteesViewRespondedInviteesSection *)self _lookUpAvailabilityTypeForParticipantAddress:v12];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 integerValue];
    }

    else
    {
      v15 = 0;
    }

    v17 = MEMORY[0x1E6966988];
    v18 = [(EKUIInviteesViewRespondedInviteesSection *)self event];
    v19 = [v17 availabilityPanelVisibilityForEvent:v18];

    if (v19)
    {
      v15 = 3;
    }

    v20 = [(EKUIInviteesViewRespondedInviteesSection *)self _setOfAddressesToInflightOperationsContainsAddress:v12];
    v21 = [(EKUIInviteesViewRespondedInviteesSection *)self event];
    [v8 updateWithParticipantForSorting:v10 availabilityType:v15 hideStatus:CanSeeAttendeeStatuses(v21) showSpinner:v20 animated:v5];
  }

  else
  {
    v16 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      v22 = 138412546;
      v23 = v11;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_1D3400000, v16, OS_LOG_TYPE_ERROR, "Could not find address for participant: [%@].  Will not update cell: [%@]", &v22, 0x16u);
    }
  }
}

- (void)cancelOutstandingOperations
{
  v2 = [(EKUIInviteesViewRespondedInviteesSection *)self availabilityRequestsQueue];
  [v2 cancelAllOperations];
}

- (id)actionsForRow:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (-[EKUIInviteesViewRespondedInviteesSection _isAddInviteesRow:](self, "_isAddInviteesRow:", [v4 row]))
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v6 = [EKUIInviteesViewSectionCommon deleteRowAction:self forRow:v4];
    v7 = [(EKUIInviteesViewRespondedInviteesSection *)self participants];
    v8 = [v7 objectAtIndex:{objc_msgSend(v4, "row")}];

    v9 = [(EKUIInviteesViewRespondedInviteesSection *)self participantSetRole];
    v10 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v4, "section")}];
    v11 = [EKUIInviteesViewSectionCommon setRoleRowActionWithParticipant:v8 withSetRoleBlock:v9 forSections:v10];

    v13[0] = v6;
    v13[1] = v11;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  }

  return v5;
}

- (id)contextMenuDataForIndexPath:(id)a3 interaction:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EKUIInviteesViewRespondedInviteesSection *)self participants];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
  v10 = [v9 participant];

  v11 = [EKUIInviteeContextMenuData alloc];
  v12 = [(EKUIInviteesViewRespondedInviteesSection *)self participantSetRole];
  v13 = [(EKUIInviteeContextMenuData *)v11 initWithDefaultActionsForSection:self indexPath:v7 participant:v10 interaction:v6 participantSetRole:v12];

  return v13;
}

- (void)updateWithEvent:(id)a3 editable:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(EKUIInviteesViewRespondedInviteesSection *)self setEvent:v6];
  if ((CanSeeAttendeeStatuses(v6) & 1) == 0)
  {
    v11 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      v21 = 138412290;
      v22 = self;
      _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_DEBUG, "Cannot see attendee statuses.  Will not analyze attendees for section: [%@]", &v21, 0xCu);
    }

    goto LABEL_7;
  }

  if ([(EKUIInviteesViewRespondedInviteesSection *)self shouldIgnoreStatusBecauseDirtyDate:v6])
  {
    v7 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
      [v6 isStartDateDirty];
      v9 = CalBooleanAsString();
      [v6 isEndDateDirty];
      v10 = CalBooleanAsString();
      v21 = 138412802;
      v22 = self;
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
  v14 = [v6 organizer];
  v15 = MEMORY[0x1E6966A58];
  v16 = [v6 attendees];
  v17 = [v14 eventStore];
  v18 = [v15 objectsIDsExistingInStoreFromObjects:v16 eventStore:v17];

  if (CalSolariumEnabled())
  {
    v12 = [(EKUIInviteesViewRespondedInviteesSection *)self sortInviteesFromEvent:v6 existingParticipants:v18];
  }

  else
  {
    v19 = [(EKUIInviteesViewRespondedInviteesSection *)self legacySortInviteesFromEvent:v6 existingParticipants:v18];

    v12 = [v19 sortedArrayUsingComparator:&__block_literal_global_3];
    v13 = v19;
  }

LABEL_12:
  [(EKUIInviteesViewRespondedInviteesSection *)self setEditable:v4];
  v20 = [v12 mutableCopy];
  [(EKUIInviteesViewRespondedInviteesSection *)self setParticipants:v20];
}

- (id)sortInviteesFromEvent:(id)a3 existingParticipants:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v37 = a4;
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = [v5 attendees];
  v7 = [v6 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        if ([v11 participantType] != 2)
        {
          v12 = [v5 organizer];
          v13 = [v11 isEqualToParticipant:v12];

          if ((v13 & 1) == 0)
          {
            v14 = [MEMORY[0x1E6966A88] participantForSortingWithEKParticipant:v11];
            if (EKUIAttendeeUtils_AttendeeHasResponded(v11) && ([v11 CADObjectID], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v37, "containsObject:", v15), v15, v16))
            {
              v17 = [v11 participantStatus];
              v18 = v35;
              if (v17 != 3)
              {
                v18 = v34;
              }

              if (v17 == 2)
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
              v20 = [v11 participantType];
              v19 = v38;
              if (v20 != 2)
              {
                goto LABEL_16;
              }
            }

            continue;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
  v25 = [v5 calendar];
  v26 = [v25 source];
  v27 = [v26 constraints];
  v28 = [v27 supportsAvailabilityRequests];

  if (v28)
  {
    if ([v24 count])
    {
      [(EKUIInviteesViewRespondedInviteesSection *)self availabilityRequestForConflicts:v24 event:v5];
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

- (id)legacySortInviteesFromEvent:(id)a3 existingParticipants:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [v6 attendees];
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if ([v13 participantType] != 2)
        {
          v14 = [v6 organizer];
          v15 = [v13 isEqualToParticipant:v14];

          if ((v15 & 1) == 0)
          {
            if (EKUIAttendeeUtils_AttendeeHasResponded(v13))
            {
              v16 = [v13 CADObjectID];
              v17 = [v7 containsObject:v16];

              if (v17)
              {
                v18 = [MEMORY[0x1E6966A88] participantForSortingWithEKParticipant:v13];
                v19 = [v13 participantStatus];
                if (([(EKUIInviteesViewRespondedInviteesSection *)self responseType]|| v19 == 2) && ([(EKUIInviteesViewRespondedInviteesSection *)self responseType]!= 1 || v19 == 3) && ([(EKUIInviteesViewRespondedInviteesSection *)self responseType]!= 2 || (v19 & 0xFFFFFFFFFFFFFFFELL) != 2))
                {
                  [v21 addObject:v18];
                }
              }
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  return v21;
}

- (void)availabilityRequestForConflicts:(id)a3 event:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v23 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v6;
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

        v12 = [*(*(&v30 + 1) + 8 * i) participant];
        v13 = [objc_opt_class() _participantAddressForParticipant:v12];
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
            v35 = v12;
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
  v17 = [v23 calendar];
  v18 = [v17 source];

  v19 = [v23 startDate];
  v20 = [v23 endDateUnadjustedForLegacyClients];
  v21 = [objc_alloc(MEMORY[0x1E6966AE0]) initWithSource:v18 startDate:v19 endDate:v20 ignoredEvent:v23 addresses:v7 resultsBlock:v16];
  objc_initWeak(buf, self);
  objc_initWeak(&location, v21);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __82__EKUIInviteesViewRespondedInviteesSection_availabilityRequestForConflicts_event___block_invoke_4;
  v25[3] = &unk_1E843F008;
  objc_copyWeak(&v26, &location);
  objc_copyWeak(&v27, buf);
  [v21 setCompletionBlock:v25];
  v22 = [(EKUIInviteesViewRespondedInviteesSection *)self availabilityRequestsQueue];
  [v22 addOperation:v21];

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

- (BOOL)_isAddInviteesRow:(int64_t)a3
{
  v4 = [(EKUIInviteesViewRespondedInviteesSection *)self participants];
  LOBYTE(a3) = [v4 count] == a3;

  return a3;
}

- (BOOL)shouldShowAddButton
{
  v3 = CalSolariumEnabled();
  if (v3)
  {
    v4 = [(EKUIInviteesViewRespondedInviteesSection *)self event];
    v5 = [v4 allowsAttendeesModifications];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)shouldIgnoreStatusBecauseDirtyDate:(id)a3
{
  v3 = a3;
  if (CalSolariumEnabled() && ([v3 isNew] & 1) != 0)
  {
    v4 = 0;
  }

  else if ([v3 isStartDateDirty])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEndDateDirty];
  }

  return v4;
}

+ (id)_participantAddressForParticipant:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 URL];
    v6 = [v5 absoluteString];
  }

  else
  {
    v7 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_ERROR, "No participant given.  Will not return address.", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (id)_lookUpAvailabilityTypeForParticipantAddress:(id)a3
{
  v4 = a3;
  v5 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToAvailabilityType];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = EKUtils_AdjustedAttendeeAddress();
    v8 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToAvailabilityType];
    v6 = [v8 objectForKey:v7];
  }

  return v6;
}

- (void)_setAvailabilityType:(id)a3 forParticipantAddress:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToAvailabilityType];
  [v8 setObject:v7 forKey:v6];

  v10 = EKUtils_AdjustedAttendeeAddress();

  v9 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToAvailabilityType];
  [v9 setObject:v7 forKey:v10];
}

- (void)_removeAddressFromDictionaryOfAddressesToAvailabilityType:(id)a3
{
  v4 = a3;
  v5 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToAvailabilityType];
  [v5 removeObjectForKey:v4];

  v7 = EKUtils_AdjustedAttendeeAddress();

  v6 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToAvailabilityType];
  [v6 removeObjectForKey:v7];
}

- (id)_lookUpParticipantIndexForParticipantAddress:(id)a3
{
  v4 = a3;
  v5 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToParticipantIndex];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = EKUtils_AdjustedAttendeeAddress();
    v8 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToParticipantIndex];
    v6 = [v8 objectForKey:v7];
  }

  return v6;
}

- (void)_removeAddressFromDictionaryOfAddressesToParticipantIndex:(id)a3
{
  v4 = a3;
  v5 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToParticipantIndex];
  [v5 removeObjectForKey:v4];

  v7 = EKUtils_AdjustedAttendeeAddress();

  v6 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToParticipantIndex];
  [v6 removeObjectForKey:v7];
}

- (void)_setParticipantIndex:(id)a3 forParticipantAddress:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToParticipantIndex];
  [v8 setObject:v7 forKey:v6];

  v10 = EKUtils_AdjustedAttendeeAddress();

  v9 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesToParticipantIndex];
  [v9 setObject:v7 forKey:v10];
}

- (void)_removeAddressFromSetOfAddressesToInflightOperations:(id)a3
{
  v4 = a3;
  v5 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [v5 removeObject:v4];

  v7 = EKUtils_AdjustedAttendeeAddress();

  v6 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [v6 removeObject:v7];
}

- (void)_addAddressToSetOfAddressesToInflightOperations:(id)a3
{
  v4 = a3;
  v5 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [v5 addObject:v4];

  v7 = EKUtils_AdjustedAttendeeAddress();

  v6 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [v6 addObject:v7];
}

- (BOOL)_setOfAddressesToInflightOperationsContainsAddress:(id)a3
{
  v4 = a3;
  v5 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = EKUtils_AdjustedAttendeeAddress();
    v9 = [(EKUIInviteesViewRespondedInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
    v7 = [v9 containsObject:v8];
  }

  return v7;
}

@end
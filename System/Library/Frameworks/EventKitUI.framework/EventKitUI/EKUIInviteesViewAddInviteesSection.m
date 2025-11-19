@interface EKUIInviteesViewAddInviteesSection
+ (id)_participantAddressForParticipant:(id)a3;
- (BOOL)_isAddInviteesRow:(int64_t)a3;
- (BOOL)_setOfAddressesToInflightOperationsContainsAddress:(id)a3;
- (BOOL)canEditRow:(id)a3;
- (BOOL)hasPendingParticipants;
- (BOOL)sectionShouldBeShown;
- (EKUIInviteesViewAddInviteesSection)init;
- (double)estimatedHeightForRow:(id)a3;
- (double)heightForRow:(id)a3;
- (id)_lookUpAvailabilityTypeForParticipantAddress:(id)a3;
- (id)_lookUpParticipantIndexForParticipantAddress:(id)a3;
- (id)actionsForRow:(id)a3;
- (id)cellForIndexPath:(id)a3 inTableView:(id)a4;
- (id)contextMenuDataForIndexPath:(id)a3 interaction:(id)a4;
- (id)debugTitle;
- (id)headerTitle;
- (id)titleForDeleteConfirmationButtonForRow:(id)a3;
- (unint64_t)numberOfRows;
- (void)_addAddressToSetOfAddressesToInflightOperations:(id)a3;
- (void)_removeAddressFromDictionaryOfAddressesToAvailabilityType:(id)a3;
- (void)_removeAddressFromDictionaryOfAddressesToParticipantIndex:(id)a3;
- (void)_removeAddressFromSetOfAddressesToInflightOperations:(id)a3;
- (void)_removeParticipantAtIndexPath:(id)a3;
- (void)_setAvailabilityType:(id)a3 forParticipantAddress:(id)a4;
- (void)_setParticipantIndex:(id)a3 forParticipantAddress:(id)a4;
- (void)_updateCell:(id)a3 forParticipantAtIndex:(int64_t)a4 animated:(BOOL)a5;
- (void)_updateCellForParticipantWithAddress:(id)a3;
- (void)cancelOutstandingOperations;
- (void)commitEditingStyle:(int64_t)a3 forRow:(id)a4;
- (void)dealloc;
- (void)reloadAndRegisterReusableCellsWithTableView:(id)a3;
- (void)selectRow:(id)a3;
- (void)updateWithEvent:(id)a3 showPending:(BOOL)a4;
@end

@implementation EKUIInviteesViewAddInviteesSection

- (EKUIInviteesViewAddInviteesSection)init
{
  v17 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = EKUIInviteesViewAddInviteesSection;
  v2 = [(EKUIInviteesViewAddInviteesSection *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(EKUIInviteesViewAddInviteesSection *)v2 setParticipantAddressesToAvailabilityType:v3];

    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(EKUIInviteesViewAddInviteesSection *)v2 setParticipantAddressesToParticipantIndex:v4];

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(EKUIInviteesViewAddInviteesSection *)v2 setParticipantAddressesForInFlightAvailabilityOperations:v5];

    v6 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.mobilecal.%@.availability", v8];
    [v6 setName:v9];

    [(EKUIInviteesViewAddInviteesSection *)v2 setAvailabilityRequestsQueue:v6];
    v10 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      v11 = v10;
      v12 = [v6 name];
      *buf = 138412290;
      v16 = v12;
      _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_DEBUG, "Created availability queue named [%@]", buf, 0xCu);
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(EKUIInviteesViewAddInviteesSection *)self availabilityRequestsQueue];
  [v3 cancelAllOperations];

  v4.receiver = self;
  v4.super_class = EKUIInviteesViewAddInviteesSection;
  [(EKUIInviteesViewAddInviteesSection *)&v4 dealloc];
}

- (id)debugTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)headerTitle
{
  v2 = [(EKUIInviteesViewAddInviteesSection *)self participants];
  v3 = [v2 count];

  if (v3)
  {
    v4 = EventKitUIBundle();
    v5 = [v4 localizedStringForKey:@"Pending" value:&stru_1F4EF6790 table:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)sectionShouldBeShown
{
  if (CalSolariumEnabled())
  {
    return 0;
  }

  v4 = [(EKUIInviteesViewAddInviteesSection *)self event];
  v5 = [v4 allowsAttendeesModifications];

  return v5;
}

- (unint64_t)numberOfRows
{
  v3 = [(EKUIInviteesViewAddInviteesSection *)self participants];
  v4 = [v3 count];

  if (!v4)
  {
    return 1;
  }

  v5 = [(EKUIInviteesViewAddInviteesSection *)self participants];
  v6 = [v5 count] + 1;

  return v6;
}

- (id)cellForIndexPath:(id)a3 inTableView:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 row];
  if ([(EKUIInviteesViewAddInviteesSection *)self _isValidRow:v8])
  {
    if ([(EKUIInviteesViewAddInviteesSection *)self _isAddInviteesRow:v8])
    {
      v9 = [(EKUIInviteesViewAddInviteesSection *)self cachedAddInviteeCellReuseIdentifier];
      v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

      [(EKUIInviteesViewInviteesCell *)v10 setSeparatorInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    }

    else
    {
      v16 = [(EKUIInviteesViewAddInviteesSection *)self cachedInviteeCellReuseIdentifier];
      v10 = [v7 dequeueReusableCellWithIdentifier:v16 forIndexPath:v6];

      -[EKUIInviteesViewAddInviteesSection _updateCell:forParticipantAtIndex:animated:](self, "_updateCell:forParticipantAtIndex:animated:", v10, [v6 row], 0);
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
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewAddInviteesSection numberOfRows](self, "numberOfRows")}];
      v19 = 138412546;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_ERROR, "A cell was requested for a nonexistent row.  Giving back a fresh cell.  Row: [%@].  Number of rows: [%@]", &v19, 0x16u);
    }

    v10 = objc_alloc_init(EKUIInviteesViewInviteesCell);
  }

  if (EKUICatalyst())
  {
    v17 = [v7 backgroundColor];
    [(EKUIInviteesViewInviteesCell *)v10 setBackgroundColor:v17];
  }

  return v10;
}

- (void)reloadAndRegisterReusableCellsWithTableView:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = NSStringFromClass(v5);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewAddInviteesSection reuseIdentifierVersion](self, "reuseIdentifierVersion")}];
  v9 = [v6 initWithFormat:@"%@-%@", v7, v8];
  [(EKUIInviteesViewAddInviteesSection *)self setCachedInviteeCellReuseIdentifier:v9];

  v10 = [(EKUIInviteesViewAddInviteesSection *)self cachedInviteeCellReuseIdentifier];
  [v4 registerClass:v5 forCellReuseIdentifier:v10];

  v11 = objc_opt_class();
  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = NSStringFromClass(v11);
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewAddInviteesSection reuseIdentifierVersion](self, "reuseIdentifierVersion")}];
  v15 = [v12 initWithFormat:@"%@-%@", v13, v14];
  [(EKUIInviteesViewAddInviteesSection *)self setCachedAddInviteeCellReuseIdentifier:v15];

  v16 = [(EKUIInviteesViewAddInviteesSection *)self cachedAddInviteeCellReuseIdentifier];
  [v4 registerClass:v11 forCellReuseIdentifier:v16];

  v17 = [(EKUIInviteesViewAddInviteesSection *)self reuseIdentifierVersion]+ 1;

  [(EKUIInviteesViewAddInviteesSection *)self setReuseIdentifierVersion:v17];
}

- (void)selectRow:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 row];
  if ([(EKUIInviteesViewAddInviteesSection *)self _isValidRow:v5])
  {
    if ([(EKUIInviteesViewAddInviteesSection *)self _isAddInviteesRow:v5])
    {
      v6 = [(EKUIInviteesViewAddInviteesSection *)self addInviteesTapped];

      if (v6)
      {
        v7 = [(EKUIInviteesViewAddInviteesSection *)self addInviteesTapped];
        v7[2]();
LABEL_19:

        goto LABEL_20;
      }

      v8 = kEKUILogInviteesHandle;
      if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
      {
        v19 = 138412290;
        v20 = v4;
        v9 = "No 'add invitees tapped' callback defined.  Will not select row.  Index path: [%@]";
        goto LABEL_7;
      }

      goto LABEL_20;
    }

    v10 = [(EKUIInviteesViewAddInviteesSection *)self participants];
    v7 = [v10 objectAtIndex:v5];

    v11 = [v7 participant];
    if (v11)
    {
      v12 = [(EKUIInviteesViewAddInviteesSection *)self participantTapped];

      if (v12)
      {
        v13 = [(EKUIInviteesViewAddInviteesSection *)self participantTapped];
        (v13)[2](v13, v11);

LABEL_18:
        goto LABEL_19;
      }

      v18 = kEKUILogInviteesHandle;
      if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
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
        goto LABEL_18;
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
    goto LABEL_18;
  }

  v8 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
  {
    v19 = 138412290;
    v20 = v4;
    v9 = "Cannot find row to select.  Will not select row.  Index path: [%@]";
LABEL_7:
    _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_ERROR, v9, &v19, 0xCu);
  }

LABEL_20:
}

- (BOOL)canEditRow:(id)a3
{
  v4 = a3;
  if (-[EKUIInviteesViewAddInviteesSection showPending](self, "showPending") && (v5 = [v4 row], -[EKUIInviteesViewAddInviteesSection _isValidRow:](self, "_isValidRow:", v5)))
  {
    v6 = ![(EKUIInviteesViewAddInviteesSection *)self _isAddInviteesRow:v5];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)titleForDeleteConfirmationButtonForRow:(id)a3
{
  v3 = EventKitUIBundle();
  v4 = [v3 localizedStringForKey:@"Remove invitee - add invitees section" value:@"Remove" table:0];

  return v4;
}

- (void)commitEditingStyle:(int64_t)a3 forRow:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 row];
  if (a3 == 1)
  {
    if ([(EKUIInviteesViewAddInviteesSection *)self _isValidRow:v7])
    {
      v8 = [(EKUIInviteesViewAddInviteesSection *)self participantRemoved];

      if (v8)
      {
        [(EKUIInviteesViewAddInviteesSection *)self _removeParticipantAtIndexPath:v6];
        goto LABEL_12;
      }

      v13 = kEKUILogInviteesHandle;
      if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v15 = 138412290;
      v16 = v6;
      v14 = "No 'participant removed' callback defined.  Will not remove participant.  Index path: [%@]";
    }

    else
    {
      v13 = kEKUILogInviteesHandle;
      if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v15 = 138412290;
      v16 = v6;
      v14 = "Received commit for nonexistent row: [%@]";
    }

    _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_ERROR, v14, &v15, 0xCu);
    goto LABEL_12;
  }

  v9 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
  {
    v10 = MEMORY[0x1E696AD98];
    v11 = v9;
    v12 = [v10 numberWithInteger:a3];
    v15 = 138412290;
    v16 = v12;
    _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_ERROR, "Received commit for unrecognized editing style: [%@]", &v15, 0xCu);
  }

LABEL_12:
}

- (double)estimatedHeightForRow:(id)a3
{
  if (EKUIUnscaledCatalyst())
  {
    return *MEMORY[0x1E69DE3D0];
  }

  return EKUITableRowHeightDefault();
}

- (double)heightForRow:(id)a3
{
  if (EKUIUnscaledCatalyst())
  {
    return *MEMORY[0x1E69DE3D0];
  }

  return EKUITableRowHeightDefault();
}

- (void)cancelOutstandingOperations
{
  v2 = [(EKUIInviteesViewAddInviteesSection *)self availabilityRequestsQueue];
  [v2 cancelAllOperations];
}

- (id)actionsForRow:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (-[EKUIInviteesViewAddInviteesSection _isAddInviteesRow:](self, "_isAddInviteesRow:", [v4 row]))
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v6 = [EKUIInviteesViewSectionCommon deleteRowAction:self forRow:v4];
    v7 = [(EKUIInviteesViewAddInviteesSection *)self participants];
    v8 = [v7 objectAtIndex:{objc_msgSend(v4, "row")}];

    v9 = [(EKUIInviteesViewAddInviteesSection *)self participantSetRole];
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
  v8 = [(EKUIInviteesViewAddInviteesSection *)self participants];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
  v10 = [v9 participant];

  v11 = [EKUIInviteeContextMenuData alloc];
  v12 = [(EKUIInviteesViewAddInviteesSection *)self participantSetRole];
  v13 = [(EKUIInviteeContextMenuData *)v11 initWithDefaultActionsForSection:self indexPath:v7 participant:v10 interaction:v6 participantSetRole:v12];

  return v13;
}

- (void)updateWithEvent:(id)a3 showPending:(BOOL)a4
{
  v4 = a4;
  v63 = *MEMORY[0x1E69E9840];
  v42 = a3;
  [(EKUIInviteesViewAddInviteesSection *)self setEvent:?];
  v6 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_DEBUG, "Cancelling existing availability operations.", buf, 2u);
  }

  v7 = [(EKUIInviteesViewAddInviteesSection *)self availabilityRequestsQueue];
  [v7 cancelAllOperations];

  v8 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToAvailabilityType];
  [v8 removeAllObjects];

  v9 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToParticipantIndex];
  [v9 removeAllObjects];

  v10 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [v10 removeAllObjects];

  [(EKUIInviteesViewAddInviteesSection *)self setCanSeeAttendeeStatuses:CanSeeAttendeeStatuses(v42)];
  [(EKUIInviteesViewAddInviteesSection *)self setShowPending:v4];
  if (v4)
  {
    v45 = [v42 organizer];
    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v11 = [v42 attendees];
    v12 = [v11 countByEnumeratingWithState:&v55 objects:v62 count:16];
    if (v12)
    {
      v13 = *v56;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v56 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v55 + 1) + 8 * i);
          if ([v15 participantType] != 2 && objc_msgSend(v15, "isNew") && (objc_msgSend(v15, "isEqualToParticipant:", v45) & 1) == 0)
          {
            v16 = [MEMORY[0x1E6966A88] participantForSortingWithEKParticipant:v15];
            [v43 addObject:v16];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v55 objects:v62 count:16];
      }

      while (v12);
    }

    v41 = [v43 sortedArrayUsingComparator:&__block_literal_global_36];
    v17 = [v42 calendar];
    v18 = [v17 source];
    v19 = [v18 constraints];
    v20 = [v19 supportsAvailabilityRequests];

    if (v20)
    {
      if ([v41 count])
      {
        v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v21 = v41;
        v22 = [v21 countByEnumeratingWithState:&v51 objects:v61 count:16];
        if (v22)
        {
          v23 = 0;
          v24 = *v52;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v52 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = [*(*(&v51 + 1) + 8 * j) participant];
              v27 = [objc_opt_class() _participantAddressForParticipant:v26];
              if (v27)
              {
                [v44 addObject:v27];
                v28 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:v23];
                [(EKUIInviteesViewAddInviteesSection *)self _setParticipantIndex:v28 forParticipantAddress:v27];
                [(EKUIInviteesViewAddInviteesSection *)self _addAddressToSetOfAddressesToInflightOperations:v27];
              }

              else
              {
                v29 = kEKUILogInviteesHandle;
                if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v60 = v26;
                  _os_log_impl(&dword_1D3400000, v29, OS_LOG_TYPE_DEBUG, "Could not find address for participant: [%@].  Will not include this participant in final list of participants.", buf, 0xCu);
                }
              }

              ++v23;
            }

            v22 = [v21 countByEnumeratingWithState:&v51 objects:v61 count:16];
          }

          while (v22);
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __66__EKUIInviteesViewAddInviteesSection_updateWithEvent_showPending___block_invoke_40;
        aBlock[3] = &unk_1E843EFE0;
        aBlock[4] = self;
        v30 = _Block_copy(aBlock);
        v31 = [v42 calendar];
        v32 = [v31 source];

        v33 = [v42 startDate];
        v34 = [v42 endDateUnadjustedForLegacyClients];
        v35 = [objc_alloc(MEMORY[0x1E6966AE0]) initWithSource:v32 startDate:v33 endDate:v34 ignoredEvent:v42 addresses:v44 resultsBlock:v30];
        objc_initWeak(buf, self);
        objc_initWeak(&location, v35);
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __66__EKUIInviteesViewAddInviteesSection_updateWithEvent_showPending___block_invoke_4;
        v46[3] = &unk_1E843F008;
        objc_copyWeak(&v47, &location);
        objc_copyWeak(&v48, buf);
        [v35 setCompletionBlock:v46];
        v36 = [(EKUIInviteesViewAddInviteesSection *)self availabilityRequestsQueue];
        [v36 addOperation:v35];

        objc_destroyWeak(&v48);
        objc_destroyWeak(&v47);
        objc_destroyWeak(&location);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v37 = kEKUILogInviteesHandle;
      if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1D3400000, v37, OS_LOG_TYPE_DEBUG, "The event's source does not support availability requests.  Will not issue any.", buf, 2u);
      }
    }

    v38 = [v41 mutableCopy];
    [(EKUIInviteesViewAddInviteesSection *)self setParticipants:v38];

    v39 = [(EKUIInviteesViewAddInviteesSection *)self pendingParticipants];
    v40 = [v39 valueForKey:@"participant"];
    [(EKUIInviteesViewAddInviteesSection *)self setPendingParticipants:v40];
  }

  else
  {
    [(EKUIInviteesViewAddInviteesSection *)self setParticipants:0];
    [(EKUIInviteesViewAddInviteesSection *)self setPendingParticipants:0];
  }
}

void __66__EKUIInviteesViewAddInviteesSection_updateWithEvent_showPending___block_invoke_40(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__EKUIInviteesViewAddInviteesSection_updateWithEvent_showPending___block_invoke_2;
  v6[3] = &unk_1E843EFB8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __66__EKUIInviteesViewAddInviteesSection_updateWithEvent_showPending___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__EKUIInviteesViewAddInviteesSection_updateWithEvent_showPending___block_invoke_3;
  v3[3] = &unk_1E843EF90;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void __66__EKUIInviteesViewAddInviteesSection_updateWithEvent_showPending___block_invoke_3(uint64_t a1, void *a2, void *a3)
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

void __66__EKUIInviteesViewAddInviteesSection_updateWithEvent_showPending___block_invoke_4(uint64_t a1)
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
    block[2] = __66__EKUIInviteesViewAddInviteesSection_updateWithEvent_showPending___block_invoke_46;
    block[3] = &unk_1E843EC60;
    block[4] = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

LABEL_10:
}

void __66__EKUIInviteesViewAddInviteesSection_updateWithEvent_showPending___block_invoke_46(uint64_t a1)
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

- (id)_lookUpAvailabilityTypeForParticipantAddress:(id)a3
{
  v4 = a3;
  v5 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToAvailabilityType];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = EKUtils_AdjustedAttendeeAddress();
    v8 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToAvailabilityType];
    v6 = [v8 objectForKey:v7];
  }

  return v6;
}

- (void)_setAvailabilityType:(id)a3 forParticipantAddress:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToAvailabilityType];
  [v8 setObject:v7 forKey:v6];

  v10 = EKUtils_AdjustedAttendeeAddress();

  v9 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToAvailabilityType];
  [v9 setObject:v7 forKey:v10];
}

- (void)_removeAddressFromDictionaryOfAddressesToAvailabilityType:(id)a3
{
  v4 = a3;
  v5 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToAvailabilityType];
  [v5 removeObjectForKey:v4];

  v7 = EKUtils_AdjustedAttendeeAddress();

  v6 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToAvailabilityType];
  [v6 removeObjectForKey:v7];
}

- (id)_lookUpParticipantIndexForParticipantAddress:(id)a3
{
  v4 = a3;
  v5 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToParticipantIndex];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = EKUtils_AdjustedAttendeeAddress();
    v8 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToParticipantIndex];
    v6 = [v8 objectForKey:v7];
  }

  return v6;
}

- (void)_removeAddressFromDictionaryOfAddressesToParticipantIndex:(id)a3
{
  v4 = a3;
  v5 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToParticipantIndex];
  [v5 removeObjectForKey:v4];

  v7 = EKUtils_AdjustedAttendeeAddress();

  v6 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToParticipantIndex];
  [v6 removeObjectForKey:v7];
}

- (void)_setParticipantIndex:(id)a3 forParticipantAddress:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToParticipantIndex];
  [v8 setObject:v7 forKey:v6];

  v10 = EKUtils_AdjustedAttendeeAddress();

  v9 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToParticipantIndex];
  [v9 setObject:v7 forKey:v10];
}

- (void)_removeAddressFromSetOfAddressesToInflightOperations:(id)a3
{
  v4 = a3;
  v5 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [v5 removeObject:v4];

  v7 = EKUtils_AdjustedAttendeeAddress();

  v6 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [v6 removeObject:v7];
}

- (void)_addAddressToSetOfAddressesToInflightOperations:(id)a3
{
  v4 = a3;
  v5 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [v5 addObject:v4];

  v7 = EKUtils_AdjustedAttendeeAddress();

  v6 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [v6 addObject:v7];
}

- (BOOL)_setOfAddressesToInflightOperationsContainsAddress:(id)a3
{
  v4 = a3;
  v5 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = EKUtils_AdjustedAttendeeAddress();
    v9 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
    v7 = [v9 containsObject:v8];
  }

  return v7;
}

- (void)_removeParticipantAtIndexPath:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 row];
  v6 = [(EKUIInviteesViewAddInviteesSection *)self participants];
  v7 = [v6 count];

  if (v5 < v7)
  {
    v8 = [(EKUIInviteesViewAddInviteesSection *)self participants];
    v9 = [v8 objectAtIndex:v5];

    v10 = [v9 participant];
    v11 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v22 = v10;
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_DEBUG, "Invoking participant removed callback with participant [%@] and index path [%@]", buf, 0x16u);
    }

    v12 = [(EKUIInviteesViewAddInviteesSection *)self participantRemoved];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__EKUIInviteesViewAddInviteesSection__removeParticipantAtIndexPath___block_invoke;
    v17[3] = &unk_1E843EE88;
    v17[4] = self;
    v18 = v10;
    v19 = v4;
    v20 = v5;
    v13 = v12[2];
    v14 = v10;
    v13(v12, v14, v19, v17);

    goto LABEL_7;
  }

  v15 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
  {
    v9 = v15;
    v16 = [(EKUIInviteesViewAddInviteesSection *)self participants];
    *buf = 138412546;
    v22 = v4;
    v23 = 2112;
    v24 = v16;
    _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_ERROR, "No participant was found at index path [%@] while trying to remove it. We will not remove anything from participants [%@].", buf, 0x16u);

LABEL_7:
  }
}

void __68__EKUIInviteesViewAddInviteesSection__removeParticipantAtIndexPath___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() _participantAddressForParticipant:*(a1 + 40)];
  v3 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_DEBUG, "Removing participant [%@] at index path [%@] from EKUIInviteesViewAddInviteesSection", &v9, 0x16u);
  }

  v6 = [*(a1 + 32) participants];
  [v6 removeObjectAtIndex:*(a1 + 56)];

  v7 = [*(a1 + 32) pendingParticipants];
  v8 = [v7 valueForKey:@"participant"];
  [*(a1 + 32) setPendingParticipants:v8];

  [*(a1 + 32) _removeAddressFromDictionaryOfAddressesToAvailabilityType:v2];
  [*(a1 + 32) _removeAddressFromDictionaryOfAddressesToParticipantIndex:v2];
  [*(a1 + 32) _removeAddressFromSetOfAddressesToInflightOperations:v2];
}

- (BOOL)hasPendingParticipants
{
  v2 = [(EKUIInviteesViewAddInviteesSection *)self participants];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)_isAddInviteesRow:(int64_t)a3
{
  v4 = [(EKUIInviteesViewAddInviteesSection *)self participants];
  LOBYTE(a3) = [v4 count] == a3;

  return a3;
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

- (void)_updateCellForParticipantWithAddress:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EKUIInviteesViewAddInviteesSection *)self _lookUpParticipantIndexForParticipantAddress:v4];
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

  v6 = [(EKUIInviteesViewAddInviteesSection *)self tableViewCellHook];

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
  v8 = [(EKUIInviteesViewAddInviteesSection *)self tableViewCellHook];
  v9 = v8[2](v8, v7);

  if (v9)
  {
    [(EKUIInviteesViewAddInviteesSection *)self _updateCell:v9 forParticipantAtIndex:v7 animated:1];
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
  v9 = [(EKUIInviteesViewAddInviteesSection *)self participants];
  v10 = [v9 objectAtIndex:a4];

  v11 = [v10 participant];
  v12 = [objc_opt_class() _participantAddressForParticipant:v11];
  if (v12)
  {
    v13 = [(EKUIInviteesViewAddInviteesSection *)self _lookUpAvailabilityTypeForParticipantAddress:v12];
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
    v18 = [(EKUIInviteesViewAddInviteesSection *)self event];
    v19 = [v17 availabilityPanelVisibilityForEvent:v18];

    if (v19)
    {
      v15 = 3;
    }

    v20 = [(EKUIInviteesViewAddInviteesSection *)self _setOfAddressesToInflightOperationsContainsAddress:v12];
    v21 = [(EKUIInviteesViewAddInviteesSection *)self event];
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

@end
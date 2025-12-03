@interface EKUIInviteesViewProposedTimeSection
- (BOOL)canSelectRow:(id)row;
- (BOOL)isRowChecked:(int64_t)checked;
- (BOOL)sectionShouldBeShown;
- (EKEvent)event;
- (EKUIInviteesViewProposedTimeSection)init;
- (id)busyParticipantsForDate:(id)date;
- (id)cellForIndexPath:(id)path inTableView:(id)view;
- (id)debugTitle;
- (id)namesForParticipantsProposingDate:(id)date;
- (unint64_t)numberOfRows;
- (void)availabilitySearcherChangedState:(int64_t)state;
- (void)clearCheckmark;
- (void)reloadAndRegisterReusableCellsWithTableView:(id)view;
- (void)selectRow:(id)row;
- (void)setChecked:(int64_t)checked;
- (void)updateWithEvent:(id)event;
@end

@implementation EKUIInviteesViewProposedTimeSection

- (EKUIInviteesViewProposedTimeSection)init
{
  v9.receiver = self;
  v9.super_class = EKUIInviteesViewProposedTimeSection;
  v2 = [(EKUIInviteesViewProposedTimeSection *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(EKUIInviteesViewProposedTimeSection *)v2 setRowsShowingAllParticipants:v3];

    v4 = EventKitUIBundle();
    v5 = [v4 localizedStringForKey:@"Proposed Times" value:&stru_1F4EF6790 table:0];
    [(EKUIInviteesViewProposedTimeSection *)v2 setTitle:v5];

    v6 = objc_opt_new();
    proposedTimes = v2->_proposedTimes;
    v2->_proposedTimes = v6;

    v2->_checkedRow = -1;
  }

  return v2;
}

- (void)updateWithEvent:(id)event
{
  v21 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  [(EKUIInviteesViewProposedTimeSection *)self setEvent:eventCopy];
  proposedTimes = [(EKUIInviteesViewProposedTimeSection *)self proposedTimes];
  [proposedTimes removeAllObjects];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  attendees = [eventCopy attendees];
  v7 = [attendees countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(attendees);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) proposedStartDateForEvent:eventCopy];
        if (v11)
        {
          proposedTimes2 = [(EKUIInviteesViewProposedTimeSection *)self proposedTimes];
          v13 = [proposedTimes2 containsObject:v11];

          if ((v13 & 1) == 0)
          {
            proposedTimes3 = [(EKUIInviteesViewProposedTimeSection *)self proposedTimes];
            [proposedTimes3 addObject:v11];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [attendees countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  proposedTimes4 = [(EKUIInviteesViewProposedTimeSection *)self proposedTimes];
  [proposedTimes4 sortUsingComparator:&__block_literal_global_39];
}

- (id)debugTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)sectionShouldBeShown
{
  event = [(EKUIInviteesViewProposedTimeSection *)self event];
  if ([event isSelfOrganized])
  {
    v4 = [(EKUIInviteesViewProposedTimeSection *)self numberOfRows]!= 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)numberOfRows
{
  proposedTimes = [(EKUIInviteesViewProposedTimeSection *)self proposedTimes];
  v3 = [proposedTimes count];

  return v3;
}

- (id)cellForIndexPath:(id)path inTableView:(id)view
{
  v40 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  viewCopy = view;
  v8 = [pathCopy row];
  if ([(EKUIInviteesViewProposedTimeSection *)self _isValidRow:v8])
  {
    cachedCellReuseIdentifier = [(EKUIInviteesViewProposedTimeSection *)self cachedCellReuseIdentifier];
    v10 = [viewCopy dequeueReusableCellWithIdentifier:cachedCellReuseIdentifier forIndexPath:pathCopy];

    objc_initWeak(location, self);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __68__EKUIInviteesViewProposedTimeSection_cellForIndexPath_inTableView___block_invoke;
    v35[3] = &unk_1E8441700;
    objc_copyWeak(&v36, location);
    [(EKUIInviteesViewTimeSlotCell *)v10 setShowPreviewOfEventAtTime:v35];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __68__EKUIInviteesViewProposedTimeSection_cellForIndexPath_inTableView___block_invoke_2;
    v33[3] = &unk_1E843F030;
    objc_copyWeak(v34, location);
    v34[1] = v8;
    [(EKUIInviteesViewTimeSlotCell *)v10 setShowAllConflictedParticipantsTapped:v33];
    rowsShowingAllParticipants = [(EKUIInviteesViewProposedTimeSection *)self rowsShowingAllParticipants];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    v32 = [rowsShowingAllParticipants containsObject:v12];

    proposedTimes = [(EKUIInviteesViewProposedTimeSection *)self proposedTimes];
    v14 = [proposedTimes objectAtIndexedSubscript:v8];

    event = [(EKUIInviteesViewProposedTimeSection *)self event];
    endDateUnadjustedForLegacyClients = [event endDateUnadjustedForLegacyClients];
    event2 = [(EKUIInviteesViewProposedTimeSection *)self event];
    startDate = [event2 startDate];
    [endDateUnadjustedForLegacyClients timeIntervalSinceDate:startDate];
    v20 = v19;

    v21 = [v14 dateByAddingTimeInterval:v20];
    v22 = [(EKUIInviteesViewProposedTimeSection *)self busyParticipantsForDate:v14];
    [(EKUIInviteesViewTimeSlotCell *)v10 setSearchInProgress:v22 != 0];
    v23 = [(EKUIInviteesViewProposedTimeSection *)self namesForParticipantsProposingDate:v14];
    [(EKUIInviteesViewTimeSlotCell *)v10 setProposedBy:v23];

    event3 = [(EKUIInviteesViewProposedTimeSection *)self event];
    startTimeZone = [event3 startTimeZone];
    [(EKUIInviteesViewTimeSlotCell *)v10 updateWithStartDate:v14 endDate:v21 timeZone:startTimeZone busyParticipants:v22 showAllParticipants:v32 checked:[(EKUIInviteesViewProposedTimeSection *)self isRowChecked:v8]];

    objc_destroyWeak(v34);
    objc_destroyWeak(&v36);
    objc_destroyWeak(location);
  }

  else
  {
    v26 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      v27 = MEMORY[0x1E696AD98];
      v28 = v26;
      v29 = [v27 numberWithInteger:v8];
      v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewProposedTimeSection numberOfRows](self, "numberOfRows")}];
      *location = 138412546;
      *&location[4] = v29;
      v38 = 2112;
      v39 = v30;
      _os_log_impl(&dword_1D3400000, v28, OS_LOG_TYPE_ERROR, "A cell was requested for a nonexistent row.  Giving back a fresh cell.  Row: [%@].  Number of rows: [%@]", location, 0x16u);
    }

    v10 = objc_alloc_init(EKUIInviteesViewProposedTimeCell);
  }

  return v10;
}

void __68__EKUIInviteesViewProposedTimeSection_cellForIndexPath_inTableView___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained showPreviewOfEventAtTime];

  if (v7)
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 showPreviewOfEventAtTime];
    (v9)[2](v9, v10, v5);
  }
}

void __68__EKUIInviteesViewProposedTimeSection_cellForIndexPath_inTableView___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained rowsShowingAllParticipants];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  [v2 addObject:v3];
}

- (void)reloadAndRegisterReusableCellsWithTableView:(id)view
{
  viewCopy = view;
  v5 = objc_opt_class();
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = NSStringFromClass(v5);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewProposedTimeSection reuseIdentifierVersion](self, "reuseIdentifierVersion")}];
  v9 = [v6 initWithFormat:@"%@-%@", v7, v8];
  [(EKUIInviteesViewProposedTimeSection *)self setCachedCellReuseIdentifier:v9];

  cachedCellReuseIdentifier = [(EKUIInviteesViewProposedTimeSection *)self cachedCellReuseIdentifier];
  [viewCopy registerClass:v5 forCellReuseIdentifier:cachedCellReuseIdentifier];

  v11 = [(EKUIInviteesViewProposedTimeSection *)self reuseIdentifierVersion]+ 1;

  [(EKUIInviteesViewProposedTimeSection *)self setReuseIdentifierVersion:v11];
}

- (BOOL)canSelectRow:(id)row
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [row row];
  if (![(EKUIInviteesViewProposedTimeSection *)self _isValidRow:v4])
  {
    v5 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      v6 = MEMORY[0x1E696AD98];
      v7 = v5;
      v8 = [v6 numberWithInteger:v4];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_ERROR, "There is no row with index [%@].  Will not determine if row can be selected.", &v10, 0xCu);
    }
  }

  return ![(EKUIInviteesViewProposedTimeSection *)self isRowChecked:v4];
}

- (void)selectRow:(id)row
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [row row];
  if ([(EKUIInviteesViewProposedTimeSection *)self _isValidRow:v4])
  {
    proposedTimes = [(EKUIInviteesViewProposedTimeSection *)self proposedTimes];
    v18 = [proposedTimes objectAtIndexedSubscript:v4];

    event = [(EKUIInviteesViewProposedTimeSection *)self event];
    endDateUnadjustedForLegacyClients = [event endDateUnadjustedForLegacyClients];
    event2 = [(EKUIInviteesViewProposedTimeSection *)self event];
    startDate = [event2 startDate];
    [endDateUnadjustedForLegacyClients timeIntervalSinceDate:startDate];
    v11 = v10;

    v12 = [v18 dateByAddingTimeInterval:v11];
    newTimeChosen = [(EKUIInviteesViewProposedTimeSection *)self newTimeChosen];
    (newTimeChosen)[2](newTimeChosen, v18, v12);

    [(EKUIInviteesViewProposedTimeSection *)self setChecked:v4];
  }

  else
  {
    v14 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      v15 = MEMORY[0x1E696AD98];
      v16 = v14;
      v17 = [v15 numberWithInteger:v4];
      *buf = 138412290;
      v20 = v17;
      _os_log_impl(&dword_1D3400000, v16, OS_LOG_TYPE_ERROR, "There is no row with index [%@].  Will not select a row.", buf, 0xCu);
    }
  }
}

- (void)setChecked:(int64_t)checked
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = v5;
    v8 = [v6 numberWithInteger:checked];
    v19 = 138412546;
    v20 = v8;
    v21 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_DEBUG, "Setting checked row to [%@] in section [%@]", &v19, 0x16u);
  }

  checkedRow = [(EKUIInviteesViewProposedTimeSection *)self checkedRow];
  [(EKUIInviteesViewProposedTimeSection *)self setCheckedRow:checked];
  if ([(EKUIInviteesViewProposedTimeSection *)self _isValidRow:checked])
  {
    tableViewCellHook = [(EKUIInviteesViewProposedTimeSection *)self tableViewCellHook];

    if (tableViewCellHook)
    {
      if ((checkedRow & 0x8000000000000000) == 0)
      {
        tableViewCellHook2 = [(EKUIInviteesViewProposedTimeSection *)self tableViewCellHook];
        v12 = tableViewCellHook2[2](tableViewCellHook2, checkedRow);

        [v12 setChecked:0];
      }

      tableViewCellHook3 = [(EKUIInviteesViewProposedTimeSection *)self tableViewCellHook];
      v14 = tableViewCellHook3[2](tableViewCellHook3, checked);

      [v14 setChecked:1];
      [v14 setSelected:0 animated:1];
    }
  }

  else
  {
    v15 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      v16 = MEMORY[0x1E696AD98];
      v17 = v15;
      v18 = [v16 numberWithInteger:checked];
      v19 = 138412290;
      v20 = v18;
      _os_log_impl(&dword_1D3400000, v17, OS_LOG_TYPE_ERROR, "There is no row with index [%@].  Will not 'set checked row' to its row value.", &v19, 0xCu);
    }
  }
}

- (void)clearCheckmark
{
  tableViewCellHook = [(EKUIInviteesViewProposedTimeSection *)self tableViewCellHook];
  v4 = tableViewCellHook[2](tableViewCellHook, [(EKUIInviteesViewProposedTimeSection *)self checkedRow]);

  [v4 setChecked:0];
  [(EKUIInviteesViewProposedTimeSection *)self setCheckedRow:-1];
}

- (void)availabilitySearcherChangedState:(int64_t)state
{
  availabilitySearcher = [(EKUIInviteesViewProposedTimeSection *)self availabilitySearcher];
  proposedTimes = [availabilitySearcher proposedTimes];
  [(EKUIInviteesViewProposedTimeSection *)self setProposedTimeResults:proposedTimes];
}

- (id)namesForParticipantsProposingDate:(id)date
{
  v28 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v21 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  event = [(EKUIInviteesViewProposedTimeSection *)self event];
  attendees = [event attendees];

  obj = attendees;
  v7 = [attendees countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        event2 = [(EKUIInviteesViewProposedTimeSection *)self event];
        v13 = [v11 proposedStartDateForEvent:event2];

        if ([v13 isEqualToDate:dateCopy])
        {
          v14 = [MEMORY[0x1E6966A88] participantForSortingWithEKParticipant:v11];
          displayName = [v14 displayName];
          v16 = displayName;
          if (displayName)
          {
            firstName = displayName;
          }

          else
          {
            firstName = [v14 firstName];
          }

          v18 = firstName;

          if (![v18 length])
          {
            v19 = DisplayAddressForIdentity(v11);

            v18 = v19;
          }

          if ([v18 length])
          {
            [v21 addObject:v18];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  return v21;
}

- (id)busyParticipantsForDate:(id)date
{
  v13 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  memset(v11, 0, sizeof(v11));
  proposedTimeResults = [(EKUIInviteesViewProposedTimeSection *)self proposedTimeResults];
  if ([proposedTimeResults countByEnumeratingWithState:v11 objects:v12 count:16])
  {
    v6 = **(&v11[0] + 1);
    startDate = [**(&v11[0] + 1) startDate];
    v8 = [startDate isEqual:dateCopy];

    if (v8)
    {
      conflictedParticipants = [v6 conflictedParticipants];
    }

    else
    {
      conflictedParticipants = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    conflictedParticipants = 0;
  }

  return conflictedParticipants;
}

- (BOOL)isRowChecked:(int64_t)checked
{
  v5 = [(EKUIInviteesViewProposedTimeSection *)self _isValidRow:?];
  if (v5)
  {
    LOBYTE(v5) = [(EKUIInviteesViewProposedTimeSection *)self checkedRow]== checked;
  }

  return v5;
}

- (EKEvent)event
{
  WeakRetained = objc_loadWeakRetained(&self->_event);

  return WeakRetained;
}

@end
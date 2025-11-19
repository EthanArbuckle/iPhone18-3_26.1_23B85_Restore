@interface EKUIInviteesViewProposedTimeSection
- (BOOL)canSelectRow:(id)a3;
- (BOOL)isRowChecked:(int64_t)a3;
- (BOOL)sectionShouldBeShown;
- (EKEvent)event;
- (EKUIInviteesViewProposedTimeSection)init;
- (id)busyParticipantsForDate:(id)a3;
- (id)cellForIndexPath:(id)a3 inTableView:(id)a4;
- (id)debugTitle;
- (id)namesForParticipantsProposingDate:(id)a3;
- (unint64_t)numberOfRows;
- (void)availabilitySearcherChangedState:(int64_t)a3;
- (void)clearCheckmark;
- (void)reloadAndRegisterReusableCellsWithTableView:(id)a3;
- (void)selectRow:(id)a3;
- (void)setChecked:(int64_t)a3;
- (void)updateWithEvent:(id)a3;
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

- (void)updateWithEvent:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(EKUIInviteesViewProposedTimeSection *)self setEvent:v4];
  v5 = [(EKUIInviteesViewProposedTimeSection *)self proposedTimes];
  [v5 removeAllObjects];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v4 attendees];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) proposedStartDateForEvent:v4];
        if (v11)
        {
          v12 = [(EKUIInviteesViewProposedTimeSection *)self proposedTimes];
          v13 = [v12 containsObject:v11];

          if ((v13 & 1) == 0)
          {
            v14 = [(EKUIInviteesViewProposedTimeSection *)self proposedTimes];
            [v14 addObject:v11];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v15 = [(EKUIInviteesViewProposedTimeSection *)self proposedTimes];
  [v15 sortUsingComparator:&__block_literal_global_39];
}

- (id)debugTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)sectionShouldBeShown
{
  v3 = [(EKUIInviteesViewProposedTimeSection *)self event];
  if ([v3 isSelfOrganized])
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
  v2 = [(EKUIInviteesViewProposedTimeSection *)self proposedTimes];
  v3 = [v2 count];

  return v3;
}

- (id)cellForIndexPath:(id)a3 inTableView:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 row];
  if ([(EKUIInviteesViewProposedTimeSection *)self _isValidRow:v8])
  {
    v9 = [(EKUIInviteesViewProposedTimeSection *)self cachedCellReuseIdentifier];
    v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

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
    v11 = [(EKUIInviteesViewProposedTimeSection *)self rowsShowingAllParticipants];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    v32 = [v11 containsObject:v12];

    v13 = [(EKUIInviteesViewProposedTimeSection *)self proposedTimes];
    v14 = [v13 objectAtIndexedSubscript:v8];

    v15 = [(EKUIInviteesViewProposedTimeSection *)self event];
    v16 = [v15 endDateUnadjustedForLegacyClients];
    v17 = [(EKUIInviteesViewProposedTimeSection *)self event];
    v18 = [v17 startDate];
    [v16 timeIntervalSinceDate:v18];
    v20 = v19;

    v21 = [v14 dateByAddingTimeInterval:v20];
    v22 = [(EKUIInviteesViewProposedTimeSection *)self busyParticipantsForDate:v14];
    [(EKUIInviteesViewTimeSlotCell *)v10 setSearchInProgress:v22 != 0];
    v23 = [(EKUIInviteesViewProposedTimeSection *)self namesForParticipantsProposingDate:v14];
    [(EKUIInviteesViewTimeSlotCell *)v10 setProposedBy:v23];

    v24 = [(EKUIInviteesViewProposedTimeSection *)self event];
    v25 = [v24 startTimeZone];
    [(EKUIInviteesViewTimeSlotCell *)v10 updateWithStartDate:v14 endDate:v21 timeZone:v25 busyParticipants:v22 showAllParticipants:v32 checked:[(EKUIInviteesViewProposedTimeSection *)self isRowChecked:v8]];

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

- (void)reloadAndRegisterReusableCellsWithTableView:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = NSStringFromClass(v5);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewProposedTimeSection reuseIdentifierVersion](self, "reuseIdentifierVersion")}];
  v9 = [v6 initWithFormat:@"%@-%@", v7, v8];
  [(EKUIInviteesViewProposedTimeSection *)self setCachedCellReuseIdentifier:v9];

  v10 = [(EKUIInviteesViewProposedTimeSection *)self cachedCellReuseIdentifier];
  [v4 registerClass:v5 forCellReuseIdentifier:v10];

  v11 = [(EKUIInviteesViewProposedTimeSection *)self reuseIdentifierVersion]+ 1;

  [(EKUIInviteesViewProposedTimeSection *)self setReuseIdentifierVersion:v11];
}

- (BOOL)canSelectRow:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [a3 row];
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

- (void)selectRow:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [a3 row];
  if ([(EKUIInviteesViewProposedTimeSection *)self _isValidRow:v4])
  {
    v5 = [(EKUIInviteesViewProposedTimeSection *)self proposedTimes];
    v18 = [v5 objectAtIndexedSubscript:v4];

    v6 = [(EKUIInviteesViewProposedTimeSection *)self event];
    v7 = [v6 endDateUnadjustedForLegacyClients];
    v8 = [(EKUIInviteesViewProposedTimeSection *)self event];
    v9 = [v8 startDate];
    [v7 timeIntervalSinceDate:v9];
    v11 = v10;

    v12 = [v18 dateByAddingTimeInterval:v11];
    v13 = [(EKUIInviteesViewProposedTimeSection *)self newTimeChosen];
    (v13)[2](v13, v18, v12);

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

- (void)setChecked:(int64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = v5;
    v8 = [v6 numberWithInteger:a3];
    v19 = 138412546;
    v20 = v8;
    v21 = 2112;
    v22 = self;
    _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_DEBUG, "Setting checked row to [%@] in section [%@]", &v19, 0x16u);
  }

  v9 = [(EKUIInviteesViewProposedTimeSection *)self checkedRow];
  [(EKUIInviteesViewProposedTimeSection *)self setCheckedRow:a3];
  if ([(EKUIInviteesViewProposedTimeSection *)self _isValidRow:a3])
  {
    v10 = [(EKUIInviteesViewProposedTimeSection *)self tableViewCellHook];

    if (v10)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        v11 = [(EKUIInviteesViewProposedTimeSection *)self tableViewCellHook];
        v12 = v11[2](v11, v9);

        [v12 setChecked:0];
      }

      v13 = [(EKUIInviteesViewProposedTimeSection *)self tableViewCellHook];
      v14 = v13[2](v13, a3);

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
      v18 = [v16 numberWithInteger:a3];
      v19 = 138412290;
      v20 = v18;
      _os_log_impl(&dword_1D3400000, v17, OS_LOG_TYPE_ERROR, "There is no row with index [%@].  Will not 'set checked row' to its row value.", &v19, 0xCu);
    }
  }
}

- (void)clearCheckmark
{
  v3 = [(EKUIInviteesViewProposedTimeSection *)self tableViewCellHook];
  v4 = v3[2](v3, [(EKUIInviteesViewProposedTimeSection *)self checkedRow]);

  [v4 setChecked:0];
  [(EKUIInviteesViewProposedTimeSection *)self setCheckedRow:-1];
}

- (void)availabilitySearcherChangedState:(int64_t)a3
{
  v5 = [(EKUIInviteesViewProposedTimeSection *)self availabilitySearcher];
  v4 = [v5 proposedTimes];
  [(EKUIInviteesViewProposedTimeSection *)self setProposedTimeResults:v4];
}

- (id)namesForParticipantsProposingDate:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(EKUIInviteesViewProposedTimeSection *)self event];
  v6 = [v5 attendees];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
        v12 = [(EKUIInviteesViewProposedTimeSection *)self event];
        v13 = [v11 proposedStartDateForEvent:v12];

        if ([v13 isEqualToDate:v4])
        {
          v14 = [MEMORY[0x1E6966A88] participantForSortingWithEKParticipant:v11];
          v15 = [v14 displayName];
          v16 = v15;
          if (v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = [v14 firstName];
          }

          v18 = v17;

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

- (id)busyParticipantsForDate:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  memset(v11, 0, sizeof(v11));
  v5 = [(EKUIInviteesViewProposedTimeSection *)self proposedTimeResults];
  if ([v5 countByEnumeratingWithState:v11 objects:v12 count:16])
  {
    v6 = **(&v11[0] + 1);
    v7 = [**(&v11[0] + 1) startDate];
    v8 = [v7 isEqual:v4];

    if (v8)
    {
      v9 = [v6 conflictedParticipants];
    }

    else
    {
      v9 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isRowChecked:(int64_t)a3
{
  v5 = [(EKUIInviteesViewProposedTimeSection *)self _isValidRow:?];
  if (v5)
  {
    LOBYTE(v5) = [(EKUIInviteesViewProposedTimeSection *)self checkedRow]== a3;
  }

  return v5;
}

- (EKEvent)event
{
  WeakRetained = objc_loadWeakRetained(&self->_event);

  return WeakRetained;
}

@end
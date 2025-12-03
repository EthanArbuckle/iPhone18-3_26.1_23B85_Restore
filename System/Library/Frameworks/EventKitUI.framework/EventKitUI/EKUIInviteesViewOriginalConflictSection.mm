@interface EKUIInviteesViewOriginalConflictSection
- (BOOL)canSelectRow:(id)row;
- (EKUIInviteesViewOriginalConflictSection)init;
- (id)cellForIndexPath:(id)path inTableView:(id)view;
- (id)debugTitle;
- (unint64_t)numberOfRows;
- (void)availabilitySearcherChangedState:(int64_t)state;
- (void)reloadAndRegisterReusableCellsWithTableView:(id)view;
- (void)selectRow:(id)row;
- (void)setChecked:(BOOL)checked;
@end

@implementation EKUIInviteesViewOriginalConflictSection

- (EKUIInviteesViewOriginalConflictSection)init
{
  v7.receiver = self;
  v7.super_class = EKUIInviteesViewOriginalConflictSection;
  v2 = [(EKUIInviteesViewOriginalConflictSection *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(EKUIInviteesViewOriginalConflictSection *)v2 setRowsShowingAllParticipants:v3];

    v4 = EventKitUIBundle();
    v5 = [v4 localizedStringForKey:@"Scheduling Conflict" value:&stru_1F4EF6790 table:0];
    [(EKUIInviteesViewOriginalConflictSection *)v2 setTitle:v5];
  }

  return v2;
}

- (id)debugTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (unint64_t)numberOfRows
{
  if (![(EKUIInviteesViewOriginalConflictSection *)self conflictFound])
  {
    return 0;
  }

  startDate = [(EKUIInviteesViewOriginalConflictSection *)self startDate];
  if (startDate)
  {
    endDate = [(EKUIInviteesViewOriginalConflictSection *)self endDate];
    v5 = endDate != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)cellForIndexPath:(id)path inTableView:(id)view
{
  v32 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  viewCopy = view;
  v8 = [pathCopy row];
  if ([(EKUIInviteesViewOriginalConflictSection *)self _isValidRow:v8])
  {
    cachedCellReuseIdentifier = [(EKUIInviteesViewOriginalConflictSection *)self cachedCellReuseIdentifier];
    v10 = [viewCopy dequeueReusableCellWithIdentifier:cachedCellReuseIdentifier forIndexPath:pathCopy];

    objc_initWeak(location, self);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __72__EKUIInviteesViewOriginalConflictSection_cellForIndexPath_inTableView___block_invoke;
    v27[3] = &unk_1E8441700;
    objc_copyWeak(&v28, location);
    [(EKUIInviteesViewTimeSlotCell *)v10 setShowPreviewOfEventAtTime:v27];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __72__EKUIInviteesViewOriginalConflictSection_cellForIndexPath_inTableView___block_invoke_2;
    v25[3] = &unk_1E843F030;
    objc_copyWeak(v26, location);
    v26[1] = v8;
    [(EKUIInviteesViewTimeSlotCell *)v10 setShowAllConflictedParticipantsTapped:v25];
    rowsShowingAllParticipants = [(EKUIInviteesViewOriginalConflictSection *)self rowsShowingAllParticipants];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    v13 = [rowsShowingAllParticipants containsObject:v12];

    busyParticipants = [(EKUIInviteesViewOriginalConflictSection *)self busyParticipants];
    -[EKUIInviteesViewOriginalConflictCell setConflict:](v10, "setConflict:", [busyParticipants count] != 0);

    startDate = [(EKUIInviteesViewOriginalConflictSection *)self startDate];
    endDate = [(EKUIInviteesViewOriginalConflictSection *)self endDate];
    timeZone = [(EKUIInviteesViewOriginalConflictSection *)self timeZone];
    busyParticipants2 = [(EKUIInviteesViewOriginalConflictSection *)self busyParticipants];
    [(EKUIInviteesViewTimeSlotCell *)v10 updateWithStartDate:startDate endDate:endDate timeZone:timeZone busyParticipants:busyParticipants2 showAllParticipants:v13 checked:[(EKUIInviteesViewOriginalConflictSection *)self checked]];

    objc_destroyWeak(v26);
    objc_destroyWeak(&v28);
    objc_destroyWeak(location);
  }

  else
  {
    v19 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      v20 = MEMORY[0x1E696AD98];
      v21 = v19;
      v22 = [v20 numberWithInteger:v8];
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewOriginalConflictSection numberOfRows](self, "numberOfRows")}];
      *location = 138412546;
      *&location[4] = v22;
      v30 = 2112;
      v31 = v23;
      _os_log_impl(&dword_1D3400000, v21, OS_LOG_TYPE_ERROR, "A cell was requested for a nonexistent row.  Giving back a fresh cell.  Row: [%@].  Number of rows: [%@]", location, 0x16u);
    }

    v10 = objc_alloc_init(EKUIInviteesViewOriginalConflictCell);
  }

  return v10;
}

void __72__EKUIInviteesViewOriginalConflictSection_cellForIndexPath_inTableView___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __72__EKUIInviteesViewOriginalConflictSection_cellForIndexPath_inTableView___block_invoke_2(uint64_t a1)
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
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewOriginalConflictSection reuseIdentifierVersion](self, "reuseIdentifierVersion")}];
  v9 = [v6 initWithFormat:@"%@-%@", v7, v8];
  [(EKUIInviteesViewOriginalConflictSection *)self setCachedCellReuseIdentifier:v9];

  cachedCellReuseIdentifier = [(EKUIInviteesViewOriginalConflictSection *)self cachedCellReuseIdentifier];
  [viewCopy registerClass:v5 forCellReuseIdentifier:cachedCellReuseIdentifier];

  v11 = [(EKUIInviteesViewOriginalConflictSection *)self reuseIdentifierVersion]+ 1;

  [(EKUIInviteesViewOriginalConflictSection *)self setReuseIdentifierVersion:v11];
}

- (BOOL)canSelectRow:(id)row
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [row row];
  if ([(EKUIInviteesViewOriginalConflictSection *)self _isValidRow:v4])
  {
    LOBYTE(v5) = ![(EKUIInviteesViewOriginalConflictSection *)self checked];
  }

  else
  {
    v6 = kEKUILogInviteesHandle;
    v5 = os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      v7 = MEMORY[0x1E696AD98];
      v8 = v6;
      v9 = [v7 numberWithInteger:v4];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_ERROR, "There is no row with index [%@].  Will not determine if row can be selected.", &v11, 0xCu);

      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)selectRow:(id)row
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [row row];
  if ([(EKUIInviteesViewOriginalConflictSection *)self _isValidRow:v4])
  {

    [(EKUIInviteesViewOriginalConflictSection *)self setChecked:1];
  }

  else
  {
    v5 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      v6 = MEMORY[0x1E696AD98];
      v7 = v5;
      v8 = [v6 numberWithInteger:v4];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_ERROR, "There is no row with index [%@].  Will not select a row.", &v9, 0xCu);
    }
  }
}

- (void)availabilitySearcherChangedState:(int64_t)state
{
  if (state == 1)
  {
    availabilitySearcher = [(EKUIInviteesViewOriginalConflictSection *)self availabilitySearcher];
    originalStartDate = [availabilitySearcher originalStartDate];
    [(EKUIInviteesViewOriginalConflictSection *)self setStartDate:originalStartDate];

    availabilitySearcher2 = [(EKUIInviteesViewOriginalConflictSection *)self availabilitySearcher];
    originalEndDate = [availabilitySearcher2 originalEndDate];
    [(EKUIInviteesViewOriginalConflictSection *)self setEndDate:originalEndDate];

    v9 = MEMORY[0x1E6966A88];
    availabilitySearcher3 = [(EKUIInviteesViewOriginalConflictSection *)self availabilitySearcher];
    originalConflictedParticipants = [availabilitySearcher3 originalConflictedParticipants];
    v12 = [v9 participantsForSortingWithEKParticipants:originalConflictedParticipants];

    [(EKUIInviteesViewOriginalConflictSection *)self setBusyParticipants:v12];
    [(EKUIInviteesViewOriginalConflictSection *)self setConflictFound:1];
  }

  else if (!state)
  {
    [(EKUIInviteesViewOriginalConflictSection *)self setStartDate:?];
    [(EKUIInviteesViewOriginalConflictSection *)self setEndDate:0];
    [(EKUIInviteesViewOriginalConflictSection *)self setChecked:1];
    [(EKUIInviteesViewOriginalConflictSection *)self setBusyParticipants:0];
    rowsShowingAllParticipants = [(EKUIInviteesViewOriginalConflictSection *)self rowsShowingAllParticipants];
    [rowsShowingAllParticipants removeAllObjects];

    [(EKUIInviteesViewOriginalConflictSection *)self setConflictFound:0];
  }
}

- (void)setChecked:(BOOL)checked
{
  checkedCopy = checked;
  self->_checked = checked;
  tableViewCellHook = [(EKUIInviteesViewOriginalConflictSection *)self tableViewCellHook];

  if (tableViewCellHook)
  {
    tableViewCellHook2 = [(EKUIInviteesViewOriginalConflictSection *)self tableViewCellHook];
    v7 = tableViewCellHook2[2](tableViewCellHook2, 0);

    [v7 setChecked:checkedCopy];
    [v7 setSelected:0];
  }

  if (checkedCopy)
  {
    newTimeChosen = [(EKUIInviteesViewOriginalConflictSection *)self newTimeChosen];

    if (newTimeChosen)
    {
      startDate = [(EKUIInviteesViewOriginalConflictSection *)self startDate];
      endDate = [(EKUIInviteesViewOriginalConflictSection *)self endDate];
      if (startDate && endDate)
      {
        newTimeChosen2 = [(EKUIInviteesViewOriginalConflictSection *)self newTimeChosen];
        (newTimeChosen2)[2](newTimeChosen2, startDate, endDate);
      }
    }
  }
}

@end
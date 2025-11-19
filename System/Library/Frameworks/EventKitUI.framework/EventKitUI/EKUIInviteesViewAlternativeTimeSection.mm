@interface EKUIInviteesViewAlternativeTimeSection
- (BOOL)canSelectRow:(id)a3;
- (BOOL)searchingForMoreTimes;
- (Class)customTimeCellClass;
- (EKUIInviteesViewAlternativeTimeSection)init;
- (NSArray)searcherTimeSlots;
- (id)_alternativeTimeAtIndex:(int64_t)a3;
- (id)cellForIndexPath:(id)a3 inTableView:(id)a4;
- (id)debugTitle;
- (unint64_t)_numberOfTimeSlotsShown;
- (unint64_t)initialNumberOfTimeSlotsToShow;
- (unint64_t)numberOfRows;
- (void)availabilitySearcherChangedState:(int64_t)a3;
- (void)clearCheckmark;
- (void)refreshCellsAfterStateChange;
- (void)reloadAndRegisterReusableCellsWithTableView:(id)a3;
- (void)searchForMoreTimes;
- (void)selectRow:(id)a3;
- (void)setHasCheckedRow:(BOOL)a3;
- (void)setLastCheckedRow:(int64_t)a3;
@end

@implementation EKUIInviteesViewAlternativeTimeSection

- (EKUIInviteesViewAlternativeTimeSection)init
{
  v5.receiver = self;
  v5.super_class = EKUIInviteesViewAlternativeTimeSection;
  v2 = [(EKUIInviteesViewAlternativeTimeSection *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(EKUIInviteesViewAlternativeTimeSection *)v2 setRowsShowingAllParticipants:v3];
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
  v3 = [(EKUIInviteesViewAlternativeTimeSection *)self _numberOfTimeSlotsShown];
  if ([(EKUIInviteesViewAlternativeTimeSection *)self initialSearchInProgress])
  {
    return v3 + 1;
  }

  v5 = [(EKUIInviteesViewAlternativeTimeSection *)self searchExhausted];
  if (v3)
  {
    v6 = v3 + 1;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    return v3 + 1;
  }

  else
  {
    return v6;
  }
}

- (id)cellForIndexPath:(id)a3 inTableView:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 row];
  if ([(EKUIInviteesViewAlternativeTimeSection *)self _isValidRow:v8])
  {
    if ([(EKUIInviteesViewAlternativeTimeSection *)self _isConflictSearchRow:v8])
    {
      v9 = [(EKUIInviteesViewAlternativeTimeSection *)self cachedConflictSearchCellReuseIdentifier];
      v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

      if ([(EKUIInviteesViewAlternativeTimeSection *)self initialSearchInProgress])
      {
        [v10 setInitialSearchInProgressState];
      }

      else if ([(EKUIInviteesViewAlternativeTimeSection *)self searchExhausted])
      {
        [v10 setNoAvailableTimesStateWithNumberOfExistingTimes:-[EKUIInviteesViewAlternativeTimeSection _numberOfTimeSlotsShown](self hasError:{"_numberOfTimeSlotsShown"), -[EKUIInviteesViewAlternativeTimeSection searcherHasError](self, "searcherHasError")}];
      }

      else if ([(EKUIInviteesViewAlternativeTimeSection *)self availabilityRequestInProgress])
      {
        [v10 setAvailabilityRequestInProgressState];
      }

      else
      {
        [v10 setShowMoreState];
      }
    }

    else
    {
      v16 = [(EKUIInviteesViewAlternativeTimeSection *)self cachedTimeCellReuseIdentifier];
      v10 = [v7 dequeueReusableCellWithIdentifier:v16 forIndexPath:v6];

      objc_initWeak(buf, self);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __71__EKUIInviteesViewAlternativeTimeSection_cellForIndexPath_inTableView___block_invoke;
      v29[3] = &unk_1E8441700;
      objc_copyWeak(&v30, buf);
      [v10 setShowPreviewOfEventAtTime:v29];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __71__EKUIInviteesViewAlternativeTimeSection_cellForIndexPath_inTableView___block_invoke_2;
      v27[3] = &unk_1E843F030;
      objc_copyWeak(v28, buf);
      v28[1] = v8;
      [v10 setShowAllConflictedParticipantsTapped:v27];
      v17 = [(EKUIInviteesViewAlternativeTimeSection *)self rowsShowingAllParticipants];
      v18 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
      v19 = [v17 containsObject:v18];

      if ([(EKUIInviteesViewAlternativeTimeSection *)self hasCheckedRow])
      {
        v20 = v8 == [(EKUIInviteesViewAlternativeTimeSection *)self lastCheckedRow];
      }

      else
      {
        v20 = 0;
      }

      v21 = [(EKUIInviteesViewAlternativeTimeSection *)self _alternativeTimeAtIndex:v8];
      v22 = [v21 startDate];
      v23 = [v21 endDate];
      v24 = [(EKUIInviteesViewAlternativeTimeSection *)self timeZone];
      v25 = [v21 conflictedParticipants];
      [v10 updateWithStartDate:v22 endDate:v23 timeZone:v24 busyParticipants:v25 showAllParticipants:v19 checked:v20];

      objc_destroyWeak(v28);
      objc_destroyWeak(&v30);
      objc_destroyWeak(buf);
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
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewAlternativeTimeSection numberOfRows](self, "numberOfRows")}];
      *buf = 138412546;
      v32 = v14;
      v33 = 2112;
      v34 = v15;
      _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_ERROR, "A cell was requested for a nonexistent row.  Giving back a fresh cell.  Row: [%@].  Number of rows: [%@]", buf, 0x16u);
    }

    v10 = objc_alloc_init([(EKUIInviteesViewAlternativeTimeSection *)self customTimeCellClass]);
  }

  return v10;
}

void __71__EKUIInviteesViewAlternativeTimeSection_cellForIndexPath_inTableView___block_invoke(uint64_t a1, void *a2, void *a3)
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

void __71__EKUIInviteesViewAlternativeTimeSection_cellForIndexPath_inTableView___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained rowsShowingAllParticipants];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  [v2 addObject:v3];
}

- (void)reloadAndRegisterReusableCellsWithTableView:(id)a3
{
  v4 = a3;
  v5 = [(EKUIInviteesViewAlternativeTimeSection *)self customTimeCellClass];
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = NSStringFromClass(v5);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewAlternativeTimeSection reuseIdentifierVersion](self, "reuseIdentifierVersion")}];
  v9 = [v6 initWithFormat:@"%@-%@", v7, v8];
  [(EKUIInviteesViewAlternativeTimeSection *)self setCachedTimeCellReuseIdentifier:v9];

  v10 = [(EKUIInviteesViewAlternativeTimeSection *)self cachedTimeCellReuseIdentifier];
  [v4 registerClass:v5 forCellReuseIdentifier:v10];

  v11 = objc_opt_class();
  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = NSStringFromClass(v11);
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewAlternativeTimeSection reuseIdentifierVersion](self, "reuseIdentifierVersion")}];
  v15 = [v12 initWithFormat:@"%@-%@", v13, v14];
  [(EKUIInviteesViewAlternativeTimeSection *)self setCachedConflictSearchCellReuseIdentifier:v15];

  v16 = [(EKUIInviteesViewAlternativeTimeSection *)self cachedConflictSearchCellReuseIdentifier];
  [v4 registerClass:v11 forCellReuseIdentifier:v16];

  v17 = [(EKUIInviteesViewAlternativeTimeSection *)self reuseIdentifierVersion]+ 1;

  [(EKUIInviteesViewAlternativeTimeSection *)self setReuseIdentifierVersion:v17];
}

- (BOOL)canSelectRow:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = [a3 row];
  if (![(EKUIInviteesViewAlternativeTimeSection *)self _isValidRow:v4])
  {
    v6 = kEKUILogInviteesHandle;
    v5 = os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR);
    if (!v5)
    {
      return v5;
    }

    v7 = MEMORY[0x1E696AD98];
    v8 = v6;
    v9 = [v7 numberWithInteger:v4];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_ERROR, "There is no row with index [%@].  Will not determine if row can be selected.", &v11, 0xCu);

LABEL_8:
    LOBYTE(v5) = 0;
    return v5;
  }

  if (![(EKUIInviteesViewAlternativeTimeSection *)self _isConflictSearchRow:v4])
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  if ([(EKUIInviteesViewAlternativeTimeSection *)self availabilityRequestInProgress]|| [(EKUIInviteesViewAlternativeTimeSection *)self searchExhausted])
  {
    goto LABEL_8;
  }

  LOBYTE(v5) = ![(EKUIInviteesViewAlternativeTimeSection *)self initialSearchInProgress];
  return v5;
}

- (void)selectRow:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 row];
  if (-[EKUIInviteesViewAlternativeTimeSection _isValidRow:](self, "_isValidRow:", [v4 row]))
  {
    if ([(EKUIInviteesViewAlternativeTimeSection *)self _isConflictSearchRow:v5])
    {
      v6 = [(EKUIInviteesViewAlternativeTimeSection *)self alternativeTimes];
      v7 = [v6 count];

      v8 = [(EKUIInviteesViewAlternativeTimeSection *)self maximumNumberOfTimeSlotsToShow];
      v9 = v8 + 10;
      [(EKUIInviteesViewAlternativeTimeSection *)self setMaximumNumberOfTimeSlotsToShow:v8 + 10];
      if (v7 < v8 + 10)
      {
        [(EKUIInviteesViewAlternativeTimeSection *)self setAvailabilityRequestInProgress:1];
        [(EKUIInviteesViewAlternativeTimeSection *)self searchForMoreTimes];
      }

      v10 = [(EKUIInviteesViewAlternativeTimeSection *)self tableViewCellHook];

      if (v10)
      {
        v11 = [(EKUIInviteesViewAlternativeTimeSection *)self tableViewCellHook];
        v12 = v11[2](v11, v5);

        if (v7 < v9)
        {
          [v12 setAvailabilityRequestInProgressState];
        }
      }

      else
      {
        v17 = kEKUILogInviteesHandle;
        if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&dword_1D3400000, v17, OS_LOG_TYPE_ERROR, " No 'tableViewCellHook' callback found.  Will not invoke.", &v23, 2u);
        }
      }

      v18 = [(EKUIInviteesViewAlternativeTimeSection *)self showMoreAlternativeTimesTapped];

      if (v18)
      {
        if (v7 < v9)
        {
          v9 = v7;
        }

        if (v9 <= v8)
        {
          v19 = 0;
        }

        else
        {
          v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if (v8 < v9)
          {
            do
            {
              v20 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:v8];
              [v19 addObject:v20];

              ++v8;
            }

            while (v9 != v8);
          }
        }

        v22 = [(EKUIInviteesViewAlternativeTimeSection *)self showMoreAlternativeTimesTapped];
        (v22)[2](v22, v19);
      }

      else
      {
        v21 = kEKUILogInviteesHandle;
        if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&dword_1D3400000, v21, OS_LOG_TYPE_ERROR, " No 'showMoreAlternativeTimesTapped' callback found.  Will not invoke.", &v23, 2u);
        }
      }
    }

    else
    {
      [(EKUIInviteesViewAlternativeTimeSection *)self setHasCheckedRow:1];
      [(EKUIInviteesViewAlternativeTimeSection *)self setLastCheckedRow:v5];
    }
  }

  else
  {
    v13 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AD98];
      v15 = v13;
      v16 = [v14 numberWithInteger:v5];
      v23 = 138412290;
      v24 = v16;
      _os_log_impl(&dword_1D3400000, v15, OS_LOG_TYPE_ERROR, "There is no row with index [%@].  Will not select a row.", &v23, 0xCu);
    }
  }
}

- (void)clearCheckmark
{
  [(EKUIInviteesViewAlternativeTimeSection *)self setHasCheckedRow:0];

  [(EKUIInviteesViewAlternativeTimeSection *)self setLastCheckedRow:0];
}

- (void)availabilitySearcherChangedState:(int64_t)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      [(EKUIInviteesViewAlternativeTimeSection *)self setSearcherHasError:0];
      if ([(EKUIInviteesViewAlternativeTimeSection *)self searchExhausted])
      {
        v9 = kEKUILogInviteesHandle;
        if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        *buf = 138412290;
        v21 = self;
        v10 = "Search has been exhausted.  Will not update [%@]";
      }

      else
      {
        if (![(EKUIInviteesViewAlternativeTimeSection *)self searchingForMoreTimes])
        {
          if (![(EKUIInviteesViewAlternativeTimeSection *)self availabilityRequestInProgress]&& ![(EKUIInviteesViewAlternativeTimeSection *)self initialSearchInProgress])
          {
            return;
          }

          [(EKUIInviteesViewAlternativeTimeSection *)self setInitialSearchInProgress:0];
          [(EKUIInviteesViewAlternativeTimeSection *)self setAvailabilityRequestInProgress:0];
          v11 = [(EKUIInviteesViewAlternativeTimeSection *)self alternativeTimes];
          v19 = v11;
          if (v11)
          {
            v12 = [v11 count];
          }

          else
          {
            v12 = 0;
          }

          v13 = [(EKUIInviteesViewAlternativeTimeSection *)self searcherTimeSlots];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 count];
          }

          else
          {
            v15 = 0;
          }

          [(EKUIInviteesViewAlternativeTimeSection *)self setAlternativeTimes:v14];
          v16 = [(EKUIInviteesViewAlternativeTimeSection *)self numberOfRows]- 1;
          v17 = [(EKUIInviteesViewAlternativeTimeSection *)self tableViewCellHook];
          v18 = v17[2](v17, v16);

          if (v12 == v15)
          {
            [(EKUIInviteesViewAlternativeTimeSection *)self setSearchExhausted:1];
            [v18 setNoAvailableTimesStateWithNumberOfExistingTimes:v12 hasError:0];
          }

          else
          {
            [v18 setShowMoreState];
          }

          goto LABEL_8;
        }

        v9 = kEKUILogInviteesHandle;
        if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        *buf = 138412290;
        v21 = self;
        v10 = "Still searching for more times.  Will not update [%@]";
      }

      _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_DEBUG, v10, buf, 0xCu);
      return;
    }

    if (a3 != 3)
    {
      return;
    }

    [(EKUIInviteesViewAlternativeTimeSection *)self setSearcherHasError:1];
    [(EKUIInviteesViewAlternativeTimeSection *)self setInitialSearchInProgress:0];
    [(EKUIInviteesViewAlternativeTimeSection *)self setAvailabilityRequestInProgress:0];
    [(EKUIInviteesViewAlternativeTimeSection *)self setSearchExhausted:1];
    v6 = [(EKUIInviteesViewAlternativeTimeSection *)self numberOfRows]- 1;
    v7 = [(EKUIInviteesViewAlternativeTimeSection *)self tableViewCellHook];
    v19 = v7[2](v7, v6);

    [v19 setNoAvailableTimesStateWithNumberOfExistingTimes:0 hasError:1];
LABEL_8:

    return;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    [(EKUIInviteesViewAlternativeTimeSection *)self setSearcherHasError:0];
    [(EKUIInviteesViewAlternativeTimeSection *)self setMaximumNumberOfTimeSlotsToShow:[(EKUIInviteesViewAlternativeTimeSection *)self initialNumberOfTimeSlotsToShow]];
    [(EKUIInviteesViewAlternativeTimeSection *)self setInitialSearchInProgress:1];
    v4 = [(EKUIInviteesViewAlternativeTimeSection *)self numberOfRows]- 1;
    v5 = [(EKUIInviteesViewAlternativeTimeSection *)self tableViewCellHook];
    v19 = v5[2](v5, v4);

    [v19 setInitialSearchInProgressState];
    goto LABEL_8;
  }

  [(EKUIInviteesViewAlternativeTimeSection *)self setAlternativeTimes:?];
  [(EKUIInviteesViewAlternativeTimeSection *)self setHasCheckedRow:0];
  [(EKUIInviteesViewAlternativeTimeSection *)self setLastCheckedRow:0];
  v8 = [(EKUIInviteesViewAlternativeTimeSection *)self rowsShowingAllParticipants];
  [v8 removeAllObjects];

  [(EKUIInviteesViewAlternativeTimeSection *)self setAvailabilityRequestInProgress:0];
  [(EKUIInviteesViewAlternativeTimeSection *)self setMaximumNumberOfTimeSlotsToShow:0];
  [(EKUIInviteesViewAlternativeTimeSection *)self setSearchExhausted:0];
  [(EKUIInviteesViewAlternativeTimeSection *)self setInitialSearchInProgress:0];

  [(EKUIInviteesViewAlternativeTimeSection *)self setSearcherHasError:0];
}

- (void)refreshCellsAfterStateChange
{
  v3 = [(EKUIInviteesViewAlternativeTimeSection *)self numberOfRows]- 1;
  v4 = [(EKUIInviteesViewAlternativeTimeSection *)self tableViewCellHook];
  v5 = v4[2](v4, v3);

  if ([(EKUIInviteesViewAlternativeTimeSection *)self initialSearchInProgress])
  {
    [v5 setInitialSearchInProgressState];
  }

  else if ([(EKUIInviteesViewAlternativeTimeSection *)self searchExhausted])
  {
    [v5 setNoAvailableTimesStateWithNumberOfExistingTimes:-[EKUIInviteesViewAlternativeTimeSection _numberOfTimeSlotsShown](self hasError:{"_numberOfTimeSlotsShown"), -[EKUIInviteesViewAlternativeTimeSection searcherHasError](self, "searcherHasError")}];
  }

  else if ([(EKUIInviteesViewAlternativeTimeSection *)self availabilityRequestInProgress])
  {
    [v5 setAvailabilityRequestInProgressState];
  }

  else
  {
    [v5 setShowMoreState];
  }
}

- (unint64_t)initialNumberOfTimeSlotsToShow
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[EKUIInviteesViewAlternativeTimeSection initialNumberOfTimeSlotsToShow]";
    v7 = 2112;
    v8 = self;
    _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_ERROR, "A subclass has not overridden this method, which must be overridden: [%s].  Subclass instance: [%@]", &v5, 0x16u);
  }

  return 0;
}

- (NSArray)searcherTimeSlots
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[EKUIInviteesViewAlternativeTimeSection searcherTimeSlots]";
    v7 = 2112;
    v8 = self;
    _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_ERROR, "A subclass has not overridden this method, which must be overridden: [%s].  Subclass instance: [%@]", &v5, 0x16u);
  }

  return 0;
}

- (Class)customTimeCellClass
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[EKUIInviteesViewAlternativeTimeSection customTimeCellClass]";
    v8 = 2112;
    v9 = self;
    _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_ERROR, "A subclass has not overridden this method, which must be overridden: [%s].  Subclass instance: [%@]", &v6, 0x16u);
  }

  v4 = objc_opt_class();

  return v4;
}

- (BOOL)searchingForMoreTimes
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[EKUIInviteesViewAlternativeTimeSection searchingForMoreTimes]";
    v7 = 2112;
    v8 = self;
    _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_ERROR, "A subclass has not overridden this method, which must be overridden: [%s].  Subclass instance: [%@]", &v5, 0x16u);
  }

  return 0;
}

- (void)searchForMoreTimes
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[EKUIInviteesViewAlternativeTimeSection searchForMoreTimes]";
    v6 = 2112;
    v7 = self;
    _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_ERROR, "A subclass has not overridden this method, which must be overridden: [%s].  Subclass instance: [%@]", &v4, 0x16u);
  }
}

- (void)setHasCheckedRow:(BOOL)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v6 = v5;
    v7 = CalBooleanAsString();
    v14 = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = self;
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_DEBUG, "Setting 'hasCheckedRow' to [%@] in section [%@]", &v14, 0x16u);
  }

  self->_hasCheckedRow = a3;
  if (!a3)
  {
    v8 = [(EKUIInviteesViewAlternativeTimeSection *)self tableViewCellHook];

    if (v8)
    {
      v9 = [(EKUIInviteesViewAlternativeTimeSection *)self _numberOfTimeSlotsShown];
      if (v9 >= 1)
      {
        v10 = v9;
        for (i = 0; i != v10; ++i)
        {
          v12 = [(EKUIInviteesViewAlternativeTimeSection *)self tableViewCellHook];
          v13 = v12[2](v12, i);

          [v13 setChecked:0];
        }
      }
    }
  }
}

- (void)setLastCheckedRow:(int64_t)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = v5;
    v8 = [v6 numberWithInteger:a3];
    v24 = 138412546;
    v25 = v8;
    v26 = 2112;
    v27 = self;
    _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_DEBUG, "Setting last checked row to [%@] in section [%@]", &v24, 0x16u);
  }

  lastCheckedRow = self->_lastCheckedRow;
  self->_lastCheckedRow = a3;
  if ([(EKUIInviteesViewAlternativeTimeSection *)self hasCheckedRow])
  {
    if ([(EKUIInviteesViewAlternativeTimeSection *)self _isValidRow:a3])
    {
      v10 = [(EKUIInviteesViewAlternativeTimeSection *)self tableViewCellHook];

      if (v10)
      {
        v11 = [(EKUIInviteesViewAlternativeTimeSection *)self tableViewCellHook];
        v12 = v11[2](v11, lastCheckedRow);

        [v12 setChecked:0];
        v13 = [(EKUIInviteesViewAlternativeTimeSection *)self tableViewCellHook];
        v14 = v13[2](v13, a3);

        [v14 setChecked:1];
        [v14 setSelected:0 animated:1];
      }

      v15 = [(EKUIInviteesViewAlternativeTimeSection *)self newTimeChosen];

      if (v15)
      {
        v16 = [(EKUIInviteesViewAlternativeTimeSection *)self _alternativeTimeAtIndex:a3];
        if (v16)
        {
          v17 = [(EKUIInviteesViewAlternativeTimeSection *)self newTimeChosen];
          v18 = [v16 startDate];
          v19 = [v16 endDate];
          (v17)[2](v17, v18, v19);
        }
      }
    }

    else
    {
      v20 = kEKUILogInviteesHandle;
      if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
      {
        v21 = MEMORY[0x1E696AD98];
        v22 = v20;
        v23 = [v21 numberWithInteger:a3];
        v24 = 138412290;
        v25 = v23;
        _os_log_impl(&dword_1D3400000, v22, OS_LOG_TYPE_ERROR, "There is no row with index [%@].  Will not 'set last checked row' to its row value.", &v24, 0xCu);
      }
    }
  }
}

- (unint64_t)_numberOfTimeSlotsShown
{
  v3 = [(EKUIInviteesViewAlternativeTimeSection *)self alternativeTimes];
  if (v3)
  {
    v4 = [(EKUIInviteesViewAlternativeTimeSection *)self alternativeTimes];
    v5 = [v4 count];
  }

  else
  {
    v5 = 0;
  }

  result = [(EKUIInviteesViewAlternativeTimeSection *)self maximumNumberOfTimeSlotsToShow];
  if (v5 < result)
  {
    return v5;
  }

  return result;
}

- (id)_alternativeTimeAtIndex:(int64_t)a3
{
  if ([(EKUIInviteesViewAlternativeTimeSection *)self _numberOfTimeSlotsShown]<= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(EKUIInviteesViewAlternativeTimeSection *)self alternativeTimes];
    v6 = [v5 objectAtIndex:a3];
  }

  return v6;
}

@end
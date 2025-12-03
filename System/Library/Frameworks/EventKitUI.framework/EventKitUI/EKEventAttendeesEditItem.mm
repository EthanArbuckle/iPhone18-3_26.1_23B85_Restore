@interface EKEventAttendeesEditItem
+ (id)_noneInviteesLocalizedString;
- (BOOL)canBeConfiguredForCalendarConstraints:(id)constraints;
- (BOOL)configureForCalendarConstraints:(id)constraints;
- (BOOL)editItemViewControllerSave:(id)save;
- (BOOL)shouldAppear;
- (EKEventAttendeesEditItem)init;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index;
- (id)injectableViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)editor:(id)editor didSelectSubitem:(unint64_t)subitem;
- (void)refreshFromCalendarItemAndStore;
@end

@implementation EKEventAttendeesEditItem

- (EKEventAttendeesEditItem)init
{
  v8.receiver = self;
  v8.super_class = EKEventAttendeesEditItem;
  v2 = [(EKEventAttendeesEditItem *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    availabilityQueue = v2->_availabilityQueue;
    v2->_availabilityQueue = v3;

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(NSOperationQueue *)v2->_availabilityQueue setName:v6];
  }

  return v2;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_availabilityQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = EKEventAttendeesEditItem;
  [(EKEventAttendeesEditItem *)&v3 dealloc];
}

- (BOOL)canBeConfiguredForCalendarConstraints:(id)constraints
{
  event = [(EKEventEditItem *)self event];
  allowsAttendeesModifications = [event allowsAttendeesModifications];

  return allowsAttendeesModifications;
}

- (BOOL)configureForCalendarConstraints:(id)constraints
{
  constraintsCopy = constraints;
  source = [constraintsCopy source];
  externalID = [source externalID];
  searchAccountID = self->_searchAccountID;
  self->_searchAccountID = externalID;

  LOBYTE(self) = [(EKEventAttendeesEditItem *)self canBeConfiguredForCalendarConstraints:constraintsCopy];
  return self;
}

- (BOOL)shouldAppear
{
  v57 = *MEMORY[0x1E69E9840];
  event = [(EKEventEditItem *)self event];
  calendar = [event calendar];
  source = [calendar source];
  constraints = [source constraints];
  prohibitsPrivateEventsWithAttendees = [constraints prohibitsPrivateEventsWithAttendees];

  if (prohibitsPrivateEventsWithAttendees && [event privacyLevel])
  {
    v8 = kEKUILogHandle;
    v9 = 0;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v8;
      *buf = 134217984;
      privacyLevel = [event privacyLevel];
      _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_DEFAULT, "MissingAttendees: Event is non-standard privacy level %ld", buf, 0xCu);

      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  calendar2 = [event calendar];
  v12 = [(EKEventAttendeesEditItem *)self canBeConfiguredForCalendarConstraints:calendar2];

  if (!v12)
  {
    v48 = v9;
    calendar3 = [event calendar];
    source2 = [calendar3 source];
    v15 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      title = [calendar3 title];
      calendarIdentifier = [calendar3 calendarIdentifier];
      title2 = [source2 title];
      sourceIdentifier = [source2 sourceIdentifier];
      *buf = 138413058;
      privacyLevel = title;
      v51 = 2114;
      v52 = calendarIdentifier;
      v53 = 2112;
      v54 = title2;
      v55 = 2114;
      v56 = sourceIdentifier;
      _os_log_impl(&dword_1D3400000, v16, OS_LOG_TYPE_DEFAULT, "MissingAttendees: Event calendar (%@ %{public}@) does not allow attendees (source %@ %{public}@)", buf, 0x2Au);
    }

    v21 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v22 = MEMORY[0x1E696AD98];
      v23 = v21;
      v24 = [v22 numberWithInt:{objc_msgSend(event, "status") == 3}];
      *buf = 138412290;
      privacyLevel = v24;
      _os_log_impl(&dword_1D3400000, v23, OS_LOG_TYPE_DEFAULT, "MissingAttendees: Cancelled %@", buf, 0xCu);
    }

    v25 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v26 = MEMORY[0x1E696AD98];
      v27 = v25;
      v28 = [v26 numberWithBool:{objc_msgSend(event, "isSelfOrganized")}];
      *buf = 138412290;
      privacyLevel = v28;
      _os_log_impl(&dword_1D3400000, v27, OS_LOG_TYPE_DEFAULT, "MissingAttendees: Self Organized %@", buf, 0xCu);
    }

    v29 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v30 = MEMORY[0x1E696AD98];
      v31 = v29;
      v32 = [v30 numberWithBool:{objc_msgSend(calendar3, "allowsScheduling")}];
      *buf = 138412290;
      privacyLevel = v32;
      _os_log_impl(&dword_1D3400000, v31, OS_LOG_TYPE_DEFAULT, "MissingAttendees: Calendar Allows Scheduling %@", buf, 0xCu);
    }

    v33 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v34 = MEMORY[0x1E696AD98];
      v35 = v33;
      constraints2 = [source2 constraints];
      v37 = [v34 numberWithBool:{objc_msgSend(constraints2, "supportsOutgoingInvitations")}];
      *buf = 138412290;
      privacyLevel = v37;
      _os_log_impl(&dword_1D3400000, v35, OS_LOG_TYPE_DEFAULT, "MissingAttendees: Source Supports Outgoing Invitations %@", buf, 0xCu);
    }

    v38 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v39 = MEMORY[0x1E696AD98];
      v40 = v38;
      constraints3 = [source2 constraints];
      v42 = [v39 numberWithBool:{objc_msgSend(constraints3, "requiresOutgoingInvitationsInDefaultCalendar")}];
      *buf = 138412290;
      privacyLevel = v42;
      _os_log_impl(&dword_1D3400000, v40, OS_LOG_TYPE_DEFAULT, "MissingAttendees: Source Requires Default Outgoing Invitations %@", buf, 0xCu);
    }

    v43 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v44 = MEMORY[0x1E696AD98];
      v45 = v43;
      v46 = [v44 numberWithBool:{objc_msgSend(calendar3, "isDefaultSchedulingCalendar")}];
      *buf = 138412290;
      privacyLevel = v46;
      _os_log_impl(&dword_1D3400000, v45, OS_LOG_TYPE_DEFAULT, "MissingAttendees: Calendar is Default %@", buf, 0xCu);
    }

    v9 = v48;
  }

  return v9 & v12;
}

- (void)refreshFromCalendarItemAndStore
{
  v60 = *MEMORY[0x1E69E9840];
  v56.receiver = self;
  v56.super_class = EKEventAttendeesEditItem;
  [(EKCalendarItemEditItem *)&v56 refreshFromCalendarItemAndStore];
  [(NSOperationQueue *)self->_availabilityQueue cancelAllOperations];
  event = [(EKEventEditItem *)self event];
  calendar = [event calendar];
  source = [calendar source];

  constraints = [source constraints];
  supportsAvailabilityRequests = [constraints supportsAvailabilityRequests];

  attendees = [event attendees];
  v38 = attendees;
  if (!attendees)
  {
    if (supportsAvailabilityRequests)
    {
LABEL_9:
      v9 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v10 = "There are no attendees associated with this event.  Will not attempt to detect conflicts.";
LABEL_13:
        _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_DEBUG, v10, buf, 2u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

LABEL_11:
    v9 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v10 = "This event's source does not support availability requests.  Will not attempt to detect conflicts.";
      goto LABEL_13;
    }

LABEL_14:
    self->_numberOfConflicts = 0;
    goto LABEL_15;
  }

  v6 = [attendees count];
  if ((supportsAvailabilityRequests & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_DEBUG, "Attempting to detect conflicts.", buf, 2u);
  }

  *buf = 0;
  v53 = buf;
  v54 = 0x2020000000;
  v55 = 0;
  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([event isStartDateDirty])
  {
    isEndDateDirty = 1;
  }

  else
  {
    isEndDateDirty = [event isEndDateDirty];
  }

  organizer = [event organizer];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  attendees2 = [event attendees];
  v13 = [attendees2 countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (!v13)
  {
    v42 = 0;
    goto LABEL_50;
  }

  v42 = 0;
  v14 = *v49;
  do
  {
    v15 = 0;
    do
    {
      if (*v49 != v14)
      {
        objc_enumerationMutation(attendees2);
      }

      v16 = *(*(&v48 + 1) + 8 * v15);
      if (!EKUIAttendeeUtils_ShouldConsiderAttendeeForConflictChecking(v16))
      {
        v17 = kEKUILogHandle;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v19 = [v16 URL];
          *v57 = 138412290;
          v58 = v19;
          _os_log_impl(&dword_1D3400000, v17, OS_LOG_TYPE_DEBUG, "Attendee will not be considered for conflict checking: [%@]", v57, 0xCu);
        }

        goto LABEL_46;
      }

      if (organizer && [organizer isEqualToParticipant:v16])
      {
        v17 = kEKUILogHandle;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = [v16 URL];
          *v57 = 138412290;
          v58 = v18;
          _os_log_impl(&dword_1D3400000, v17, OS_LOG_TYPE_DEBUG, "Organizer will not be considered for conflict checking: [%@]", v57, 0xCu);
        }

LABEL_46:

        goto LABEL_42;
      }

      if ((isEndDateDirty & 1) != 0 || (EKUIAttendeeUtils_AttendeeHasResponded(v16) & 1) == 0)
      {
        v23 = [v16 URL];
        absoluteString = [v23 absoluteString];
        v25 = kEKUILogHandle;
        if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
        {
          *v57 = 138412290;
          v58 = absoluteString;
          _os_log_impl(&dword_1D3400000, v25, OS_LOG_TYPE_DEBUG, "Attendee's conflict status is unknown.  Will issue availability request to determine if there is a conflict.  Attendee's address: [%@]", v57, 0xCu);
        }

        if (absoluteString)
        {
          [v43 addObject:absoluteString];
        }
      }

      else
      {
        participantStatus = [v16 participantStatus];
        v17 = kEKUILogHandle;
        v21 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
        if (participantStatus != 3)
        {
          if (v21)
          {
            v26 = [v16 URL];
            *v57 = 138412290;
            v58 = v26;
            _os_log_impl(&dword_1D3400000, v17, OS_LOG_TYPE_DEBUG, "Attendee has no conflict.  Attendee's address: [%@]", v57, 0xCu);
          }

          goto LABEL_46;
        }

        if (v21)
        {
          v22 = [v16 URL];
          *v57 = 138412290;
          v58 = v22;
          _os_log_impl(&dword_1D3400000, v17, OS_LOG_TYPE_DEBUG, "Attendee was detected as conflicted.  Attendee's address: [%@]", v57, 0xCu);
        }

        ++v42;
      }

LABEL_42:
      ++v15;
    }

    while (v13 != v15);
    v27 = [attendees2 countByEnumeratingWithState:&v48 objects:v59 count:16];
    v13 = v27;
  }

  while (v27);
LABEL_50:

  v28 = [v43 count];
  v29 = kEKUILogHandle;
  if (v28)
  {
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v57 = 138412290;
      v58 = v43;
      _os_log_impl(&dword_1D3400000, v29, OS_LOG_TYPE_DEBUG, "Creating an availability request to look up availability for attendees: [%@]", v57, 0xCu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__EKEventAttendeesEditItem_refreshFromCalendarItemAndStore__block_invoke;
    aBlock[3] = &unk_1E8441410;
    aBlock[4] = buf;
    v30 = _Block_copy(aBlock);
    v31 = objc_alloc(MEMORY[0x1E6966AE0]);
    startDate = [event startDate];
    endDateUnadjustedForLegacyClients = [event endDateUnadjustedForLegacyClients];
    v34 = [v31 initWithSource:source startDate:startDate endDate:endDateUnadjustedForLegacyClients ignoredEvent:event addresses:v43 resultsBlock:v30];

    objc_initWeak(&location, v34);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __59__EKEventAttendeesEditItem_refreshFromCalendarItemAndStore__block_invoke_18;
    v44[3] = &unk_1E8441460;
    objc_copyWeak(v45, &location);
    v45[1] = v42;
    v44[5] = buf;
    v44[4] = self;
    [v34 setCompletionBlock:v44];
    v35 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v57 = 138412290;
      v58 = v34;
      _os_log_impl(&dword_1D3400000, v35, OS_LOG_TYPE_DEBUG, "Adding availability operation: [%@]", v57, 0xCu);
    }

    [(NSOperationQueue *)self->_availabilityQueue addOperation:v34];
    objc_destroyWeak(v45);
    objc_destroyWeak(&location);
  }

  else
  {
    v36 = kEKUILogHandle;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v42];
      *v57 = 138412290;
      v58 = v37;
      _os_log_impl(&dword_1D3400000, v36, OS_LOG_TYPE_DEBUG, "There are no attendees that have an unknown conflict status.  Will not send an availability request.  Setting number of conflicts to [%@].", v57, 0xCu);
    }

    self->_numberOfConflicts = v42;
  }

  _Block_object_dispose(buf, 8);
LABEL_15:
}

void __59__EKEventAttendeesEditItem_refreshFromCalendarItemAndStore__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__EKEventAttendeesEditItem_refreshFromCalendarItemAndStore__block_invoke_2;
  v6[3] = &unk_1E8441178;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __59__EKEventAttendeesEditItem_refreshFromCalendarItemAndStore__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__EKEventAttendeesEditItem_refreshFromCalendarItemAndStore__block_invoke_3;
  v3[3] = &unk_1E84413E8;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void __59__EKEventAttendeesEditItem_refreshFromCalendarItemAndStore__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [MEMORY[0x1E6966988] spansIncludeBusyPeriod:a3];
  v7 = kEKUILogHandle;
  v8 = os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_DEBUG, "Attendee was detected as conflicted after finding out its availability.  Attendee's address: [%@]", &v9, 0xCu);
    }

    ++*(*(*(a1 + 32) + 8) + 24);
  }

  else if (v8)
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_DEBUG, "Attendee was detected as not being conflicted after finding out its availability.  Attendee's address: [%@]", &v9, 0xCu);
  }
}

void __59__EKEventAttendeesEditItem_refreshFromCalendarItemAndStore__block_invoke_18(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = kEKUILogHandle;
  v4 = os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG);
  if (WeakRetained)
  {
    if (v4)
    {
      *buf = 138412290;
      v15 = WeakRetained;
      _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_DEBUG, "Availability operation completed: [%@]", buf, 0xCu);
    }

    v5 = [WeakRetained error];
    v6 = [WeakRetained isCancelled];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__EKEventAttendeesEditItem_refreshFromCalendarItemAndStore__block_invoke_19;
    v8[3] = &unk_1E8441438;
    v9 = v5;
    v13 = v6;
    v10 = WeakRetained;
    v12 = *(a1 + 56);
    v11 = *(a1 + 32);
    v7 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }

  else if (v4)
  {
    *buf = 0;
    _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_DEBUG, "The availability operation has gone away.  Returning early.", buf, 2u);
  }
}

void __59__EKEventAttendeesEditItem_refreshFromCalendarItemAndStore__block_invoke_19(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = kEKUILogHandle;
    if (!os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    v3 = *(a1 + 32);
    *v18 = 138412290;
    *&v18[4] = v3;
    v4 = "Error encountered during availability request: [%@]";
    goto LABEL_7;
  }

  if (*(a1 + 72) == 1)
  {
    v2 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 40);
      *v18 = 138412290;
      *&v18[4] = v5;
      v4 = "An availability operation was cancelled: [%@]";
LABEL_7:
      _os_log_impl(&dword_1D3400000, v2, OS_LOG_TYPE_DEBUG, v4, v18, 0xCu);
    }
  }

LABEL_8:
  v6 = *(*(*(a1 + 56) + 8) + 24) + *(a1 + 64);
  v7 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v8 = MEMORY[0x1E696AD98];
    v9 = *(a1 + 64);
    v10 = v7;
    v11 = [v8 numberWithUnsignedInteger:v9];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(*(a1 + 56) + 8) + 24)];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    *v18 = 138412802;
    *&v18[4] = v11;
    *&v18[12] = 2112;
    *&v18[14] = v12;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_DEBUG, "Number of conflicted participants with a response: [%@].  Number of conflicted participants without a response: [%@].  Total: [%@].", v18, 0x20u);
  }

  *(*(a1 + 48) + 72) = v6;
  v14 = [*(a1 + 48) delegate];
  v15 = [v14 rowNumberForEditItem:*(a1 + 48)];

  v16 = [MEMORY[0x1E696AC88] indexPathForRow:v15 inSection:0];
  v17 = [*(a1 + 48) delegate];
  [v17 editItem:*(a1 + 48) wantsRowReload:v16];
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  v4 = [[EKUITableViewCell alloc] initWithStyle:1 reuseIdentifier:0];
  event = [(EKEventEditItem *)self event];
  attendees = [event attendees];
  v7 = [attendees count];

  if (v7)
  {
    if ([MEMORY[0x1E6966988] availabilityPanelVisibilityForEvent:event] || self->_numberOfConflicts < 1)
    {
      v8 = MEMORY[0x1E6993398];
      selfOrganizer = self->_selfOrganizer;
      v9 = selfOrganizer;
      v10 = [v8 attendeesWithoutSelfOrganizerAndLocationsWithEvent:event outSelfOrganizer:&selfOrganizer];
      v11 = selfOrganizer;
      v12 = selfOrganizer;

      v13 = [v10 count];
      objc_storeStrong(&self->_selfOrganizer, v11);
      if (v13)
      {
        CUIKLocalizedStringForInteger();
      }

      else
      {
        [objc_opt_class() _noneInviteesLocalizedString];
      }
      _noneInviteesLocalizedString = ;
    }

    else
    {
      v12 = CUIKLocalizedStringForInteger();
      numberOfConflicts = self->_numberOfConflicts;
      v16 = MEMORY[0x1E696AEC0];
      v17 = EventKitUIBundle();
      v18 = v17;
      if (numberOfConflicts == 1)
      {
        v19 = @"%@ Conflict";
      }

      else
      {
        v19 = @"%@ Conflicts";
      }

      v20 = [v17 localizedStringForKey:v19 value:&stru_1F4EF6790 table:0];
      _noneInviteesLocalizedString = [v16 localizedStringWithFormat:v20, v12];

      systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
      detailTextLabel = [(EKUITableViewCell *)v4 detailTextLabel];
      [detailTextLabel setTextColor:systemRedColor];
    }
  }

  else
  {
    _noneInviteesLocalizedString = [objc_opt_class() _noneInviteesLocalizedString];
  }

  [(EKUITableViewCell *)v4 setAccessoryType:1];
  v23 = EventKitUIBundle();
  v24 = [v23 localizedStringForKey:@"Invitees" value:&stru_1F4EF6790 table:0];
  textLabel = [(EKUITableViewCell *)v4 textLabel];
  [textLabel setText:v24];

  detailTextLabel2 = [(EKUITableViewCell *)v4 detailTextLabel];
  [detailTextLabel2 setText:_noneInviteesLocalizedString];

  return v4;
}

+ (id)_noneInviteesLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"None invitees" value:@"None" table:0];

  return v3;
}

- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  event = [(EKEventEditItem *)self event];
  v10 = MEMORY[0x1E6993398];
  selfOrganizer = self->_selfOrganizer;
  v11 = selfOrganizer;
  v12 = [v10 attendeesWithoutSelfOrganizerAndLocationsWithEvent:event outSelfOrganizer:&selfOrganizer];
  v13 = selfOrganizer;
  v14 = selfOrganizer;

  objc_storeStrong(&self->_selfOrganizer, v13);
  if ([v12 count])
  {
    v15 = [EKUIEventInviteesEditViewController alloc];
    event2 = [(EKEventEditItem *)self event];
    v17 = [(EKUIEventInviteesEditViewController *)v15 initWithEvent:event2];
  }

  else
  {
    height = [[EKEventAttendeesEditViewController alloc] initWithFrame:event event:0 overriddenEventStartDate:0 overriddenEventEndDate:x, y, width, height];
    v17 = height;
    if (self->_searchAccountID)
    {
      [(EKEventAttendeesEditViewController *)height setSearchAccountID:?];
    }
  }

  return v17;
}

- (id)injectableViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index
{
  v5 = [EKUIEventInviteesEditViewController alloc];
  event = [(EKEventEditItem *)self event];
  v7 = [(EKUIEventInviteesEditViewController *)v5 initWithEvent:event];

  return v7;
}

- (void)editor:(id)editor didSelectSubitem:(unint64_t)subitem
{
  editorCopy = editor;
  [editorCopy setHasModifiedAttendeesFromSuggestion:0];
  v7.receiver = self;
  v7.super_class = EKEventAttendeesEditItem;
  [(EKCalendarItemEditItem *)&v7 editor:editorCopy didSelectSubitem:subitem];
}

- (BOOL)editItemViewControllerSave:(id)save
{
  v26 = *MEMORY[0x1E69E9840];
  saveCopy = save;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    event = [(EKEventEditItem *)self event];
    calendar = [event calendar];

    attendees = [saveCopy attendees];
    event2 = [(EKEventEditItem *)self event];
    attendees2 = [event2 attendees];
    v10 = attendees2;
    v11 = MEMORY[0x1E695E0F0];
    if (attendees2)
    {
      v11 = attendees2;
    }

    v12 = v11;

    v13 = [attendees count];
    if (([calendar sharingStatus] != 2 || (-[EKEventEditItem event](self, "event"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "organizer"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15)) && self->_selfOrganizer && v13)
    {
      v16 = [MEMORY[0x1E695DF70] arrayWithArray:v12];
      [v16 addObject:self->_selfOrganizer];
      [v16 addObjectsFromArray:attendees];
    }

    else
    {
      v16 = [attendees arrayByAddingObjectsFromArray:v12];
    }

    event3 = [(EKEventEditItem *)self event];
    [event3 setAttendees:v16];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = saveCopy;
      selectedStartDate = [v17 selectedStartDate];
      selectedEndDate = [v17 selectedEndDate];

      event4 = [(EKEventEditItem *)self event];
      [event4 setStartDate:selectedStartDate];
      [event4 setEndDateUnadjustedForLegacyClients:selectedEndDate];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v23 = kEKUILogHandle;
        if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
        {
          v24 = 138412290;
          v25 = saveCopy;
          _os_log_impl(&dword_1D3400000, v23, OS_LOG_TYPE_ERROR, "Unrecognized controller saved: [%@]", &v24, 0xCu);
        }
      }
    }
  }

  [(EKCalendarItemEditItem *)self notifySubitemDidSave:0];

  return 1;
}

@end
@interface EKUIInviteesViewAddInviteesSection
+ (id)_participantAddressForParticipant:(id)participant;
- (BOOL)_isAddInviteesRow:(int64_t)row;
- (BOOL)_setOfAddressesToInflightOperationsContainsAddress:(id)address;
- (BOOL)canEditRow:(id)row;
- (BOOL)hasPendingParticipants;
- (BOOL)sectionShouldBeShown;
- (EKUIInviteesViewAddInviteesSection)init;
- (double)estimatedHeightForRow:(id)row;
- (double)heightForRow:(id)row;
- (id)_lookUpAvailabilityTypeForParticipantAddress:(id)address;
- (id)_lookUpParticipantIndexForParticipantAddress:(id)address;
- (id)actionsForRow:(id)row;
- (id)cellForIndexPath:(id)path inTableView:(id)view;
- (id)contextMenuDataForIndexPath:(id)path interaction:(id)interaction;
- (id)debugTitle;
- (id)headerTitle;
- (id)titleForDeleteConfirmationButtonForRow:(id)row;
- (unint64_t)numberOfRows;
- (void)_addAddressToSetOfAddressesToInflightOperations:(id)operations;
- (void)_removeAddressFromDictionaryOfAddressesToAvailabilityType:(id)type;
- (void)_removeAddressFromDictionaryOfAddressesToParticipantIndex:(id)index;
- (void)_removeAddressFromSetOfAddressesToInflightOperations:(id)operations;
- (void)_removeParticipantAtIndexPath:(id)path;
- (void)_setAvailabilityType:(id)type forParticipantAddress:(id)address;
- (void)_setParticipantIndex:(id)index forParticipantAddress:(id)address;
- (void)_updateCell:(id)cell forParticipantAtIndex:(int64_t)index animated:(BOOL)animated;
- (void)_updateCellForParticipantWithAddress:(id)address;
- (void)cancelOutstandingOperations;
- (void)commitEditingStyle:(int64_t)style forRow:(id)row;
- (void)dealloc;
- (void)reloadAndRegisterReusableCellsWithTableView:(id)view;
- (void)selectRow:(id)row;
- (void)updateWithEvent:(id)event showPending:(BOOL)pending;
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
      name = [v6 name];
      *buf = 138412290;
      v16 = name;
      _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_DEBUG, "Created availability queue named [%@]", buf, 0xCu);
    }
  }

  return v2;
}

- (void)dealloc
{
  availabilityRequestsQueue = [(EKUIInviteesViewAddInviteesSection *)self availabilityRequestsQueue];
  [availabilityRequestsQueue cancelAllOperations];

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
  participants = [(EKUIInviteesViewAddInviteesSection *)self participants];
  v3 = [participants count];

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

  event = [(EKUIInviteesViewAddInviteesSection *)self event];
  allowsAttendeesModifications = [event allowsAttendeesModifications];

  return allowsAttendeesModifications;
}

- (unint64_t)numberOfRows
{
  participants = [(EKUIInviteesViewAddInviteesSection *)self participants];
  v4 = [participants count];

  if (!v4)
  {
    return 1;
  }

  participants2 = [(EKUIInviteesViewAddInviteesSection *)self participants];
  v6 = [participants2 count] + 1;

  return v6;
}

- (id)cellForIndexPath:(id)path inTableView:(id)view
{
  v23 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  viewCopy = view;
  v8 = [pathCopy row];
  if ([(EKUIInviteesViewAddInviteesSection *)self _isValidRow:v8])
  {
    if ([(EKUIInviteesViewAddInviteesSection *)self _isAddInviteesRow:v8])
    {
      cachedAddInviteeCellReuseIdentifier = [(EKUIInviteesViewAddInviteesSection *)self cachedAddInviteeCellReuseIdentifier];
      v10 = [viewCopy dequeueReusableCellWithIdentifier:cachedAddInviteeCellReuseIdentifier forIndexPath:pathCopy];

      [(EKUIInviteesViewInviteesCell *)v10 setSeparatorInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    }

    else
    {
      cachedInviteeCellReuseIdentifier = [(EKUIInviteesViewAddInviteesSection *)self cachedInviteeCellReuseIdentifier];
      v10 = [viewCopy dequeueReusableCellWithIdentifier:cachedInviteeCellReuseIdentifier forIndexPath:pathCopy];

      -[EKUIInviteesViewAddInviteesSection _updateCell:forParticipantAtIndex:animated:](self, "_updateCell:forParticipantAtIndex:animated:", v10, [pathCopy row], 0);
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
    backgroundColor = [viewCopy backgroundColor];
    [(EKUIInviteesViewInviteesCell *)v10 setBackgroundColor:backgroundColor];
  }

  return v10;
}

- (void)reloadAndRegisterReusableCellsWithTableView:(id)view
{
  viewCopy = view;
  v5 = objc_opt_class();
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = NSStringFromClass(v5);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewAddInviteesSection reuseIdentifierVersion](self, "reuseIdentifierVersion")}];
  v9 = [v6 initWithFormat:@"%@-%@", v7, v8];
  [(EKUIInviteesViewAddInviteesSection *)self setCachedInviteeCellReuseIdentifier:v9];

  cachedInviteeCellReuseIdentifier = [(EKUIInviteesViewAddInviteesSection *)self cachedInviteeCellReuseIdentifier];
  [viewCopy registerClass:v5 forCellReuseIdentifier:cachedInviteeCellReuseIdentifier];

  v11 = objc_opt_class();
  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = NSStringFromClass(v11);
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewAddInviteesSection reuseIdentifierVersion](self, "reuseIdentifierVersion")}];
  v15 = [v12 initWithFormat:@"%@-%@", v13, v14];
  [(EKUIInviteesViewAddInviteesSection *)self setCachedAddInviteeCellReuseIdentifier:v15];

  cachedAddInviteeCellReuseIdentifier = [(EKUIInviteesViewAddInviteesSection *)self cachedAddInviteeCellReuseIdentifier];
  [viewCopy registerClass:v11 forCellReuseIdentifier:cachedAddInviteeCellReuseIdentifier];

  v17 = [(EKUIInviteesViewAddInviteesSection *)self reuseIdentifierVersion]+ 1;

  [(EKUIInviteesViewAddInviteesSection *)self setReuseIdentifierVersion:v17];
}

- (void)selectRow:(id)row
{
  v23 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  v5 = [rowCopy row];
  if ([(EKUIInviteesViewAddInviteesSection *)self _isValidRow:v5])
  {
    if ([(EKUIInviteesViewAddInviteesSection *)self _isAddInviteesRow:v5])
    {
      addInviteesTapped = [(EKUIInviteesViewAddInviteesSection *)self addInviteesTapped];

      if (addInviteesTapped)
      {
        addInviteesTapped2 = [(EKUIInviteesViewAddInviteesSection *)self addInviteesTapped];
        addInviteesTapped2[2]();
LABEL_19:

        goto LABEL_20;
      }

      v8 = kEKUILogInviteesHandle;
      if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
      {
        v19 = 138412290;
        v20 = rowCopy;
        v9 = "No 'add invitees tapped' callback defined.  Will not select row.  Index path: [%@]";
        goto LABEL_7;
      }

      goto LABEL_20;
    }

    participants = [(EKUIInviteesViewAddInviteesSection *)self participants];
    addInviteesTapped2 = [participants objectAtIndex:v5];

    participant = [addInviteesTapped2 participant];
    if (participant)
    {
      participantTapped = [(EKUIInviteesViewAddInviteesSection *)self participantTapped];

      if (participantTapped)
      {
        participantTapped2 = [(EKUIInviteesViewAddInviteesSection *)self participantTapped];
        (participantTapped2)[2](participantTapped2, participant);

LABEL_18:
        goto LABEL_19;
      }

      v18 = kEKUILogInviteesHandle;
      if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
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
        goto LABEL_18;
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
    goto LABEL_18;
  }

  v8 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
  {
    v19 = 138412290;
    v20 = rowCopy;
    v9 = "Cannot find row to select.  Will not select row.  Index path: [%@]";
LABEL_7:
    _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_ERROR, v9, &v19, 0xCu);
  }

LABEL_20:
}

- (BOOL)canEditRow:(id)row
{
  rowCopy = row;
  if (-[EKUIInviteesViewAddInviteesSection showPending](self, "showPending") && (v5 = [rowCopy row], -[EKUIInviteesViewAddInviteesSection _isValidRow:](self, "_isValidRow:", v5)))
  {
    v6 = ![(EKUIInviteesViewAddInviteesSection *)self _isAddInviteesRow:v5];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)titleForDeleteConfirmationButtonForRow:(id)row
{
  v3 = EventKitUIBundle();
  v4 = [v3 localizedStringForKey:@"Remove invitee - add invitees section" value:@"Remove" table:0];

  return v4;
}

- (void)commitEditingStyle:(int64_t)style forRow:(id)row
{
  v17 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  v7 = [rowCopy row];
  if (style == 1)
  {
    if ([(EKUIInviteesViewAddInviteesSection *)self _isValidRow:v7])
    {
      participantRemoved = [(EKUIInviteesViewAddInviteesSection *)self participantRemoved];

      if (participantRemoved)
      {
        [(EKUIInviteesViewAddInviteesSection *)self _removeParticipantAtIndexPath:rowCopy];
        goto LABEL_12;
      }

      v13 = kEKUILogInviteesHandle;
      if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v15 = 138412290;
      v16 = rowCopy;
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
      v16 = rowCopy;
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
    v12 = [v10 numberWithInteger:style];
    v15 = 138412290;
    v16 = v12;
    _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_ERROR, "Received commit for unrecognized editing style: [%@]", &v15, 0xCu);
  }

LABEL_12:
}

- (double)estimatedHeightForRow:(id)row
{
  if (EKUIUnscaledCatalyst())
  {
    return *MEMORY[0x1E69DE3D0];
  }

  return EKUITableRowHeightDefault();
}

- (double)heightForRow:(id)row
{
  if (EKUIUnscaledCatalyst())
  {
    return *MEMORY[0x1E69DE3D0];
  }

  return EKUITableRowHeightDefault();
}

- (void)cancelOutstandingOperations
{
  availabilityRequestsQueue = [(EKUIInviteesViewAddInviteesSection *)self availabilityRequestsQueue];
  [availabilityRequestsQueue cancelAllOperations];
}

- (id)actionsForRow:(id)row
{
  v13[2] = *MEMORY[0x1E69E9840];
  rowCopy = row;
  if (-[EKUIInviteesViewAddInviteesSection _isAddInviteesRow:](self, "_isAddInviteesRow:", [rowCopy row]))
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v6 = [EKUIInviteesViewSectionCommon deleteRowAction:self forRow:rowCopy];
    participants = [(EKUIInviteesViewAddInviteesSection *)self participants];
    v8 = [participants objectAtIndex:{objc_msgSend(rowCopy, "row")}];

    participantSetRole = [(EKUIInviteesViewAddInviteesSection *)self participantSetRole];
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
  participants = [(EKUIInviteesViewAddInviteesSection *)self participants];
  v9 = [participants objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  participant = [v9 participant];

  v11 = [EKUIInviteeContextMenuData alloc];
  participantSetRole = [(EKUIInviteesViewAddInviteesSection *)self participantSetRole];
  v13 = [(EKUIInviteeContextMenuData *)v11 initWithDefaultActionsForSection:self indexPath:pathCopy participant:participant interaction:interactionCopy participantSetRole:participantSetRole];

  return v13;
}

- (void)updateWithEvent:(id)event showPending:(BOOL)pending
{
  pendingCopy = pending;
  v63 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  [(EKUIInviteesViewAddInviteesSection *)self setEvent:?];
  v6 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_DEBUG, "Cancelling existing availability operations.", buf, 2u);
  }

  availabilityRequestsQueue = [(EKUIInviteesViewAddInviteesSection *)self availabilityRequestsQueue];
  [availabilityRequestsQueue cancelAllOperations];

  participantAddressesToAvailabilityType = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToAvailabilityType];
  [participantAddressesToAvailabilityType removeAllObjects];

  participantAddressesToParticipantIndex = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToParticipantIndex];
  [participantAddressesToParticipantIndex removeAllObjects];

  participantAddressesForInFlightAvailabilityOperations = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [participantAddressesForInFlightAvailabilityOperations removeAllObjects];

  [(EKUIInviteesViewAddInviteesSection *)self setCanSeeAttendeeStatuses:CanSeeAttendeeStatuses(eventCopy)];
  [(EKUIInviteesViewAddInviteesSection *)self setShowPending:pendingCopy];
  if (pendingCopy)
  {
    organizer = [eventCopy organizer];
    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    attendees = [eventCopy attendees];
    v12 = [attendees countByEnumeratingWithState:&v55 objects:v62 count:16];
    if (v12)
    {
      v13 = *v56;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v56 != v13)
          {
            objc_enumerationMutation(attendees);
          }

          v15 = *(*(&v55 + 1) + 8 * i);
          if ([v15 participantType] != 2 && objc_msgSend(v15, "isNew") && (objc_msgSend(v15, "isEqualToParticipant:", organizer) & 1) == 0)
          {
            v16 = [MEMORY[0x1E6966A88] participantForSortingWithEKParticipant:v15];
            [v43 addObject:v16];
          }
        }

        v12 = [attendees countByEnumeratingWithState:&v55 objects:v62 count:16];
      }

      while (v12);
    }

    v41 = [v43 sortedArrayUsingComparator:&__block_literal_global_36];
    calendar = [eventCopy calendar];
    source = [calendar source];
    constraints = [source constraints];
    supportsAvailabilityRequests = [constraints supportsAvailabilityRequests];

    if (supportsAvailabilityRequests)
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

              participant = [*(*(&v51 + 1) + 8 * j) participant];
              v27 = [objc_opt_class() _participantAddressForParticipant:participant];
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
                  v60 = participant;
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
        calendar2 = [eventCopy calendar];
        source2 = [calendar2 source];

        startDate = [eventCopy startDate];
        endDateUnadjustedForLegacyClients = [eventCopy endDateUnadjustedForLegacyClients];
        v35 = [objc_alloc(MEMORY[0x1E6966AE0]) initWithSource:source2 startDate:startDate endDate:endDateUnadjustedForLegacyClients ignoredEvent:eventCopy addresses:v44 resultsBlock:v30];
        objc_initWeak(buf, self);
        objc_initWeak(&location, v35);
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __66__EKUIInviteesViewAddInviteesSection_updateWithEvent_showPending___block_invoke_4;
        v46[3] = &unk_1E843F008;
        objc_copyWeak(&v47, &location);
        objc_copyWeak(&v48, buf);
        [v35 setCompletionBlock:v46];
        availabilityRequestsQueue2 = [(EKUIInviteesViewAddInviteesSection *)self availabilityRequestsQueue];
        [availabilityRequestsQueue2 addOperation:v35];

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

    pendingParticipants = [(EKUIInviteesViewAddInviteesSection *)self pendingParticipants];
    v40 = [pendingParticipants valueForKey:@"participant"];
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

- (id)_lookUpAvailabilityTypeForParticipantAddress:(id)address
{
  addressCopy = address;
  participantAddressesToAvailabilityType = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToAvailabilityType];
  v6 = [participantAddressesToAvailabilityType objectForKey:addressCopy];

  if (!v6)
  {
    v7 = EKUtils_AdjustedAttendeeAddress();
    participantAddressesToAvailabilityType2 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToAvailabilityType];
    v6 = [participantAddressesToAvailabilityType2 objectForKey:v7];
  }

  return v6;
}

- (void)_setAvailabilityType:(id)type forParticipantAddress:(id)address
{
  addressCopy = address;
  typeCopy = type;
  participantAddressesToAvailabilityType = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToAvailabilityType];
  [participantAddressesToAvailabilityType setObject:typeCopy forKey:addressCopy];

  v10 = EKUtils_AdjustedAttendeeAddress();

  participantAddressesToAvailabilityType2 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToAvailabilityType];
  [participantAddressesToAvailabilityType2 setObject:typeCopy forKey:v10];
}

- (void)_removeAddressFromDictionaryOfAddressesToAvailabilityType:(id)type
{
  typeCopy = type;
  participantAddressesToAvailabilityType = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToAvailabilityType];
  [participantAddressesToAvailabilityType removeObjectForKey:typeCopy];

  v7 = EKUtils_AdjustedAttendeeAddress();

  participantAddressesToAvailabilityType2 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToAvailabilityType];
  [participantAddressesToAvailabilityType2 removeObjectForKey:v7];
}

- (id)_lookUpParticipantIndexForParticipantAddress:(id)address
{
  addressCopy = address;
  participantAddressesToParticipantIndex = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToParticipantIndex];
  v6 = [participantAddressesToParticipantIndex objectForKey:addressCopy];

  if (!v6)
  {
    v7 = EKUtils_AdjustedAttendeeAddress();
    participantAddressesToParticipantIndex2 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToParticipantIndex];
    v6 = [participantAddressesToParticipantIndex2 objectForKey:v7];
  }

  return v6;
}

- (void)_removeAddressFromDictionaryOfAddressesToParticipantIndex:(id)index
{
  indexCopy = index;
  participantAddressesToParticipantIndex = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToParticipantIndex];
  [participantAddressesToParticipantIndex removeObjectForKey:indexCopy];

  v7 = EKUtils_AdjustedAttendeeAddress();

  participantAddressesToParticipantIndex2 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToParticipantIndex];
  [participantAddressesToParticipantIndex2 removeObjectForKey:v7];
}

- (void)_setParticipantIndex:(id)index forParticipantAddress:(id)address
{
  addressCopy = address;
  indexCopy = index;
  participantAddressesToParticipantIndex = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToParticipantIndex];
  [participantAddressesToParticipantIndex setObject:indexCopy forKey:addressCopy];

  v10 = EKUtils_AdjustedAttendeeAddress();

  participantAddressesToParticipantIndex2 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesToParticipantIndex];
  [participantAddressesToParticipantIndex2 setObject:indexCopy forKey:v10];
}

- (void)_removeAddressFromSetOfAddressesToInflightOperations:(id)operations
{
  operationsCopy = operations;
  participantAddressesForInFlightAvailabilityOperations = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [participantAddressesForInFlightAvailabilityOperations removeObject:operationsCopy];

  v7 = EKUtils_AdjustedAttendeeAddress();

  participantAddressesForInFlightAvailabilityOperations2 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [participantAddressesForInFlightAvailabilityOperations2 removeObject:v7];
}

- (void)_addAddressToSetOfAddressesToInflightOperations:(id)operations
{
  operationsCopy = operations;
  participantAddressesForInFlightAvailabilityOperations = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [participantAddressesForInFlightAvailabilityOperations addObject:operationsCopy];

  v7 = EKUtils_AdjustedAttendeeAddress();

  participantAddressesForInFlightAvailabilityOperations2 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [participantAddressesForInFlightAvailabilityOperations2 addObject:v7];
}

- (BOOL)_setOfAddressesToInflightOperationsContainsAddress:(id)address
{
  addressCopy = address;
  participantAddressesForInFlightAvailabilityOperations = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  v6 = [participantAddressesForInFlightAvailabilityOperations containsObject:addressCopy];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = EKUtils_AdjustedAttendeeAddress();
    participantAddressesForInFlightAvailabilityOperations2 = [(EKUIInviteesViewAddInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
    v7 = [participantAddressesForInFlightAvailabilityOperations2 containsObject:v8];
  }

  return v7;
}

- (void)_removeParticipantAtIndexPath:(id)path
{
  v25 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = [pathCopy row];
  participants = [(EKUIInviteesViewAddInviteesSection *)self participants];
  v7 = [participants count];

  if (v5 < v7)
  {
    participants2 = [(EKUIInviteesViewAddInviteesSection *)self participants];
    v9 = [participants2 objectAtIndex:v5];

    participant = [v9 participant];
    v11 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v22 = participant;
      v23 = 2112;
      v24 = pathCopy;
      _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_DEBUG, "Invoking participant removed callback with participant [%@] and index path [%@]", buf, 0x16u);
    }

    participantRemoved = [(EKUIInviteesViewAddInviteesSection *)self participantRemoved];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__EKUIInviteesViewAddInviteesSection__removeParticipantAtIndexPath___block_invoke;
    v17[3] = &unk_1E843EE88;
    v17[4] = self;
    v18 = participant;
    v19 = pathCopy;
    v20 = v5;
    v13 = participantRemoved[2];
    v14 = participant;
    v13(participantRemoved, v14, v19, v17);

    goto LABEL_7;
  }

  v15 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
  {
    v9 = v15;
    participants3 = [(EKUIInviteesViewAddInviteesSection *)self participants];
    *buf = 138412546;
    v22 = pathCopy;
    v23 = 2112;
    v24 = participants3;
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
  participants = [(EKUIInviteesViewAddInviteesSection *)self participants];
  v3 = [participants count] != 0;

  return v3;
}

- (BOOL)_isAddInviteesRow:(int64_t)row
{
  participants = [(EKUIInviteesViewAddInviteesSection *)self participants];
  LOBYTE(row) = [participants count] == row;

  return row;
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

- (void)_updateCellForParticipantWithAddress:(id)address
{
  v20 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  v5 = [(EKUIInviteesViewAddInviteesSection *)self _lookUpParticipantIndexForParticipantAddress:addressCopy];
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

  tableViewCellHook = [(EKUIInviteesViewAddInviteesSection *)self tableViewCellHook];

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
  tableViewCellHook2 = [(EKUIInviteesViewAddInviteesSection *)self tableViewCellHook];
  v9 = tableViewCellHook2[2](tableViewCellHook2, integerValue);

  if (v9)
  {
    [(EKUIInviteesViewAddInviteesSection *)self _updateCell:v9 forParticipantAtIndex:integerValue animated:1];
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
  participants = [(EKUIInviteesViewAddInviteesSection *)self participants];
  v10 = [participants objectAtIndex:index];

  participant = [v10 participant];
  v12 = [objc_opt_class() _participantAddressForParticipant:participant];
  if (v12)
  {
    v13 = [(EKUIInviteesViewAddInviteesSection *)self _lookUpAvailabilityTypeForParticipantAddress:v12];
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
    event = [(EKUIInviteesViewAddInviteesSection *)self event];
    v19 = [v17 availabilityPanelVisibilityForEvent:event];

    if (v19)
    {
      integerValue = 3;
    }

    v20 = [(EKUIInviteesViewAddInviteesSection *)self _setOfAddressesToInflightOperationsContainsAddress:v12];
    event2 = [(EKUIInviteesViewAddInviteesSection *)self event];
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

@end
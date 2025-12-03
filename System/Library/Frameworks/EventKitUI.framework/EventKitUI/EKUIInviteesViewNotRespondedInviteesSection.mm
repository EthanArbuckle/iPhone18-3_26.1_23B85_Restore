@interface EKUIInviteesViewNotRespondedInviteesSection
+ (id)_participantAddressForParticipant:(id)participant;
- (BOOL)_isAddInviteesRow:(int64_t)row;
- (BOOL)_setOfAddressesToInflightOperationsContainsAddress:(id)address;
- (BOOL)canEditRow:(id)row;
- (EKUIInviteesViewNotRespondedInviteesSection)init;
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
- (void)updateWithEvent:(id)event editable:(BOOL)editable fromDetail:(BOOL)detail;
@end

@implementation EKUIInviteesViewNotRespondedInviteesSection

- (EKUIInviteesViewNotRespondedInviteesSection)init
{
  v17 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = EKUIInviteesViewNotRespondedInviteesSection;
  v2 = [(EKUIInviteesViewNotRespondedInviteesSection *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(EKUIInviteesViewNotRespondedInviteesSection *)v2 setParticipantAddressesToAvailabilityType:v3];

    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(EKUIInviteesViewNotRespondedInviteesSection *)v2 setParticipantAddressesToParticipantIndex:v4];

    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(EKUIInviteesViewNotRespondedInviteesSection *)v2 setParticipantAddressesForInFlightAvailabilityOperations:v5];

    v6 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.mobilecal.%@.availability", v8];
    [v6 setName:v9];

    [(EKUIInviteesViewNotRespondedInviteesSection *)v2 setAvailabilityRequestsQueue:v6];
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
  availabilityRequestsQueue = [(EKUIInviteesViewNotRespondedInviteesSection *)self availabilityRequestsQueue];
  [availabilityRequestsQueue cancelAllOperations];

  v4.receiver = self;
  v4.super_class = EKUIInviteesViewNotRespondedInviteesSection;
  [(EKUIInviteesViewNotRespondedInviteesSection *)&v4 dealloc];
}

- (id)debugTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)headerTitle
{
  participants = [(EKUIInviteesViewNotRespondedInviteesSection *)self participants];

  if (participants && (-[EKUIInviteesViewNotRespondedInviteesSection participants](self, "participants"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, v5))
  {
    v6 = EventKitUIBundle();
    v7 = [v6 localizedStringForKey:@"No Response" value:&stru_1F4EF6790 table:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)numberOfRows
{
  participants = [(EKUIInviteesViewNotRespondedInviteesSection *)self participants];

  if (!participants)
  {
    return 0;
  }

  participants2 = [(EKUIInviteesViewNotRespondedInviteesSection *)self participants];
  v5 = [participants2 count];

  return v5;
}

- (id)cellForIndexPath:(id)path inTableView:(id)view
{
  v23 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  viewCopy = view;
  v8 = [pathCopy row];
  if ([(EKUIInviteesViewNotRespondedInviteesSection *)self _isValidRow:v8])
  {
    if ([(EKUIInviteesViewNotRespondedInviteesSection *)self _isAddInviteesRow:v8])
    {
      cachedAddInviteeCellReuseIdentifier = [(EKUIInviteesViewNotRespondedInviteesSection *)self cachedAddInviteeCellReuseIdentifier];
      v10 = [viewCopy dequeueReusableCellWithIdentifier:cachedAddInviteeCellReuseIdentifier forIndexPath:pathCopy];
    }

    else
    {
      cachedInviteeCellReuseIdentifier = [(EKUIInviteesViewNotRespondedInviteesSection *)self cachedInviteeCellReuseIdentifier];
      v10 = [viewCopy dequeueReusableCellWithIdentifier:cachedInviteeCellReuseIdentifier forIndexPath:pathCopy];

      -[EKUIInviteesViewNotRespondedInviteesSection _updateCell:forParticipantAtIndex:animated:](self, "_updateCell:forParticipantAtIndex:animated:", v10, [pathCopy row], 0);
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
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewNotRespondedInviteesSection numberOfRows](self, "numberOfRows")}];
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
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewNotRespondedInviteesSection reuseIdentifierVersion](self, "reuseIdentifierVersion")}];
  v9 = [v6 initWithFormat:@"%@-%@", v7, v8];
  [(EKUIInviteesViewNotRespondedInviteesSection *)self setCachedInviteeCellReuseIdentifier:v9];

  cachedInviteeCellReuseIdentifier = [(EKUIInviteesViewNotRespondedInviteesSection *)self cachedInviteeCellReuseIdentifier];
  [viewCopy registerClass:v5 forCellReuseIdentifier:cachedInviteeCellReuseIdentifier];

  v11 = objc_opt_class();
  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = NSStringFromClass(v11);
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKUIInviteesViewNotRespondedInviteesSection reuseIdentifierVersion](self, "reuseIdentifierVersion")}];
  v15 = [v12 initWithFormat:@"%@-%@", v13, v14];
  [(EKUIInviteesViewNotRespondedInviteesSection *)self setCachedAddInviteeCellReuseIdentifier:v15];

  cachedAddInviteeCellReuseIdentifier = [(EKUIInviteesViewNotRespondedInviteesSection *)self cachedAddInviteeCellReuseIdentifier];
  [viewCopy registerClass:v11 forCellReuseIdentifier:cachedAddInviteeCellReuseIdentifier];

  v17 = [(EKUIInviteesViewNotRespondedInviteesSection *)self reuseIdentifierVersion]+ 1;

  [(EKUIInviteesViewNotRespondedInviteesSection *)self setReuseIdentifierVersion:v17];
}

- (void)selectRow:(id)row
{
  v23 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  v5 = [rowCopy row];
  if ([(EKUIInviteesViewNotRespondedInviteesSection *)self _isValidRow:v5])
  {
    if ([(EKUIInviteesViewNotRespondedInviteesSection *)self _isAddInviteesRow:v5])
    {
      addInviteesTapped = [(EKUIInviteesViewNotRespondedInviteesSection *)self addInviteesTapped];

      if (addInviteesTapped)
      {
        addInviteesTapped2 = [(EKUIInviteesViewNotRespondedInviteesSection *)self addInviteesTapped];
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

    participants = [(EKUIInviteesViewNotRespondedInviteesSection *)self participants];
    addInviteesTapped2 = [participants objectAtIndex:v5];

    participant = [addInviteesTapped2 participant];
    if (participant)
    {
      participantTapped = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantTapped];

      if (participantTapped)
      {
        participantTapped2 = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantTapped];
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
  if (-[EKUIInviteesViewNotRespondedInviteesSection editable](self, "editable") && (v5 = [rowCopy row], -[EKUIInviteesViewNotRespondedInviteesSection _isValidRow:](self, "_isValidRow:", v5)))
  {
    v6 = ![(EKUIInviteesViewNotRespondedInviteesSection *)self _isAddInviteesRow:v5];
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
  v4 = [v3 localizedStringForKey:@"Remove invitee - not responded invitees section" value:@"Remove" table:0];

  return v4;
}

- (void)commitEditingStyle:(int64_t)style forRow:(id)row
{
  v17 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  v7 = [rowCopy row];
  if (style == 1)
  {
    if ([(EKUIInviteesViewNotRespondedInviteesSection *)self _isValidRow:v7])
    {
      participantRemoved = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantRemoved];

      if (participantRemoved)
      {
        [(EKUIInviteesViewNotRespondedInviteesSection *)self _removeParticipantAtIndexPath:rowCopy];
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

- (void)cancelOutstandingOperations
{
  availabilityRequestsQueue = [(EKUIInviteesViewNotRespondedInviteesSection *)self availabilityRequestsQueue];
  [availabilityRequestsQueue cancelAllOperations];
}

- (id)actionsForRow:(id)row
{
  v15[2] = *MEMORY[0x1E69E9840];
  rowCopy = row;
  v5 = [EKUIInviteesViewSectionCommon deleteRowAction:self forRow:rowCopy];
  participants = [(EKUIInviteesViewNotRespondedInviteesSection *)self participants];
  v7 = [participants objectAtIndex:{objc_msgSend(rowCopy, "row")}];

  participantSetRole = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantSetRole];
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
  participants = [(EKUIInviteesViewNotRespondedInviteesSection *)self participants];
  v9 = [participants objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  participant = [v9 participant];

  v11 = [EKUIInviteeContextMenuData alloc];
  participantSetRole = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantSetRole];
  v13 = [(EKUIInviteeContextMenuData *)v11 initWithDefaultActionsForSection:self indexPath:pathCopy participant:participant interaction:interactionCopy participantSetRole:participantSetRole];

  return v13;
}

- (void)updateWithEvent:(id)event editable:(BOOL)editable fromDetail:(BOOL)detail
{
  detailCopy = detail;
  editableCopy = editable;
  v76 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  [(EKUIInviteesViewNotRespondedInviteesSection *)self setEvent:?];
  v6 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_DEBUG, "Cancelling existing availability operations.", buf, 2u);
  }

  availabilityRequestsQueue = [(EKUIInviteesViewNotRespondedInviteesSection *)self availabilityRequestsQueue];
  [availabilityRequestsQueue cancelAllOperations];

  participantAddressesToAvailabilityType = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantAddressesToAvailabilityType];
  [participantAddressesToAvailabilityType removeAllObjects];

  participantAddressesToParticipantIndex = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantAddressesToParticipantIndex];
  [participantAddressesToParticipantIndex removeAllObjects];

  participantAddressesForInFlightAvailabilityOperations = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [participantAddressesForInFlightAvailabilityOperations removeAllObjects];

  [(EKUIInviteesViewNotRespondedInviteesSection *)self setCanSeeAttendeeStatuses:CanSeeAttendeeStatuses(eventCopy)];
  if ([(EKUIInviteesViewNotRespondedInviteesSection *)self canSeeAttendeeStatuses])
  {
    if ([eventCopy isStartDateDirty])
    {
      isEndDateDirty = 1;
    }

    else
    {
      isEndDateDirty = [eventCopy isEndDateDirty];
    }

    event = [(EKUIInviteesViewNotRespondedInviteesSection *)self event];
    if (([event isExternallyOrganizedInvitation] & 1) == 0 && !-[EKUIInviteesViewNotRespondedInviteesSection editable](self, "editable"))
    {
      detailCopy = 0;
    }

    organizer = [eventCopy organizer];
    v15 = MEMORY[0x1E6966A58];
    attendees = [eventCopy attendees];
    eventStore = [organizer eventStore];
    v55 = [v15 objectsIDsExistingInStoreFromObjects:attendees eventStore:eventStore];

    v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    attendees2 = [eventCopy attendees];
    v19 = [attendees2 countByEnumeratingWithState:&v68 objects:v73 count:16];
    if (v19)
    {
      v20 = *v69;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v69 != v20)
          {
            objc_enumerationMutation(attendees2);
          }

          v22 = *(*(&v68 + 1) + 8 * i);
          if ([v22 participantType] != 2 && ((isEndDateDirty & 1) != 0 || (EKUIAttendeeUtils_AttendeeHasResponded(v22) & 1) == 0))
          {
            v23 = detailCopy ? [v22 isNew] : 0;
            if ([v22 isNew])
            {
              v24 = 0;
            }

            else
            {
              cADObjectID = [v22 CADObjectID];
              v26 = [v55 containsObject:cADObjectID];

              v24 = v26 ^ 1;
            }

            if ((([v22 isEqualToParticipant:organizer] | v23 | v24) & 1) == 0)
            {
              v27 = [MEMORY[0x1E6966A88] participantForSortingWithEKParticipant:v22];
              [v56 addObject:v27];
            }
          }
        }

        v19 = [attendees2 countByEnumeratingWithState:&v68 objects:v73 count:16];
      }

      while (v19);
    }

    v52 = [v56 sortedArrayUsingComparator:&__block_literal_global_34];
    calendar = [eventCopy calendar];
    source = [calendar source];
    constraints = [source constraints];
    supportsAvailabilityRequests = [constraints supportsAvailabilityRequests];

    if (supportsAvailabilityRequests)
    {
      if ([v52 count])
      {
        v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v33 = v52;
        v34 = [v33 countByEnumeratingWithState:&v64 objects:v72 count:16];
        if (v34)
        {
          v35 = 0;
          v36 = *v65;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v65 != v36)
              {
                objc_enumerationMutation(v33);
              }

              participant = [*(*(&v64 + 1) + 8 * j) participant];
              v39 = [objc_opt_class() _participantAddressForParticipant:participant];
              if (v39)
              {
                [v32 addObject:v39];
                v40 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:v35];
                [(EKUIInviteesViewNotRespondedInviteesSection *)self _setParticipantIndex:v40 forParticipantAddress:v39];
                [(EKUIInviteesViewNotRespondedInviteesSection *)self _addAddressToSetOfAddressesToInflightOperations:v39];
              }

              else
              {
                v41 = kEKUILogInviteesHandle;
                if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  selfCopy = participant;
                  _os_log_impl(&dword_1D3400000, v41, OS_LOG_TYPE_DEBUG, "Could not find address for participant: [%@].  Will not include this participant in final list of participants.", buf, 0xCu);
                }
              }

              ++v35;
            }

            v34 = [v33 countByEnumeratingWithState:&v64 objects:v72 count:16];
          }

          while (v34);
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __83__EKUIInviteesViewNotRespondedInviteesSection_updateWithEvent_editable_fromDetail___block_invoke_41;
        aBlock[3] = &unk_1E843EFE0;
        aBlock[4] = self;
        v42 = _Block_copy(aBlock);
        calendar2 = [eventCopy calendar];
        source2 = [calendar2 source];

        startDate = [eventCopy startDate];
        endDateUnadjustedForLegacyClients = [eventCopy endDateUnadjustedForLegacyClients];
        v47 = [objc_alloc(MEMORY[0x1E6966AE0]) initWithSource:source2 startDate:startDate endDate:endDateUnadjustedForLegacyClients ignoredEvent:eventCopy addresses:v32 resultsBlock:v42];
        objc_initWeak(buf, self);
        objc_initWeak(&location, v47);
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __83__EKUIInviteesViewNotRespondedInviteesSection_updateWithEvent_editable_fromDetail___block_invoke_4;
        v59[3] = &unk_1E843F008;
        objc_copyWeak(&v60, &location);
        objc_copyWeak(&v61, buf);
        [v47 setCompletionBlock:v59];
        availabilityRequestsQueue2 = [(EKUIInviteesViewNotRespondedInviteesSection *)self availabilityRequestsQueue];
        [availabilityRequestsQueue2 addOperation:v47];

        objc_destroyWeak(&v61);
        objc_destroyWeak(&v60);
        objc_destroyWeak(&location);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v49 = kEKUILogInviteesHandle;
      if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1D3400000, v49, OS_LOG_TYPE_DEBUG, "The event's source does not support availability requests.  Will not issue any.", buf, 2u);
      }
    }

    v13 = v52;
  }

  else
  {
    v12 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1D3400000, v12, OS_LOG_TYPE_DEBUG, "Cannot see attendee statuses.  Will not analyze attendees for section: [%@]", buf, 0xCu);
    }

    v13 = 0;
  }

  v50 = v13;
  v51 = [v13 mutableCopy];
  [(EKUIInviteesViewNotRespondedInviteesSection *)self setParticipants:v51];

  [(EKUIInviteesViewNotRespondedInviteesSection *)self setEditable:editableCopy];
}

void __83__EKUIInviteesViewNotRespondedInviteesSection_updateWithEvent_editable_fromDetail___block_invoke_41(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__EKUIInviteesViewNotRespondedInviteesSection_updateWithEvent_editable_fromDetail___block_invoke_2;
  v6[3] = &unk_1E843EFB8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __83__EKUIInviteesViewNotRespondedInviteesSection_updateWithEvent_editable_fromDetail___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __83__EKUIInviteesViewNotRespondedInviteesSection_updateWithEvent_editable_fromDetail___block_invoke_3;
  v3[3] = &unk_1E843EF90;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void __83__EKUIInviteesViewNotRespondedInviteesSection_updateWithEvent_editable_fromDetail___block_invoke_3(uint64_t a1, void *a2, void *a3)
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

void __83__EKUIInviteesViewNotRespondedInviteesSection_updateWithEvent_editable_fromDetail___block_invoke_4(uint64_t a1)
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
    block[2] = __83__EKUIInviteesViewNotRespondedInviteesSection_updateWithEvent_editable_fromDetail___block_invoke_47;
    block[3] = &unk_1E843EC60;
    block[4] = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

LABEL_10:
}

void __83__EKUIInviteesViewNotRespondedInviteesSection_updateWithEvent_editable_fromDetail___block_invoke_47(uint64_t a1)
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
  participantAddressesToAvailabilityType = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantAddressesToAvailabilityType];
  v6 = [participantAddressesToAvailabilityType objectForKey:addressCopy];

  if (!v6)
  {
    v7 = EKUtils_AdjustedAttendeeAddress();
    participantAddressesToAvailabilityType2 = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantAddressesToAvailabilityType];
    v6 = [participantAddressesToAvailabilityType2 objectForKey:v7];
  }

  return v6;
}

- (void)_setAvailabilityType:(id)type forParticipantAddress:(id)address
{
  addressCopy = address;
  typeCopy = type;
  participantAddressesToAvailabilityType = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantAddressesToAvailabilityType];
  [participantAddressesToAvailabilityType setObject:typeCopy forKey:addressCopy];

  v10 = EKUtils_AdjustedAttendeeAddress();

  participantAddressesToAvailabilityType2 = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantAddressesToAvailabilityType];
  [participantAddressesToAvailabilityType2 setObject:typeCopy forKey:v10];
}

- (void)_removeAddressFromDictionaryOfAddressesToAvailabilityType:(id)type
{
  typeCopy = type;
  participantAddressesToAvailabilityType = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantAddressesToAvailabilityType];
  [participantAddressesToAvailabilityType removeObjectForKey:typeCopy];

  v7 = EKUtils_AdjustedAttendeeAddress();

  participantAddressesToAvailabilityType2 = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantAddressesToAvailabilityType];
  [participantAddressesToAvailabilityType2 removeObjectForKey:v7];
}

- (id)_lookUpParticipantIndexForParticipantAddress:(id)address
{
  addressCopy = address;
  participantAddressesToParticipantIndex = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantAddressesToParticipantIndex];
  v6 = [participantAddressesToParticipantIndex objectForKey:addressCopy];

  if (!v6)
  {
    v7 = EKUtils_AdjustedAttendeeAddress();
    participantAddressesToParticipantIndex2 = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantAddressesToParticipantIndex];
    v6 = [participantAddressesToParticipantIndex2 objectForKey:v7];
  }

  return v6;
}

- (void)_removeAddressFromDictionaryOfAddressesToParticipantIndex:(id)index
{
  indexCopy = index;
  participantAddressesToParticipantIndex = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantAddressesToParticipantIndex];
  [participantAddressesToParticipantIndex removeObjectForKey:indexCopy];

  v7 = EKUtils_AdjustedAttendeeAddress();

  participantAddressesToParticipantIndex2 = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantAddressesToParticipantIndex];
  [participantAddressesToParticipantIndex2 removeObjectForKey:v7];
}

- (void)_setParticipantIndex:(id)index forParticipantAddress:(id)address
{
  addressCopy = address;
  indexCopy = index;
  participantAddressesToParticipantIndex = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantAddressesToParticipantIndex];
  [participantAddressesToParticipantIndex setObject:indexCopy forKey:addressCopy];

  v10 = EKUtils_AdjustedAttendeeAddress();

  participantAddressesToParticipantIndex2 = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantAddressesToParticipantIndex];
  [participantAddressesToParticipantIndex2 setObject:indexCopy forKey:v10];
}

- (void)_removeAddressFromSetOfAddressesToInflightOperations:(id)operations
{
  operationsCopy = operations;
  participantAddressesForInFlightAvailabilityOperations = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [participantAddressesForInFlightAvailabilityOperations removeObject:operationsCopy];

  v7 = EKUtils_AdjustedAttendeeAddress();

  participantAddressesForInFlightAvailabilityOperations2 = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [participantAddressesForInFlightAvailabilityOperations2 removeObject:v7];
}

- (void)_addAddressToSetOfAddressesToInflightOperations:(id)operations
{
  operationsCopy = operations;
  participantAddressesForInFlightAvailabilityOperations = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [participantAddressesForInFlightAvailabilityOperations addObject:operationsCopy];

  v7 = EKUtils_AdjustedAttendeeAddress();

  participantAddressesForInFlightAvailabilityOperations2 = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  [participantAddressesForInFlightAvailabilityOperations2 addObject:v7];
}

- (BOOL)_setOfAddressesToInflightOperationsContainsAddress:(id)address
{
  addressCopy = address;
  participantAddressesForInFlightAvailabilityOperations = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
  v6 = [participantAddressesForInFlightAvailabilityOperations containsObject:addressCopy];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = EKUtils_AdjustedAttendeeAddress();
    participantAddressesForInFlightAvailabilityOperations2 = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantAddressesForInFlightAvailabilityOperations];
    v7 = [participantAddressesForInFlightAvailabilityOperations2 containsObject:v8];
  }

  return v7;
}

- (void)_removeParticipantAtIndexPath:(id)path
{
  v25 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = [pathCopy row];
  participants = [(EKUIInviteesViewNotRespondedInviteesSection *)self participants];
  v7 = [participants count];

  if (v5 < v7)
  {
    participants2 = [(EKUIInviteesViewNotRespondedInviteesSection *)self participants];
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

    participantRemoved = [(EKUIInviteesViewNotRespondedInviteesSection *)self participantRemoved];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __77__EKUIInviteesViewNotRespondedInviteesSection__removeParticipantAtIndexPath___block_invoke;
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
    participants3 = [(EKUIInviteesViewNotRespondedInviteesSection *)self participants];
    *buf = 138412546;
    v22 = pathCopy;
    v23 = 2112;
    v24 = participants3;
    _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_ERROR, "No participant was found at index path [%@] while trying to remove it. We will not remove anything from participants [%@].", buf, 0x16u);

LABEL_7:
  }
}

void __77__EKUIInviteesViewNotRespondedInviteesSection__removeParticipantAtIndexPath___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() _participantAddressForParticipant:*(a1 + 40)];
  v3 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_DEBUG, "Removing participant [%@] at index path [%@] from EKUIInviteesViewNotRespondedInviteesSection", &v7, 0x16u);
  }

  v6 = [*(a1 + 32) participants];
  [v6 removeObjectAtIndex:*(a1 + 56)];

  [*(a1 + 32) _removeAddressFromDictionaryOfAddressesToAvailabilityType:v2];
  [*(a1 + 32) _removeAddressFromDictionaryOfAddressesToParticipantIndex:v2];
  [*(a1 + 32) _removeAddressFromSetOfAddressesToInflightOperations:v2];
}

- (BOOL)_isAddInviteesRow:(int64_t)row
{
  participants = [(EKUIInviteesViewNotRespondedInviteesSection *)self participants];
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
  v5 = [(EKUIInviteesViewNotRespondedInviteesSection *)self _lookUpParticipantIndexForParticipantAddress:addressCopy];
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

  tableViewCellHook = [(EKUIInviteesViewNotRespondedInviteesSection *)self tableViewCellHook];

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
  tableViewCellHook2 = [(EKUIInviteesViewNotRespondedInviteesSection *)self tableViewCellHook];
  v9 = tableViewCellHook2[2](tableViewCellHook2, integerValue);

  if (v9)
  {
    [(EKUIInviteesViewNotRespondedInviteesSection *)self _updateCell:v9 forParticipantAtIndex:integerValue animated:1];
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
  participants = [(EKUIInviteesViewNotRespondedInviteesSection *)self participants];
  v10 = [participants objectAtIndex:index];

  participant = [v10 participant];
  v12 = [objc_opt_class() _participantAddressForParticipant:participant];
  if (v12)
  {
    v13 = [(EKUIInviteesViewNotRespondedInviteesSection *)self _lookUpAvailabilityTypeForParticipantAddress:v12];
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
    event = [(EKUIInviteesViewNotRespondedInviteesSection *)self event];
    v19 = [v17 availabilityPanelVisibilityForEvent:event];

    if (v19)
    {
      integerValue = 3;
    }

    v20 = [(EKUIInviteesViewNotRespondedInviteesSection *)self _setOfAddressesToInflightOperationsContainsAddress:v12];
    event2 = [(EKUIInviteesViewNotRespondedInviteesSection *)self event];
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
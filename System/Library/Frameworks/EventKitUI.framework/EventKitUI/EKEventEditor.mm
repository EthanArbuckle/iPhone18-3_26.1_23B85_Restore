@interface EKEventEditor
+ (id)defaultTitleForCalendarItem;
- (BOOL)attachmentsModifiedOnRecurrence;
- (BOOL)hasUnsavedChanges;
- (BOOL)saveCalendarItemWithSpan:(int64_t)a3 error:(id *)a4;
- (CGSize)preferredContentSize;
- (id)_calendarItemIndexSet;
- (id)_editItems;
- (id)_nameForDeleteButton;
- (id)_orderedEditItems;
- (id)_viewForSheet;
- (id)defaultAlertTitle;
- (id)preferredTitle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_beginAutocompleteSearch:(id)a3;
- (void)_cancelPendingAutocompleteAndCleanup;
- (void)_focusAppearanceTarget;
- (void)_hideAndCancelAutocompleteResults;
- (void)_modifyCurrentEvent:(id)a3 withAutocompleteResult:(id)a4;
- (void)_revertEvent;
- (void)_scheduleAutocompleteSearchWithString:(id)a3;
- (void)_scheduleAutocompleteTimerIfNeeded;
- (void)_setAutocompleteResultsVisible:(BOOL)a3;
- (void)_setEventTitleForTestingAutocomplete:(id)a3;
- (void)_showAutocompleteResults;
- (void)_updateTitleEditItemSeparatorVisibility;
- (void)autocompleteResultsEditItem:(id)a3 resultSelected:(id)a4;
- (void)autocompleteResultsEditItemDidShowResults:(id)a3;
- (void)confirmMultiPasteViewController:(id)a3 finishedWithCancel:(BOOL)a4;
- (void)editItem:(id)a3 didSaveFromDetailViewController:(BOOL)a4;
- (void)editItemDidStartEditing:(id)a3;
- (void)editItemTextChanged:(id)a3;
- (void)focus:(unint64_t)a3 select:(BOOL)a4;
- (void)loadView;
- (void)prepareEditItems;
- (void)refreshAttachments;
- (void)refreshInvitees;
- (void)refreshLocation;
- (void)refreshRecurrence;
- (void)refreshStartAndEndDates;
- (void)refreshURL;
- (void)reloadTableViewSectionsForTime:(BOOL)a3 invitees:(BOOL)a4 location:(BOOL)a5 recurrence:(BOOL)a6;
- (void)setBackgroundColor:(id)a3;
- (void)setDefaultCalendar:(id)a3;
- (void)setEvent:(id)a3;
- (void)setSuggestionKey:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation EKEventEditor

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v6 loadView];
  v3 = [(EKEventEditor *)self backgroundColor];

  if (v3)
  {
    v4 = [(EKEventEditor *)self backgroundColor];
    v5 = [(EKEventEditor *)self view];
    [v5 setBackgroundColor:v4];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  if (self->_isTransitioning)
  {
    v2 = [(EKEventEditor *)self view];
    v3 = [v2 window];
    v4 = [v3 windowScene];
    v5 = [v4 interfaceOrientation];

    return 1 << v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = EKEventEditor;
    return [(EKCalendarItemEditor *)&v7 supportedInterfaceOrientations];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  self->_isTransitioning = 1;
  v4.receiver = self;
  v4.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v4 viewWillAppear:a3];
  [(EKEventEditor *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (void)viewDidAppear:(BOOL)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v30 viewDidAppear:a3];
  v4 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO))
  {
    log = v4;
    v5 = objc_opt_class();
    v29 = NSStringFromClass(v5);
    v27 = [(EKEventEditor *)self event];
    v28 = [v27 startDate];
    v26 = [(EKEventEditor *)self event];
    [v26 duration];
    v7 = v6 / 60.0;
    v25 = [(EKEventEditor *)self event];
    v19 = [v25 isNew];
    v24 = [(EKEventEditor *)self event];
    v18 = [v24 UUID];
    v22 = [(EKEventEditor *)self event];
    v8 = [v22 uniqueID];
    v21 = [(EKEventEditor *)self event];
    v9 = [v21 externalURL];
    v20 = [(EKEventEditor *)self event];
    v10 = [v20 calendar];
    v11 = [v10 calendarIdentifier];
    v12 = [(EKEventEditor *)self event];
    v13 = [v12 calendar];
    v14 = [v13 source];
    v15 = [v14 sourceIdentifier];
    *buf = 138545410;
    v32 = v29;
    v33 = 2114;
    v34 = v28;
    v35 = 2048;
    v36 = v7;
    v37 = 1024;
    v38 = v19;
    v39 = 2114;
    v40 = v18;
    v41 = 2114;
    v42 = v8;
    v43 = 2114;
    v44 = v9;
    v45 = 2114;
    v46 = v11;
    v47 = 2114;
    v48 = v15;
    _os_log_impl(&dword_1D3400000, log, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear. startDate = %{public}@, duration = %.1f min, isNew = %d. UUID = %{public}@, uniqueID = %{public}@, externalURL = %{public}@, calendarIdentifier = %{public}@, sourceIdentifier = %{public}@", buf, 0x58u);
  }

  self->_isTransitioning = 0;
  [(EKEventEditor *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  v16 = [(EKEventEditor *)self navigationController];
  v17 = [v16 presentationController];
  [v17 preferredContentSizeDidChangeForChildContentContainer:self];
}

- (void)viewWillDisappear:(BOOL)a3
{
  self->_isTransitioning = 1;
  v4.receiver = self;
  v4.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v4 viewWillDisappear:a3];
  [(EKEventEditor *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if (self->_shouldAutocomplete)
  {
    autocompleteTracker = self->_autocompleteTracker;
    v6 = [(EKEventEditor *)self event];
    [(EKUIAutocompleteTracker *)autocompleteTracker finalizeAutocompleteTrackingOnSave:0 withEvent:v6 selectedResult:0 selectedIndex:0 isZKW:0];
  }

  v7.receiver = self;
  v7.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v7 viewDidDisappear:v3];
  self->_isTransitioning = 0;
  [(EKEventEditor *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (void)setEvent:(id)a3
{
  v4 = a3;
  [v4 setPredictedLocationFrozen:1];
  v13.receiver = self;
  v13.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v13 setCalendarItem:v4];
  v5 = [(EKEventEditor *)self preferredTitle];
  [(EKCalendarItemEditor *)self setTitle:v5];

  [(EKEventEditor *)self _updateTitleEditItemSeparatorVisibility];
  self->_shouldAutocomplete = [v4 isNew];
  v6 = objc_alloc_init(EKUIAutocompleteTracker);
  autocompleteTracker = self->_autocompleteTracker;
  self->_autocompleteTracker = v6;

  v8 = [v4 startDate];
  [(EKUIAutocompleteTracker *)self->_autocompleteTracker setInitialStartDate:v8];

  v9 = [v4 endDateUnadjustedForLegacyClients];
  [(EKUIAutocompleteTracker *)self->_autocompleteTracker setInitialEndDate:v9];

  v10 = [v4 timeZone];
  [(EKUIAutocompleteTracker *)self->_autocompleteTracker setInitialTimeZone:v10];

  -[EKUIAutocompleteTracker setInitialIsAllDay:](self->_autocompleteTracker, "setInitialIsAllDay:", [v4 isAllDay]);
  v11 = [v4 calendar];
  [(EKUIAutocompleteTracker *)self->_autocompleteTracker setInitialCalendar:v11];

  if (([v4 isNew] & 1) == 0)
  {
    v12 = [MEMORY[0x1E6966A10] sharedInstance];
    [v12 prepareForEventUpdate:v4];
  }

  [(UIResponder *)self EKUI_setDataOwnersFromEvent:v4];
}

- (void)setSuggestionKey:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    objc_storeStrong(&self->_suggestionKey, a3);
    v6 = [(EKEventEditor *)self event];

    if (v6)
    {
      v7 = [(EKCalendarItemEditor *)self store];
      v8 = [v7 predicateForNaturalLanguageSuggestedEventsWithSearchString:0];

      v9 = [(EKCalendarItemEditor *)self store];
      v36 = v8;
      v10 = [v9 eventsMatchingPredicate:v8];

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
      v13 = v11;
      if (v12)
      {
        v14 = v12;
        v35 = v5;
        v15 = *v38;
LABEL_5:
        v16 = 0;
        while (1)
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v37 + 1) + 8 * v16);
          v18 = [v17 suggestionInfo];
          v19 = [v18 uniqueKey];
          v20 = [v19 isEqualToString:self->_suggestionKey];

          if (v20)
          {
            break;
          }

          if (v14 == ++v16)
          {
            v14 = [v11 countByEnumeratingWithState:&v37 objects:v41 count:16];
            if (v14)
            {
              goto LABEL_5;
            }

            v13 = v11;
            v5 = v35;
            goto LABEL_14;
          }
        }

        v13 = v17;

        v5 = v35;
        if (!v13)
        {
          goto LABEL_15;
        }

        v34 = EKWeakLinkStringConstant();
        v33 = [v13 customObjectForKey:v34];
        v21 = [(EKEventEditor *)self event];
        [v21 setCustomObject:v33 forKey:v34];

        v31 = objc_alloc(MEMORY[0x1E6966B20]);
        v22 = [v13 suggestionInfo];
        v23 = [v22 opaqueKey];
        v24 = [v13 suggestionInfo];
        v25 = [v24 uniqueKey];
        v26 = [v13 suggestionInfo];
        v27 = [v26 extractionGroupIdentifier];
        v32 = [v31 initWithOpaqueKey:v23 uniqueKey:v25 extractionGroupIdentifier:v27];

        v28 = [(EKEventEditor *)self event];
        [v28 setSuggestionInfo:v32];

        v29 = [v13 URL];
        v30 = [(EKEventEditor *)self event];
        [v30 setURL:v29];
      }

LABEL_14:

LABEL_15:
    }
  }
}

- (void)_updateTitleEditItemSeparatorVisibility
{
  if (self->_autocompleteResultsVisible)
  {
    v3 = 1;
  }

  else
  {
    v4 = [(EKEventEditor *)self event];
    v5 = [v4 preferredLocation];
    v3 = [v5 isPrediction];
  }

  v6 = MEMORY[0x1D38B98D0]() ^ 1;
  titleInlineEditItem = self->_titleInlineEditItem;

  [(EKCalendarItemTitleInlineEditItem *)titleInlineEditItem setDrawsOwnRowSeparators:v6 & v3];
}

- (void)setDefaultCalendar:(id)a3
{
  v4.receiver = self;
  v4.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v4 setDefaultCalendar:a3];
  [(EKCalendarItemEditItem *)self->_calendarEditItem refreshFromCalendarItemAndStore];
}

- (void)refreshStartAndEndDates
{
  v3.receiver = self;
  v3.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v3 refreshStartAndEndDates];
  [(EKEventDateEditItem *)self->_dateItem refreshFromCalendarItemAndStore];
  [(EKCalendarItemAlarmEditItem *)self->_alarmEditItem refreshFromCalendarItemAndStore];
}

- (void)refreshInvitees
{
  v3.receiver = self;
  v3.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v3 refreshInvitees];
  [(EKEventAttendeesEditItem *)self->_attendeesEditItem refreshFromCalendarItemAndStore];
}

- (void)refreshLocation
{
  v3.receiver = self;
  v3.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v3 refreshLocation];
  [(EKCalendarItemLocationInlineEditItem *)self->_locationInlineEditItem refreshFromCalendarItemAndStore];
  [(EKEventEditor *)self _updateTitleEditItemSeparatorVisibility];
}

- (void)refreshURL
{
  v3.receiver = self;
  v3.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v3 refreshURL];
  [(EKEventURLAndNotesInlineEditItem *)self->_notesEditItem refreshFromCalendarItemAndStore];
}

- (void)refreshRecurrence
{
  v3.receiver = self;
  v3.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v3 refreshRecurrence];
  [(EKCalendarItemRecurrenceEditItem *)self->_recurrenceEditItem refreshFromCalendarItemAndStore];
}

- (void)refreshAttachments
{
  v3.receiver = self;
  v3.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v3 refreshRecurrence];
  [(EKEventAttachmentsEditItem *)self->_attachmentsEditItem refreshFromCalendarItemAndStore];
}

- (void)reloadTableViewSectionsForTime:(BOOL)a3 invitees:(BOOL)a4 location:(BOOL)a5 recurrence:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v12 = objc_opt_new();
  if (v9)
  {
    [v12 addIndex:{-[EKCalendarItemEditor tableSectionForEditItem:](self, "tableSectionForEditItem:", self->_dateItem)}];
    if (!v8)
    {
LABEL_3:
      if (!v7)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if (!v8)
  {
    goto LABEL_3;
  }

  [v12 addIndex:{-[EKCalendarItemEditor tableSectionForEditItem:](self, "tableSectionForEditItem:", self->_attendeesEditItem)}];
  if (!v7)
  {
LABEL_4:
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v12 addIndex:{-[EKCalendarItemEditor tableSectionForEditItem:](self, "tableSectionForEditItem:", self->_locationInlineEditItem)}];
  if (v6)
  {
LABEL_5:
    [v12 addIndex:{-[EKCalendarItemEditor tableSectionForEditItem:](self, "tableSectionForEditItem:", self->_recurrenceEditItem)}];
  }

LABEL_6:
  v11 = [(EKEventEditor *)self tableView];
  [v11 reloadSections:v12 withRowAnimation:5];
}

- (id)_calendarItemIndexSet
{
  v2 = [(EKCalendarItemEditor *)self tableSectionForEditItem:self->_calendarEditItem];
  v3 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v2];

  return v3;
}

- (id)_editItems
{
  v49[3] = *MEMORY[0x1E69E9840];
  editItems = self->super._editItems;
  if (!editItems)
  {
    v4 = objc_alloc_init(EKCalendarItemTitleInlineEditItem);
    v38 = objc_alloc_init(EKCalendarItemLocationInlineEditItem);
    v5 = objc_alloc_init(EKEventDateEditItem);
    v37 = objc_alloc_init(EKEventTravelTimeEditItem);
    v39 = objc_alloc_init(EKEventRecurrenceEditItem);
    obj = objc_alloc_init(EKEventAttendeesEditItem);
    v34 = objc_alloc_init(EKCalendarItemAlarmEditItem);
    v6 = [[EKCalendarItemCalendarEditItem alloc] initWithEntityType:0];
    v31 = objc_alloc_init(EKEventVisibilityEditItem);
    v7 = objc_alloc_init(EKEventAttachmentsEditItem);
    v35 = objc_alloc_init(EKConferenceInformationInlineEditItem);
    v8 = objc_alloc_init(EKEventURLAndNotesInlineEditItem);
    v30 = objc_alloc_init(EKEventDeleteButtonEditItem);
    [(EKEventDeleteButtonEditItem *)v30 setDeleteButtonTarget:self action:sel_deleteClicked_];
    v9 = [(EKEventEditor *)self event];
    -[EKEventDateEditItem setShowsAllDay:](v5, "setShowsAllDay:", [v9 changingAllDayPropertyIsAllowed]);

    objc_storeStrong(&self->_dateItem, v5);
    objc_storeStrong(&self->_titleInlineEditItem, v4);
    objc_storeStrong(&self->_locationInlineEditItem, v38);
    objc_storeStrong(&self->_alarmEditItem, v34);
    objc_storeStrong(&self->_calendarEditItem, v6);
    objc_storeStrong(&self->_attendeesEditItem, obj);
    objc_storeStrong(&self->_notesEditItem, v8);
    objc_storeStrong(&self->_attachmentsEditItem, v7);
    objc_storeStrong(&self->_recurrenceEditItem, v39);
    v10 = objc_alloc_init(EKEventAutocompleteResultsEditItem);
    [(EKCalendarItemEditItem *)v10 setDelegate:self];
    objc_storeStrong(&self->_autocompleteEditItem, v10);
    [(EKEventEditor *)self _updateTitleEditItemSeparatorVisibility];
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(NSArray *)v11 addObject:v4];
    [(NSArray *)v11 addObject:v10];
    [(NSArray *)v11 addObject:v38];
    [(NSArray *)v11 addObject:v5];
    [(NSArray *)v11 addObject:v37];
    [(NSArray *)v11 addObject:v39];
    [(NSArray *)v11 addObject:obj];
    [(NSArray *)v11 addObject:v34];
    v33 = v6;
    [(NSArray *)v11 addObject:v6];
    [(NSArray *)v11 addObject:v31];
    v32 = v7;
    [(NSArray *)v11 addObject:v7];
    [(NSArray *)v11 addObject:v35];
    [(NSArray *)v11 addObject:v8];
    v13 = [(EKCalendarItemEditor *)self calendarItem];
    LOBYTE(v6) = [v13 isNew];

    if ((v6 & 1) == 0)
    {
      [(NSArray *)v11 addObject:v30];
    }

    v49[0] = v4;
    v49[1] = v10;
    v49[2] = v38;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:3];
    [(NSArray *)v12 addObject:v14];

    v48[0] = v5;
    v48[1] = v37;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    [(NSArray *)v12 addObject:v15];

    v47 = v39;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
    [(NSArray *)v12 addObject:v16];

    v46[0] = v33;
    v46[1] = obj;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
    [(NSArray *)v12 addObject:v17];

    v45 = v34;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
    [(NSArray *)v12 addObject:v18];

    v44 = v31;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
    [(NSArray *)v12 addObject:v19];

    v43 = v7;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
    [(NSArray *)v12 addObject:v20];

    v42 = v35;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
    [(NSArray *)v12 addObject:v21];

    v41 = v8;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    [(NSArray *)v12 addObject:v22];

    v23 = [(EKCalendarItemEditor *)self calendarItem];
    v24 = [v23 isNew];

    if ((v24 & 1) == 0)
    {
      v40 = v30;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
      [(NSArray *)v12 addObject:v25];
    }

    v26 = self->super._editItems;
    self->super._editItems = v11;
    v27 = v11;

    orderedEditItems = self->super._orderedEditItems;
    self->super._orderedEditItems = v12;

    editItems = self->super._editItems;
  }

  return editItems;
}

- (id)_orderedEditItems
{
  orderedEditItems = self->super._orderedEditItems;
  if (!orderedEditItems)
  {
    v4 = [(EKEventEditor *)self _editItems];
    orderedEditItems = self->super._orderedEditItems;
  }

  return orderedEditItems;
}

- (BOOL)hasUnsavedChanges
{
  if ([(EKEventAttachmentsEditItem *)self->_attachmentsEditItem attachmentsModified])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = EKEventEditor;
  return [(EKCalendarItemEditor *)&v4 hasUnsavedChanges];
}

- (BOOL)attachmentsModifiedOnRecurrence
{
  v3 = [(EKEventAttachmentsEditItem *)self->_attachmentsEditItem attachmentsModified];
  if (v3)
  {
    v4 = [(EKEventEditor *)self event];
    v5 = [v4 isOrWasPartOfRecurringSeries];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)saveCalendarItemWithSpan:(int64_t)a3 error:(id *)a4
{
  v7 = EKUILogSignpostHandle();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D3400000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SaveEvent", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = [(EKEventEditor *)self event];
  if (self->_shouldAutocomplete)
  {
    p_zeroKeywordResult = &self->_zeroKeywordResult;
    if (self->_zeroKeywordResult)
    {
      v10 = [(EKAutocompleteSearchResult *)self->_selectedAutocompleteResult isEqual:?];
    }

    else
    {
      v10 = 0;
    }

    autocompleteTracker = self->_autocompleteTracker;
    v12 = [(EKEventEditor *)self event];
    [(EKUIAutocompleteTracker *)autocompleteTracker finalizeAutocompleteTrackingOnSave:1 withEvent:v12 selectedResult:self->_selectedAutocompleteResult selectedIndex:self->_selectedAutocompleteResultIndex isZKW:v10];

    if (v10)
    {
      v13 = a4;
      v14 = 14;
LABEL_12:
      v15 = [objc_msgSend(objc_opt_class() "_SGSuggestionsServiceClass")];
      v16 = [(EKAutocompleteSearchResult *)*p_zeroKeywordResult suggestionInfo];
      v17 = [v16 uniqueKey];
      [v15 logEventInteractionForEventWithUniqueKey:v17 interface:v14 actionType:6];

      a4 = v13;
      goto LABEL_13;
    }

    p_zeroKeywordResult = &self->_naturalLanguageResult;
    if (self->_naturalLanguageResult && [(EKAutocompleteSearchResult *)self->_selectedAutocompleteResult isEqual:?])
    {
      v13 = a4;
      v14 = 15;
      goto LABEL_12;
    }
  }

LABEL_13:
  v18 = [(EKEventEditor *)self suggestionKey];

  if (v18)
  {
    v19 = [objc_msgSend(objc_opt_class() "_SGSuggestionsServiceClass")];
    v20 = [(EKEventEditor *)self suggestionKey];
    [v19 logEventInteractionForEventWithUniqueKey:v20 interface:20 actionType:6];
  }

  v21 = [v8 isNew];
  if (a3 || v21)
  {
    v22 = [v8 recurrenceRules];
    v23 = [v22 firstObject];

    v24 = [v23 recurrenceEnd];
    v25 = [v24 endDate];

    if (v25)
    {
      v26 = CUIKCalendar();
      [v26 components:30 fromDate:v25];
      v60 = a3;
      v28 = v27 = a4;
      v29 = [v8 startDate];
      v30 = [v26 components:224 fromDate:v29];

      [v28 setHour:{objc_msgSend(v30, "hour")}];
      [v28 setMinute:{objc_msgSend(v30, "minute")}];
      [v28 setSecond:{objc_msgSend(v30, "second")}];
      v31 = [v26 dateFromComponents:v28];
      v32 = [MEMORY[0x1E6966AB8] recurrenceEndWithEndDate:v31];
      [v23 setRecurrenceEnd:v32];

      a4 = v27;
      a3 = v60;
    }
  }

  if ([v8 hasAttendees] && (objc_msgSend(v8, "allowsAttendeesModifications") & 1) == 0)
  {
    [v8 setAttendees:0];
  }

  v33 = [v8 structuredLocation];
  if ([v33 isStructured])
  {
    v34 = [v8 calendar];
    v35 = [v34 source];
    v36 = [v35 constraints];
    v37 = [v36 supportsStructuredLocations];

    if (v37)
    {
      goto LABEL_27;
    }

    v38 = MEMORY[0x1E6966B08];
    v33 = [v8 location];
    v39 = [v38 locationWithTitle:v33];
    [v8 setStructuredLocation:v39];
  }

LABEL_27:
  v40 = [(EKCalendarItemEditor *)self calendarItemCreationViewStart];
  if (v40 > 5)
  {
    v41 = &unk_1F4F32758;
  }

  else
  {
    v41 = qword_1E8442370[v40];
  }

  v42 = [v8 isNew];
  v43 = [MEMORY[0x1E6966A10] sharedInstance];
  v44 = v43;
  if (v42)
  {
    [v43 handleEventCreation:v8];

    v45 = [v8 isReminderIntegrationEvent];
    v46 = [v8 attendees];
    v47 = [v46 count] != 0;

    v63 = MEMORY[0x1E69E9820];
    v64 = 3221225472;
    v65 = __48__EKEventEditor_saveCalendarItemWithSpan_error___block_invoke;
    v66 = &unk_1E8442300;
    v68 = v45;
    v69 = v47;
    v48 = v67;
    v67[0] = v41;
    v67[1] = self;
    CalAnalyticsSendEventLazy();
  }

  else
  {
    [v43 handleEventUpdate:v8];

    v48 = &v61;
    v61 = v8;
    v62 = v41;
    CalAnalyticsSendEventLazy();
  }

  v49 = [(EKCalendarItemEditor *)self editorDelegate];
  v50 = [v49 editorForCalendarItemEditor:self];

  if (self->_shouldRecordPrecommitEvent)
  {
    v51 = [v50 saveEventForOOPModificationRecording:v8 span:a3 error:a4];
    v52 = objc_alloc_init(_TtC10EventKitUI33EKRemoteUIObjectSerializerWrapper);
    v53 = [(EKRemoteUIObjectSerializerWrapper *)v52 serializedRepresentationWithEkObject:v8];
    precommitSerializedEvent = self->_precommitSerializedEvent;
    self->_precommitSerializedEvent = v53;

    if (!v51)
    {
      v56 = 0;
      goto LABEL_41;
    }

    v55 = [v50 commitEventForOOPModificationRecording:v8 error:a4];

    if ((v55 & 1) == 0)
    {
LABEL_36:
      v56 = 0;
      goto LABEL_43;
    }
  }

  else if (![v50 saveEvent:v8 span:a3 error:a4])
  {
    goto LABEL_36;
  }

  v57 = [v8 suggestionInfo];

  if (v57)
  {
    v52 = [(EKCalendarItemEditor *)self store];
    [(EKRemoteUIObjectSerializerWrapper *)v52 confirmSuggestedEvent:v8];
    v56 = 1;
LABEL_41:

    goto LABEL_43;
  }

  v56 = 1;
LABEL_43:
  v58 = EKUILogSignpostHandle();
  if (os_signpost_enabled(v58))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D3400000, v58, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SaveEvent", " enableTelemetry=YES ", buf, 2u);
  }

  return v56;
}

void __48__EKEventEditor_saveCalendarItemWithSpan_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (*(a1 + 48))
  {
    v4 = @"Reminder";
  }

  else
  {
    v4 = @"Event";
  }

  [v3 setObject:v4 forKeyedSubscript:@"eventType"];
  if (*(a1 + 49))
  {
    v5 = MEMORY[0x1E695E118];
  }

  else
  {
    v5 = MEMORY[0x1E695E110];
  }

  [v7 setObject:v5 forKeyedSubscript:@"hasAttendees"];
  [v7 setObject:*(a1 + 32) forKeyedSubscript:@"currentView"];
  v6 = [*(a1 + 40) calendarItemCreationMethod] - 1;
  if (v6 <= 3)
  {
    [v7 setObject:off_1E84423A0[v6] forKeyedSubscript:@"method"];
  }
}

void __48__EKEventEditor_saveCalendarItemWithSpan_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  if ([v3 isReminderIntegrationEvent])
  {
    v4 = @"Reminder";
  }

  else
  {
    v4 = @"Event";
  }

  [v7 setObject:v4 forKeyedSubscript:@"eventType"];
  v5 = [*(a1 + 32) attendees];
  if ([v5 count])
  {
    v6 = MEMORY[0x1E695E118];
  }

  else
  {
    v6 = MEMORY[0x1E695E110];
  }

  [v7 setObject:v6 forKeyedSubscript:@"hasAttendees"];

  [v7 setObject:*(a1 + 40) forKeyedSubscript:@"currentView"];
}

- (id)preferredTitle
{
  v2 = [(EKEventEditor *)self event];
  v3 = v2;
  if (v2 && ![v2 isNew])
  {
    v4 = @"Edit Event";
  }

  else
  {
    v4 = @"New Event";
  }

  v5 = EventKitUIBundle();
  v6 = [v5 localizedStringForKey:v4 value:&stru_1F4EF6790 table:0];

  return v6;
}

+ (id)defaultTitleForCalendarItem
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Untitled event" value:@"New Event" table:0];

  return v3;
}

- (id)_nameForDeleteButton
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Delete Event" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (id)defaultAlertTitle
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Cannot Save Event" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  if (self->_backgroundColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_backgroundColor, a3);
    if ([(EKEventEditor *)self isViewLoaded])
    {
      v6 = [(EKEventEditor *)self view];
      [v6 setBackgroundColor:v7];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (CGSize)preferredContentSize
{
  v3 = EKUIContainedControllerIdealWidth();
  v4 = EKUIContainedControllerIdealHeight();
  v5 = [(EKEventEditor *)self view];
  [v5 sizeThatFits:{v3, v4}];
  v7 = v6;

  v8 = v3;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)prepareEditItems
{
  v3.receiver = self;
  v3.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v3 prepareEditItems];
  [(EKEventEditor *)self _updateTitleEditItemSeparatorVisibility];
}

- (void)_focusAppearanceTarget
{
  focusOnAppearanceTarget = self->_focusOnAppearanceTarget;
  if (focusOnAppearanceTarget == 2)
  {
    dateItem = self->_dateItem;
    if (dateItem)
    {
      v9 = [(EKEventDateEditItem *)dateItem cellForSubitemAtIndex:1];
      v5 = [(EKEventEditor *)self tableView];
      v6 = [v5 indexPathForCell:v9];

      v7 = [(EKEventEditor *)self tableView];
      [v7 selectRowAtIndexPath:v6 animated:1 scrollPosition:0];

      v8 = [(EKEventEditor *)self tableView];
      [(EKCalendarItemEditor *)self tableView:v8 didSelectRowAtIndexPath:v6];

      self->_focusOnAppearanceTarget = 0;
    }
  }

  else if (focusOnAppearanceTarget == 1)
  {
    if ([(EKCalendarItemTitleInlineEditItem *)self->_titleInlineEditItem focusTitleAndSelectTitle:self->_selectOnFocus])
    {
      self->_focusOnAppearanceTarget = 0;
    }
  }
}

- (void)focus:(unint64_t)a3 select:(BOOL)a4
{
  self->_focusOnAppearanceTarget = a3;
  self->_selectOnFocus = a4;
  [(EKEventEditor *)self _focusAppearanceTarget];
}

- (void)_revertEvent
{
  v3 = [(EKEventEditor *)self event];
  [v3 rollback];

  v4 = [(EKEventEditor *)self event];
  [v4 forceLocationPredictionUpdate];
}

- (id)_viewForSheet
{
  v3 = [(EKCalendarItemEditor *)self currentEditItem];

  if (!v3 || (-[EKCalendarItemEditor currentEditItem](self, "currentEditItem"), v4 = objc_claimAutoreleasedReturnValue(), [v4 viewForActionSheet], v5 = objc_claimAutoreleasedReturnValue(), v4, !v5))
  {
    v5 = [(EKEventEditor *)self view];
  }

  return v5;
}

- (void)_setEventTitleForTestingAutocomplete:(id)a3
{
  v5 = a3;
  v4 = [(EKEventEditor *)self event];
  [v4 setTitle:v5];

  [(EKCalendarItemTitleInlineEditItem *)self->_titleInlineEditItem setTitle:v5];
  [(EKEventEditor *)self _scheduleAutocompleteSearchWithString:v5];
}

- (void)editItemTextChanged:(id)a3
{
  v4 = a3;
  if (self->_titleInlineEditItem == v4)
  {
    [(EKEventEditor *)self _showAutocompleteResults];
  }

  v5.receiver = self;
  v5.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v5 editItemTextChanged:v4];
}

- (void)editItemDidStartEditing:(id)a3
{
  titleInlineEditItem = self->_titleInlineEditItem;
  v6 = a3;
  if (titleInlineEditItem == a3)
  {
    [(EKEventEditor *)self _showAutocompleteResults];
  }

  else
  {
    [(EKEventEditor *)self _hideAndCancelAutocompleteResults];
  }

  v7.receiver = self;
  v7.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v7 editItemDidStartEditing:v6];
}

- (void)editItem:(id)a3 didSaveFromDetailViewController:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (self->_calendarEditItem == v6)
  {
    v7 = [(EKEventEditor *)self event];
    [(UIResponder *)self EKUI_setDataOwnersFromEvent:v7];
  }

  if ([-[EKEventEditor superclass](self "superclass")])
  {
    v8.receiver = self;
    v8.super_class = EKEventEditor;
    [(EKCalendarItemEditor *)&v8 editItem:v6 didSaveFromDetailViewController:v4];
  }
}

- (void)_showAutocompleteResults
{
  if (self->_shouldAutocomplete && !self->_selectedAutocompleteResult)
  {
    v3 = [(EKCalendarItemTitleInlineEditItem *)self->_titleInlineEditItem searchStringForEventAutocomplete];
    [(EKEventEditor *)self _scheduleAutocompleteSearchWithString:v3];
  }
}

- (void)_hideAndCancelAutocompleteResults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__EKEventEditor__hideAndCancelAutocompleteResults__block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __50__EKEventEditor__hideAndCancelAutocompleteResults__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1240) setResults:MEMORY[0x1E695E0F0]];
  v2 = *(a1 + 32);

  return [v2 _cancelPendingAutocompleteAndCleanup];
}

- (void)_scheduleAutocompleteSearchWithString:(id)a3
{
  v7 = a3;
  v5 = [MEMORY[0x1E6993470] sharedPreferences];
  v6 = [v5 eventAutocompleteEnabled];

  if (v6)
  {
    objc_storeStrong(&self->_autocompleteSearchString, a3);
    [(EKEventEditor *)self _scheduleAutocompleteTimerIfNeeded];
  }
}

- (void)_scheduleAutocompleteTimerIfNeeded
{
  if (!self->_autocompleteTimer)
  {
    v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__beginAutocompleteSearch_ selector:0 userInfo:0 repeats:0.35];
    autocompleteTimer = self->_autocompleteTimer;
    self->_autocompleteTimer = v3;
  }
}

- (void)_cancelPendingAutocompleteAndCleanup
{
  autocompleteTimer = self->_autocompleteTimer;
  if (autocompleteTimer)
  {
    [(NSTimer *)autocompleteTimer invalidate];
    v4 = self->_autocompleteTimer;
    self->_autocompleteTimer = 0;
  }
}

- (void)_beginAutocompleteSearch:(id)a3
{
  v22 = a3;
  v4 = self->_autocompleteSearchString;
  v5 = v4;
  if (v4)
  {
    v6 = [(NSString *)v4 length];
    [(EKEventEditor *)self _cancelPendingAutocompleteAndCleanup];
    if (v6)
    {
      [(EKUIAutocompleteTracker *)self->_autocompleteTracker trackAutocompleteQuery];
      v21 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    [(EKEventEditor *)self _cancelPendingAutocompleteAndCleanup];
  }

  [(EKUIAutocompleteTracker *)self->_autocompleteTracker trackZKWQuery];
  v21 = 1;
LABEL_6:
  if ([*MEMORY[0x1E69DDA98] isRunningTest])
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:_EventKitUI_EventEditorDidBeginAutocompleteSearchNotification object:self];
  }

  if (!self->_suggestionGenerator)
  {
    v8 = objc_alloc_init(MEMORY[0x1E6966A20]);
    suggestionGenerator = self->_suggestionGenerator;
    self->_suggestionGenerator = v8;
  }

  v10 = [(EKCalendarItemEditor *)self timeImplicitlySet];
  v11 = 52;
  if (v10)
  {
    v11 = 20;
  }

  v20 = v11;
  v12 = self->_suggestionGenerator;
  v13 = [(EKEventEditor *)self event];
  v14 = [v13 calendar];
  v15 = [(EKEventEditor *)self event];
  v16 = [v15 startDate];
  v17 = [(EKCalendarItemEditor *)self editorDelegate];
  v18 = [v17 pasteboardManagerForCalendarItemEditor:self];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __42__EKEventEditor__beginAutocompleteSearch___block_invoke;
  v23[3] = &unk_1E8442350;
  v24 = v5;
  v25 = self;
  v26 = v21;
  v19 = v5;
  [(EKEventSuggestionGenerator *)v12 eventSuggestionsFromString:v19 defaultCalendar:v14 referenceDate:v16 pasteboardItemProvider:v18 defaultSuggestionVisibility:1 options:v20 handler:v23];
}

void __42__EKEventEditor__beginAutocompleteSearch___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__EKEventEditor__beginAutocompleteSearch___block_invoke_2;
  v7[3] = &unk_1E8442328;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v10 = v3;
  v11 = *(a1 + 48);
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __42__EKEventEditor__beginAutocompleteSearch___block_invoke_2(uint64_t a1)
{
  if (CalEqualStrings())
  {
    v2 = MEMORY[0x1E6966A20];
    v3 = *(a1 + 48);
    v4 = [*(a1 + 40) event];
    v5 = [v4 startDate];
    v6 = [*(a1 + 40) event];
    v7 = [v6 endDateUnadjustedForLegacyClients];
    v8 = [*(a1 + 40) timeImplicitlySet];
    v9 = CUIKCalendar();
    [v2 adjustTimeForUIAndApplyToAutocompleteResults:v3 usingCurrentStartDate:v5 currentEndDate:v7 timeImplicitlySet:v8 calendar:v9];

    obj = [*(a1 + 48) firstObject];
    if (*(a1 + 56) == 1 && [obj source] == 2)
    {
      objc_storeStrong((*(a1 + 40) + 1360), obj);
    }

    [*(*(a1 + 40) + 1240) setResults:*(a1 + 48)];
    [*(*(a1 + 40) + 1384) setFinalNumberOfAutocompleteResults:{objc_msgSend(*(a1 + 48), "count")}];
  }
}

- (void)autocompleteResultsEditItem:(id)a3 resultSelected:(id)a4
{
  v32 = a3;
  v6 = a4;
  [(EKEventEditor *)self _cancelPendingAutocompleteAndCleanup];
  objc_storeStrong(&self->_selectedAutocompleteResult, a4);
  v7 = [(EKEventAutocompleteResultsEditItem *)self->_autocompleteEditItem results];
  self->_selectedAutocompleteResultIndex = [v7 indexOfObject:v6];

  v8 = [v6 pasteboardResults];
  v9 = [v8 count];

  if (v9 >= 2)
  {
    v10 = [EKUIConfirmMultiPasteViewController alloc];
    v11 = [(EKCalendarItemEditor *)self editorDelegate];
    v12 = [v11 pasteboardManagerForCalendarItemEditor:self];
    v13 = [(EKEventEditor *)self event];
    v14 = [v13 eventStore];
    v15 = [(EKEventEditor *)self event];
    v16 = [v15 startDate];
    v17 = [(EKUIConfirmMultiPasteViewController *)v10 initWithSearchResult:v6 pasteboardManager:v12 eventStore:v14 dateForPaste:v16];

    [(EKUIConfirmMultiPasteViewController *)v17 setDelegate:self];
    v18 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v17];
    [v18 setModalPresentationStyle:16];
    [(EKCalendarItemEditor *)self editItem:v32 wantsViewControllerPresented:v18];

    goto LABEL_19;
  }

  v19 = [(EKEventEditor *)self event];
  [(EKEventEditor *)self _modifyCurrentEvent:v19 withAutocompleteResult:v6];

  v20 = [v6 preferredLocation];
  v21 = [v20 isPrediction];

  v22 = MEMORY[0x1E6966B10];
  if (v21)
  {
    v23 = [v6 preferredLocation];
    v24 = [v23 predictedLOI];
    [v22 userInteractionWithPredictedLocationOfInterest:v24 interaction:0];
  }

  else
  {
    if ([v32 hasSuggestedLocationResult])
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    [v22 userInteractionWithPredictedLocationOfInterest:0 interaction:v25];
  }

  if (self->_zeroKeywordResult && ([(EKAutocompleteSearchResult *)self->_selectedAutocompleteResult isEqual:?]& 1) != 0)
  {
    v26 = 14;
  }

  else
  {
    if (!self->_naturalLanguageResult || ![(EKAutocompleteSearchResult *)self->_selectedAutocompleteResult isEqual:?])
    {
      goto LABEL_16;
    }

    v26 = 15;
  }

  v27 = [objc_msgSend(objc_opt_class() "_SGSuggestionsServiceClass")];
  v28 = [(EKAutocompleteSearchResult *)self->_selectedAutocompleteResult suggestionInfo];
  v29 = [v28 uniqueKey];
  [v27 logEventInteractionForEventWithUniqueKey:v29 interface:v26 actionType:5];

LABEL_16:
  [(EKEventEditor *)self editItemTextChanged:self->_titleInlineEditItem];
  v30 = [(EKEventEditor *)self event];
  v31 = [v30 notes];

  if (v31)
  {
    [(EKEventURLAndNotesInlineEditItem *)self->_notesEditItem reset];
  }

  [(EKEventEditor *)self prepareEditItems];
  [(EKEventEditor *)self _setAutocompleteResultsVisible:0];
LABEL_19:
}

- (void)_modifyCurrentEvent:(id)a3 withAutocompleteResult:(id)a4
{
  v16 = a3;
  v6 = a4;
  if ([v6 source] == 4 && (objc_msgSend(v6, "pasteboardResults"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8 == 1))
  {
    v9 = [v6 pasteboardResults];
    v10 = [v9 firstObject];

    v11 = [(EKCalendarItemEditor *)self editorDelegate];
    v12 = [v11 pasteboardManagerForCalendarItemEditor:self];
    v13 = [v12 calendarToPasteTo];

    v14 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v10 = v6;
  }

  [v10 updateEventFromSelf:v16 updateTimeProperties:1 updateTravelTimeProperties:v14 updateMode:0 overrideCalendar:v13];
  v15 = [v10 attendees];
  -[EKCalendarItemEditor setHasModifiedAttendeesFromSuggestion:](self, "setHasModifiedAttendeesFromSuggestion:", [v15 count] != 0);
}

- (void)autocompleteResultsEditItemDidShowResults:(id)a3
{
  [(EKEventEditor *)self _setAutocompleteResultsVisible:1];
  if ([*MEMORY[0x1E69DDA98] isRunningTest])
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 postNotificationName:_EventKitUI_EventEditorDidShowAutocompleteResultsNotification object:self];
  }
}

- (void)_setAutocompleteResultsVisible:(BOOL)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_autocompleteResultsVisible != a3)
  {
    self->_autocompleteResultsVisible = a3;
    [(EKEventEditor *)self _updateTitleEditItemSeparatorVisibility];
    if (self->_autocompleteResultsVisible)
    {
      v4 = self->_zeroKeywordResult;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v5 = [(EKEventAutocompleteResultsEditItem *)self->_autocompleteEditItem results];
      v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = *v19;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v19 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v11 = *(*(&v18 + 1) + 8 * i);
            if (v4 && ([*(*(&v18 + 1) + 8 * i) isEqual:v4] & 1) != 0)
            {
              v8 = 1;
            }

            else if ([v11 source] == 2)
            {
              objc_storeStrong(&self->_naturalLanguageResult, v11);
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v7);

        if (v8)
        {
          if (!self->_hasShownZeroKeywordResult)
          {
            self->_hasShownZeroKeywordResult = 1;
            [(EKUIAutocompleteTracker *)self->_autocompleteTracker trackZKWResultShown];
            v12 = [objc_msgSend(objc_opt_class() "_SGSuggestionsServiceClass")];
            v13 = [(EKAutocompleteSearchResult *)v4 suggestionInfo];
            v14 = [v13 uniqueKey];
            [v12 logEventInteractionForEventWithUniqueKey:v14 interface:14 actionType:4];
          }

LABEL_23:

          return;
        }
      }

      else
      {
      }

      [(EKUIAutocompleteTracker *)self->_autocompleteTracker trackAutocompleteResultsShown];
      if (self->_naturalLanguageResult)
      {
        if (!self->_hasShownNaturalLanguageResult)
        {
          self->_hasShownNaturalLanguageResult = 1;
          v15 = [objc_msgSend(objc_opt_class() "_SGSuggestionsServiceClass")];
          v16 = [(EKAutocompleteSearchResult *)self->_naturalLanguageResult suggestionInfo];
          v17 = [v16 uniqueKey];
          [v15 logEventInteractionForEventWithUniqueKey:v17 interface:15 actionType:4];
        }

        [(EKUIAutocompleteTracker *)self->_autocompleteTracker trackNLResultShown];
      }

      goto LABEL_23;
    }
  }
}

- (void)confirmMultiPasteViewController:(id)a3 finishedWithCancel:(BOOL)a4
{
  if (a4)
  {
    [(EKEventEditor *)self focus:1 select:0];
  }

  else
  {
    [(EKCalendarItemEditor *)self cancelEditingWithDelegateNotification:1 forceCancel:1];
  }
}

@end
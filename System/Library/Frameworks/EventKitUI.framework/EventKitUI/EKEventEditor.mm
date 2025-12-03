@interface EKEventEditor
+ (id)defaultTitleForCalendarItem;
- (BOOL)attachmentsModifiedOnRecurrence;
- (BOOL)hasUnsavedChanges;
- (BOOL)saveCalendarItemWithSpan:(int64_t)span error:(id *)error;
- (CGSize)preferredContentSize;
- (id)_calendarItemIndexSet;
- (id)_editItems;
- (id)_nameForDeleteButton;
- (id)_orderedEditItems;
- (id)_viewForSheet;
- (id)defaultAlertTitle;
- (id)preferredTitle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_beginAutocompleteSearch:(id)search;
- (void)_cancelPendingAutocompleteAndCleanup;
- (void)_focusAppearanceTarget;
- (void)_hideAndCancelAutocompleteResults;
- (void)_modifyCurrentEvent:(id)event withAutocompleteResult:(id)result;
- (void)_revertEvent;
- (void)_scheduleAutocompleteSearchWithString:(id)string;
- (void)_scheduleAutocompleteTimerIfNeeded;
- (void)_setAutocompleteResultsVisible:(BOOL)visible;
- (void)_setEventTitleForTestingAutocomplete:(id)autocomplete;
- (void)_showAutocompleteResults;
- (void)_updateTitleEditItemSeparatorVisibility;
- (void)autocompleteResultsEditItem:(id)item resultSelected:(id)selected;
- (void)autocompleteResultsEditItemDidShowResults:(id)results;
- (void)confirmMultiPasteViewController:(id)controller finishedWithCancel:(BOOL)cancel;
- (void)editItem:(id)item didSaveFromDetailViewController:(BOOL)controller;
- (void)editItemDidStartEditing:(id)editing;
- (void)editItemTextChanged:(id)changed;
- (void)focus:(unint64_t)focus select:(BOOL)select;
- (void)loadView;
- (void)prepareEditItems;
- (void)refreshAttachments;
- (void)refreshInvitees;
- (void)refreshLocation;
- (void)refreshRecurrence;
- (void)refreshStartAndEndDates;
- (void)refreshURL;
- (void)reloadTableViewSectionsForTime:(BOOL)time invitees:(BOOL)invitees location:(BOOL)location recurrence:(BOOL)recurrence;
- (void)setBackgroundColor:(id)color;
- (void)setDefaultCalendar:(id)calendar;
- (void)setEvent:(id)event;
- (void)setSuggestionKey:(id)key;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation EKEventEditor

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v6 loadView];
  backgroundColor = [(EKEventEditor *)self backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [(EKEventEditor *)self backgroundColor];
    view = [(EKEventEditor *)self view];
    [view setBackgroundColor:backgroundColor2];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  if (self->_isTransitioning)
  {
    view = [(EKEventEditor *)self view];
    window = [view window];
    windowScene = [window windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];

    return 1 << interfaceOrientation;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = EKEventEditor;
    return [(EKCalendarItemEditor *)&v7 supportedInterfaceOrientations];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  self->_isTransitioning = 1;
  v4.receiver = self;
  v4.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v4 viewWillAppear:appear];
  [(EKEventEditor *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (void)viewDidAppear:(BOOL)appear
{
  v49 = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v30 viewDidAppear:appear];
  v4 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO))
  {
    log = v4;
    v5 = objc_opt_class();
    v29 = NSStringFromClass(v5);
    event = [(EKEventEditor *)self event];
    startDate = [event startDate];
    event2 = [(EKEventEditor *)self event];
    [event2 duration];
    v7 = v6 / 60.0;
    event3 = [(EKEventEditor *)self event];
    isNew = [event3 isNew];
    event4 = [(EKEventEditor *)self event];
    uUID = [event4 UUID];
    event5 = [(EKEventEditor *)self event];
    uniqueID = [event5 uniqueID];
    event6 = [(EKEventEditor *)self event];
    externalURL = [event6 externalURL];
    event7 = [(EKEventEditor *)self event];
    calendar = [event7 calendar];
    calendarIdentifier = [calendar calendarIdentifier];
    event8 = [(EKEventEditor *)self event];
    calendar2 = [event8 calendar];
    source = [calendar2 source];
    sourceIdentifier = [source sourceIdentifier];
    *buf = 138545410;
    v32 = v29;
    v33 = 2114;
    v34 = startDate;
    v35 = 2048;
    v36 = v7;
    v37 = 1024;
    v38 = isNew;
    v39 = 2114;
    v40 = uUID;
    v41 = 2114;
    v42 = uniqueID;
    v43 = 2114;
    v44 = externalURL;
    v45 = 2114;
    v46 = calendarIdentifier;
    v47 = 2114;
    v48 = sourceIdentifier;
    _os_log_impl(&dword_1D3400000, log, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear. startDate = %{public}@, duration = %.1f min, isNew = %d. UUID = %{public}@, uniqueID = %{public}@, externalURL = %{public}@, calendarIdentifier = %{public}@, sourceIdentifier = %{public}@", buf, 0x58u);
  }

  self->_isTransitioning = 0;
  [(EKEventEditor *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  navigationController = [(EKEventEditor *)self navigationController];
  presentationController = [navigationController presentationController];
  [presentationController preferredContentSizeDidChangeForChildContentContainer:self];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  self->_isTransitioning = 1;
  v4.receiver = self;
  v4.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v4 viewWillDisappear:disappear];
  [(EKEventEditor *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (self->_shouldAutocomplete)
  {
    autocompleteTracker = self->_autocompleteTracker;
    event = [(EKEventEditor *)self event];
    [(EKUIAutocompleteTracker *)autocompleteTracker finalizeAutocompleteTrackingOnSave:0 withEvent:event selectedResult:0 selectedIndex:0 isZKW:0];
  }

  v7.receiver = self;
  v7.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v7 viewDidDisappear:disappearCopy];
  self->_isTransitioning = 0;
  [(EKEventEditor *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (void)setEvent:(id)event
{
  eventCopy = event;
  [eventCopy setPredictedLocationFrozen:1];
  v13.receiver = self;
  v13.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v13 setCalendarItem:eventCopy];
  preferredTitle = [(EKEventEditor *)self preferredTitle];
  [(EKCalendarItemEditor *)self setTitle:preferredTitle];

  [(EKEventEditor *)self _updateTitleEditItemSeparatorVisibility];
  self->_shouldAutocomplete = [eventCopy isNew];
  v6 = objc_alloc_init(EKUIAutocompleteTracker);
  autocompleteTracker = self->_autocompleteTracker;
  self->_autocompleteTracker = v6;

  startDate = [eventCopy startDate];
  [(EKUIAutocompleteTracker *)self->_autocompleteTracker setInitialStartDate:startDate];

  endDateUnadjustedForLegacyClients = [eventCopy endDateUnadjustedForLegacyClients];
  [(EKUIAutocompleteTracker *)self->_autocompleteTracker setInitialEndDate:endDateUnadjustedForLegacyClients];

  timeZone = [eventCopy timeZone];
  [(EKUIAutocompleteTracker *)self->_autocompleteTracker setInitialTimeZone:timeZone];

  -[EKUIAutocompleteTracker setInitialIsAllDay:](self->_autocompleteTracker, "setInitialIsAllDay:", [eventCopy isAllDay]);
  calendar = [eventCopy calendar];
  [(EKUIAutocompleteTracker *)self->_autocompleteTracker setInitialCalendar:calendar];

  if (([eventCopy isNew] & 1) == 0)
  {
    mEMORY[0x1E6966A10] = [MEMORY[0x1E6966A10] sharedInstance];
    [mEMORY[0x1E6966A10] prepareForEventUpdate:eventCopy];
  }

  [(UIResponder *)self EKUI_setDataOwnersFromEvent:eventCopy];
}

- (void)setSuggestionKey:(id)key
{
  v42 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (keyCopy)
  {
    objc_storeStrong(&self->_suggestionKey, key);
    event = [(EKEventEditor *)self event];

    if (event)
    {
      store = [(EKCalendarItemEditor *)self store];
      v8 = [store predicateForNaturalLanguageSuggestedEventsWithSearchString:0];

      store2 = [(EKCalendarItemEditor *)self store];
      v36 = v8;
      v10 = [store2 eventsMatchingPredicate:v8];

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
        v35 = keyCopy;
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
          suggestionInfo = [v17 suggestionInfo];
          uniqueKey = [suggestionInfo uniqueKey];
          v20 = [uniqueKey isEqualToString:self->_suggestionKey];

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
            keyCopy = v35;
            goto LABEL_14;
          }
        }

        v13 = v17;

        keyCopy = v35;
        if (!v13)
        {
          goto LABEL_15;
        }

        v34 = EKWeakLinkStringConstant();
        v33 = [v13 customObjectForKey:v34];
        event2 = [(EKEventEditor *)self event];
        [event2 setCustomObject:v33 forKey:v34];

        v31 = objc_alloc(MEMORY[0x1E6966B20]);
        suggestionInfo2 = [v13 suggestionInfo];
        opaqueKey = [suggestionInfo2 opaqueKey];
        suggestionInfo3 = [v13 suggestionInfo];
        uniqueKey2 = [suggestionInfo3 uniqueKey];
        suggestionInfo4 = [v13 suggestionInfo];
        extractionGroupIdentifier = [suggestionInfo4 extractionGroupIdentifier];
        v32 = [v31 initWithOpaqueKey:opaqueKey uniqueKey:uniqueKey2 extractionGroupIdentifier:extractionGroupIdentifier];

        event3 = [(EKEventEditor *)self event];
        [event3 setSuggestionInfo:v32];

        v29 = [v13 URL];
        event4 = [(EKEventEditor *)self event];
        [event4 setURL:v29];
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
    isPrediction = 1;
  }

  else
  {
    event = [(EKEventEditor *)self event];
    preferredLocation = [event preferredLocation];
    isPrediction = [preferredLocation isPrediction];
  }

  v6 = MEMORY[0x1D38B98D0]() ^ 1;
  titleInlineEditItem = self->_titleInlineEditItem;

  [(EKCalendarItemTitleInlineEditItem *)titleInlineEditItem setDrawsOwnRowSeparators:v6 & isPrediction];
}

- (void)setDefaultCalendar:(id)calendar
{
  v4.receiver = self;
  v4.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v4 setDefaultCalendar:calendar];
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

- (void)reloadTableViewSectionsForTime:(BOOL)time invitees:(BOOL)invitees location:(BOOL)location recurrence:(BOOL)recurrence
{
  recurrenceCopy = recurrence;
  locationCopy = location;
  inviteesCopy = invitees;
  timeCopy = time;
  v12 = objc_opt_new();
  if (timeCopy)
  {
    [v12 addIndex:{-[EKCalendarItemEditor tableSectionForEditItem:](self, "tableSectionForEditItem:", self->_dateItem)}];
    if (!inviteesCopy)
    {
LABEL_3:
      if (!locationCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if (!inviteesCopy)
  {
    goto LABEL_3;
  }

  [v12 addIndex:{-[EKCalendarItemEditor tableSectionForEditItem:](self, "tableSectionForEditItem:", self->_attendeesEditItem)}];
  if (!locationCopy)
  {
LABEL_4:
    if (!recurrenceCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [v12 addIndex:{-[EKCalendarItemEditor tableSectionForEditItem:](self, "tableSectionForEditItem:", self->_locationInlineEditItem)}];
  if (recurrenceCopy)
  {
LABEL_5:
    [v12 addIndex:{-[EKCalendarItemEditor tableSectionForEditItem:](self, "tableSectionForEditItem:", self->_recurrenceEditItem)}];
  }

LABEL_6:
  tableView = [(EKEventEditor *)self tableView];
  [tableView reloadSections:v12 withRowAnimation:5];
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
    event = [(EKEventEditor *)self event];
    -[EKEventDateEditItem setShowsAllDay:](v5, "setShowsAllDay:", [event changingAllDayPropertyIsAllowed]);

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
    calendarItem = [(EKCalendarItemEditor *)self calendarItem];
    LOBYTE(v6) = [calendarItem isNew];

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

    calendarItem2 = [(EKCalendarItemEditor *)self calendarItem];
    isNew = [calendarItem2 isNew];

    if ((isNew & 1) == 0)
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
    _editItems = [(EKEventEditor *)self _editItems];
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
  attachmentsModified = [(EKEventAttachmentsEditItem *)self->_attachmentsEditItem attachmentsModified];
  if (attachmentsModified)
  {
    event = [(EKEventEditor *)self event];
    isOrWasPartOfRecurringSeries = [event isOrWasPartOfRecurringSeries];

    LOBYTE(attachmentsModified) = isOrWasPartOfRecurringSeries;
  }

  return attachmentsModified;
}

- (BOOL)saveCalendarItemWithSpan:(int64_t)span error:(id *)error
{
  v7 = EKUILogSignpostHandle();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D3400000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SaveEvent", " enableTelemetry=YES ", buf, 2u);
  }

  event = [(EKEventEditor *)self event];
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
    event2 = [(EKEventEditor *)self event];
    [(EKUIAutocompleteTracker *)autocompleteTracker finalizeAutocompleteTrackingOnSave:1 withEvent:event2 selectedResult:self->_selectedAutocompleteResult selectedIndex:self->_selectedAutocompleteResultIndex isZKW:v10];

    if (v10)
    {
      errorCopy2 = error;
      v14 = 14;
LABEL_12:
      v15 = [objc_msgSend(objc_opt_class() "_SGSuggestionsServiceClass")];
      suggestionInfo = [(EKAutocompleteSearchResult *)*p_zeroKeywordResult suggestionInfo];
      uniqueKey = [suggestionInfo uniqueKey];
      [v15 logEventInteractionForEventWithUniqueKey:uniqueKey interface:v14 actionType:6];

      error = errorCopy2;
      goto LABEL_13;
    }

    p_zeroKeywordResult = &self->_naturalLanguageResult;
    if (self->_naturalLanguageResult && [(EKAutocompleteSearchResult *)self->_selectedAutocompleteResult isEqual:?])
    {
      errorCopy2 = error;
      v14 = 15;
      goto LABEL_12;
    }
  }

LABEL_13:
  suggestionKey = [(EKEventEditor *)self suggestionKey];

  if (suggestionKey)
  {
    v19 = [objc_msgSend(objc_opt_class() "_SGSuggestionsServiceClass")];
    suggestionKey2 = [(EKEventEditor *)self suggestionKey];
    [v19 logEventInteractionForEventWithUniqueKey:suggestionKey2 interface:20 actionType:6];
  }

  isNew = [event isNew];
  if (span || isNew)
  {
    recurrenceRules = [event recurrenceRules];
    firstObject = [recurrenceRules firstObject];

    recurrenceEnd = [firstObject recurrenceEnd];
    endDate = [recurrenceEnd endDate];

    if (endDate)
    {
      v26 = CUIKCalendar();
      [v26 components:30 fromDate:endDate];
      spanCopy = span;
      v28 = v27 = error;
      startDate = [event startDate];
      v30 = [v26 components:224 fromDate:startDate];

      [v28 setHour:{objc_msgSend(v30, "hour")}];
      [v28 setMinute:{objc_msgSend(v30, "minute")}];
      [v28 setSecond:{objc_msgSend(v30, "second")}];
      v31 = [v26 dateFromComponents:v28];
      v32 = [MEMORY[0x1E6966AB8] recurrenceEndWithEndDate:v31];
      [firstObject setRecurrenceEnd:v32];

      error = v27;
      span = spanCopy;
    }
  }

  if ([event hasAttendees] && (objc_msgSend(event, "allowsAttendeesModifications") & 1) == 0)
  {
    [event setAttendees:0];
  }

  structuredLocation = [event structuredLocation];
  if ([structuredLocation isStructured])
  {
    calendar = [event calendar];
    source = [calendar source];
    constraints = [source constraints];
    supportsStructuredLocations = [constraints supportsStructuredLocations];

    if (supportsStructuredLocations)
    {
      goto LABEL_27;
    }

    v38 = MEMORY[0x1E6966B08];
    structuredLocation = [event location];
    v39 = [v38 locationWithTitle:structuredLocation];
    [event setStructuredLocation:v39];
  }

LABEL_27:
  calendarItemCreationViewStart = [(EKCalendarItemEditor *)self calendarItemCreationViewStart];
  if (calendarItemCreationViewStart > 5)
  {
    v41 = &unk_1F4F32758;
  }

  else
  {
    v41 = qword_1E8442370[calendarItemCreationViewStart];
  }

  isNew2 = [event isNew];
  mEMORY[0x1E6966A10] = [MEMORY[0x1E6966A10] sharedInstance];
  v44 = mEMORY[0x1E6966A10];
  if (isNew2)
  {
    [mEMORY[0x1E6966A10] handleEventCreation:event];

    isReminderIntegrationEvent = [event isReminderIntegrationEvent];
    attendees = [event attendees];
    v47 = [attendees count] != 0;

    v63 = MEMORY[0x1E69E9820];
    v64 = 3221225472;
    v65 = __48__EKEventEditor_saveCalendarItemWithSpan_error___block_invoke;
    v66 = &unk_1E8442300;
    v68 = isReminderIntegrationEvent;
    v69 = v47;
    v48 = v67;
    v67[0] = v41;
    v67[1] = self;
    CalAnalyticsSendEventLazy();
  }

  else
  {
    [mEMORY[0x1E6966A10] handleEventUpdate:event];

    v48 = &v61;
    v61 = event;
    v62 = v41;
    CalAnalyticsSendEventLazy();
  }

  editorDelegate = [(EKCalendarItemEditor *)self editorDelegate];
  v50 = [editorDelegate editorForCalendarItemEditor:self];

  if (self->_shouldRecordPrecommitEvent)
  {
    v51 = [v50 saveEventForOOPModificationRecording:event span:span error:error];
    store = objc_alloc_init(_TtC10EventKitUI33EKRemoteUIObjectSerializerWrapper);
    v53 = [(EKRemoteUIObjectSerializerWrapper *)store serializedRepresentationWithEkObject:event];
    precommitSerializedEvent = self->_precommitSerializedEvent;
    self->_precommitSerializedEvent = v53;

    if (!v51)
    {
      v56 = 0;
      goto LABEL_41;
    }

    v55 = [v50 commitEventForOOPModificationRecording:event error:error];

    if ((v55 & 1) == 0)
    {
LABEL_36:
      v56 = 0;
      goto LABEL_43;
    }
  }

  else if (![v50 saveEvent:event span:span error:error])
  {
    goto LABEL_36;
  }

  suggestionInfo2 = [event suggestionInfo];

  if (suggestionInfo2)
  {
    store = [(EKCalendarItemEditor *)self store];
    [(EKRemoteUIObjectSerializerWrapper *)store confirmSuggestedEvent:event];
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
  event = [(EKEventEditor *)self event];
  v3 = event;
  if (event && ![event isNew])
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

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_backgroundColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_backgroundColor, color);
    if ([(EKEventEditor *)self isViewLoaded])
    {
      view = [(EKEventEditor *)self view];
      [view setBackgroundColor:v7];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (CGSize)preferredContentSize
{
  v3 = EKUIContainedControllerIdealWidth();
  v4 = EKUIContainedControllerIdealHeight();
  view = [(EKEventEditor *)self view];
  [view sizeThatFits:{v3, v4}];
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
      tableView = [(EKEventEditor *)self tableView];
      v6 = [tableView indexPathForCell:v9];

      tableView2 = [(EKEventEditor *)self tableView];
      [tableView2 selectRowAtIndexPath:v6 animated:1 scrollPosition:0];

      tableView3 = [(EKEventEditor *)self tableView];
      [(EKCalendarItemEditor *)self tableView:tableView3 didSelectRowAtIndexPath:v6];

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

- (void)focus:(unint64_t)focus select:(BOOL)select
{
  self->_focusOnAppearanceTarget = focus;
  self->_selectOnFocus = select;
  [(EKEventEditor *)self _focusAppearanceTarget];
}

- (void)_revertEvent
{
  event = [(EKEventEditor *)self event];
  [event rollback];

  event2 = [(EKEventEditor *)self event];
  [event2 forceLocationPredictionUpdate];
}

- (id)_viewForSheet
{
  currentEditItem = [(EKCalendarItemEditor *)self currentEditItem];

  if (!currentEditItem || (-[EKCalendarItemEditor currentEditItem](self, "currentEditItem"), v4 = objc_claimAutoreleasedReturnValue(), [v4 viewForActionSheet], view = objc_claimAutoreleasedReturnValue(), v4, !view))
  {
    view = [(EKEventEditor *)self view];
  }

  return view;
}

- (void)_setEventTitleForTestingAutocomplete:(id)autocomplete
{
  autocompleteCopy = autocomplete;
  event = [(EKEventEditor *)self event];
  [event setTitle:autocompleteCopy];

  [(EKCalendarItemTitleInlineEditItem *)self->_titleInlineEditItem setTitle:autocompleteCopy];
  [(EKEventEditor *)self _scheduleAutocompleteSearchWithString:autocompleteCopy];
}

- (void)editItemTextChanged:(id)changed
{
  changedCopy = changed;
  if (self->_titleInlineEditItem == changedCopy)
  {
    [(EKEventEditor *)self _showAutocompleteResults];
  }

  v5.receiver = self;
  v5.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v5 editItemTextChanged:changedCopy];
}

- (void)editItemDidStartEditing:(id)editing
{
  titleInlineEditItem = self->_titleInlineEditItem;
  editingCopy = editing;
  if (titleInlineEditItem == editing)
  {
    [(EKEventEditor *)self _showAutocompleteResults];
  }

  else
  {
    [(EKEventEditor *)self _hideAndCancelAutocompleteResults];
  }

  v7.receiver = self;
  v7.super_class = EKEventEditor;
  [(EKCalendarItemEditor *)&v7 editItemDidStartEditing:editingCopy];
}

- (void)editItem:(id)item didSaveFromDetailViewController:(BOOL)controller
{
  controllerCopy = controller;
  itemCopy = item;
  if (self->_calendarEditItem == itemCopy)
  {
    event = [(EKEventEditor *)self event];
    [(UIResponder *)self EKUI_setDataOwnersFromEvent:event];
  }

  if ([-[EKEventEditor superclass](self "superclass")])
  {
    v8.receiver = self;
    v8.super_class = EKEventEditor;
    [(EKCalendarItemEditor *)&v8 editItem:itemCopy didSaveFromDetailViewController:controllerCopy];
  }
}

- (void)_showAutocompleteResults
{
  if (self->_shouldAutocomplete && !self->_selectedAutocompleteResult)
  {
    searchStringForEventAutocomplete = [(EKCalendarItemTitleInlineEditItem *)self->_titleInlineEditItem searchStringForEventAutocomplete];
    [(EKEventEditor *)self _scheduleAutocompleteSearchWithString:searchStringForEventAutocomplete];
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

- (void)_scheduleAutocompleteSearchWithString:(id)string
{
  stringCopy = string;
  mEMORY[0x1E6993470] = [MEMORY[0x1E6993470] sharedPreferences];
  eventAutocompleteEnabled = [mEMORY[0x1E6993470] eventAutocompleteEnabled];

  if (eventAutocompleteEnabled)
  {
    objc_storeStrong(&self->_autocompleteSearchString, string);
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

- (void)_beginAutocompleteSearch:(id)search
{
  searchCopy = search;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:_EventKitUI_EventEditorDidBeginAutocompleteSearchNotification object:self];
  }

  if (!self->_suggestionGenerator)
  {
    v8 = objc_alloc_init(MEMORY[0x1E6966A20]);
    suggestionGenerator = self->_suggestionGenerator;
    self->_suggestionGenerator = v8;
  }

  timeImplicitlySet = [(EKCalendarItemEditor *)self timeImplicitlySet];
  v11 = 52;
  if (timeImplicitlySet)
  {
    v11 = 20;
  }

  v20 = v11;
  v12 = self->_suggestionGenerator;
  event = [(EKEventEditor *)self event];
  calendar = [event calendar];
  event2 = [(EKEventEditor *)self event];
  startDate = [event2 startDate];
  editorDelegate = [(EKCalendarItemEditor *)self editorDelegate];
  v18 = [editorDelegate pasteboardManagerForCalendarItemEditor:self];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __42__EKEventEditor__beginAutocompleteSearch___block_invoke;
  v23[3] = &unk_1E8442350;
  v24 = v5;
  selfCopy = self;
  v26 = v21;
  v19 = v5;
  [(EKEventSuggestionGenerator *)v12 eventSuggestionsFromString:v19 defaultCalendar:calendar referenceDate:startDate pasteboardItemProvider:v18 defaultSuggestionVisibility:1 options:v20 handler:v23];
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

- (void)autocompleteResultsEditItem:(id)item resultSelected:(id)selected
{
  itemCopy = item;
  selectedCopy = selected;
  [(EKEventEditor *)self _cancelPendingAutocompleteAndCleanup];
  objc_storeStrong(&self->_selectedAutocompleteResult, selected);
  results = [(EKEventAutocompleteResultsEditItem *)self->_autocompleteEditItem results];
  self->_selectedAutocompleteResultIndex = [results indexOfObject:selectedCopy];

  pasteboardResults = [selectedCopy pasteboardResults];
  v9 = [pasteboardResults count];

  if (v9 >= 2)
  {
    v10 = [EKUIConfirmMultiPasteViewController alloc];
    editorDelegate = [(EKCalendarItemEditor *)self editorDelegate];
    v12 = [editorDelegate pasteboardManagerForCalendarItemEditor:self];
    event = [(EKEventEditor *)self event];
    eventStore = [event eventStore];
    event2 = [(EKEventEditor *)self event];
    startDate = [event2 startDate];
    v17 = [(EKUIConfirmMultiPasteViewController *)v10 initWithSearchResult:selectedCopy pasteboardManager:v12 eventStore:eventStore dateForPaste:startDate];

    [(EKUIConfirmMultiPasteViewController *)v17 setDelegate:self];
    v18 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v17];
    [v18 setModalPresentationStyle:16];
    [(EKCalendarItemEditor *)self editItem:itemCopy wantsViewControllerPresented:v18];

    goto LABEL_19;
  }

  event3 = [(EKEventEditor *)self event];
  [(EKEventEditor *)self _modifyCurrentEvent:event3 withAutocompleteResult:selectedCopy];

  preferredLocation = [selectedCopy preferredLocation];
  isPrediction = [preferredLocation isPrediction];

  v22 = MEMORY[0x1E6966B10];
  if (isPrediction)
  {
    preferredLocation2 = [selectedCopy preferredLocation];
    predictedLOI = [preferredLocation2 predictedLOI];
    [v22 userInteractionWithPredictedLocationOfInterest:predictedLOI interaction:0];
  }

  else
  {
    if ([itemCopy hasSuggestedLocationResult])
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
  suggestionInfo = [(EKAutocompleteSearchResult *)self->_selectedAutocompleteResult suggestionInfo];
  uniqueKey = [suggestionInfo uniqueKey];
  [v27 logEventInteractionForEventWithUniqueKey:uniqueKey interface:v26 actionType:5];

LABEL_16:
  [(EKEventEditor *)self editItemTextChanged:self->_titleInlineEditItem];
  event4 = [(EKEventEditor *)self event];
  notes = [event4 notes];

  if (notes)
  {
    [(EKEventURLAndNotesInlineEditItem *)self->_notesEditItem reset];
  }

  [(EKEventEditor *)self prepareEditItems];
  [(EKEventEditor *)self _setAutocompleteResultsVisible:0];
LABEL_19:
}

- (void)_modifyCurrentEvent:(id)event withAutocompleteResult:(id)result
{
  eventCopy = event;
  resultCopy = result;
  if ([resultCopy source] == 4 && (objc_msgSend(resultCopy, "pasteboardResults"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8 == 1))
  {
    pasteboardResults = [resultCopy pasteboardResults];
    firstObject = [pasteboardResults firstObject];

    editorDelegate = [(EKCalendarItemEditor *)self editorDelegate];
    v12 = [editorDelegate pasteboardManagerForCalendarItemEditor:self];
    calendarToPasteTo = [v12 calendarToPasteTo];

    v14 = 1;
  }

  else
  {
    v14 = 0;
    calendarToPasteTo = 0;
    firstObject = resultCopy;
  }

  [firstObject updateEventFromSelf:eventCopy updateTimeProperties:1 updateTravelTimeProperties:v14 updateMode:0 overrideCalendar:calendarToPasteTo];
  attendees = [firstObject attendees];
  -[EKCalendarItemEditor setHasModifiedAttendeesFromSuggestion:](self, "setHasModifiedAttendeesFromSuggestion:", [attendees count] != 0);
}

- (void)autocompleteResultsEditItemDidShowResults:(id)results
{
  [(EKEventEditor *)self _setAutocompleteResultsVisible:1];
  if ([*MEMORY[0x1E69DDA98] isRunningTest])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:_EventKitUI_EventEditorDidShowAutocompleteResultsNotification object:self];
  }
}

- (void)_setAutocompleteResultsVisible:(BOOL)visible
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_autocompleteResultsVisible != visible)
  {
    self->_autocompleteResultsVisible = visible;
    [(EKEventEditor *)self _updateTitleEditItemSeparatorVisibility];
    if (self->_autocompleteResultsVisible)
    {
      v4 = self->_zeroKeywordResult;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      results = [(EKEventAutocompleteResultsEditItem *)self->_autocompleteEditItem results];
      v6 = [results countByEnumeratingWithState:&v18 objects:v22 count:16];
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
              objc_enumerationMutation(results);
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

          v7 = [results countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v7);

        if (v8)
        {
          if (!self->_hasShownZeroKeywordResult)
          {
            self->_hasShownZeroKeywordResult = 1;
            [(EKUIAutocompleteTracker *)self->_autocompleteTracker trackZKWResultShown];
            v12 = [objc_msgSend(objc_opt_class() "_SGSuggestionsServiceClass")];
            suggestionInfo = [(EKAutocompleteSearchResult *)v4 suggestionInfo];
            uniqueKey = [suggestionInfo uniqueKey];
            [v12 logEventInteractionForEventWithUniqueKey:uniqueKey interface:14 actionType:4];
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
          suggestionInfo2 = [(EKAutocompleteSearchResult *)self->_naturalLanguageResult suggestionInfo];
          uniqueKey2 = [suggestionInfo2 uniqueKey];
          [v15 logEventInteractionForEventWithUniqueKey:uniqueKey2 interface:15 actionType:4];
        }

        [(EKUIAutocompleteTracker *)self->_autocompleteTracker trackNLResultShown];
      }

      goto LABEL_23;
    }
  }
}

- (void)confirmMultiPasteViewController:(id)controller finishedWithCancel:(BOOL)cancel
{
  if (cancel)
  {
    [(EKEventEditor *)self focus:1 select:0];
  }

  else
  {
    [(EKCalendarItemEditor *)self cancelEditingWithDelegateNotification:1 forceCancel:1];
  }
}

@end
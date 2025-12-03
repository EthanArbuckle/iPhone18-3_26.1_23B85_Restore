@interface WFGetUpcomingCalendarItemsAction
- (void)runAsynchronouslyWithInput:(id)input;
- (void)updateCalendars;
- (void)wasAddedToWorkflow:(id)workflow;
- (void)wasRemovedFromWorkflow:(id)workflow;
@end

@implementation WFGetUpcomingCalendarItemsAction

- (void)runAsynchronouslyWithInput:(id)input
{
  v77[1] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v4 = [(WFGetUpcomingCalendarItemsAction *)self parameterValueForKey:@"WFGetUpcomingItemCount" ofClass:objc_opt_class()];
  integerValue = [v4 integerValue];

  definition = [(WFGetUpcomingCalendarItemsAction *)self definition];
  v6 = [definition objectForKey:@"WFGetUpcomingItemType"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v60 = [(WFGetUpcomingCalendarItemsAction *)self parameterValueForKey:@"WFGetUpcomingItemCalendar" ofClass:objc_opt_class()];
  resourceManager = [(WFGetUpcomingCalendarItemsAction *)self resourceManager];
  v9 = off_278C013C0;
  if (unsignedIntegerValue)
  {
    v9 = off_278C01728;
  }

  v10 = *v9;
  v11 = [resourceManager resourceObjectsOfClass:objc_opt_class()];
  anyObject = [v11 anyObject];

  if ([anyObject status] != 4)
  {
    availabilityError = [anyObject availabilityError];
    [(WFGetUpcomingCalendarItemsAction *)self finishRunningWithError:availabilityError];

    goto LABEL_28;
  }

  if (!unsignedIntegerValue)
  {
    v33 = WFGetWorkflowEventStore();
    v64 = [v33 calendarsForEntityType:0];
    if (v60)
    {
      v34 = [v60 matchingCalendarsFromArray:v64];

      v64 = v34;
    }

    v62 = objc_opt_new();
    v56 = [(WFGetUpcomingCalendarItemsAction *)self parameterValueForKey:@"WFDateSpecifier" ofClass:objc_opt_class()];
    v63 = [v56 isEqualToString:@"Today"];
    v58 = [v56 isEqualToString:@"Tomorrow"];
    v57 = [v56 isEqualToString:@"Specified Day"];
    v35 = 0.0;
    v36 = -86400;
    v37 = 86400;
    while (1)
    {
      v73 = 0;
      v74 = &v73;
      v75 = 0x2020000000;
      v76 = 0;
      if (v63)
      {
        break;
      }

      if (v58)
      {
        currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
        date = [MEMORY[0x277CBEAA8] date];
        currentCalendar2 = [currentCalendar components:28 fromDate:date];

        [currentCalendar2 setDay:{objc_msgSend(currentCalendar2, "day") + 1}];
        date4 = [currentCalendar dateFromComponents:currentCalendar2];
        [currentCalendar2 setDay:{objc_msgSend(currentCalendar2, "day") + 1}];
        v42 = [currentCalendar dateFromComponents:currentCalendar2];
        v43 = [v33 predicateForEventsWithStartDate:date4 endDate:v42 calendars:v64];
        goto LABEL_16;
      }

      if (v57)
      {
        v48 = [(WFGetUpcomingCalendarItemsAction *)self parameterValueForKey:@"WFSpecifiedDate" ofClass:objc_opt_class()];
        v49 = v48;
        if (v48)
        {
          date2 = v48;
        }

        else
        {
          date2 = [MEMORY[0x277CBEAA8] date];
        }

        currentCalendar = date2;

        currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
        date4 = [currentCalendar2 components:28 fromDate:currentCalendar];
        v42 = [currentCalendar2 dateFromComponents:date4];
        [date4 setDay:{objc_msgSend(date4, "day") + 1}];
        v51 = [currentCalendar2 dateFromComponents:date4];
        v45 = [v33 predicateForEventsWithStartDate:v42 endDate:v51 calendars:v64];

        goto LABEL_17;
      }

      v76 = 1;
      currentCalendar = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v35];
      currentCalendar2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v37];
      v45 = [v33 predicateForEventsWithStartDate:currentCalendar endDate:currentCalendar2 calendars:v64];
LABEL_18:

      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __63__WFGetUpcomingCalendarItemsAction_runAsynchronouslyWithInput___block_invoke;
      v69[3] = &unk_278C19B08;
      v46 = v62;
      v70 = v46;
      v71 = &v73;
      v72 = integerValue;
      [v33 enumerateEventsMatchingPredicate:v45 usingBlock:v69];
      v47 = *(v74 + 24);

      _Block_object_dispose(&v73, 8);
      if (v47)
      {
        v35 = v37;
        v37 += 86400;
        v36 += 86400;
        if (v36 <= 0x784CDFF)
        {
          continue;
        }
      }

      allValues = [v46 allValues];
      v53 = [allValues sortedArrayUsingSelector:sel_compareStartDateWithEvent_];
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __63__WFGetUpcomingCalendarItemsAction_runAsynchronouslyWithInput___block_invoke_2;
      v67[3] = &unk_278C19B30;
      v67[4] = self;
      v68 = v33;
      v54 = v33;
      [v53 enumerateObjectsUsingBlock:v67];

      [(WFGetUpcomingCalendarItemsAction *)self finishRunningWithError:0];
      goto LABEL_28;
    }

    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    date3 = [MEMORY[0x277CBEAA8] date];
    currentCalendar2 = [currentCalendar components:28 fromDate:date3];

    [currentCalendar2 setDay:{objc_msgSend(currentCalendar2, "day") + 1}];
    date4 = [MEMORY[0x277CBEAA8] date];
    v42 = [currentCalendar dateFromComponents:currentCalendar2];
    v43 = [v33 predicateForEventsWithStartDate:date4 endDate:v42 calendars:v64];
LABEL_16:
    v45 = v43;
LABEL_17:

    goto LABEL_18;
  }

  v12 = objc_opt_new();
  v13 = MEMORY[0x277CFC4E8];
  v14 = WFReminderPropertyNameDueDate();
  v15 = [v13 propertyForName:v14];

  v16 = MEMORY[0x277CFC4E8];
  v17 = WFReminderPropertyNameList();
  v18 = [v16 propertyForName:v17];

  v19 = MEMORY[0x277CFC4E8];
  v20 = WFReminderPropertyNameIsCompleted();
  v21 = [v19 propertyForName:v20];

  if (([v60 allCalendars] & 1) == 0)
  {
    v22 = MEMORY[0x277CFC2E8];
    calendarTitle = [v60 calendarTitle];
    v24 = [v22 predicateWithValue:calendarTitle forProperty:v18 comparisonType:4];
    [v12 addObject:v24];
  }

  v25 = [MEMORY[0x277CFC2E8] predicateWithValue:MEMORY[0x277CBEC28] forProperty:v21 comparisonType:4];
  [v12 addObject:v25];

  v26 = [MEMORY[0x277CFC2F0] andPredicateWithSubpredicates:v12];
  v27 = [objc_alloc(MEMORY[0x277CFC340]) initWithPredicate:v26];
  v28 = [MEMORY[0x277CFC348] sortDescriptorWithProperty:v15 ascending:1 comparator:0];
  v77[0] = v28;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:1];
  [v27 setSortDescriptors:v29];

  [v27 setSlice:{0x7FFFFFFFFFFFFFFFLL, integerValue}];
  v30 = MEMORY[0x277CFC4E8];
  contentPermissionRequestor = [(WFGetUpcomingCalendarItemsAction *)self contentPermissionRequestor];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __63__WFGetUpcomingCalendarItemsAction_runAsynchronouslyWithInput___block_invoke_3;
  v66[3] = &unk_278C22518;
  v66[4] = self;
  [v30 runQuery:v27 withItems:0 permissionRequestor:contentPermissionRequestor completionHandler:v66];

LABEL_28:
  v55 = *MEMORY[0x277D85DE8];
}

void __63__WFGetUpcomingCalendarItemsAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v11 = v5;
  v7 = [v5 eventIdentifier];
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {
    v9 = *(a1 + 32);
    v10 = [v11 eventIdentifier];
    [v9 setObject:v11 forKey:v10];
  }

  if ([*(a1 + 32) count] == *(a1 + 48))
  {
    *a3 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void __63__WFGetUpcomingCalendarItemsAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 output];
  v5 = [MEMORY[0x277CFC288] itemWithEKEvent:v4 fromEventStore:*(a1 + 40)];

  [v6 addItem:v5];
}

void __63__WFGetUpcomingCalendarItemsAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [*(a1 + 32) output];
        [v12 addItem:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [*(a1 + 32) finishRunningWithError:v6];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateCalendars
{
  v2 = [(WFGetUpcomingCalendarItemsAction *)self parameterForKey:@"WFGetUpcomingItemCalendar"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 loadPossibleStatesWithCompletionHandler:&__block_literal_global_5943];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v2 reloadPossibleStates];
    }
  }
}

- (void)wasRemovedFromWorkflow:(id)workflow
{
  v5.receiver = self;
  v5.super_class = WFGetUpcomingCalendarItemsAction;
  [(WFGetUpcomingCalendarItemsAction *)&v5 wasRemovedFromWorkflow:workflow];
  resourceManager = [(WFGetUpcomingCalendarItemsAction *)self resourceManager];
  [resourceManager removeTarget:self selector:sel_updateCalendars];
}

- (void)wasAddedToWorkflow:(id)workflow
{
  v5.receiver = self;
  v5.super_class = WFGetUpcomingCalendarItemsAction;
  [(WFGetUpcomingCalendarItemsAction *)&v5 wasAddedToWorkflow:workflow];
  resourceManager = [(WFGetUpcomingCalendarItemsAction *)self resourceManager];
  [resourceManager addTarget:self selector:sel_updateCalendars];
}

@end
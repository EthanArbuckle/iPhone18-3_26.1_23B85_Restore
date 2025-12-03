@interface EKUIRecurrenceDifferenceViewController
+ (BOOL)shouldShowRecurrenceDiff:(id)diff;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (EKUIRecurrenceDifferenceViewController)initWithEvent:(id)event andSummary:(id)summary;
- (id)dateTimeStringForEvent:(id)event;
- (id)descriptionForDiffType:(int64_t)type row:(BOOL)row;
- (id)stringForAlarms:(id)alarms;
- (id)stringForAttendees:(id)attendees;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)titleForDiffType:(int64_t)type;
- (int64_t)diffTypeForIndexPath:(id)path;
- (int64_t)diffTypeForSection:(int64_t)section;
- (int64_t)rowCountForDiffType:(int64_t)type;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)findSemanticAlarmDifferenceFromOriginal:(id)original;
- (void)findSemanticAttendeeDifferenceFromOriginal:(id)original;
- (void)loadView;
- (void)revertChangeForDiffType:(int64_t)type row:(int64_t)row;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
@end

@implementation EKUIRecurrenceDifferenceViewController

- (EKUIRecurrenceDifferenceViewController)initWithEvent:(id)event andSummary:(id)summary
{
  eventCopy = event;
  summaryCopy = summary;
  v13.receiver = self;
  v13.super_class = EKUIRecurrenceDifferenceViewController;
  v9 = [(EKUIRecurrenceDifferenceViewController *)&v13 initWithStyle:2];
  if (v9)
  {
    v10 = EventKitUIBundle();
    v11 = [v10 localizedStringForKey:@"Event Changes" value:&stru_1F4EF6790 table:0];
    [(EKUIRecurrenceDifferenceViewController *)v9 setTitle:v11];

    objc_storeStrong(&v9->_event, event);
    objc_storeStrong(&v9->_diffSummary, summary);
    [(EKUIRecurrenceDifferenceViewController *)v9 findSemanticAlarmDifferenceFromOriginal:v9->_event];
    [(EKUIRecurrenceDifferenceViewController *)v9 findSemanticAttendeeDifferenceFromOriginal:v9->_event];
  }

  return v9;
}

+ (BOOL)shouldShowRecurrenceDiff:(id)diff
{
  diffCopy = diff;
  if (shouldShowRecurrenceDiff__onceToken != -1)
  {
    +[EKUIRecurrenceDifferenceViewController shouldShowRecurrenceDiff:];
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__EKUIRecurrenceDifferenceViewController_shouldShowRecurrenceDiff___block_invoke_2;
  v6[3] = &unk_1E8441328;
  v6[4] = &v7;
  [diffCopy enumerateKeysAndObjectsUsingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __67__EKUIRecurrenceDifferenceViewController_shouldShowRecurrenceDiff___block_invoke()
{
  v12[18] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69668A0];
  v12[0] = *MEMORY[0x1E69668F8];
  v12[1] = v0;
  v1 = *MEMORY[0x1E69668E8];
  v12[2] = *MEMORY[0x1E6966830];
  v12[3] = v1;
  v2 = *MEMORY[0x1E69668F0];
  v12[4] = *MEMORY[0x1E6966888];
  v12[5] = v2;
  v3 = *MEMORY[0x1E6966900];
  v12[6] = *MEMORY[0x1E6966890];
  v12[7] = v3;
  v4 = *MEMORY[0x1E69668B8];
  v12[8] = *MEMORY[0x1E6966868];
  v12[9] = v4;
  v5 = *MEMORY[0x1E6966908];
  v12[10] = *MEMORY[0x1E69668A8];
  v12[11] = v5;
  v6 = *MEMORY[0x1E6966828];
  v12[12] = *MEMORY[0x1E6966818];
  v12[13] = v6;
  v7 = *MEMORY[0x1E6966850];
  v12[14] = *MEMORY[0x1E6966820];
  v12[15] = v7;
  v8 = *MEMORY[0x1E6966858];
  v12[16] = *MEMORY[0x1E6966860];
  v12[17] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:18];
  v10 = [MEMORY[0x1E695DFD8] setWithArray:v9];
  v11 = shouldShowRecurrenceDiff__changesToShowDiffFor;
  shouldShowRecurrenceDiff__changesToShowDiffFor = v10;
}

uint64_t __67__EKUIRecurrenceDifferenceViewController_shouldShowRecurrenceDiff___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [shouldShowRecurrenceDiff__changesToShowDiffFor containsObject:a2];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)loadView
{
  v29.receiver = self;
  v29.super_class = EKUIRecurrenceDifferenceViewController;
  [(EKUIRecurrenceDifferenceViewController *)&v29 loadView];
  v4 = objc_opt_new();
  changedRows = self->_changedRows;
  self->_changedRows = v4;

  allKeys = [(NSDictionary *)self->_diffSummary allKeys];
  v7 = [allKeys containsObject:*MEMORY[0x1E69668F8]];

  if (v7)
  {
    [(NSMutableArray *)self->_changedRows addObject:&unk_1F4F32500];
  }

  allKeys2 = [(NSDictionary *)self->_diffSummary allKeys];
  v9 = [allKeys2 containsObject:*MEMORY[0x1E69668A0]];

  if (v9)
  {
    [(NSMutableArray *)self->_changedRows addObject:&unk_1F4F32518];
  }

  allKeys3 = [(NSDictionary *)self->_diffSummary allKeys];
  if ([allKeys3 containsObject:*MEMORY[0x1E6966830]])
  {
    goto LABEL_12;
  }

  allKeys4 = [(NSDictionary *)self->_diffSummary allKeys];
  if ([allKeys4 containsObject:*MEMORY[0x1E69668E8]])
  {
LABEL_11:

LABEL_12:
LABEL_13:
    [(NSMutableArray *)self->_changedRows addObject:&unk_1F4F32530];
    goto LABEL_14;
  }

  allKeys5 = [(NSDictionary *)self->_diffSummary allKeys];
  if ([allKeys5 containsObject:*MEMORY[0x1E6966888]])
  {
LABEL_10:

    goto LABEL_11;
  }

  allKeys6 = [(NSDictionary *)self->_diffSummary allKeys];
  if ([allKeys6 containsObject:*MEMORY[0x1E69668F0]])
  {

    goto LABEL_10;
  }

  allKeys7 = [(NSDictionary *)self->_diffSummary allKeys];
  v28 = [allKeys7 containsObject:*MEMORY[0x1E6966890]];

  if (v28)
  {
    goto LABEL_13;
  }

LABEL_14:
  allKeys8 = [(NSDictionary *)self->_diffSummary allKeys];
  v14 = [allKeys8 containsObject:*MEMORY[0x1E6966900]];

  if (v14)
  {
    [(NSMutableArray *)self->_changedRows addObject:&unk_1F4F32548];
  }

  allKeys9 = [(NSDictionary *)self->_diffSummary allKeys];
  v16 = [allKeys9 containsObject:*MEMORY[0x1E6966868]];

  if (v16)
  {
    [(NSMutableArray *)self->_changedRows addObject:&unk_1F4F32560];
  }

  allKeys10 = [(NSDictionary *)self->_diffSummary allKeys];
  v18 = [allKeys10 containsObject:*MEMORY[0x1E69668A8]];

  if (v18)
  {
    [(NSMutableArray *)self->_changedRows addObject:&unk_1F4F32578];
  }

  allKeys11 = [(NSDictionary *)self->_diffSummary allKeys];
  originalItem = [allKeys11 containsObject:*MEMORY[0x1E6966908]];

  if (originalItem)
  {
    v21 = [(EKEvent *)self->_event URL];
    if (!v21)
    {
      originalItem = [(EKEvent *)self->_event originalItem];
      v22 = [originalItem URL];
      if (!v22)
      {

        goto LABEL_30;
      }

      allKeys5 = v22;
    }

    v23 = [(EKEvent *)self->_event URL];
    originalItem2 = [(EKEvent *)self->_event originalItem];
    v25 = [originalItem2 URL];
    v26 = [v23 isEqual:v25];

    if (v21)
    {

      if (v26)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    if ((v26 & 1) == 0)
    {
LABEL_28:
      [(NSMutableArray *)self->_changedRows addObject:&unk_1F4F32590];
    }
  }

LABEL_30:
  if ([(NSArray *)self->_attendeesAdded count]|| [(NSArray *)self->_attendeesRemoved count])
  {
    [(NSMutableArray *)self->_changedRows addObject:&unk_1F4F325A8];
  }

  if ([(NSArray *)self->_alarmsAdded count]|| [(NSArray *)self->_alarmsRemoved count])
  {
    [(NSMutableArray *)self->_changedRows addObject:&unk_1F4F325C0];
  }
}

- (id)titleForDiffType:(int64_t)type
{
  if (type > 8)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_1E8441398[type];
    v4 = EventKitUIBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F4EF6790 table:0];
  }

  return v5;
}

- (int64_t)rowCountForDiffType:(int64_t)type
{
  originalItem = [(EKEvent *)self->_event originalItem];
  v6 = 2;
  if (type > 3)
  {
    if (type > 5)
    {
      if (type != 6)
      {
        if (type == 7)
        {
          v7 = [(NSArray *)self->_alarmsAdded count];
          v8 = 1072;
LABEL_26:
          v21 = [*(&self->super.super.super.super.isa + v8) count];
          if (v7)
          {
            v6 = (v21 != 0) + 1;
          }

          else
          {
            v6 = v21 != 0;
          }

          goto LABEL_30;
        }

        if (type == 8)
        {
          v7 = [(NSArray *)self->_attendeesAdded count];
          v8 = 1088;
          goto LABEL_26;
        }

LABEL_29:
        v6 = 0;
        goto LABEL_30;
      }

      displayNotes = [(EKEvent *)self->_event URL];
      absoluteString = [displayNotes absoluteString];
      v17 = [absoluteString length];
      v18 = [originalItem URL];
      absoluteString2 = [v18 absoluteString];
      v20 = [absoluteString2 length];
      if (v17)
      {
        v6 = (v20 != 0) + 1;
      }

      else
      {
        v6 = v20 != 0;
      }

LABEL_24:
      goto LABEL_30;
    }

    if (type == 4)
    {
      goto LABEL_30;
    }

    displayNotes = [(EKEvent *)self->_event displayNotes];
    v10 = [displayNotes length];
    displayNotes2 = [originalItem displayNotes];
LABEL_17:
    absoluteString = displayNotes2;
    v16 = [displayNotes2 length];
    if (v10)
    {
      v6 = (v16 != 0) + 1;
    }

    else
    {
      v6 = v16 != 0;
    }

    goto LABEL_24;
  }

  if (type <= 1)
  {
    if (!type)
    {
      goto LABEL_30;
    }

    if (type != 1)
    {
      goto LABEL_29;
    }

    displayNotes = [(EKEvent *)self->_event location];
    v10 = [displayNotes length];
    displayNotes2 = [originalItem location];
    goto LABEL_17;
  }

  if (type != 2)
  {
    [(EKEvent *)self->_event travelTime];
    v13 = v12;
    [originalItem travelTime];
    if (v13 <= 0.0)
    {
      v6 = v14 > 0.0;
    }

    else
    {
      v6 = (v14 > 0.0) + 1;
    }
  }

LABEL_30:

  return v6;
}

- (id)dateTimeStringForEvent:(id)event
{
  eventCopy = event;
  traitCollection = [(EKUIRecurrenceDifferenceViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  v17 = 0;
  v18 = 0;
  if (horizontalSizeClass <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = horizontalSizeClass;
  }

  v15 = 0;
  v16 = 0;
  CalDetailStringsForCalendarEvent(eventCopy, v7, &v18, &v17, &v16, &v15, 0, 0, 0, 0, 0, 0);

  v8 = v18;
  v9 = v17;
  v10 = v16;
  v11 = v15;
  v12 = objc_opt_new();
  v13 = v12;
  if (v8)
  {
    [v12 appendString:v8];
    if (!v9 && !v10 && !v11)
    {
      goto LABEL_17;
    }

    [v13 appendString:@"\n"];
  }

  if (v9)
  {
    [v13 appendString:v9];
    if (!(v10 | v11))
    {
      goto LABEL_17;
    }

    [v13 appendString:@"\n"];
  }

  if (v10)
  {
    [v13 appendString:v10];
    if (!v11)
    {
      goto LABEL_17;
    }

    [v13 appendString:@"\n"];
  }

  else if (!v11)
  {
    goto LABEL_17;
  }

  [v13 appendString:v11];
LABEL_17:

  return v13;
}

- (void)findSemanticAlarmDifferenceFromOriginal:(id)original
{
  v41 = *MEMORY[0x1E69E9840];
  originalCopy = original;
  v4 = MEMORY[0x1E695DF70];
  alarms = [originalCopy alarms];
  v30 = [v4 arrayWithArray:alarms];

  v6 = MEMORY[0x1E695DF70];
  v25 = originalCopy;
  originalItem = [originalCopy originalItem];
  alarms2 = [originalItem alarms];
  v9 = [v6 arrayWithArray:alarms2];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v27 = v9;
  obj = [(NSArray *)v9 copy];
  v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v29)
  {
    v28 = *v36;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v12 = [(NSArray *)v30 copy];
        v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v32;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v32 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v31 + 1) + 8 * j);
              semanticIdentifier = [v11 semanticIdentifier];
              semanticIdentifier2 = [v17 semanticIdentifier];
              v20 = [semanticIdentifier isEqualToString:semanticIdentifier2];

              if (v20)
              {
                [(NSArray *)v27 removeObject:v11];
                [(NSArray *)v30 removeObject:v17];
                goto LABEL_16;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v29);
  }

  alarmsAdded = self->_alarmsAdded;
  self->_alarmsAdded = v30;
  v22 = v30;

  alarmsRemoved = self->_alarmsRemoved;
  self->_alarmsRemoved = v27;
}

- (void)findSemanticAttendeeDifferenceFromOriginal:(id)original
{
  selfCopy = self;
  v59 = *MEMORY[0x1E69E9840];
  originalCopy = original;
  v4 = MEMORY[0x1E695DF70];
  attendees = [originalCopy attendees];
  v43 = [v4 arrayWithArray:attendees];

  v6 = MEMORY[0x1E695DF70];
  originalItem = [originalCopy originalItem];
  attendees2 = [originalItem attendees];
  v9 = [v6 arrayWithArray:attendees2];

  v41 = originalCopy;
  selfAttendee = [originalCopy selfAttendee];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v39 = v9;
  obj = [(NSArray *)v9 copy];
  v42 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v42)
  {
    v40 = *v53;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v53 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v52 + 1) + 8 * i);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v12 = [(NSArray *)v43 copy];
        v13 = [v12 countByEnumeratingWithState:&v48 objects:v57 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v49;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v49 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v48 + 1) + 8 * j);
              semanticIdentifier = [v11 semanticIdentifier];
              semanticIdentifier2 = [v17 semanticIdentifier];
              v20 = [semanticIdentifier isEqualToString:semanticIdentifier2];

              if (v20)
              {
                [(NSArray *)v39 removeObject:v11];
                [(NSArray *)v43 removeObject:v17];
                goto LABEL_16;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v48 objects:v57 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:

        if (([v41 isExternallyOrganizedInvitation] & 1) == 0)
        {
          semanticIdentifier3 = [v11 semanticIdentifier];
          semanticIdentifier4 = [selfAttendee semanticIdentifier];
          v23 = [semanticIdentifier3 isEqualToString:semanticIdentifier4];

          if (v23)
          {
            [(NSArray *)v39 removeObject:v11];
          }
        }
      }

      v42 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v42);
  }

  if (([v41 isExternallyOrganizedInvitation] & 1) == 0)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v24 = [(NSArray *)v43 copy];
    v25 = [v24 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v45;
      while (2)
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v45 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v44 + 1) + 8 * k);
          semanticIdentifier5 = [v29 semanticIdentifier];
          semanticIdentifier6 = [selfAttendee semanticIdentifier];
          v32 = [semanticIdentifier5 isEqualToString:semanticIdentifier6];

          if (v32)
          {
            [(NSArray *)v43 removeObject:v29];
            goto LABEL_32;
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v44 objects:v56 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

LABEL_32:
  }

  attendeesAdded = selfCopy->_attendeesAdded;
  selfCopy->_attendeesAdded = v43;
  v34 = v43;

  attendeesRemoved = selfCopy->_attendeesRemoved;
  selfCopy->_attendeesRemoved = v39;
}

- (id)stringForAlarms:(id)alarms
{
  alarmsCopy = alarms;
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__EKUIRecurrenceDifferenceViewController_stringForAlarms___block_invoke;
  v11[3] = &unk_1E8441350;
  v6 = v5;
  v12 = v6;
  selfCopy = self;
  v14 = alarmsCopy;
  v7 = alarmsCopy;
  [v7 enumerateObjectsUsingBlock:v11];
  v8 = v14;
  v9 = v6;

  return v6;
}

uint64_t __58__EKUIRecurrenceDifferenceViewController_stringForAlarms___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  [a2 relativeOffset];
  [*(*(a1 + 40) + 1040) isAllDay];
  v6 = CUIKStringForRelativeOffset();
  [v5 appendString:v6];

  result = [*(a1 + 48) count];
  if (result - 1 > a3)
  {
    v8 = *(a1 + 32);

    return [v8 appendString:@"\n"];
  }

  return result;
}

- (id)stringForAttendees:(id)attendees
{
  attendeesCopy = attendees;
  v4 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__EKUIRecurrenceDifferenceViewController_stringForAttendees___block_invoke;
  v10[3] = &unk_1E8441378;
  v5 = v4;
  v11 = v5;
  v12 = attendeesCopy;
  v6 = attendeesCopy;
  [v6 enumerateObjectsUsingBlock:v10];
  v7 = v12;
  v8 = v5;

  return v5;
}

void __61__EKUIRecurrenceDifferenceViewController_stringForAttendees___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = [MEMORY[0x1E6966A88] participantForSortingWithEKParticipant:a2];
  v6 = *(a1 + 32);
  v8 = v5;
  v7 = [v5 displayName];
  [v6 appendString:v7];

  if ([*(a1 + 40) count] - 1 > a3)
  {
    [*(a1 + 32) appendString:@"\n"];
  }
}

- (id)descriptionForDiffType:(int64_t)type row:(BOOL)row
{
  v54[2] = *MEMORY[0x1E69E9840];
  v48 = objc_opt_new();
  v52 = *MEMORY[0x1E69DB648];
  v7 = v52;
  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v54[0] = v8;
  v53 = *MEMORY[0x1E69DB650];
  v9 = v53;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v54[1] = labelColor;
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v52 count:2];

  v50[0] = v7;
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v50[1] = v9;
  v51[0] = v11;
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v51[1] = secondaryLabelColor;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];

  originalItem = [(EKEvent *)self->_event originalItem];
  v15 = originalItem;
  if (row)
  {
    v16 = v48;
    if ((type - 7) < 2)
    {
LABEL_3:
      v17 = objc_alloc(MEMORY[0x1E696AAB0]);
      v18 = EventKitUIBundle();
      v19 = v18;
      v20 = @"Removed:\n <no loc>";
      v21 = @"Removed:\n";
LABEL_23:
      v36 = [v18 localizedStringForKey:v20 value:v21 table:0];
      v37 = [v17 initWithString:v36 attributes:v13];
      v22 = 0;
LABEL_24:
      [v16 appendAttributedString:v37];

      goto LABEL_25;
    }

LABEL_22:
    v17 = objc_alloc(MEMORY[0x1E696AAB0]);
    v18 = EventKitUIBundle();
    v19 = v18;
    v20 = @"This Occurrence:\n <no loc>";
    v21 = @"This Occurrence:\n";
    goto LABEL_23;
  }

  v22 = 0;
  if (type <= 3)
  {
    v16 = v48;
    if (type > 1)
    {
      if (type != 2)
      {
        [(EKEvent *)originalItem travelTime];
        if (v25 <= 0.0)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_20;
    }

    if (!type)
    {
      goto LABEL_20;
    }

    if (type != 1)
    {
      goto LABEL_25;
    }

    location = [(EKEvent *)originalItem location];
    goto LABEL_19;
  }

  v16 = v48;
  if (type <= 5)
  {
    if (type == 4)
    {
      goto LABEL_20;
    }

    location = [(EKEvent *)originalItem displayNotes];
LABEL_19:
    v26 = location;
    v27 = [location length];

    if (!v27)
    {
      goto LABEL_22;
    }

LABEL_20:
    v28 = objc_alloc(MEMORY[0x1E696AAB0]);
    v29 = EventKitUIBundle();
    v30 = [v29 localizedStringForKey:@"Original:\n <no loc>" value:@"Original:\n" table:0];
    v31 = [v28 initWithString:v30 attributes:v13];
    [v16 appendAttributedString:v31];

    v22 = 0;
    event = v15;
    goto LABEL_26;
  }

  switch(type)
  {
    case 6:
      v33 = [(EKEvent *)originalItem URL];
      absoluteString = [v33 absoluteString];
      v35 = [absoluteString length];

      if (!v35)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    case 7:
      v23 = 1064;
LABEL_57:
      if ([*(&self->super.super.super.super.isa + v23) count])
      {
        v47 = objc_alloc(MEMORY[0x1E696AAB0]);
        v19 = EventKitUIBundle();
        v36 = [v19 localizedStringForKey:@"Added:\n <no loc>" value:@"Added:\n" table:0];
        v37 = [v47 initWithString:v36 attributes:v13];
        v22 = 1;
        goto LABEL_24;
      }

      goto LABEL_3;
    case 8:
      v23 = 1080;
      goto LABEL_57;
  }

LABEL_25:
  event = self->_event;
LABEL_26:
  v38 = event;
  v39 = v38;
  if (type > 3)
  {
    if (type > 5)
    {
      if (type != 6)
      {
        if (type == 7)
        {
          v44 = &OBJC_IVAR___EKUIRecurrenceDifferenceViewController__alarmsRemoved;
          if (v22)
          {
            v44 = &OBJC_IVAR___EKUIRecurrenceDifferenceViewController__alarmsAdded;
          }

          location2 = [(EKUIRecurrenceDifferenceViewController *)self stringForAlarms:*(&self->super.super.super.super.isa + *v44)];
        }

        else
        {
          if (type != 8)
          {
            goto LABEL_53;
          }

          v40 = &OBJC_IVAR___EKUIRecurrenceDifferenceViewController__attendeesRemoved;
          if (v22)
          {
            v40 = &OBJC_IVAR___EKUIRecurrenceDifferenceViewController__attendeesAdded;
          }

          location2 = [(EKUIRecurrenceDifferenceViewController *)self stringForAttendees:*(&self->super.super.super.super.isa + *v40)];
        }

LABEL_51:
        absoluteString2 = location2;
        if (!location2)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }

      v42 = [(EKEvent *)v38 URL];
      absoluteString2 = [v42 absoluteString];

      if (absoluteString2)
      {
LABEL_52:
        v45 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:absoluteString2 attributes:v49];
        [v16 appendAttributedString:v45];

        goto LABEL_53;
      }

      goto LABEL_53;
    }

    if (type == 4)
    {
      [(EKEvent *)v38 availability];
      location2 = CUIKDisplayStringForAvailability();
      goto LABEL_51;
    }

LABEL_42:
    location2 = [(EKEvent *)v38 location];
    goto LABEL_51;
  }

  if (type > 1)
  {
    if (type == 2)
    {
      [(EKUIRecurrenceDifferenceViewController *)self dateTimeStringForEvent:v38];
    }

    else
    {
      [(EKEvent *)v38 travelTime];
      CUIKDisplayStringTravelTimeAndDuration();
    }
    location2 = ;
    goto LABEL_51;
  }

  if (!type)
  {
    location2 = [(EKEvent *)v38 title];
    goto LABEL_51;
  }

  if (type == 1)
  {
    goto LABEL_42;
  }

LABEL_53:

  return v16;
}

- (void)revertChangeForDiffType:(int64_t)type row:(int64_t)row
{
  v83 = *MEMORY[0x1E69E9840];
  shallowCopyWithoutChanges = [(EKEvent *)self->_event shallowCopyWithoutChanges];
  originalItem = [shallowCopyWithoutChanges originalItem];
  v8 = originalItem;
  if (type <= 3)
  {
    if (type > 1)
    {
      if (type != 2)
      {
        [originalItem travelTime];
        [shallowCopyWithoutChanges setTravelTime:?];
        goto LABEL_74;
      }

      originalStartDate = [shallowCopyWithoutChanges originalStartDate];
      [shallowCopyWithoutChanges setStartDate:originalStartDate];

      startDate = [shallowCopyWithoutChanges startDate];
      [v8 duration];
      structuredLocationWithoutPrediction = [(NSArray *)startDate dateByAddingTimeInterval:?];
      [shallowCopyWithoutChanges setEndDate:structuredLocationWithoutPrediction];
    }

    else
    {
      if (!type)
      {
        startDate = [originalItem title];
        [shallowCopyWithoutChanges setTitle:startDate];
        goto LABEL_73;
      }

      if (type != 1)
      {
        goto LABEL_74;
      }

      startDate = [shallowCopyWithoutChanges originalItem];
      structuredLocationWithoutPrediction = [(NSArray *)startDate structuredLocationWithoutPrediction];
      [shallowCopyWithoutChanges setStructuredLocationWithoutPrediction:structuredLocationWithoutPrediction];
    }

    goto LABEL_73;
  }

  if (type <= 5)
  {
    if (type == 4)
    {
      [shallowCopyWithoutChanges setAvailability:{objc_msgSend(originalItem, "availability")}];
      goto LABEL_74;
    }

    startDate = [originalItem displayNotes];
    [shallowCopyWithoutChanges setDisplayNotes:startDate];
LABEL_73:

    goto LABEL_74;
  }

  switch(type)
  {
    case 6:
      startDate = [originalItem URL];
      [shallowCopyWithoutChanges setURL:startDate];
      goto LABEL_73;
    case 7:
      if (row == 1 || ![(NSArray *)self->_alarmsAdded count])
      {
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        obj = self->_alarmsRemoved;
        v23 = [(NSArray *)obj countByEnumeratingWithState:&v73 objects:v82 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v74;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v74 != v25)
              {
                objc_enumerationMutation(obj);
              }

              [shallowCopyWithoutChanges addAlarm:*(*(&v73 + 1) + 8 * i)];
            }

            v24 = [(NSArray *)obj countByEnumeratingWithState:&v73 objects:v82 count:16];
          }

          while (v24);
        }
      }

      else
      {
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        obj = [shallowCopyWithoutChanges alarms];
        v49 = [(NSArray *)obj countByEnumeratingWithState:&v69 objects:v81 count:16];
        if (v49)
        {
          rowCopy = row;
          v44 = v8;
          v46 = *v70;
          do
          {
            for (j = 0; j != v49; ++j)
            {
              if (*v70 != v46)
              {
                objc_enumerationMutation(obj);
              }

              v13 = *(*(&v69 + 1) + 8 * j);
              v65 = 0u;
              v66 = 0u;
              v67 = 0u;
              v68 = 0u;
              v14 = self->_alarmsAdded;
              v15 = [(NSArray *)v14 countByEnumeratingWithState:&v65 objects:v80 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v66;
                do
                {
                  for (k = 0; k != v16; ++k)
                  {
                    if (*v66 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v65 + 1) + 8 * k);
                    semanticIdentifier = [v13 semanticIdentifier];
                    semanticIdentifier2 = [v19 semanticIdentifier];
                    v22 = [semanticIdentifier isEqualToString:semanticIdentifier2];

                    if (v22)
                    {
                      [shallowCopyWithoutChanges removeAlarm:v13];
                    }
                  }

                  v16 = [(NSArray *)v14 countByEnumeratingWithState:&v65 objects:v80 count:16];
                }

                while (v16);
              }
            }

            v49 = [(NSArray *)obj countByEnumeratingWithState:&v69 objects:v81 count:16];
          }

          while (v49);
          row = rowCopy;
          v8 = v44;
        }
      }

      break;
    case 8:
      break;
    default:
      goto LABEL_74;
  }

  if (row == 1 || ![(NSArray *)self->_attendeesAdded count])
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    startDate = self->_attendeesRemoved;
    v38 = [(NSArray *)startDate countByEnumeratingWithState:&v61 objects:v79 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v62;
      do
      {
        for (m = 0; m != v39; ++m)
        {
          if (*v62 != v40)
          {
            objc_enumerationMutation(startDate);
          }

          [shallowCopyWithoutChanges addAttendee:*(*(&v61 + 1) + 8 * m)];
        }

        v39 = [(NSArray *)startDate countByEnumeratingWithState:&v61 objects:v79 count:16];
      }

      while (v39);
    }

    goto LABEL_73;
  }

  v45 = v8;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  attendees = [shallowCopyWithoutChanges attendees];
  obja = [attendees countByEnumeratingWithState:&v57 objects:v78 count:16];
  if (obja)
  {
    v48 = *v58;
    do
    {
      for (n = 0; n != obja; n = n + 1)
      {
        if (*v58 != v48)
        {
          objc_enumerationMutation(attendees);
        }

        v28 = *(*(&v57 + 1) + 8 * n);
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v29 = self->_attendeesAdded;
        v30 = [(NSArray *)v29 countByEnumeratingWithState:&v53 objects:v77 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v54;
          do
          {
            for (ii = 0; ii != v31; ++ii)
            {
              if (*v54 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v53 + 1) + 8 * ii);
              semanticIdentifier3 = [v28 semanticIdentifier];
              semanticIdentifier4 = [v34 semanticIdentifier];
              v37 = [semanticIdentifier3 isEqualToString:semanticIdentifier4];

              if (v37)
              {
                [shallowCopyWithoutChanges removeAttendee:v28];
              }
            }

            v31 = [(NSArray *)v29 countByEnumeratingWithState:&v53 objects:v77 count:16];
          }

          while (v31);
        }
      }

      obja = [attendees countByEnumeratingWithState:&v57 objects:v78 count:16];
    }

    while (obja);
  }

  v8 = v45;
LABEL_74:
  eventStore = [shallowCopyWithoutChanges eventStore];
  [eventStore saveEvent:shallowCopyWithoutChanges span:0 error:0];
}

- (int64_t)diffTypeForSection:(int64_t)section
{
  v3 = section - 1;
  if (section < 1 || [(NSMutableArray *)self->_changedRows count]< section)
  {
    return 0;
  }

  v6 = [(NSMutableArray *)self->_changedRows objectAtIndexedSubscript:v3];
  integerValue = [v6 integerValue];

  return integerValue;
}

- (int64_t)diffTypeForIndexPath:(id)path
{
  section = [path section];

  return [(EKUIRecurrenceDifferenceViewController *)self diffTypeForSection:section];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (!section)
  {
    return 0;
  }

  v5 = [(EKUIRecurrenceDifferenceViewController *)self diffTypeForSection:section];

  return [(EKUIRecurrenceDifferenceViewController *)self rowCountForDiffType:v5];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = MEMORY[0x1E69DD028];
  pathCopy = path;
  v7 = [[v5 alloc] initWithStyle:0 reuseIdentifier:@"DifferenceCell"];
  v8 = [(EKUIRecurrenceDifferenceViewController *)self diffTypeForIndexPath:pathCopy];
  v9 = [pathCopy row];

  v10 = [(EKUIRecurrenceDifferenceViewController *)self descriptionForDiffType:v8 row:v9 != 0];
  textLabel = [v7 textLabel];
  [textLabel setAttributedText:v10];

  textLabel2 = [v7 textLabel];
  [textLabel2 setNumberOfLines:0];

  textLabel3 = [v7 textLabel];
  [textLabel3 setLineBreakMode:0];

  textLabel4 = [v7 textLabel];
  [textLabel4 sizeToFit];

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section)
  {
    v4 = [(EKUIRecurrenceDifferenceViewController *)self titleForDiffType:[(EKUIRecurrenceDifferenceViewController *)self diffTypeForSection:section]];
  }

  else
  {
    v5 = EventKitUIBundle();
    v4 = [v5 localizedStringForKey:@"This event is an occurrence of a repeating event. It has some differences from the repeating event it originated from." value:&stru_1F4EF6790 table:0];
  }

  return v4;
}

- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"Revert" value:&stru_1F4EF6790 table:0];

  return v5;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(EKEvent *)self->_event isEditable]&& ([(EKEvent *)self->_event isExternallyOrganizedInvitation]& 1) == 0)
  {
    v8 = [(EKUIRecurrenceDifferenceViewController *)self diffTypeForIndexPath:pathCopy];
    v6 = (v8 - 7) < 2 || (v9 = v8, [pathCopy row] == 1) || -[EKUIRecurrenceDifferenceViewController rowCountForDiffType:](self, "rowCountForDiffType:", v9) == 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v18[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  if (style == 1)
  {
    v10 = [(EKUIRecurrenceDifferenceViewController *)self diffTypeForIndexPath:pathCopy];
    -[EKUIRecurrenceDifferenceViewController revertChangeForDiffType:row:](self, "revertChangeForDiffType:row:", v10, [pathCopy row]);
    -[NSMutableArray removeObjectAtIndex:](self->_changedRows, "removeObjectAtIndex:", [pathCopy section] - 1);
    [viewCopy beginUpdates];
    v11 = [(EKUIRecurrenceDifferenceViewController *)self rowCountForDiffType:v10];
    if (v11 == 2)
    {
      if ((v10 - 7) > 1)
      {
        v13 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{objc_msgSend(pathCopy, "section")}];
        v16[0] = v13;
        v16[1] = pathCopy;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
        [viewCopy deleteRowsAtIndexPaths:v14 withRowAnimation:100];

        v15 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(pathCopy, "section")}];
        [viewCopy deleteSections:v15 withRowAnimation:100];
      }

      else
      {
        v17 = pathCopy;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
        [viewCopy deleteRowsAtIndexPaths:v13 withRowAnimation:100];
      }
    }

    else
    {
      if (v11 != 1)
      {
LABEL_9:
        [viewCopy endUpdates];
        goto LABEL_10;
      }

      v18[0] = pathCopy;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      [viewCopy deleteRowsAtIndexPaths:v12 withRowAnimation:100];

      v13 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(pathCopy, "section")}];
      [viewCopy deleteSections:v13 withRowAnimation:100];
    }

    goto LABEL_9;
  }

LABEL_10:
}

@end
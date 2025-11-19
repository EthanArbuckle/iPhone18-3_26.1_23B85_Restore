@interface EKUIRecurrenceDifferenceViewController
+ (BOOL)shouldShowRecurrenceDiff:(id)a3;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (EKUIRecurrenceDifferenceViewController)initWithEvent:(id)a3 andSummary:(id)a4;
- (id)dateTimeStringForEvent:(id)a3;
- (id)descriptionForDiffType:(int64_t)a3 row:(BOOL)a4;
- (id)stringForAlarms:(id)a3;
- (id)stringForAttendees:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)titleForDiffType:(int64_t)a3;
- (int64_t)diffTypeForIndexPath:(id)a3;
- (int64_t)diffTypeForSection:(int64_t)a3;
- (int64_t)rowCountForDiffType:(int64_t)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)findSemanticAlarmDifferenceFromOriginal:(id)a3;
- (void)findSemanticAttendeeDifferenceFromOriginal:(id)a3;
- (void)loadView;
- (void)revertChangeForDiffType:(int64_t)a3 row:(int64_t)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
@end

@implementation EKUIRecurrenceDifferenceViewController

- (EKUIRecurrenceDifferenceViewController)initWithEvent:(id)a3 andSummary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = EKUIRecurrenceDifferenceViewController;
  v9 = [(EKUIRecurrenceDifferenceViewController *)&v13 initWithStyle:2];
  if (v9)
  {
    v10 = EventKitUIBundle();
    v11 = [v10 localizedStringForKey:@"Event Changes" value:&stru_1F4EF6790 table:0];
    [(EKUIRecurrenceDifferenceViewController *)v9 setTitle:v11];

    objc_storeStrong(&v9->_event, a3);
    objc_storeStrong(&v9->_diffSummary, a4);
    [(EKUIRecurrenceDifferenceViewController *)v9 findSemanticAlarmDifferenceFromOriginal:v9->_event];
    [(EKUIRecurrenceDifferenceViewController *)v9 findSemanticAttendeeDifferenceFromOriginal:v9->_event];
  }

  return v9;
}

+ (BOOL)shouldShowRecurrenceDiff:(id)a3
{
  v3 = a3;
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
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
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

  v6 = [(NSDictionary *)self->_diffSummary allKeys];
  v7 = [v6 containsObject:*MEMORY[0x1E69668F8]];

  if (v7)
  {
    [(NSMutableArray *)self->_changedRows addObject:&unk_1F4F32500];
  }

  v8 = [(NSDictionary *)self->_diffSummary allKeys];
  v9 = [v8 containsObject:*MEMORY[0x1E69668A0]];

  if (v9)
  {
    [(NSMutableArray *)self->_changedRows addObject:&unk_1F4F32518];
  }

  v10 = [(NSDictionary *)self->_diffSummary allKeys];
  if ([v10 containsObject:*MEMORY[0x1E6966830]])
  {
    goto LABEL_12;
  }

  v11 = [(NSDictionary *)self->_diffSummary allKeys];
  if ([v11 containsObject:*MEMORY[0x1E69668E8]])
  {
LABEL_11:

LABEL_12:
LABEL_13:
    [(NSMutableArray *)self->_changedRows addObject:&unk_1F4F32530];
    goto LABEL_14;
  }

  v2 = [(NSDictionary *)self->_diffSummary allKeys];
  if ([v2 containsObject:*MEMORY[0x1E6966888]])
  {
LABEL_10:

    goto LABEL_11;
  }

  v12 = [(NSDictionary *)self->_diffSummary allKeys];
  if ([v12 containsObject:*MEMORY[0x1E69668F0]])
  {

    goto LABEL_10;
  }

  v27 = [(NSDictionary *)self->_diffSummary allKeys];
  v28 = [v27 containsObject:*MEMORY[0x1E6966890]];

  if (v28)
  {
    goto LABEL_13;
  }

LABEL_14:
  v13 = [(NSDictionary *)self->_diffSummary allKeys];
  v14 = [v13 containsObject:*MEMORY[0x1E6966900]];

  if (v14)
  {
    [(NSMutableArray *)self->_changedRows addObject:&unk_1F4F32548];
  }

  v15 = [(NSDictionary *)self->_diffSummary allKeys];
  v16 = [v15 containsObject:*MEMORY[0x1E6966868]];

  if (v16)
  {
    [(NSMutableArray *)self->_changedRows addObject:&unk_1F4F32560];
  }

  v17 = [(NSDictionary *)self->_diffSummary allKeys];
  v18 = [v17 containsObject:*MEMORY[0x1E69668A8]];

  if (v18)
  {
    [(NSMutableArray *)self->_changedRows addObject:&unk_1F4F32578];
  }

  v19 = [(NSDictionary *)self->_diffSummary allKeys];
  v20 = [v19 containsObject:*MEMORY[0x1E6966908]];

  if (v20)
  {
    v21 = [(EKEvent *)self->_event URL];
    if (!v21)
    {
      v20 = [(EKEvent *)self->_event originalItem];
      v22 = [v20 URL];
      if (!v22)
      {

        goto LABEL_30;
      }

      v2 = v22;
    }

    v23 = [(EKEvent *)self->_event URL];
    v24 = [(EKEvent *)self->_event originalItem];
    v25 = [v24 URL];
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

- (id)titleForDiffType:(int64_t)a3
{
  if (a3 > 8)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_1E8441398[a3];
    v4 = EventKitUIBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F4EF6790 table:0];
  }

  return v5;
}

- (int64_t)rowCountForDiffType:(int64_t)a3
{
  v5 = [(EKEvent *)self->_event originalItem];
  v6 = 2;
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 != 6)
      {
        if (a3 == 7)
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

        if (a3 == 8)
        {
          v7 = [(NSArray *)self->_attendeesAdded count];
          v8 = 1088;
          goto LABEL_26;
        }

LABEL_29:
        v6 = 0;
        goto LABEL_30;
      }

      v9 = [(EKEvent *)self->_event URL];
      v15 = [v9 absoluteString];
      v17 = [v15 length];
      v18 = [v5 URL];
      v19 = [v18 absoluteString];
      v20 = [v19 length];
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

    if (a3 == 4)
    {
      goto LABEL_30;
    }

    v9 = [(EKEvent *)self->_event displayNotes];
    v10 = [v9 length];
    v11 = [v5 displayNotes];
LABEL_17:
    v15 = v11;
    v16 = [v11 length];
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

  if (a3 <= 1)
  {
    if (!a3)
    {
      goto LABEL_30;
    }

    if (a3 != 1)
    {
      goto LABEL_29;
    }

    v9 = [(EKEvent *)self->_event location];
    v10 = [v9 length];
    v11 = [v5 location];
    goto LABEL_17;
  }

  if (a3 != 2)
  {
    [(EKEvent *)self->_event travelTime];
    v13 = v12;
    [v5 travelTime];
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

- (id)dateTimeStringForEvent:(id)a3
{
  v4 = a3;
  v5 = [(EKUIRecurrenceDifferenceViewController *)self traitCollection];
  v6 = [v5 horizontalSizeClass];

  v17 = 0;
  v18 = 0;
  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v15 = 0;
  v16 = 0;
  CalDetailStringsForCalendarEvent(v4, v7, &v18, &v17, &v16, &v15, 0, 0, 0, 0, 0, 0);

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

- (void)findSemanticAlarmDifferenceFromOriginal:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695DF70];
  v5 = [v3 alarms];
  v30 = [v4 arrayWithArray:v5];

  v6 = MEMORY[0x1E695DF70];
  v25 = v3;
  v7 = [v3 originalItem];
  v8 = [v7 alarms];
  v9 = [v6 arrayWithArray:v8];

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
              v18 = [v11 semanticIdentifier];
              v19 = [v17 semanticIdentifier];
              v20 = [v18 isEqualToString:v19];

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

- (void)findSemanticAttendeeDifferenceFromOriginal:(id)a3
{
  v36 = self;
  v59 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695DF70];
  v5 = [v3 attendees];
  v43 = [v4 arrayWithArray:v5];

  v6 = MEMORY[0x1E695DF70];
  v7 = [v3 originalItem];
  v8 = [v7 attendees];
  v9 = [v6 arrayWithArray:v8];

  v41 = v3;
  v37 = [v3 selfAttendee];
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
              v18 = [v11 semanticIdentifier];
              v19 = [v17 semanticIdentifier];
              v20 = [v18 isEqualToString:v19];

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
          v21 = [v11 semanticIdentifier];
          v22 = [v37 semanticIdentifier];
          v23 = [v21 isEqualToString:v22];

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
          v30 = [v29 semanticIdentifier];
          v31 = [v37 semanticIdentifier];
          v32 = [v30 isEqualToString:v31];

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

  attendeesAdded = v36->_attendeesAdded;
  v36->_attendeesAdded = v43;
  v34 = v43;

  attendeesRemoved = v36->_attendeesRemoved;
  v36->_attendeesRemoved = v39;
}

- (id)stringForAlarms:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__EKUIRecurrenceDifferenceViewController_stringForAlarms___block_invoke;
  v11[3] = &unk_1E8441350;
  v6 = v5;
  v12 = v6;
  v13 = self;
  v14 = v4;
  v7 = v4;
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

- (id)stringForAttendees:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__EKUIRecurrenceDifferenceViewController_stringForAttendees___block_invoke;
  v10[3] = &unk_1E8441378;
  v5 = v4;
  v11 = v5;
  v12 = v3;
  v6 = v3;
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

- (id)descriptionForDiffType:(int64_t)a3 row:(BOOL)a4
{
  v54[2] = *MEMORY[0x1E69E9840];
  v48 = objc_opt_new();
  v52 = *MEMORY[0x1E69DB648];
  v7 = v52;
  v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v54[0] = v8;
  v53 = *MEMORY[0x1E69DB650];
  v9 = v53;
  v10 = [MEMORY[0x1E69DC888] labelColor];
  v54[1] = v10;
  v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v52 count:2];

  v50[0] = v7;
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v50[1] = v9;
  v51[0] = v11;
  v12 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v51[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];

  v14 = [(EKEvent *)self->_event originalItem];
  v15 = v14;
  if (a4)
  {
    v16 = v48;
    if ((a3 - 7) < 2)
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
  if (a3 <= 3)
  {
    v16 = v48;
    if (a3 > 1)
    {
      if (a3 != 2)
      {
        [(EKEvent *)v14 travelTime];
        if (v25 <= 0.0)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_20;
    }

    if (!a3)
    {
      goto LABEL_20;
    }

    if (a3 != 1)
    {
      goto LABEL_25;
    }

    v24 = [(EKEvent *)v14 location];
    goto LABEL_19;
  }

  v16 = v48;
  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      goto LABEL_20;
    }

    v24 = [(EKEvent *)v14 displayNotes];
LABEL_19:
    v26 = v24;
    v27 = [v24 length];

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

  switch(a3)
  {
    case 6:
      v33 = [(EKEvent *)v14 URL];
      v34 = [v33 absoluteString];
      v35 = [v34 length];

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
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 != 6)
      {
        if (a3 == 7)
        {
          v44 = &OBJC_IVAR___EKUIRecurrenceDifferenceViewController__alarmsRemoved;
          if (v22)
          {
            v44 = &OBJC_IVAR___EKUIRecurrenceDifferenceViewController__alarmsAdded;
          }

          v41 = [(EKUIRecurrenceDifferenceViewController *)self stringForAlarms:*(&self->super.super.super.super.isa + *v44)];
        }

        else
        {
          if (a3 != 8)
          {
            goto LABEL_53;
          }

          v40 = &OBJC_IVAR___EKUIRecurrenceDifferenceViewController__attendeesRemoved;
          if (v22)
          {
            v40 = &OBJC_IVAR___EKUIRecurrenceDifferenceViewController__attendeesAdded;
          }

          v41 = [(EKUIRecurrenceDifferenceViewController *)self stringForAttendees:*(&self->super.super.super.super.isa + *v40)];
        }

LABEL_51:
        v43 = v41;
        if (!v41)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }

      v42 = [(EKEvent *)v38 URL];
      v43 = [v42 absoluteString];

      if (v43)
      {
LABEL_52:
        v45 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v43 attributes:v49];
        [v16 appendAttributedString:v45];

        goto LABEL_53;
      }

      goto LABEL_53;
    }

    if (a3 == 4)
    {
      [(EKEvent *)v38 availability];
      v41 = CUIKDisplayStringForAvailability();
      goto LABEL_51;
    }

LABEL_42:
    v41 = [(EKEvent *)v38 location];
    goto LABEL_51;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      [(EKUIRecurrenceDifferenceViewController *)self dateTimeStringForEvent:v38];
    }

    else
    {
      [(EKEvent *)v38 travelTime];
      CUIKDisplayStringTravelTimeAndDuration();
    }
    v41 = ;
    goto LABEL_51;
  }

  if (!a3)
  {
    v41 = [(EKEvent *)v38 title];
    goto LABEL_51;
  }

  if (a3 == 1)
  {
    goto LABEL_42;
  }

LABEL_53:

  return v16;
}

- (void)revertChangeForDiffType:(int64_t)a3 row:(int64_t)a4
{
  v83 = *MEMORY[0x1E69E9840];
  v6 = [(EKEvent *)self->_event shallowCopyWithoutChanges];
  v7 = [v6 originalItem];
  v8 = v7;
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 != 2)
      {
        [v7 travelTime];
        [v6 setTravelTime:?];
        goto LABEL_74;
      }

      v11 = [v6 originalStartDate];
      [v6 setStartDate:v11];

      v9 = [v6 startDate];
      [v8 duration];
      v10 = [(NSArray *)v9 dateByAddingTimeInterval:?];
      [v6 setEndDate:v10];
    }

    else
    {
      if (!a3)
      {
        v9 = [v7 title];
        [v6 setTitle:v9];
        goto LABEL_73;
      }

      if (a3 != 1)
      {
        goto LABEL_74;
      }

      v9 = [v6 originalItem];
      v10 = [(NSArray *)v9 structuredLocationWithoutPrediction];
      [v6 setStructuredLocationWithoutPrediction:v10];
    }

    goto LABEL_73;
  }

  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      [v6 setAvailability:{objc_msgSend(v7, "availability")}];
      goto LABEL_74;
    }

    v9 = [v7 displayNotes];
    [v6 setDisplayNotes:v9];
LABEL_73:

    goto LABEL_74;
  }

  switch(a3)
  {
    case 6:
      v9 = [v7 URL];
      [v6 setURL:v9];
      goto LABEL_73;
    case 7:
      if (a4 == 1 || ![(NSArray *)self->_alarmsAdded count])
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

              [v6 addAlarm:*(*(&v73 + 1) + 8 * i)];
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
        obj = [v6 alarms];
        v49 = [(NSArray *)obj countByEnumeratingWithState:&v69 objects:v81 count:16];
        if (v49)
        {
          v43 = a4;
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
                    v20 = [v13 semanticIdentifier];
                    v21 = [v19 semanticIdentifier];
                    v22 = [v20 isEqualToString:v21];

                    if (v22)
                    {
                      [v6 removeAlarm:v13];
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
          a4 = v43;
          v8 = v44;
        }
      }

      break;
    case 8:
      break;
    default:
      goto LABEL_74;
  }

  if (a4 == 1 || ![(NSArray *)self->_attendeesAdded count])
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v9 = self->_attendeesRemoved;
    v38 = [(NSArray *)v9 countByEnumeratingWithState:&v61 objects:v79 count:16];
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
            objc_enumerationMutation(v9);
          }

          [v6 addAttendee:*(*(&v61 + 1) + 8 * m)];
        }

        v39 = [(NSArray *)v9 countByEnumeratingWithState:&v61 objects:v79 count:16];
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
  v47 = [v6 attendees];
  obja = [v47 countByEnumeratingWithState:&v57 objects:v78 count:16];
  if (obja)
  {
    v48 = *v58;
    do
    {
      for (n = 0; n != obja; n = n + 1)
      {
        if (*v58 != v48)
        {
          objc_enumerationMutation(v47);
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
              v35 = [v28 semanticIdentifier];
              v36 = [v34 semanticIdentifier];
              v37 = [v35 isEqualToString:v36];

              if (v37)
              {
                [v6 removeAttendee:v28];
              }
            }

            v31 = [(NSArray *)v29 countByEnumeratingWithState:&v53 objects:v77 count:16];
          }

          while (v31);
        }
      }

      obja = [v47 countByEnumeratingWithState:&v57 objects:v78 count:16];
    }

    while (obja);
  }

  v8 = v45;
LABEL_74:
  v42 = [v6 eventStore];
  [v42 saveEvent:v6 span:0 error:0];
}

- (int64_t)diffTypeForSection:(int64_t)a3
{
  v3 = a3 - 1;
  if (a3 < 1 || [(NSMutableArray *)self->_changedRows count]< a3)
  {
    return 0;
  }

  v6 = [(NSMutableArray *)self->_changedRows objectAtIndexedSubscript:v3];
  v7 = [v6 integerValue];

  return v7;
}

- (int64_t)diffTypeForIndexPath:(id)a3
{
  v4 = [a3 section];

  return [(EKUIRecurrenceDifferenceViewController *)self diffTypeForSection:v4];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (!a4)
  {
    return 0;
  }

  v5 = [(EKUIRecurrenceDifferenceViewController *)self diffTypeForSection:a4];

  return [(EKUIRecurrenceDifferenceViewController *)self rowCountForDiffType:v5];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = MEMORY[0x1E69DD028];
  v6 = a4;
  v7 = [[v5 alloc] initWithStyle:0 reuseIdentifier:@"DifferenceCell"];
  v8 = [(EKUIRecurrenceDifferenceViewController *)self diffTypeForIndexPath:v6];
  v9 = [v6 row];

  v10 = [(EKUIRecurrenceDifferenceViewController *)self descriptionForDiffType:v8 row:v9 != 0];
  v11 = [v7 textLabel];
  [v11 setAttributedText:v10];

  v12 = [v7 textLabel];
  [v12 setNumberOfLines:0];

  v13 = [v7 textLabel];
  [v13 setLineBreakMode:0];

  v14 = [v7 textLabel];
  [v14 sizeToFit];

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    v4 = [(EKUIRecurrenceDifferenceViewController *)self titleForDiffType:[(EKUIRecurrenceDifferenceViewController *)self diffTypeForSection:a4]];
  }

  else
  {
    v5 = EventKitUIBundle();
    v4 = [v5 localizedStringForKey:@"This event is an occurrence of a repeating event. It has some differences from the repeating event it originated from." value:&stru_1F4EF6790 table:0];
  }

  return v4;
}

- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4
{
  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"Revert" value:&stru_1F4EF6790 table:0];

  return v5;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(EKEvent *)self->_event isEditable]&& ([(EKEvent *)self->_event isExternallyOrganizedInvitation]& 1) == 0)
  {
    v8 = [(EKUIRecurrenceDifferenceViewController *)self diffTypeForIndexPath:v5];
    v6 = (v8 - 7) < 2 || (v9 = v8, [v5 row] == 1) || -[EKUIRecurrenceDifferenceViewController rowCountForDiffType:](self, "rowCountForDiffType:", v9) == 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (a4 == 1)
  {
    v10 = [(EKUIRecurrenceDifferenceViewController *)self diffTypeForIndexPath:v9];
    -[EKUIRecurrenceDifferenceViewController revertChangeForDiffType:row:](self, "revertChangeForDiffType:row:", v10, [v9 row]);
    -[NSMutableArray removeObjectAtIndex:](self->_changedRows, "removeObjectAtIndex:", [v9 section] - 1);
    [v8 beginUpdates];
    v11 = [(EKUIRecurrenceDifferenceViewController *)self rowCountForDiffType:v10];
    if (v11 == 2)
    {
      if ((v10 - 7) > 1)
      {
        v13 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:{objc_msgSend(v9, "section")}];
        v16[0] = v13;
        v16[1] = v9;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
        [v8 deleteRowsAtIndexPaths:v14 withRowAnimation:100];

        v15 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v9, "section")}];
        [v8 deleteSections:v15 withRowAnimation:100];
      }

      else
      {
        v17 = v9;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
        [v8 deleteRowsAtIndexPaths:v13 withRowAnimation:100];
      }
    }

    else
    {
      if (v11 != 1)
      {
LABEL_9:
        [v8 endUpdates];
        goto LABEL_10;
      }

      v18[0] = v9;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      [v8 deleteRowsAtIndexPaths:v12 withRowAnimation:100];

      v13 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v9, "section")}];
      [v8 deleteSections:v13 withRowAnimation:100];
    }

    goto LABEL_9;
  }

LABEL_10:
}

@end
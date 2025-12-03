@interface EKFrozenReminderReminder
- (BOOL)_applyChanges:(id)changes error:(id *)error;
- (BOOL)_applyChangesToSaveRequest:(id)request error:(id *)error;
- (BOOL)hasNotes;
- (BOOL)hasRecurrenceRules;
- (id)URLString;
- (id)_copyToNewList:(id)list error:(id *)error;
- (id)actionString;
- (id)alarms;
- (id)appLinkData;
- (id)calendar;
- (id)calendarItemExternalIdentifier;
- (id)calendarItemIdentifier;
- (id)completionDate;
- (id)creationDate;
- (id)dueDateComponents;
- (id)initNewReminderInStore:(id)store;
- (id)lastModifiedDate;
- (id)notes;
- (id)recurrenceRulesSet;
- (id)remObjectID;
- (id)startDateComponents;
- (id)unlocalizedTitle;
- (unint64_t)priority;
- (void)_fixAlarmUUIDsForClone:(id)clone from:(id)from;
@end

@implementation EKFrozenReminderReminder

- (id)initNewReminderInStore:(id)store
{
  storeCopy = store;
  v5 = objc_alloc_init(EKChangeSet);
  [(EKChangeSet *)v5 setSkipsPersistentObjectCopy:1];
  newObjectID = [getREMReminderClass() newObjectID];
  uuid = [newObjectID uuid];
  uUIDString = [uuid UUIDString];
  [(EKChangeSet *)v5 changeSingleValue:uUIDString forKey:@"UUID" basedOn:0];

  v11.receiver = self;
  v11.super_class = EKFrozenReminderReminder;
  v9 = [(EKFrozenReminderObject *)&v11 initWithREMObject:0 inStore:storeCopy withChanges:v5];

  return v9;
}

- (id)remObjectID
{
  _reminder = [(EKFrozenReminderReminder *)self _reminder];

  if (_reminder)
  {
    _reminder2 = [(EKFrozenReminderReminder *)self _reminder];
    objectID = [_reminder2 objectID];
  }

  else
  {
    _reminder2 = [(EKFrozenReminderReminder *)self calendarItemIdentifier];
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:_reminder2];
    objectID = [getREMReminderClass() objectIDWithUUID:v6];
  }

  return objectID;
}

- (BOOL)_applyChanges:(id)changes error:(id *)error
{
  v92 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  if ([(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"unlocalizedTitle"])
  {
    v7 = [(EKChangeSet *)self->super._changeSet valueForSingleValueKey:@"unlocalizedTitle" basedOn:0];
    [changesCopy setTitleAsString:v7];
  }

  if (![(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"calendar"])
  {
    goto LABEL_13;
  }

  _reminder = [(EKFrozenReminderReminder *)self _reminder];
  list = [_reminder list];

  v10 = [(EKChangeSet *)self->super._changeSet valueForSingleValueKey:@"calendar" basedOn:0];
  if (!list)
  {
    goto LABEL_10;
  }

  account = [list account];
  if ([account type] != 3 && objc_msgSend(account, "type") != 4)
  {
    _account = [v10 _account];
    v14 = [account isEqual:_account];

    if (!v14)
    {
      goto LABEL_8;
    }

LABEL_10:
    [changesCopy removeFromList];
    saveRequest = [changesCopy saveRequest];
    WeakRetained = [v10 updateListWithSaveRequest:saveRequest error:error];

    if (!WeakRetained)
    {

      v64 = 0;
      goto LABEL_78;
    }

    [WeakRetained addReminderChangeItem:changesCopy];
    goto LABEL_12;
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained(&self->super._reminderStore);
  [WeakRetained _reminderCopiedToNewList:self];
LABEL_12:

LABEL_13:
  if ([(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"creationDate"])
  {
    v16 = [(EKChangeSet *)self->super._changeSet valueForSingleValueKey:@"creationDate" basedOn:0];
    [changesCopy setCreationDate:v16];
  }

  [(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"structuredLocationWithoutPrediction"];
  if ([(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"notes"])
  {
    v17 = [(EKChangeSet *)self->super._changeSet valueForSingleValueKey:@"notes" basedOn:0];
    [changesCopy setNotesAsString:v17];
  }

  if ([(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"URLString"])
  {
    v18 = [(EKChangeSet *)self->super._changeSet valueForSingleValueKey:@"URLString" basedOn:0];
    if (v18)
    {
      v19 = [MEMORY[0x1E695DFF8] URLWithString:v18];
    }

    else
    {
      v19 = 0;
    }

    [changesCopy setIcsUrl:v19];
  }

  if ([(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"startDateComponents"])
  {
    startDateComponents = [(EKFrozenReminderReminder *)self startDateComponents];
    [changesCopy setStartDateComponents:startDateComponents];
  }

  if ([(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"dueDateComponents"])
  {
    dueDateComponents = [(EKFrozenReminderReminder *)self dueDateComponents];
    timeZone = [dueDateComponents timeZone];

    if (!timeZone)
    {
      [dueDateComponents setCalendar:0];
    }

    dueDateComponents2 = [(EKFrozenReminderReminder *)self dueDateComponents];
    [changesCopy setDueDateComponents:dueDateComponents2];
  }

  if ([(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"completionDate"])
  {
    completionDate = [(EKFrozenReminderReminder *)self completionDate];
    [changesCopy setCompleted:completionDate != 0];
    [changesCopy setCompletionDate:completionDate];
  }

  if ([(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"priority"])
  {
    [changesCopy setPriority:{-[EKFrozenReminderReminder priority](self, "priority")}];
  }

  if ([(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"uniqueID"])
  {
    calendarItemExternalIdentifier = [(EKFrozenReminderReminder *)self calendarItemExternalIdentifier];
    [changesCopy setDaCalendarItemUniqueIdentifier:calendarItemExternalIdentifier];
  }

  if ([(EKChangeSet *)self->super._changeSet hasUnsavedMultiValueRemovalForKey:@"allAlarmsSet"])
  {
    obj = error;
    multiValueRemovals = [(EKChangeSet *)self->super._changeSet multiValueRemovals];
    v27 = [multiValueRemovals objectForKeyedSubscript:@"allAlarmsSet"];

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v28 = v27;
    v29 = [v28 countByEnumeratingWithState:&v83 objects:v91 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v84;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v84 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v83 + 1) + 8 * i);
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          alarms = [v33 alarms];
          v35 = [alarms countByEnumeratingWithState:&v79 objects:v90 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v80;
            do
            {
              for (j = 0; j != v36; ++j)
              {
                if (*v80 != v37)
                {
                  objc_enumerationMutation(alarms);
                }

                [changesCopy removeAlarm:*(*(&v79 + 1) + 8 * j)];
              }

              v36 = [alarms countByEnumeratingWithState:&v79 objects:v90 count:16];
            }

            while (v36);
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v83 objects:v91 count:16];
      }

      while (v30);
    }

    error = obj;
  }

  if ([(EKChangeSet *)self->super._changeSet hasUnsavedMultiValueAdditionForKey:@"allAlarmsSet"])
  {
    multiValueAdditions = [(EKChangeSet *)self->super._changeSet multiValueAdditions];
    v40 = [multiValueAdditions objectForKeyedSubscript:@"allAlarmsSet"];

    selfCopy = self;
    if ([v40 count])
    {
      remObjectID = [(EKFrozenReminderReminder *)self remObjectID];
      v89 = remObjectID;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];
    }

    else
    {
      v42 = 0;
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    obja = v40;
    v43 = [obja countByEnumeratingWithState:&v75 objects:v88 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v76;
      do
      {
        for (k = 0; k != v44; ++k)
        {
          if (*v76 != v45)
          {
            objc_enumerationMutation(obja);
          }

          v47 = *(*(&v75 + 1) + 8 * k);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            v49 = objc_opt_class();
            NSStringFromClass(v49);
            v51 = v50 = error;
            [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"EKFrozenReminderReminder.m" lineNumber:198 description:{@"frozen alarm is of the wrong class: %@", v51}];

            error = v50;
          }

          [v47 setPath:v42];
          [v47 _applyChanges:changesCopy error:error];
        }

        v44 = [obja countByEnumeratingWithState:&v75 objects:v88 count:16];
      }

      while (v44);
    }

    self = selfCopy;
  }

  if ([(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"recurrenceRulesSet"])
  {
    [changesCopy removeAllRecurrenceRules];
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    recurrenceRulesSet = [(EKFrozenReminderReminder *)self recurrenceRulesSet];
    v53 = [recurrenceRulesSet countByEnumeratingWithState:&v71 objects:v87 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v72;
      do
      {
        for (m = 0; m != v54; ++m)
        {
          if (*v72 != v55)
          {
            objc_enumerationMutation(recurrenceRulesSet);
          }

          v57 = [*(*(&v71 + 1) + 8 * m) addUpdatedRecurrenceRule:changesCopy];
        }

        v54 = [recurrenceRulesSet countByEnumeratingWithState:&v71 objects:v87 count:16];
      }

      while (v54);
    }
  }

  if ([(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"appLinkData"])
  {
    appLinkData = [(EKFrozenReminderReminder *)self appLinkData];
    v59 = [objc_alloc(getREMUserActivityClass()) initWithUserActivityData:appLinkData];
    [changesCopy setUserActivity:v59];
  }

  if ([(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"actionString"])
  {
    v60 = MEMORY[0x1E695DFF8];
    actionString = [(EKFrozenReminderReminder *)self actionString];
    v62 = [v60 URLWithString:actionString];

    v63 = [objc_alloc(getREMUserActivityClass()) initWithUniversalLink:v62];
    [changesCopy setUserActivity:v63];
  }

  v64 = 1;
LABEL_78:

  v65 = *MEMORY[0x1E69E9840];
  return v64;
}

- (BOOL)_applyChangesToSaveRequest:(id)request error:(id *)error
{
  requestCopy = request;
  _reminder = [(EKFrozenReminderReminder *)self _reminder];
  if ([(EKFrozenReminderObject *)self isNew])
  {
    calendar = [(EKFrozenReminderReminder *)self calendar];
    v9 = [calendar updateListWithSaveRequest:requestCopy error:error];
    if (!v9)
    {
      v17 = 0;
      goto LABEL_8;
    }

    v10 = v9;
    unlocalizedTitle = [(EKFrozenReminderReminder *)self unlocalizedTitle];
    v12 = unlocalizedTitle;
    v13 = &stru_1F1B49D68;
    if (unlocalizedTitle)
    {
      v13 = unlocalizedTitle;
    }

    v14 = v13;

    remObjectID = [(EKFrozenReminderReminder *)self remObjectID];
    v16 = [requestCopy addReminderWithTitle:v14 toListChangeItem:v10 reminderObjectID:remObjectID];

    calendar = v16;
  }

  else
  {
    calendar = [requestCopy updateReminder:_reminder];
  }

  v17 = [(EKFrozenReminderReminder *)self _applyChanges:calendar error:error];
LABEL_8:

  return v17;
}

- (id)_copyToNewList:(id)list error:(id *)error
{
  listCopy = list;
  _reminder = [(EKFrozenReminderReminder *)self _reminder];
  v8 = [listCopy updateReminder:_reminder];

  v9 = [(EKChangeSet *)self->super._changeSet valueForSingleValueKey:@"calendar" basedOn:0];
  v10 = [v9 updateListWithSaveRequest:listCopy error:error];
  if (v10)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v11 = getREMReminderChangeItemClass_softClass;
    v22 = getREMReminderChangeItemClass_softClass;
    if (!getREMReminderChangeItemClass_softClass)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __getREMReminderChangeItemClass_block_invoke;
      v18[3] = &unk_1E77FCFD8;
      v18[4] = &v19;
      __getREMReminderChangeItemClass_block_invoke(v18);
      v11 = v20[3];
    }

    v12 = v11;
    _Block_object_dispose(&v19, 8);
    v13 = [[v11 alloc] initWithReminderChangeItem:v8 insertIntoListChangeItem:v10];
    [listCopy _trackReminderChangeItem:v13];
    [(EKFrozenReminderReminder *)self _fixAlarmUUIDsForClone:v13 from:v8];
    [v8 removeFromList];
    objectID = [v13 objectID];
    uuid = [objectID uuid];
    uUIDString = [uuid UUIDString];
  }

  else
  {
    uUIDString = 0;
  }

  return uUIDString;
}

- (void)_fixAlarmUUIDsForClone:(id)clone from:(id)from
{
  v63 = *MEMORY[0x1E69E9840];
  cloneCopy = clone;
  alarms = [from alarms];
  v39 = cloneCopy;
  alarms2 = [cloneCopy alarms];
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(alarms, "count")}];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = alarms;
  v9 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v55;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v55 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v54 + 1) + 8 * i);
        v14 = [EKFrozenReminderAlarm semanticIdentifierFromREMAlarm:v13];
        v15 = [v8 objectForKeyedSubscript:v14];
        if (!v15)
        {
          v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
          [v8 setObject:v15 forKeyedSubscript:v14];
        }

        alarmUID = [v13 alarmUID];
        [v15 addObject:alarmUID];
      }

      v10 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v10);
  }

  v42 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(alarms2, "count")}];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v40 = alarms2;
  v17 = [v40 countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v51;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v51 != v19)
        {
          objc_enumerationMutation(v40);
        }

        v21 = *(*(&v50 + 1) + 8 * j);
        v22 = [EKFrozenReminderAlarm semanticIdentifierFromREMAlarm:v21];
        v23 = [v8 objectForKeyedSubscript:v22];
        alarmUID2 = [v21 alarmUID];
        firstObject = [v23 firstObject];
        if (firstObject)
        {
          [v42 setObject:firstObject forKeyedSubscript:alarmUID2];
          if ([v23 count] >= 2)
          {
            [v23 removeObjectAtIndex:0];
          }
        }

        else
        {
          v26 = +[EKReminderStore log];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v60 = v22;
            _os_log_error_impl(&dword_1A805E000, v26, OS_LOG_TYPE_ERROR, "Couldn't find old alarm matching semantic ID %@; if it existed it will be disconnected from any extant EKObject instances", buf, 0xCu);
          }
        }
      }

      v18 = [v40 countByEnumeratingWithState:&v50 objects:v61 count:16];
    }

    while (v18);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__EKFrozenReminderReminder__fixAlarmUUIDsForClone_from___block_invoke;
  aBlock[3] = &unk_1E77FD048;
  v43 = v42;
  v49 = v43;
  v27 = _Block_copy(aBlock);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v28 = v40;
  v29 = [v28 countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v45;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v45 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v44 + 1) + 8 * k);
        alarmUID3 = [v33 alarmUID];
        v35 = v27[2](v27, alarmUID3);
        [v33 setAlarmUID:v35];

        originalAlarmUID = [v33 originalAlarmUID];
        v37 = v27[2](v27, originalAlarmUID);
        [v33 setOriginalAlarmUID:v37];
      }

      v30 = [v28 countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v30);
  }

  v38 = *MEMORY[0x1E69E9840];
}

id __56__EKFrozenReminderReminder__fixAlarmUUIDsForClone_from___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

- (id)calendarItemIdentifier
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__EKFrozenReminderReminder_calendarItemIdentifier__block_invoke;
  v4[3] = &unk_1E77FCF88;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"UUID" backingValue:v4];

  return v2;
}

id __50__EKFrozenReminderReminder_calendarItemIdentifier__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _reminder];
  v2 = [v1 objectID];
  v3 = [v2 uuid];
  v4 = [v3 UUIDString];

  return v4;
}

- (id)calendar
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__EKFrozenReminderReminder_calendar__block_invoke;
  v4[3] = &unk_1E77FCFB0;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"calendar" backingValue:v4];

  return v2;
}

id __36__EKFrozenReminderReminder_calendar__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _reminder];
  v3 = [v2 list];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
  v5 = [WeakRetained frozenObjectForReminderObject:v3];

  return v5;
}

- (id)calendarItemExternalIdentifier
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__EKFrozenReminderReminder_calendarItemExternalIdentifier__block_invoke;
  v4[3] = &unk_1E77FCF88;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"uniqueID" backingValue:v4];

  return v2;
}

id __58__EKFrozenReminderReminder_calendarItemExternalIdentifier__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _reminder];
  v2 = [v1 daCalendarItemUniqueIdentifier];

  return v2;
}

- (id)unlocalizedTitle
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__EKFrozenReminderReminder_unlocalizedTitle__block_invoke;
  v4[3] = &unk_1E77FCF88;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"unlocalizedTitle" backingValue:v4];

  return v2;
}

id __44__EKFrozenReminderReminder_unlocalizedTitle__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _reminder];
  v2 = [v1 titleAsString];

  return v2;
}

- (id)notes
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__EKFrozenReminderReminder_notes__block_invoke;
  v4[3] = &unk_1E77FCF88;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"notes" backingValue:v4];

  return v2;
}

id __33__EKFrozenReminderReminder_notes__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _reminder];
  v2 = [v1 notesAsString];

  return v2;
}

- (id)URLString
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__EKFrozenReminderReminder_URLString__block_invoke;
  v4[3] = &unk_1E77FCF88;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"URLString" backingValue:v4];

  return v2;
}

id __37__EKFrozenReminderReminder_URLString__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _reminder];
  v2 = [v1 icsUrl];
  v3 = [v2 absoluteString];

  return v3;
}

- (id)lastModifiedDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__EKFrozenReminderReminder_lastModifiedDate__block_invoke;
  v4[3] = &unk_1E77FD090;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"lastModifiedDate" backingValue:v4];

  return v2;
}

id __44__EKFrozenReminderReminder_lastModifiedDate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _reminder];
  v2 = [v1 lastModifiedDate];

  return v2;
}

- (id)creationDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__EKFrozenReminderReminder_creationDate__block_invoke;
  v4[3] = &unk_1E77FD090;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"creationDate" backingValue:v4];

  return v2;
}

id __40__EKFrozenReminderReminder_creationDate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _reminder];
  v2 = [v1 creationDate];

  return v2;
}

- (id)alarms
{
  v63 = *MEMORY[0x1E69E9840];
  _reminder = [(EKFrozenReminderReminder *)self _reminder];
  alarms = [_reminder alarms];

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(alarms, "count")}];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = alarms;
  v6 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v56;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v56 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v55 + 1) + 8 * i);
        alarmUID = [v10 alarmUID];
        if (alarmUID)
        {
          v12 = alarmUID;
        }

        else
        {
          v12 = &stru_1F1B49D68;
        }

        alarmUID2 = [v10 alarmUID];
        v14 = [v5 objectForKeyedSubscript:alarmUID2];

        if (!v14)
        {
          v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
          [v5 setObject:v14 forKeyedSubscript:v12];
        }

        [v14 addObject:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v7);
  }

  v15 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(obj, "count")}];
  if ([obj count])
  {
    remObjectID = [(EKFrozenReminderReminder *)self remObjectID];
    v61 = remObjectID;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
  }

  else
  {
    v17 = 0;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v18 = v5;
  v19 = [v18 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v19)
  {
    v20 = v19;
    v46 = *v52;
    v41 = v18;
    do
    {
      v21 = 0;
      v42 = v20;
      do
      {
        if (*v52 != v46)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v51 + 1) + 8 * v21);
        v23 = [v18 objectForKeyedSubscript:{v22, v41}];
        if ([v22 length])
        {
          WeakRetained = objc_loadWeakRetained(&self->super._reminderStore);
          v25 = v23;
          v26 = WeakRetained;
          v27 = v25;
          v28 = [WeakRetained frozenAlarmForREMAlarms:?];

          if (v17)
          {
            [v28 setPath:v17];
          }

          [v15 addObject:v28];
        }

        else
        {
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v45 = v23;
          v28 = v23;
          v29 = [v28 countByEnumeratingWithState:&v47 objects:v59 count:16];
          if (v29)
          {
            v30 = v29;
            v43 = v21;
            v31 = *v48;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v48 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v47 + 1) + 8 * j);
                v34 = objc_loadWeakRetained(&self->super._reminderStore);
                v35 = [v34 frozenObjectForReminderObject:v33];

                if (v17)
                {
                  [v35 setPath:v17];
                }

                [v15 addObject:v35];
              }

              v30 = [v28 countByEnumeratingWithState:&v47 objects:v59 count:16];
            }

            while (v30);
            v18 = v41;
            v20 = v42;
            v21 = v43;
          }

          v27 = v45;
        }

        ++v21;
      }

      while (v21 != v20);
      v20 = [v18 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v20);
  }

  changeSet = self->super._changeSet;
  if (changeSet)
  {
    v37 = [(EKChangeSet *)changeSet valuesForMultiValueKey:@"allAlarmsSet" basedOnSet:v15];
  }

  else
  {
    v37 = v15;
  }

  v38 = v37;

  v39 = *MEMORY[0x1E69E9840];

  return v38;
}

- (id)startDateComponents
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__EKFrozenReminderReminder_startDateComponents__block_invoke;
  v4[3] = &unk_1E77FCF40;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"startDateComponents" backingValue:v4];

  return v2;
}

id __47__EKFrozenReminderReminder_startDateComponents__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _reminder];
  v2 = [v1 startDateComponents];
  v3 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  [v2 setCalendar:v3];

  return v2;
}

- (id)dueDateComponents
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__EKFrozenReminderReminder_dueDateComponents__block_invoke;
  v4[3] = &unk_1E77FCF40;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"dueDateComponents" backingValue:v4];

  return v2;
}

id __45__EKFrozenReminderReminder_dueDateComponents__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _reminder];
  v2 = [v1 dueDateComponents];
  v3 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  [v2 setCalendar:v3];

  return v2;
}

- (id)completionDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__EKFrozenReminderReminder_completionDate__block_invoke;
  v4[3] = &unk_1E77FD090;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"completionDate" backingValue:v4];

  return v2;
}

id __42__EKFrozenReminderReminder_completionDate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _reminder];
  v2 = [v1 completionDate];

  return v2;
}

- (unint64_t)priority
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__EKFrozenReminderReminder_priority__block_invoke;
  v5[3] = &unk_1E77FD0B8;
  v5[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"priority" backingValue:v5];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

id __36__EKFrozenReminderReminder_priority__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(a1 + 32) _reminder];
  v3 = [v1 numberWithUnsignedInteger:{objc_msgSend(v2, "priority")}];

  return v3;
}

- (id)appLinkData
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__EKFrozenReminderReminder_appLinkData__block_invoke;
  v4[3] = &unk_1E77FCF40;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"appLinkData" backingValue:v4];

  return v2;
}

id __39__EKFrozenReminderReminder_appLinkData__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _reminder];
  v2 = [v1 userActivity];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 userActivityData];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)actionString
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__EKFrozenReminderReminder_actionString__block_invoke;
  v4[3] = &unk_1E77FCF40;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"actionString" backingValue:v4];

  return v2;
}

id __40__EKFrozenReminderReminder_actionString__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _reminder];
  v2 = [v1 userActivity];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 universalLink];
    v5 = [v4 absoluteString];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasRecurrenceRules
{
  recurrenceRulesSet = [(EKFrozenReminderReminder *)self recurrenceRulesSet];
  v3 = [recurrenceRulesSet count] != 0;

  return v3;
}

- (BOOL)hasNotes
{
  notes = [(EKFrozenReminderReminder *)self notes];
  v3 = [notes length] != 0;

  return v3;
}

- (id)recurrenceRulesSet
{
  v25 = *MEMORY[0x1E69E9840];
  _reminder = [(EKFrozenReminderReminder *)self _reminder];
  recurrenceRules = [_reminder recurrenceRules];

  v5 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(recurrenceRules, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = recurrenceRules;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [EKFrozenReminderRecurrenceRule alloc];
        WeakRetained = objc_loadWeakRetained(&self->super._reminderStore);
        v13 = [(EKFrozenReminderRecurrenceRule *)v11 initWithREMObject:v10 inStore:WeakRetained];

        [v5 addObject:v13];
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  changeSet = self->super._changeSet;
  if (changeSet)
  {
    v15 = [(EKChangeSet *)changeSet valuesForMultiValueKey:@"recurrenceRulesSet" basedOnSet:v5];
  }

  else
  {
    v15 = v5;
  }

  v16 = v15;

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

@end
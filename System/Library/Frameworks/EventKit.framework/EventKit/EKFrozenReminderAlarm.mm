@interface EKFrozenReminderAlarm
+ (id)semanticIdentifierFromDateComponents:(id)components;
+ (id)semanticIdentifierFromREMAlarm:(id)alarm;
+ (id)triggersFromAbsoluteDate:(id)date relativeOffset:(double)offset timeValuesRelevant:(BOOL)relevant structuredLocation:(id)location proximity:(int64_t)proximity;
- (BOOL)_applyChanges:(id)changes error:(id *)error;
- (BOOL)_applyChangesToSaveRequest:(id)request error:(id *)error;
- (EKFrozenReminderAlarm)initWithAlarms:(id)alarms inStore:(id)store withChanges:(id)changes;
- (EKFrozenReminderAlarm)initWithAlternateUniverseObject:(id)object inEventStore:(id)store withUpdatedChildObjects:(id)objects;
- (EKFrozenReminderAlarm)initWithREMObject:(id)object inStore:(id)store withChanges:(id)changes;
- (EKFrozenReminderStructuredLocation)structuredLocation;
- (NSArray)alarms;
- (NSArray)triggers;
- (NSString)externalID;
- (double)relativeOffset;
- (id)_effectiveAlarm;
- (id)_remStructuredLocation;
- (id)_setTimeOrLocationAlarm:(id)alarm;
- (id)absoluteDate;
- (id)acknowledgedDate;
- (id)modifiedStructuredLocation;
- (id)originalAlarm;
- (id)remObjectID;
- (id)updatedAlarmWithLocation:(id)location;
- (id)updatedFrozenObjectWithChanges:(id)changes updatedChildren:(id)children;
- (int64_t)proximity;
- (void)_setTimeAndLocationAlarms:(id)alarms;
@end

@implementation EKFrozenReminderAlarm

- (EKFrozenReminderAlarm)initWithREMObject:(id)object inStore:(id)store withChanges:(id)changes
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = EKFrozenReminderAlarm;
  v9 = [(EKFrozenReminderObject *)&v13 initWithREMObject:objectCopy inStore:store withChanges:changes];
  v10 = v9;
  if (v9)
  {
    v11 = [(EKFrozenReminderAlarm *)v9 _setTimeOrLocationAlarm:objectCopy];
  }

  return v10;
}

- (EKFrozenReminderAlarm)initWithAlarms:(id)alarms inStore:(id)store withChanges:(id)changes
{
  alarmsCopy = alarms;
  changesCopy = changes;
  storeCopy = store;
  firstObject = [alarmsCopy firstObject];
  v14.receiver = self;
  v14.super_class = EKFrozenReminderAlarm;
  v12 = [(EKFrozenReminderObject *)&v14 initWithREMObject:firstObject inStore:storeCopy withChanges:changesCopy];

  if (v12)
  {
    [(EKFrozenReminderAlarm *)v12 _setTimeAndLocationAlarms:alarmsCopy];
  }

  return v12;
}

- (EKFrozenReminderAlarm)initWithAlternateUniverseObject:(id)object inEventStore:(id)store withUpdatedChildObjects:(id)objects
{
  objectCopy = object;
  objectsCopy = objects;
  storeCopy = store;
  v12 = objc_alloc_init(EKChangeSet);
  [(EKChangeSet *)v12 setSkipsPersistentObjectCopy:1];
  v13 = [objectCopy valueForKey:@"relativeOffset"];
  [(EKChangeSet *)v12 changeSingleValue:v13 forKey:@"relativeOffset" basedOn:0];

  v14 = [objectCopy valueForKey:@"absoluteDate"];
  [(EKChangeSet *)v12 changeSingleValue:v14 forKey:@"absoluteDate" basedOn:0];

  v15 = [objectCopy valueForKey:@"structuredLocation"];
  v16 = v15;
  if (v15)
  {
    uniqueIdentifier = [v15 uniqueIdentifier];
    v18 = [objectsCopy objectForKeyedSubscript:uniqueIdentifier];

    if (!v18)
    {
      v18 = v16;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [EKFrozenReminderAlarm initWithAlternateUniverseObject:v18 inEventStore:a2 withUpdatedChildObjects:self];
    }

    [(EKChangeSet *)v12 changeSingleValue:v18 forKey:@"structuredLocation" basedOn:0];
  }

  v19 = [objectCopy valueForKey:@"proximity"];
  [(EKChangeSet *)v12 changeSingleValue:v19 forKey:@"proximity" basedOn:0];

  uUIDString = [objectCopy valueForKey:@"UUID"];
  if (!uUIDString)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
  }

  [(EKChangeSet *)v12 changeSingleValue:uUIDString forKey:@"UUID" basedOn:0];
  reminderStore = [storeCopy reminderStore];

  v25.receiver = self;
  v25.super_class = EKFrozenReminderAlarm;
  v23 = [(EKFrozenReminderObject *)&v25 initWithREMObject:0 inStore:reminderStore withChanges:v12];

  return v23;
}

- (id)updatedFrozenObjectWithChanges:(id)changes updatedChildren:(id)children
{
  v9.receiver = self;
  v9.super_class = EKFrozenReminderAlarm;
  v5 = [(EKFrozenReminderObject *)&v9 updatedFrozenObjectWithChanges:changes updatedChildren:children];
  if (v5 == self)
  {
    selfCopy = self;
  }

  else
  {
    alarms = [(EKFrozenReminderAlarm *)self alarms];
    if ([alarms count])
    {
      [(EKFrozenReminderAlarm *)v5 _setTimeAndLocationAlarms:alarms];
    }

    selfCopy = v5;
  }

  return selfCopy;
}

- (void)_setTimeAndLocationAlarms:(id)alarms
{
  v23 = *MEMORY[0x1E69E9840];
  alarmsCopy = alarms;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [alarmsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(alarmsCopy);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [(EKFrozenReminderAlarm *)self _setTimeOrLocationAlarm:v9];
        v11 = v10;
        if (v10)
        {
          v12 = v10 == v9;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          v13 = +[EKReminderStore log];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [(EKFrozenReminderAlarm *)&v16 _setTimeAndLocationAlarms:v17, v13];
          }
        }
      }

      v6 = [alarmsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  if (!self->_timeAlarm && !self->_locationAlarm)
  {
    v14 = +[EKReminderStore log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [EKFrozenReminderAlarm _setTimeAndLocationAlarms:alarmsCopy];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_setTimeOrLocationAlarm:(id)alarm
{
  alarmCopy = alarm;
  v6 = alarmCopy;
  if (alarmCopy)
  {
    trigger = [alarmCopy trigger];
    getREMAlarmTimeIntervalTriggerClass();
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (getREMAlarmDateTriggerClass(), objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v8 = 152;
    }

    else
    {
      getREMAlarmLocationTriggerClass();
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = +[EKReminderStore log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [EKFrozenReminderAlarm _setTimeOrLocationAlarm:];
        }

        v9 = 0;
        goto LABEL_6;
      }

      v8 = 160;
    }

    v9 = *(&self->super.super.super.isa + v8);
    objc_storeStrong((&self->super.super.super.isa + v8), alarm);
LABEL_6:

    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (NSArray)alarms
{
  v11[2] = *MEMORY[0x1E69E9840];
  locationAlarm = self->_locationAlarm;
  if (self->_timeAlarm)
  {
    if (locationAlarm)
    {
      v11[0] = self->_timeAlarm;
      v11[1] = locationAlarm;
      v3 = MEMORY[0x1E695DEC8];
      p_timeAlarm = v11;
      v5 = 2;
LABEL_8:
      v6 = [v3 arrayWithObjects:p_timeAlarm count:v5];
      goto LABEL_9;
    }

    timeAlarm = self->_timeAlarm;
    v3 = MEMORY[0x1E695DEC8];
    p_timeAlarm = &timeAlarm;
LABEL_7:
    v5 = 1;
    goto LABEL_8;
  }

  if (locationAlarm)
  {
    v9 = self->_locationAlarm;
    v3 = MEMORY[0x1E695DEC8];
    p_timeAlarm = &v9;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_9:
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)remObjectID
{
  if (self->_timeAlarm)
  {
    timeAlarm = self->_timeAlarm;
  }

  else
  {
    timeAlarm = self->_locationAlarm;
  }

  objectID = [(REMAlarm *)timeAlarm objectID];

  return objectID;
}

- (double)relativeOffset
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__EKFrozenReminderAlarm_relativeOffset__block_invoke;
  v6[3] = &unk_1E77FD0B8;
  v6[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"relativeOffset" backingValue:v6];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

id __39__EKFrozenReminderAlarm_relativeOffset__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _timeAlarm];
  v2 = [v1 trigger];

  getREMAlarmTimeIntervalTriggerClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = MEMORY[0x1E696AD98];
    [v2 timeInterval];
    v4 = [v3 numberWithDouble:?];
  }

  else
  {
    v4 = &unk_1F1B6B418;
  }

  return v4;
}

- (id)absoluteDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__EKFrozenReminderAlarm_absoluteDate__block_invoke;
  v4[3] = &unk_1E77FD090;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"absoluteDate" backingValue:v4];

  return v2;
}

id __37__EKFrozenReminderAlarm_absoluteDate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _timeAlarm];
  v2 = [v1 trigger];

  getREMAlarmDateTriggerClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 dateComponents];
    v4 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    [v3 setCalendar:v4];

    v5 = [v3 date];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (EKFrozenReminderStructuredLocation)structuredLocation
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__EKFrozenReminderAlarm_structuredLocation__block_invoke;
  v4[3] = &unk_1E78013A0;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"structuredLocation" backingValue:v4];

  return v2;
}

id __43__EKFrozenReminderAlarm_structuredLocation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _locationAlarm];
  v3 = [v2 trigger];

  if (v3)
  {
    v4 = [v3 structuredLocation];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
    v6 = [WeakRetained frozenObjectForReminderObject:v4];

    v7 = [*(a1 + 32) path];
    v8 = [*(a1 + 32) remObjectID];
    v9 = [v7 arrayByAddingObject:v8];
    [v6 setPath:v9];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)modifiedStructuredLocation
{
  if ([(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"structuredLocation"])
  {
    v3 = [(EKChangeSet *)self->super._changeSet valueForSingleValueKey:@"structuredLocation" basedOn:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)externalID
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__EKFrozenReminderAlarm_externalID__block_invoke;
  v4[3] = &unk_1E77FCF40;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"UUID" backingValue:v4];

  return v2;
}

id __35__EKFrozenReminderAlarm_externalID__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 152);
  if (v3)
  {
    v4 = [v3 alarmUID];
    v2 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v2 + 160);
  if (v5)
  {
    v6 = [v5 alarmUID];

    v4 = v6;
  }

  if (!v4)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 152);
    if (v8 || (v8 = *(v7 + 160)) != 0)
    {
      v9 = [v8 remObjectID];
      v10 = [v9 uuid];
      v4 = [v10 UUIDString];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)_remStructuredLocation
{
  v18 = *MEMORY[0x1E69E9840];
  modifiedStructuredLocation = [(EKFrozenReminderAlarm *)self modifiedStructuredLocation];
  v4 = modifiedStructuredLocation;
  if (modifiedStructuredLocation)
  {
    updatedStructuredLocation = [modifiedStructuredLocation updatedStructuredLocation];
  }

  else if ([(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"structuredLocation"]|| (v6 = self->_locationAlarm) == 0)
  {
    updatedStructuredLocation = 0;
  }

  else
  {
    trigger = [(REMAlarm *)v6 trigger];
    getREMAlarmLocationTriggerClass();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      updatedStructuredLocation = [trigger structuredLocation];
    }

    else
    {
      v8 = +[EKReminderStore log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        locationAlarm = self->_locationAlarm;
        v12 = 138412802;
        selfCopy = self;
        v14 = 2112;
        v15 = locationAlarm;
        v16 = 2112;
        v17 = trigger;
        _os_log_error_impl(&dword_1A805E000, v8, OS_LOG_TYPE_ERROR, "Frozen reminder alarm being committed has a location alarm without a location alarm trigger. EKFrozenReminderAlarm=%@; _locationAlarm=%@, _locationAlarm.trigger=%@", &v12, 0x20u);
      }

      updatedStructuredLocation = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return updatedStructuredLocation;
}

- (NSArray)triggers
{
  _remStructuredLocation = [(EKFrozenReminderAlarm *)self _remStructuredLocation];
  v4 = self->_timeAlarm || [(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"absoluteDate"]|| [(EKChangeSet *)self->super._changeSet hasUnsavedChangeForKey:@"relativeOffset"];
  absoluteDate = [(EKFrozenReminderAlarm *)self absoluteDate];
  [(EKFrozenReminderAlarm *)self relativeOffset];
  v7 = [EKFrozenReminderAlarm triggersFromAbsoluteDate:absoluteDate relativeOffset:v4 timeValuesRelevant:_remStructuredLocation structuredLocation:[(EKFrozenReminderAlarm *)self proximity] proximity:v6];

  return v7;
}

+ (id)triggersFromAbsoluteDate:(id)date relativeOffset:(double)offset timeValuesRelevant:(BOOL)relevant structuredLocation:(id)location proximity:(int64_t)proximity
{
  relevantCopy = relevant;
  dateCopy = date;
  locationCopy = location;
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  if (relevantCopy)
  {
    if (dateCopy)
    {
      v14 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      v15 = [v14 components:254 fromDate:dateCopy];
      v16 = [objc_alloc(getREMAlarmDateTriggerClass()) initWithDateComponents:v15];
      [v13 addObject:v16];
    }

    else
    {
      v14 = [objc_alloc(getREMAlarmTimeIntervalTriggerClass()) initWithTimeInterval:offset];
      [v13 addObject:v14];
    }
  }

  if (locationCopy)
  {
    v17 = [objc_alloc(getREMAlarmLocationTriggerClass()) initWithStructuredLocation:locationCopy proximity:{+[EKFrozenReminderAlarm ekAlarmProximityToEKAlarmProximity:](EKFrozenReminderAlarm, "ekAlarmProximityToEKAlarmProximity:", proximity)}];
    [v13 addObject:v17];
  }

  return v13;
}

- (BOOL)_applyChanges:(id)changes error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  externalID = [(EKFrozenReminderAlarm *)self externalID];
  if (self->_timeAlarm)
  {
    [changesCopy removeAlarm:?];
  }

  if (self->_locationAlarm)
  {
    [changesCopy removeAlarm:?];
    modifiedStructuredLocation = [(EKFrozenReminderAlarm *)self modifiedStructuredLocation];
    if (modifiedStructuredLocation)
    {
      path = [(EKFrozenReminderObject *)self path];
      objectID = [(REMAlarm *)self->_locationAlarm objectID];
      v10 = [path arrayByAddingObject:objectID];
      [modifiedStructuredLocation setPath:v10];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  triggers = [(EKFrozenReminderAlarm *)self triggers];
  v12 = [triggers countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(triggers);
        }

        v16 = [changesCopy addAlarmWithTrigger:*(*(&v22 + 1) + 8 * i)];
        [v16 setAlarmUID:externalID];
        acknowledgedDate = [(EKFrozenReminderAlarm *)self acknowledgedDate];
        [v16 setAcknowledgedDate:acknowledgedDate];

        originalAlarm = [(EKFrozenReminderAlarm *)self originalAlarm];
        externalID2 = [originalAlarm externalID];
        [v16 setOriginalAlarmUID:externalID2];
      }

      v13 = [triggers countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v20 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)_applyChangesToSaveRequest:(id)request error:(id *)error
{
  requestCopy = request;
  path = [(EKFrozenReminderObject *)self path];
  firstObject = [path firstObject];

  if (firstObject)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._reminderStore);
    remStore = [WeakRetained remStore];

    v18 = 0;
    v11 = [remStore fetchReminderWithObjectID:firstObject error:&v18];
    v12 = v18;
    if (v11)
    {
      v13 = [requestCopy updateReminder:v11];
      v14 = [(EKFrozenReminderAlarm *)self _applyChanges:v13 error:error];
    }

    else
    {
      v16 = +[EKReminderStore log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [EKFrozenReminderAlarm _applyChangesToSaveRequest:error:];
      }

      if (error)
      {
        [MEMORY[0x1E696ABC0] errorWithEKErrorCode:5];
        *error = v14 = 0;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v15 = +[EKReminderStore log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [EKFrozenReminderAlarm _applyChangesToSaveRequest:error:];
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithEKErrorCode:5];
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)updatedAlarmWithLocation:(id)location
{
  locationCopy = location;
  v5 = objc_alloc_init(EKChangeSet);
  [(EKChangeSet *)v5 setSkipsPersistentObjectCopy:1];
  [(EKChangeSet *)v5 changeSingleValue:locationCopy forKey:@"structuredLocation" basedOn:0];

  v6 = [(EKFrozenReminderObject *)self updatedFrozenObjectWithChanges:v5];

  return v6;
}

+ (id)semanticIdentifierFromREMAlarm:(id)alarm
{
  alarmCopy = alarm;
  acknowledgedDate = [alarmCopy acknowledgedDate];
  trigger = [alarmCopy trigger];
  getREMAlarmDateTriggerClass();
  v7 = 0x1E696A000uLL;
  if (objc_opt_isKindOfClass())
  {
    dateComponents = [trigger dateComponents];
    stringValue = [self semanticIdentifierFromDateComponents:dateComponents];

    goto LABEL_13;
  }

  getREMAlarmTimeIntervalTriggerClass();
  if (objc_opt_isKindOfClass())
  {
    v10 = MEMORY[0x1E696AD98];
    [trigger timeInterval];
    structuredLocation = [v10 numberWithDouble:?];
    stringValue = [structuredLocation stringValue];
LABEL_7:

    goto LABEL_13;
  }

  getREMAlarmLocationTriggerClass();
  if (objc_opt_isKindOfClass())
  {
    v12 = trigger;
    proximity = [v12 proximity];
    structuredLocation = [v12 structuredLocation];

    title = [structuredLocation title];
    address = [structuredLocation address];
    mapKitHandle = [structuredLocation mapKitHandle];
    contactLabel = [structuredLocation contactLabel];
    v13 = MEMORY[0x1E696AD98];
    [structuredLocation latitude];
    v24 = [v13 numberWithDouble:?];
    v14 = MEMORY[0x1E696AD98];
    [structuredLocation longitude];
    v15 = [v14 numberWithDouble:?];
    v16 = MEMORY[0x1E696AD98];
    [structuredLocation radius];
    v17 = [v16 numberWithDouble:?];
    v18 = [EKStructuredLocationSemanticIdentifierGenerator semanticIdentifierForLocationWithTitle:title address:address mapKitHandle:mapKitHandle contactLabel:contactLabel latitude:v24 longitude:v15 radius:v17];
    v19 = MEMORY[0x1E696AEC0];
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:proximity];
    stringValue = [v19 stringWithFormat:@"Proximity=%@Location=%@", v20, v18];;

    v7 = 0x1E696A000;
    goto LABEL_7;
  }

  if (trigger)
  {
    v21 = +[EKReminderStore log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[EKFrozenReminderAlarm semanticIdentifierFromREMAlarm:];
    }
  }

  stringValue = 0;
LABEL_13:
  v22 = [*(v7 + 3776) stringWithFormat:@"Ack=%@Trigger=%@:%@", acknowledgedDate, objc_opt_class(), stringValue];;

  return v22;
}

+ (id)semanticIdentifierFromDateComponents:(id)components
{
  componentsCopy = components;
  v4 = [componentsCopy era];
  year = [componentsCopy year];
  month = [componentsCopy month];
  v7 = [componentsCopy day];
  hour = [componentsCopy hour];
  minute = [componentsCopy minute];
  second = [componentsCopy second];
  timeZone = [componentsCopy timeZone];

  v12 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"["];
  v13 = v12;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v12 appendFormat:@"Era=%li;", v4];
  }

  if (year != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v13 appendFormat:@"Year=%li;", year];
  }

  if (month != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v13 appendFormat:@"Month=%li;", month];
  }

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v13 appendFormat:@"Day=%li;", v7];
  }

  if (hour != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v13 appendFormat:@"Hour=%li;", hour];
  }

  if (minute != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v13 appendFormat:@"Minute=%li;", minute];
  }

  if (second != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v13 appendFormat:@"Second=%li;", second];
  }

  name = [timeZone name];
  v15 = name;
  if (!timeZone)
  {

    v15 = @"FLOAT";
  }

  [v13 appendFormat:@"TZ=%@]", v15];

  return v13;
}

- (int64_t)proximity
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__EKFrozenReminderAlarm_proximity__block_invoke;
  v5[3] = &unk_1E77FCF40;
  v5[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"proximity" backingValue:v5];
  integerValue = [v2 integerValue];

  return integerValue;
}

id __34__EKFrozenReminderAlarm_proximity__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _locationAlarm];
  v2 = [v1 trigger];

  v3 = [v2 proximity];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:v3];

  return v4;
}

- (id)_effectiveAlarm
{
  timeAlarm = self->_timeAlarm;
  if (!timeAlarm)
  {
    timeAlarm = self->_locationAlarm;
  }

  v3 = timeAlarm;

  return v3;
}

- (id)acknowledgedDate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__EKFrozenReminderAlarm_acknowledgedDate__block_invoke;
  v4[3] = &unk_1E77FD090;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"acknowledgedDate" backingValue:v4];

  return v2;
}

id __41__EKFrozenReminderAlarm_acknowledgedDate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _effectiveAlarm];
  v2 = [v1 acknowledgedDate];

  return v2;
}

- (id)originalAlarm
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__EKFrozenReminderAlarm_originalAlarm__block_invoke;
  v4[3] = &unk_1E78013C8;
  v4[4] = self;
  v2 = [(EKFrozenReminderObject *)self valueForSingleValueKey:@"originalAlarm" backingValue:v4];

  return v2;
}

EKFrozenReminderAlarm *__38__EKFrozenReminderAlarm_originalAlarm__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _effectiveAlarm];
  v3 = [v2 originalAlarmUID];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 128));
    v5 = [WeakRetained remStore];

    v6 = [*(a1 + 32) path];
    v7 = [v6 firstObject];
    v30 = 0;
    v8 = [v5 fetchReminderWithObjectID:v7 error:&v30];
    v9 = v30;

    if (v8)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v10 = [v8 alarms];
      v11 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v11)
      {
        v12 = v11;
        v24 = v9;
        v25 = v5;
        v13 = *v27;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v27 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v26 + 1) + 8 * i);
            v16 = [v15 alarmUID];
            v17 = [v16 isEqualToString:v3];

            if (v17)
            {
              v19 = [EKFrozenReminderAlarm alloc];
              v20 = objc_loadWeakRetained((*(a1 + 32) + 128));
              v21 = [(EKFrozenReminderObject *)v19 initWithREMObject:v15 inStore:v20];

              v18 = v21;
              v10 = v18;
              goto LABEL_14;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }

        v18 = 0;
LABEL_14:
        v9 = v24;
        v5 = v25;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)initWithAlternateUniverseObject:(uint64_t)a1 inEventStore:(uint64_t)a2 withUpdatedChildObjects:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v7 handleFailureInMethod:a2 object:a3 file:@"EKFrozenReminderAlarm.m" lineNumber:85 description:{@"structured location is an unexpected type: %@", v6}];
}

- (void)_setTimeAndLocationAlarms:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "Alarm has multiple triggers with the same type; an arbitrary one will be used.", buf, 2u);
}

- (void)_setTimeAndLocationAlarms:(void *)a1 .cold.2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_setTimeOrLocationAlarm:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_applyChangesToSaveRequest:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1A805E000, v0, OS_LOG_TYPE_ERROR, "Couldn't fetch reminder to be saved: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_applyChangesToSaveRequest:error:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1A805E000, v0, OS_LOG_TYPE_ERROR, "Alarm to be saved doesn't have a parent reminder: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)semanticIdentifierFromREMAlarm:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end
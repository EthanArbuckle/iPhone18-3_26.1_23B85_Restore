@interface EKCalendarItemChange
- (EKCalendarItemChange)initWithChangeProperties:(id)properties;
@end

@implementation EKCalendarItemChange

- (EKCalendarItemChange)initWithChangeProperties:(id)properties
{
  propertiesCopy = properties;
  v34.receiver = self;
  v34.super_class = EKCalendarItemChange;
  v5 = [(EKObjectChange *)&v34 initWithChangeProperties:propertiesCopy];
  if (v5)
  {
    v6 = [propertiesCopy objectForKeyedSubscript:@"calendar_id"];
    intValue = [v6 intValue];
    changedObjectID = [(EKObjectChange *)v5 changedObjectID];
    v9 = +[EKObjectID objectIDWithEntityType:rowID:databaseID:](EKObjectID, "objectIDWithEntityType:rowID:databaseID:", 1, intValue, [changedObjectID databaseID]);
    calendarID = v5->_calendarID;
    v5->_calendarID = v9;

    v11 = [propertiesCopy objectForKeyedSubscript:@"old_calendar_id"];
    if ([v11 intValue])
    {
      intValue2 = [v11 intValue];
      changedObjectID2 = [(EKObjectChange *)v5 changedObjectID];
      v14 = +[EKObjectID objectIDWithEntityType:rowID:databaseID:](EKObjectID, "objectIDWithEntityType:rowID:databaseID:", 1, intValue2, [changedObjectID2 databaseID]);
      oldCalendarID = v5->_oldCalendarID;
      v5->_oldCalendarID = v14;
    }

    v16 = [propertiesCopy objectForKeyedSubscript:@"external_id"];
    externalID = v5->_externalID;
    v5->_externalID = v16;

    v18 = [propertiesCopy objectForKeyedSubscript:@"old_external_id"];
    oldExternalID = v5->_oldExternalID;
    v5->_oldExternalID = v18;

    v20 = [propertiesCopy objectForKeyedSubscript:@"UUID"];
    uuid = v5->_uuid;
    v5->_uuid = v20;

    v22 = [propertiesCopy objectForKeyedSubscript:@"unique_identifier"];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v22;

    v24 = [propertiesCopy objectForKeyedSubscript:@"summary"];
    v5->_titleChanged = [v24 BOOLValue];

    v25 = [propertiesCopy objectForKeyedSubscript:@"location_id"];
    v5->_locationChanged = [v25 BOOLValue];

    v26 = [propertiesCopy objectForKeyedSubscript:@"start_date"];
    v5->_startDateChanged = [v26 BOOLValue];

    v27 = [propertiesCopy objectForKeyedSubscript:@"start_tz"];
    v5->_startTimezoneChanged = [v27 BOOLValue];

    v28 = [propertiesCopy objectForKeyedSubscript:@"end_date"];
    v5->_endDateChanged = [v28 BOOLValue];

    v29 = [propertiesCopy objectForKeyedSubscript:@"end_tz"];
    v5->_endTimezoneChanged = [v29 BOOLValue];

    v30 = [propertiesCopy objectForKeyedSubscript:@"description"];
    v5->_notesChanged = [v30 BOOLValue];

    v31 = [propertiesCopy objectForKeyedSubscript:@"all_day"];
    v5->_allDayChanged = [v31 BOOLValue];

    v32 = [propertiesCopy objectForKeyedSubscript:@"suppress_notification_for_changes"];
    v5->_suppressNotificationForChanges = [v32 BOOLValue];
  }

  return v5;
}

@end
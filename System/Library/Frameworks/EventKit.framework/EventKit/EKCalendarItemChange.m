@interface EKCalendarItemChange
- (EKCalendarItemChange)initWithChangeProperties:(id)a3;
@end

@implementation EKCalendarItemChange

- (EKCalendarItemChange)initWithChangeProperties:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = EKCalendarItemChange;
  v5 = [(EKObjectChange *)&v34 initWithChangeProperties:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"calendar_id"];
    v7 = [v6 intValue];
    v8 = [(EKObjectChange *)v5 changedObjectID];
    v9 = +[EKObjectID objectIDWithEntityType:rowID:databaseID:](EKObjectID, "objectIDWithEntityType:rowID:databaseID:", 1, v7, [v8 databaseID]);
    calendarID = v5->_calendarID;
    v5->_calendarID = v9;

    v11 = [v4 objectForKeyedSubscript:@"old_calendar_id"];
    if ([v11 intValue])
    {
      v12 = [v11 intValue];
      v13 = [(EKObjectChange *)v5 changedObjectID];
      v14 = +[EKObjectID objectIDWithEntityType:rowID:databaseID:](EKObjectID, "objectIDWithEntityType:rowID:databaseID:", 1, v12, [v13 databaseID]);
      oldCalendarID = v5->_oldCalendarID;
      v5->_oldCalendarID = v14;
    }

    v16 = [v4 objectForKeyedSubscript:@"external_id"];
    externalID = v5->_externalID;
    v5->_externalID = v16;

    v18 = [v4 objectForKeyedSubscript:@"old_external_id"];
    oldExternalID = v5->_oldExternalID;
    v5->_oldExternalID = v18;

    v20 = [v4 objectForKeyedSubscript:@"UUID"];
    uuid = v5->_uuid;
    v5->_uuid = v20;

    v22 = [v4 objectForKeyedSubscript:@"unique_identifier"];
    uniqueID = v5->_uniqueID;
    v5->_uniqueID = v22;

    v24 = [v4 objectForKeyedSubscript:@"summary"];
    v5->_titleChanged = [v24 BOOLValue];

    v25 = [v4 objectForKeyedSubscript:@"location_id"];
    v5->_locationChanged = [v25 BOOLValue];

    v26 = [v4 objectForKeyedSubscript:@"start_date"];
    v5->_startDateChanged = [v26 BOOLValue];

    v27 = [v4 objectForKeyedSubscript:@"start_tz"];
    v5->_startTimezoneChanged = [v27 BOOLValue];

    v28 = [v4 objectForKeyedSubscript:@"end_date"];
    v5->_endDateChanged = [v28 BOOLValue];

    v29 = [v4 objectForKeyedSubscript:@"end_tz"];
    v5->_endTimezoneChanged = [v29 BOOLValue];

    v30 = [v4 objectForKeyedSubscript:@"description"];
    v5->_notesChanged = [v30 BOOLValue];

    v31 = [v4 objectForKeyedSubscript:@"all_day"];
    v5->_allDayChanged = [v31 BOOLValue];

    v32 = [v4 objectForKeyedSubscript:@"suppress_notification_for_changes"];
    v5->_suppressNotificationForChanges = [v32 BOOLValue];
  }

  return v5;
}

@end
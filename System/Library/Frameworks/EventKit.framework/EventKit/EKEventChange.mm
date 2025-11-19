@interface EKEventChange
- (EKEventChange)initWithChangeProperties:(id)a3;
@end

@implementation EKEventChange

- (EKEventChange)initWithChangeProperties:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = EKEventChange;
  v5 = [(EKCalendarItemChange *)&v17 initWithChangeProperties:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"availability"];
    v5->_availabilityChanged = [v6 BOOLValue];

    v7 = [v4 objectForKeyedSubscript:@"privacy_level"];
    v5->_privacyLevelChanged = [v7 BOOLValue];

    v8 = [v4 objectForKeyedSubscript:@"travel_time"];
    v5->_travelTimeChanged = [v8 BOOLValue];

    v9 = [v4 objectForKeyedSubscript:@"start_location_id"];
    v5->_travelStartLocationChanged = [v9 BOOLValue];

    v10 = [v4 objectForKeyedSubscript:@"status"];
    v5->_statusChanged = [v10 BOOLValue];

    v11 = [v4 objectForKeyedSubscript:@"orig_item_id"];
    v12 = [v11 intValue];

    if (v12 >= 1)
    {
      v13 = [(EKObjectChange *)v5 changedObjectID];
      v14 = +[EKObjectID objectIDWithEntityType:rowID:databaseID:](EKObjectID, "objectIDWithEntityType:rowID:databaseID:", 2, v12, [v13 databaseID]);
      originalItemID = v5->_originalItemID;
      v5->_originalItemID = v14;
    }
  }

  return v5;
}

@end
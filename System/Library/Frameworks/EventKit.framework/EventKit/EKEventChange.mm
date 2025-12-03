@interface EKEventChange
- (EKEventChange)initWithChangeProperties:(id)properties;
@end

@implementation EKEventChange

- (EKEventChange)initWithChangeProperties:(id)properties
{
  propertiesCopy = properties;
  v17.receiver = self;
  v17.super_class = EKEventChange;
  v5 = [(EKCalendarItemChange *)&v17 initWithChangeProperties:propertiesCopy];
  if (v5)
  {
    v6 = [propertiesCopy objectForKeyedSubscript:@"availability"];
    v5->_availabilityChanged = [v6 BOOLValue];

    v7 = [propertiesCopy objectForKeyedSubscript:@"privacy_level"];
    v5->_privacyLevelChanged = [v7 BOOLValue];

    v8 = [propertiesCopy objectForKeyedSubscript:@"travel_time"];
    v5->_travelTimeChanged = [v8 BOOLValue];

    v9 = [propertiesCopy objectForKeyedSubscript:@"start_location_id"];
    v5->_travelStartLocationChanged = [v9 BOOLValue];

    v10 = [propertiesCopy objectForKeyedSubscript:@"status"];
    v5->_statusChanged = [v10 BOOLValue];

    v11 = [propertiesCopy objectForKeyedSubscript:@"orig_item_id"];
    intValue = [v11 intValue];

    if (intValue >= 1)
    {
      changedObjectID = [(EKObjectChange *)v5 changedObjectID];
      v14 = +[EKObjectID objectIDWithEntityType:rowID:databaseID:](EKObjectID, "objectIDWithEntityType:rowID:databaseID:", 2, intValue, [changedObjectID databaseID]);
      originalItemID = v5->_originalItemID;
      v5->_originalItemID = v14;
    }
  }

  return v5;
}

@end
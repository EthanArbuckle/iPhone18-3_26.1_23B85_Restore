@interface EKAttendeeChange
- (EKAttendeeChange)initWithChangeProperties:(id)properties;
@end

@implementation EKAttendeeChange

- (EKAttendeeChange)initWithChangeProperties:(id)properties
{
  propertiesCopy = properties;
  v15.receiver = self;
  v15.super_class = EKAttendeeChange;
  v5 = [(EKObjectChange *)&v15 initWithChangeProperties:propertiesCopy];
  if (v5)
  {
    v6 = [propertiesCopy objectForKeyedSubscript:@"owner_id"];
    changedObjectID = [(EKObjectChange *)v5 changedObjectID];
    v8 = +[EKObjectChangeOwnerIDHelper createOwnerIDWithRowID:objectType:databaseID:](EKObjectChangeOwnerIDHelper, "createOwnerIDWithRowID:objectType:databaseID:", v6, 2, [changedObjectID databaseID]);
    ownerID = v5->_ownerID;
    v5->_ownerID = v8;

    v10 = [propertiesCopy objectForKeyedSubscript:@"role"];
    v5->_attendeeRole = [v10 BOOLValue];

    v11 = [propertiesCopy objectForKeyedSubscript:@"status"];
    v5->_attendeeStatus = [v11 BOOLValue];

    v12 = [propertiesCopy objectForKeyedSubscript:@"email"];
    attendeeEmailAddress = v5->_attendeeEmailAddress;
    v5->_attendeeEmailAddress = v12;
  }

  return v5;
}

@end
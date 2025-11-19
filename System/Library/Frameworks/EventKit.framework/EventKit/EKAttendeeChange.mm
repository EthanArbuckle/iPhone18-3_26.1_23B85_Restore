@interface EKAttendeeChange
- (EKAttendeeChange)initWithChangeProperties:(id)a3;
@end

@implementation EKAttendeeChange

- (EKAttendeeChange)initWithChangeProperties:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = EKAttendeeChange;
  v5 = [(EKObjectChange *)&v15 initWithChangeProperties:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"owner_id"];
    v7 = [(EKObjectChange *)v5 changedObjectID];
    v8 = +[EKObjectChangeOwnerIDHelper createOwnerIDWithRowID:objectType:databaseID:](EKObjectChangeOwnerIDHelper, "createOwnerIDWithRowID:objectType:databaseID:", v6, 2, [v7 databaseID]);
    ownerID = v5->_ownerID;
    v5->_ownerID = v8;

    v10 = [v4 objectForKeyedSubscript:@"role"];
    v5->_attendeeRole = [v10 BOOLValue];

    v11 = [v4 objectForKeyedSubscript:@"status"];
    v5->_attendeeStatus = [v11 BOOLValue];

    v12 = [v4 objectForKeyedSubscript:@"email"];
    attendeeEmailAddress = v5->_attendeeEmailAddress;
    v5->_attendeeEmailAddress = v12;
  }

  return v5;
}

@end
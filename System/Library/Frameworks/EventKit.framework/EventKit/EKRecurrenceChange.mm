@interface EKRecurrenceChange
- (EKRecurrenceChange)initWithChangeProperties:(id)a3;
@end

@implementation EKRecurrenceChange

- (EKRecurrenceChange)initWithChangeProperties:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = EKRecurrenceChange;
  v5 = [(EKObjectChange *)&v11 initWithChangeProperties:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"event_id_tomb"];
    v7 = [(EKObjectChange *)v5 changedObjectID];
    v8 = +[EKObjectChangeOwnerIDHelper createOwnerIDWithRowID:objectType:databaseID:](EKObjectChangeOwnerIDHelper, "createOwnerIDWithRowID:objectType:databaseID:", v6, 2, [v7 databaseID]);
    ownerID = v5->_ownerID;
    v5->_ownerID = v8;
  }

  return v5;
}

@end
@interface EKExceptionDateChange
- (EKExceptionDateChange)initWithChangeProperties:(id)properties;
- (id)owningEventInEventStore:(id)store;
@end

@implementation EKExceptionDateChange

- (EKExceptionDateChange)initWithChangeProperties:(id)properties
{
  propertiesCopy = properties;
  v14.receiver = self;
  v14.super_class = EKExceptionDateChange;
  v5 = [(EKObjectChange *)&v14 initWithChangeProperties:propertiesCopy];
  if (v5)
  {
    v6 = [propertiesCopy objectForKeyedSubscript:@"owner_id"];
    intValue = [v6 intValue];

    if (intValue)
    {
      changedObjectID = [(EKObjectChange *)v5 changedObjectID];
      v9 = +[EKObjectID objectIDWithEntityType:rowID:databaseID:](EKObjectID, "objectIDWithEntityType:rowID:databaseID:", 2, intValue, [changedObjectID databaseID]);
      ownerID = v5->_ownerID;
      v5->_ownerID = v9;
    }

    v11 = [propertiesCopy objectForKeyedSubscript:@"date"];
    date = v5->_date;
    v5->_date = v11;
  }

  return v5;
}

- (id)owningEventInEventStore:(id)store
{
  storeCopy = store;
  ownerID = [(EKExceptionDateChange *)self ownerID];
  if (ownerID)
  {
    v6 = [storeCopy publicObjectWithObjectID:ownerID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
@interface EKExceptionDateChange
- (EKExceptionDateChange)initWithChangeProperties:(id)a3;
- (id)owningEventInEventStore:(id)a3;
@end

@implementation EKExceptionDateChange

- (EKExceptionDateChange)initWithChangeProperties:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = EKExceptionDateChange;
  v5 = [(EKObjectChange *)&v14 initWithChangeProperties:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"owner_id"];
    v7 = [v6 intValue];

    if (v7)
    {
      v8 = [(EKObjectChange *)v5 changedObjectID];
      v9 = +[EKObjectID objectIDWithEntityType:rowID:databaseID:](EKObjectID, "objectIDWithEntityType:rowID:databaseID:", 2, v7, [v8 databaseID]);
      ownerID = v5->_ownerID;
      v5->_ownerID = v9;
    }

    v11 = [v4 objectForKeyedSubscript:@"date"];
    date = v5->_date;
    v5->_date = v11;
  }

  return v5;
}

- (id)owningEventInEventStore:(id)a3
{
  v4 = a3;
  v5 = [(EKExceptionDateChange *)self ownerID];
  if (v5)
  {
    v6 = [v4 publicObjectWithObjectID:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
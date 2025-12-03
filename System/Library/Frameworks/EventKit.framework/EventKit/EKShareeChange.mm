@interface EKShareeChange
- (EKShareeChange)initWithChangeProperties:(id)properties;
@end

@implementation EKShareeChange

- (EKShareeChange)initWithChangeProperties:(id)properties
{
  propertiesCopy = properties;
  v11.receiver = self;
  v11.super_class = EKShareeChange;
  v5 = [(EKObjectChange *)&v11 initWithChangeProperties:propertiesCopy];
  if (v5)
  {
    v6 = [propertiesCopy objectForKeyedSubscript:@"owner_id"];
    changedObjectID = [(EKObjectChange *)v5 changedObjectID];
    v8 = +[EKObjectChangeOwnerIDHelper createOwnerIDWithRowID:objectType:databaseID:](EKObjectChangeOwnerIDHelper, "createOwnerIDWithRowID:objectType:databaseID:", v6, 1, [changedObjectID databaseID]);
    ownerID = v5->_ownerID;
    v5->_ownerID = v8;
  }

  return v5;
}

@end
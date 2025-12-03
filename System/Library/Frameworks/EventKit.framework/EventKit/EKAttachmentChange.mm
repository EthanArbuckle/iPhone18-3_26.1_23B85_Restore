@interface EKAttachmentChange
- (EKAttachmentChange)initWithChangeProperties:(id)properties;
@end

@implementation EKAttachmentChange

- (EKAttachmentChange)initWithChangeProperties:(id)properties
{
  propertiesCopy = properties;
  v15.receiver = self;
  v15.super_class = EKAttachmentChange;
  v5 = [(EKObjectChange *)&v15 initWithChangeProperties:propertiesCopy];
  if (v5)
  {
    v6 = [propertiesCopy objectForKeyedSubscript:@"owner_id"];
    changedObjectID = [(EKObjectChange *)v5 changedObjectID];
    v8 = +[EKObjectChangeOwnerIDHelper createOwnerIDWithRowID:objectType:databaseID:](EKObjectChangeOwnerIDHelper, "createOwnerIDWithRowID:objectType:databaseID:", v6, 2, [changedObjectID databaseID]);
    ownerID = v5->_ownerID;
    v5->_ownerID = v8;

    v10 = [propertiesCopy objectForKeyedSubscript:@"UUID"];
    uuid = v5->_uuid;
    v5->_uuid = v10;

    v12 = [propertiesCopy objectForKeyedSubscript:@"external_id"];
    externalID = v5->_externalID;
    v5->_externalID = v12;
  }

  return v5;
}

@end
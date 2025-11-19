@interface EKAttachmentChange
- (EKAttachmentChange)initWithChangeProperties:(id)a3;
@end

@implementation EKAttachmentChange

- (EKAttachmentChange)initWithChangeProperties:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = EKAttachmentChange;
  v5 = [(EKObjectChange *)&v15 initWithChangeProperties:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"owner_id"];
    v7 = [(EKObjectChange *)v5 changedObjectID];
    v8 = +[EKObjectChangeOwnerIDHelper createOwnerIDWithRowID:objectType:databaseID:](EKObjectChangeOwnerIDHelper, "createOwnerIDWithRowID:objectType:databaseID:", v6, 2, [v7 databaseID]);
    ownerID = v5->_ownerID;
    v5->_ownerID = v8;

    v10 = [v4 objectForKeyedSubscript:@"UUID"];
    uuid = v5->_uuid;
    v5->_uuid = v10;

    v12 = [v4 objectForKeyedSubscript:@"external_id"];
    externalID = v5->_externalID;
    v5->_externalID = v12;
  }

  return v5;
}

@end
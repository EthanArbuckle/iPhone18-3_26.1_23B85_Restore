@interface PFMirroredManyToManyRelationshipV2
+ (BOOL)_isValidMirroredRelationshipRecord:(id)record values:(id)values;
- (PFMirroredManyToManyRelationshipV2)initWithRecord:(id)record andValues:(id)values withManagedObjectModel:(id)model andType:(unint64_t)type;
- (PFMirroredManyToManyRelationshipV2)initWithRecordID:(id)d forRecordWithID:(id)iD relatedToRecordWithID:(id)withID byRelationship:(id)relationship withInverse:(id)inverse andType:(unint64_t)type;
- (void)populateRecordValues:(id)values;
@end

@implementation PFMirroredManyToManyRelationshipV2

- (PFMirroredManyToManyRelationshipV2)initWithRecordID:(id)d forRecordWithID:(id)iD relatedToRecordWithID:(id)withID byRelationship:(id)relationship withInverse:(id)inverse andType:(unint64_t)type
{
  v27[2] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = PFMirroredManyToManyRelationshipV2;
  v14 = [(PFMirroredManyToManyRelationshipV2 *)&v26 init];
  if (v14)
  {
    v27[0] = relationship;
    v27[1] = inverse;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    objc_opt_self();
    v16 = [v15 mutableCopy];
    [v16 sortUsingComparator:&__block_literal_global_21];
    v17 = [v16 copy];

    if ([v17 objectAtIndex:0] == relationship)
    {
      v18 = v14;
      dCopy2 = d;
      withIDCopy2 = iD;
      iDCopy2 = withID;
      inverseCopy2 = relationship;
      relationshipCopy2 = inverse;
    }

    else
    {
      v18 = v14;
      dCopy2 = d;
      withIDCopy2 = withID;
      iDCopy2 = iD;
      inverseCopy2 = inverse;
      relationshipCopy2 = relationship;
    }

    [(PFMirroredManyToManyRelationship *)v18 _setManyToManyRecordID:dCopy2 manyToManyRecordType:@"CDMR" ckRecordID:withIDCopy2 relatedCKRecordID:iDCopy2 relationshipDescription:inverseCopy2 inverseRelationshipDescription:relationshipCopy2 type:type];
  }

  v24 = *MEMORY[0x1E69E9840];
  return v14;
}

- (PFMirroredManyToManyRelationshipV2)initWithRecord:(id)record andValues:(id)values withManagedObjectModel:(id)model andType:(unint64_t)type
{
  v22.receiver = self;
  v22.super_class = PFMirroredManyToManyRelationshipV2;
  v10 = [(PFMirroredManyToManyRelationshipV2 *)&v22 init];
  if (v10)
  {
    v11 = [values objectForKey:@"CD_recordNames"];
    objc_opt_self();
    v12 = [v11 componentsSeparatedByString:@":"];
    if ([v12 count] == 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [values objectForKey:@"CD_relationships"];
    objc_opt_self();
    v15 = [v14 componentsSeparatedByString:@":"];
    if ([v15 count] != 2)
    {
      v15 = 0;
    }

    v16 = [values objectForKey:@"CD_entityNames"];
    objc_opt_self();
    v17 = [v16 componentsSeparatedByString:@":"];
    if ([v17 count] == 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = [objc_alloc(getCloudKitCKRecordIDClass[0]()) initWithRecordName:objc_msgSend(v13 zoneID:{"objectAtIndex:", 0), objc_msgSend(objc_msgSend(record, "recordID"), "zoneID")}];
    v20 = [objc_alloc(getCloudKitCKRecordIDClass[0]()) initWithRecordName:objc_msgSend(v13 zoneID:{"objectAtIndex:", 1), objc_msgSend(objc_msgSend(record, "recordID"), "zoneID")}];
    -[PFMirroredManyToManyRelationship _setManyToManyRecordID:manyToManyRecordType:ckRecordID:relatedCKRecordID:relationshipDescription:inverseRelationshipDescription:type:](v10, [record recordID], objc_msgSend(record, "recordType"), v19, v20, objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(model, "entitiesByName"), "objectForKey:", objc_msgSend(v18, "objectAtIndex:", 0)), "relationshipsByName"), "objectForKey:", objc_msgSend(v15, "objectAtIndex:", 0)), objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(model, "entitiesByName"), "objectForKey:", objc_msgSend(v18, "objectAtIndex:", 1)), "relationshipsByName"), "objectForKey:", objc_msgSend(v15, "objectAtIndex:", 1)), type);
  }

  return v10;
}

- (void)populateRecordValues:(id)values
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    recordName = [(CKRecordID *)self->super._ckRecordID recordName];
    relatedCKRecordID = self->super._relatedCKRecordID;
  }

  else
  {
    recordName = [0 recordName];
    relatedCKRecordID = 0;
  }

  v17[0] = recordName;
  v17[1] = [relatedCKRecordID recordName];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  objc_opt_self();
  [values setObject:objc_msgSend(v7 forKey:{"componentsJoinedByString:", @":", @"CD_recordNames"}];
  if (self)
  {
    name = [(NSPropertyDescription *)self->super._relationshipDescription name];
    inverseRelationshipDescription = self->super._inverseRelationshipDescription;
  }

  else
  {
    name = [0 name];
    inverseRelationshipDescription = 0;
  }

  v16[0] = name;
  v16[1] = [(NSPropertyDescription *)inverseRelationshipDescription name];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  objc_opt_self();
  [values setObject:objc_msgSend(v10 forKey:{"componentsJoinedByString:", @":", @"CD_relationships"}];
  if (self)
  {
    name2 = [(NSEntityDescription *)[(NSPropertyDescription *)self->super._relationshipDescription entity] name];
    v12 = self->super._inverseRelationshipDescription;
  }

  else
  {
    name2 = [objc_msgSend(0 "entity")];
    v12 = 0;
  }

  v15[0] = name2;
  v15[1] = [(NSEntityDescription *)[(NSPropertyDescription *)v12 entity] name];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  objc_opt_self();
  [values setObject:objc_msgSend(v13 forKey:{"componentsJoinedByString:", @":", @"CD_entityNames"}];
  v14 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_isValidMirroredRelationshipRecord:(id)record values:(id)values
{
  v5 = [objc_msgSend(values objectForKey:{@"CD_recordNames", "length"}];
  if (v5)
  {
    v5 = [objc_msgSend(values objectForKey:{@"CD_relationships", "length"}];
    if (v5)
    {
      LOBYTE(v5) = [objc_msgSend(values objectForKey:{@"CD_entityNames", "length"}] != 0;
    }
  }

  return v5;
}

@end
@interface PFMirroredManyToManyRelationshipV2
+ (BOOL)_isValidMirroredRelationshipRecord:(id)a3 values:(id)a4;
- (PFMirroredManyToManyRelationshipV2)initWithRecord:(id)a3 andValues:(id)a4 withManagedObjectModel:(id)a5 andType:(unint64_t)a6;
- (PFMirroredManyToManyRelationshipV2)initWithRecordID:(id)a3 forRecordWithID:(id)a4 relatedToRecordWithID:(id)a5 byRelationship:(id)a6 withInverse:(id)a7 andType:(unint64_t)a8;
- (void)populateRecordValues:(id)a3;
@end

@implementation PFMirroredManyToManyRelationshipV2

- (PFMirroredManyToManyRelationshipV2)initWithRecordID:(id)a3 forRecordWithID:(id)a4 relatedToRecordWithID:(id)a5 byRelationship:(id)a6 withInverse:(id)a7 andType:(unint64_t)a8
{
  v27[2] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = PFMirroredManyToManyRelationshipV2;
  v14 = [(PFMirroredManyToManyRelationshipV2 *)&v26 init];
  if (v14)
  {
    v27[0] = a6;
    v27[1] = a7;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    objc_opt_self();
    v16 = [v15 mutableCopy];
    [v16 sortUsingComparator:&__block_literal_global_21];
    v17 = [v16 copy];

    if ([v17 objectAtIndex:0] == a6)
    {
      v18 = v14;
      v19 = a3;
      v20 = a4;
      v21 = a5;
      v22 = a6;
      v23 = a7;
    }

    else
    {
      v18 = v14;
      v19 = a3;
      v20 = a5;
      v21 = a4;
      v22 = a7;
      v23 = a6;
    }

    [(PFMirroredManyToManyRelationship *)v18 _setManyToManyRecordID:v19 manyToManyRecordType:@"CDMR" ckRecordID:v20 relatedCKRecordID:v21 relationshipDescription:v22 inverseRelationshipDescription:v23 type:a8];
  }

  v24 = *MEMORY[0x1E69E9840];
  return v14;
}

- (PFMirroredManyToManyRelationshipV2)initWithRecord:(id)a3 andValues:(id)a4 withManagedObjectModel:(id)a5 andType:(unint64_t)a6
{
  v22.receiver = self;
  v22.super_class = PFMirroredManyToManyRelationshipV2;
  v10 = [(PFMirroredManyToManyRelationshipV2 *)&v22 init];
  if (v10)
  {
    v11 = [a4 objectForKey:@"CD_recordNames"];
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

    v14 = [a4 objectForKey:@"CD_relationships"];
    objc_opt_self();
    v15 = [v14 componentsSeparatedByString:@":"];
    if ([v15 count] != 2)
    {
      v15 = 0;
    }

    v16 = [a4 objectForKey:@"CD_entityNames"];
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

    v19 = [objc_alloc(getCloudKitCKRecordIDClass[0]()) initWithRecordName:objc_msgSend(v13 zoneID:{"objectAtIndex:", 0), objc_msgSend(objc_msgSend(a3, "recordID"), "zoneID")}];
    v20 = [objc_alloc(getCloudKitCKRecordIDClass[0]()) initWithRecordName:objc_msgSend(v13 zoneID:{"objectAtIndex:", 1), objc_msgSend(objc_msgSend(a3, "recordID"), "zoneID")}];
    -[PFMirroredManyToManyRelationship _setManyToManyRecordID:manyToManyRecordType:ckRecordID:relatedCKRecordID:relationshipDescription:inverseRelationshipDescription:type:](v10, [a3 recordID], objc_msgSend(a3, "recordType"), v19, v20, objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(a5, "entitiesByName"), "objectForKey:", objc_msgSend(v18, "objectAtIndex:", 0)), "relationshipsByName"), "objectForKey:", objc_msgSend(v15, "objectAtIndex:", 0)), objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(a5, "entitiesByName"), "objectForKey:", objc_msgSend(v18, "objectAtIndex:", 1)), "relationshipsByName"), "objectForKey:", objc_msgSend(v15, "objectAtIndex:", 1)), a6);
  }

  return v10;
}

- (void)populateRecordValues:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v5 = [(CKRecordID *)self->super._ckRecordID recordName];
    relatedCKRecordID = self->super._relatedCKRecordID;
  }

  else
  {
    v5 = [0 recordName];
    relatedCKRecordID = 0;
  }

  v17[0] = v5;
  v17[1] = [relatedCKRecordID recordName];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  objc_opt_self();
  [a3 setObject:objc_msgSend(v7 forKey:{"componentsJoinedByString:", @":", @"CD_recordNames"}];
  if (self)
  {
    v8 = [(NSPropertyDescription *)self->super._relationshipDescription name];
    inverseRelationshipDescription = self->super._inverseRelationshipDescription;
  }

  else
  {
    v8 = [0 name];
    inverseRelationshipDescription = 0;
  }

  v16[0] = v8;
  v16[1] = [(NSPropertyDescription *)inverseRelationshipDescription name];
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  objc_opt_self();
  [a3 setObject:objc_msgSend(v10 forKey:{"componentsJoinedByString:", @":", @"CD_relationships"}];
  if (self)
  {
    v11 = [(NSEntityDescription *)[(NSPropertyDescription *)self->super._relationshipDescription entity] name];
    v12 = self->super._inverseRelationshipDescription;
  }

  else
  {
    v11 = [objc_msgSend(0 "entity")];
    v12 = 0;
  }

  v15[0] = v11;
  v15[1] = [(NSEntityDescription *)[(NSPropertyDescription *)v12 entity] name];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  objc_opt_self();
  [a3 setObject:objc_msgSend(v13 forKey:{"componentsJoinedByString:", @":", @"CD_entityNames"}];
  v14 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_isValidMirroredRelationshipRecord:(id)a3 values:(id)a4
{
  v5 = [objc_msgSend(a4 objectForKey:{@"CD_recordNames", "length"}];
  if (v5)
  {
    v5 = [objc_msgSend(a4 objectForKey:{@"CD_relationships", "length"}];
    if (v5)
    {
      LOBYTE(v5) = [objc_msgSend(a4 objectForKey:{@"CD_entityNames", "length"}] != 0;
    }
  }

  return v5;
}

@end
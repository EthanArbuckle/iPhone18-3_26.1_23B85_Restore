@interface PFMirroredManyToManyRelationship
+ (BOOL)_isValidMirroredRelationshipRecord:(id)record values:(id)values;
+ (uint64_t)ckRecordNameForOrderedRecordNames:(uint64_t)names;
+ (uint64_t)ckRecordTypeForOrderedRelationships:(uint64_t)relationships;
- (BOOL)updateRelationshipValueUsingImportContext:(id)context andManagedObjectContext:(id)objectContext error:(id *)error;
- (PFMirroredManyToManyRelationship)initWithRecordID:(id)d recordType:(id)type managedObjectModel:(id)model andType:(unint64_t)andType;
- (id)_setManyToManyRecordID:(void *)d manyToManyRecordType:(void *)type ckRecordID:(void *)iD relatedCKRecordID:(void *)recordID relationshipDescription:(void *)description inverseRelationshipDescription:(uint64_t)relationshipDescription type:;
- (id)description;
- (void)dealloc;
- (void)recordTypeToRecordID;
@end

@implementation PFMirroredManyToManyRelationship

- (PFMirroredManyToManyRelationship)initWithRecordID:(id)d recordType:(id)type managedObjectModel:(id)model andType:(unint64_t)andType
{
  v27[2] = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = PFMirroredManyToManyRelationship;
  v10 = [(PFMirroredManyToManyRelationship *)&v26 init];
  if (v10)
  {
    objc_opt_self();
    v11 = [type length];
    if (v11 > [@"CD_M2M_" length] && (v12 = objc_msgSend(objc_msgSend(type, "substringFromIndex:", objc_msgSend(@"CD_M2M_", "length")), "componentsSeparatedByString:", @"_"), objc_msgSend(v12, "count") == 2) && (v13 = objc_msgSend(objc_msgSend(model, "entitiesByName"), "objectForKey:", objc_msgSend(v12, "objectAtIndex:", 0))) != 0 && (v14 = objc_msgSend(objc_msgSend(v13, "relationshipsByName"), "objectForKey:", objc_msgSend(v12, "objectAtIndex:", 1))) != 0 && (v15 = v14, objc_msgSend(v14, "inverseRelationship")))
    {
      v27[0] = v15;
      v27[1] = [v15 inverseRelationship];
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    }

    else
    {
      v16 = 0;
    }

    v17 = [v16 objectAtIndex:0];
    v18 = [v16 objectAtIndex:1];
    if (v17 && (v19 = v18) != 0)
    {
      recordName = [d recordName];
      objc_opt_self();
      v21 = [recordName componentsSeparatedByString:@":"];
      if ([v21 count] != 2)
      {
        v21 = 0;
      }

      v22 = [objc_alloc(getCloudKitCKRecordIDClass[0]()) initWithRecordName:objc_msgSend(v21 zoneID:{"objectAtIndex:", 0), objc_msgSend(d, "zoneID")}];
      v23 = [objc_alloc(getCloudKitCKRecordIDClass[0]()) initWithRecordName:objc_msgSend(v21 zoneID:{"objectAtIndex:", 1), objc_msgSend(d, "zoneID")}];
      [(PFMirroredManyToManyRelationship *)v10 _setManyToManyRecordID:d manyToManyRecordType:type ckRecordID:v22 relatedCKRecordID:v23 relationshipDescription:v17 inverseRelationshipDescription:v19 type:andType];
    }

    else
    {

      v10 = 0;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)_setManyToManyRecordID:(void *)d manyToManyRecordType:(void *)type ckRecordID:(void *)iD relatedCKRecordID:(void *)recordID relationshipDescription:(void *)description inverseRelationshipDescription:(uint64_t)relationshipDescription type:
{
  v26 = *MEMORY[0x1E69E9840];
  if (![objc_msgSend(a2 "zoneID")] || (objc_msgSend(objc_msgSend(a2, "zoneID"), "isEqual:", objc_msgSend(iD, "zoneID")) & 1) == 0)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412802;
      v21 = a2;
      v22 = 2112;
      typeCopy2 = type;
      v24 = 2112;
      iDCopy2 = iD;
    }

    v17 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v20 = 138412802;
      v21 = a2;
      v22 = 2112;
      typeCopy2 = type;
      v24 = 2112;
      iDCopy2 = iD;
    }
  }

  self[4] = a2;
  self[5] = d;
  self[2] = recordID;
  self[3] = description;
  self[6] = type;
  result = iD;
  self[7] = result;
  self[1] = relationshipDescription;
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  self->_relationshipDescription = 0;

  self->_inverseRelationshipDescription = 0;
  self->_manyToManyRecordID = 0;

  self->_manyToManyRecordType = 0;
  self->_ckRecordID = 0;

  self->_relatedCKRecordID = 0;
  v3.receiver = self;
  v3.super_class = PFMirroredManyToManyRelationship;
  [(PFMirroredManyToManyRelationship *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = PFMirroredManyToManyRelationship;
  v4 = [-[PFMirroredManyToManyRelationship description](&v6 description)];
  [v4 appendFormat:@" %@-%@:%@-%@-%@:%@", self->_manyToManyRecordID, -[NSEntityDescription name](-[NSPropertyDescription entity](self->_relationshipDescription, "entity"), "name"), self->_ckRecordID, -[NSPropertyDescription name](self->_relationshipDescription, "name"), -[NSEntityDescription name](-[NSPropertyDescription entity](-[NSRelationshipDescription inverseRelationship](self->_relationshipDescription, "inverseRelationship"), "entity"), "name"), self->_relatedCKRecordID];
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (BOOL)updateRelationshipValueUsingImportContext:(id)context andManagedObjectContext:(id)objectContext error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  ckRecordID = self->_ckRecordID;
  name = [(NSEntityDescription *)[(NSPropertyDescription *)self->_relationshipDescription entity] name];
  if (context)
  {
    v11 = [objc_msgSend(*(context + 8) objectForKey:{name), "objectForKey:", ckRecordID}];
  }

  else
  {
    v11 = 0;
  }

  relatedCKRecordID = self->_relatedCKRecordID;
  name2 = [(NSEntityDescription *)[(NSPropertyDescription *)self->_inverseRelationshipDescription entity] name];
  if (context)
  {
    context = [objc_msgSend(*(context + 8) objectForKey:{name2), "objectForKey:", relatedCKRecordID}];
  }

  if ((-[PFMirroredManyToManyRelationship isTemporaryID](v11, "isTemporaryID") & 1) != 0 || [context isTemporaryID])
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v30 = 138412546;
      selfCopy2 = v11;
      v32 = 2112;
      contextCopy2 = context;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Got temporary objectIDs back during import where we should have permanent ones: %@ / %@\n", &v30, 0x16u);
    }

    v15 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v30 = 138412546;
      selfCopy2 = v11;
      v32 = 2112;
      contextCopy2 = context;
      _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: Got temporary objectIDs back during import where we should have permanent ones: %@ / %@", &v30, 0x16u);
    }
  }

  v16 = 134412;
  if (v11)
  {
    if (context)
    {
      v17 = [objectContext objectWithID:{v11, 134412}];
      v18 = [objectContext objectWithID:context];
      v19 = [objc_msgSend(v17 valueForKey:{-[NSPropertyDescription name](self->_relationshipDescription, "name")), "mutableCopy"}];
      v20 = v19;
      type = self->_type;
      if (type == 1)
      {
        [v19 removeObject:v18];
      }

      else
      {
        if (type)
        {
          v26 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v30 = 138412290;
            selfCopy2 = self;
            _os_log_error_impl(&dword_18565F000, v26, OS_LOG_TYPE_ERROR, "CoreData: fault: New many to many relationship type?: %@\n", &v30, 0xCu);
          }

          v27 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
          {
            v30 = 138412290;
            selfCopy2 = self;
            _os_log_fault_impl(&dword_18565F000, v27, OS_LOG_TYPE_FAULT, "CoreData: New many to many relationship type?: %@", &v30, 0xCu);
          }

          goto LABEL_33;
        }

        if (!v19)
        {
          v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        }

        [v20 addObject:v18];
      }

      [v17 setValue:v20 forKey:{-[NSPropertyDescription name](self->_relationshipDescription, "name")}];
LABEL_33:

      LOBYTE(v22) = 1;
      goto LABEL_34;
    }
  }

  else
  {
    v16 = 134413;
  }

  v22 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:v16 userInfo:0];
  if (v22)
  {
    if (error)
    {
      v23 = v22;
      LOBYTE(v22) = 0;
      *error = v23;
      goto LABEL_34;
    }

LABEL_26:
    LOBYTE(v22) = 0;
    goto LABEL_34;
  }

  v24 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v30 = 136315394;
    selfCopy2 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFMirroredRelationship.m";
    v32 = 1024;
    LODWORD(contextCopy2) = 213;
    _os_log_error_impl(&dword_18565F000, v24, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", &v30, 0x12u);
  }

  v25 = _PFLogGetLogStream(17);
  LODWORD(v22) = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);
  if (v22)
  {
    v30 = 136315394;
    selfCopy2 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFMirroredRelationship.m";
    v32 = 1024;
    LODWORD(contextCopy2) = 213;
    _os_log_fault_impl(&dword_18565F000, v25, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", &v30, 0x12u);
    goto LABEL_26;
  }

LABEL_34:
  v28 = *MEMORY[0x1E69E9840];
  return v22;
}

- (void)recordTypeToRecordID
{
  if (result)
  {
    v1 = result;
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{result[6], 0}];
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v3 setObject:v2 forKey:{objc_msgSend(objc_msgSend(v1[2], "entity"), "name")}];

    v4 = [v3 objectForKey:{objc_msgSend(objc_msgSend(v1[3], "entity"), "name")}];
    if (!v4)
    {
      v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v1[7], 0}];
      [v3 setObject:v4 forKey:{objc_msgSend(objc_msgSend(v1[3], "entity"), "name")}];
    }

    return v3;
  }

  return result;
}

uint64_t __55__PFMirroredManyToManyRelationship_orderRelationships___block_invoke(uint64_t a1, void *a2, void *a3)
{
  result = [objc_msgSend(objc_msgSend(a2 "entity")];
  if (!result)
  {
    v6 = [a2 name];
    v7 = [a3 name];

    return [v6 compare:v7 options:1];
  }

  return result;
}

+ (uint64_t)ckRecordTypeForOrderedRelationships:(uint64_t)relationships
{
  objc_opt_self();
  v3 = [a2 objectAtIndexedSubscript:0];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@_%@", @"CD_M2M_", objc_msgSend(objc_msgSend(v3, "entity"), "name"), objc_msgSend(v3, "name")];
}

+ (uint64_t)ckRecordNameForOrderedRecordNames:(uint64_t)names
{
  objc_opt_self();

  return [a2 componentsJoinedByString:@":"];
}

+ (BOOL)_isValidMirroredRelationshipRecord:(id)record values:(id)values
{
  v5 = [objc_msgSend(record "recordType")];
  if (v5)
  {
    LOBYTE(v5) = [objc_msgSend(objc_msgSend(record "recordID")] != 0;
  }

  return v5;
}

@end
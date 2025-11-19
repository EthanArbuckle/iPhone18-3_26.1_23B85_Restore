@interface PFMirroredOneToManyRelationship
- (BOOL)updateRelationshipValueUsingImportContext:(id)a3 andManagedObjectContext:(id)a4 error:(id *)a5;
- (PFMirroredOneToManyRelationship)initWithManagedObject:(id)a3 withRecordName:(id)a4 relatedToRecordWithRecordName:(id)a5 byRelationship:(id)a6;
- (void)dealloc;
- (void)recordTypesToRecordIDs;
@end

@implementation PFMirroredOneToManyRelationship

- (PFMirroredOneToManyRelationship)initWithManagedObject:(id)a3 withRecordName:(id)a4 relatedToRecordWithRecordName:(id)a5 byRelationship:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = PFMirroredOneToManyRelationship;
  v10 = [(PFMirroredOneToManyRelationship *)&v17 init];
  if (v10)
  {
    if (([objc_msgSend(a4 "zoneID")] & 1) == 0)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v15 = [a6 name];
        *buf = 138413058;
        v19 = v15;
        v20 = 2112;
        v21 = a4;
        v22 = 2112;
        v23 = a5;
        v24 = 2112;
        v25 = a3;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Attempting to link objects across zones via one-to-many relationship '%@': %@ / %@\n%@\n", buf, 0x2Au);
      }

      v12 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v16 = [a6 name];
        *buf = 138413058;
        v19 = v16;
        v20 = 2112;
        v21 = a4;
        v22 = 2112;
        v23 = a5;
        v24 = 2112;
        v25 = a3;
        _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Attempting to link objects across zones via one-to-many relationship '%@': %@ / %@\n%@", buf, 0x2Au);
      }
    }

    v10->_recordID = a4;
    v10->_relationshipDescription = a6;
    v10->_inverseRelationshipDescription = [a6 inverseRelationship];
    v10->_relatedRecordID = a5;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)dealloc
{
  self->_recordID = 0;

  self->_relationshipDescription = 0;
  self->_inverseRelationshipDescription = 0;

  self->_relatedRecordID = 0;
  v3.receiver = self;
  v3.super_class = PFMirroredOneToManyRelationship;
  [(PFMirroredOneToManyRelationship *)&v3 dealloc];
}

- (BOOL)updateRelationshipValueUsingImportContext:(id)a3 andManagedObjectContext:(id)a4 error:(id *)a5
{
  v58 = *MEMORY[0x1E69E9840];
  recordID = self->_recordID;
  v10 = [(NSEntityDescription *)[(NSPropertyDescription *)self->_relationshipDescription entity] name];
  if (a3)
  {
    v11 = [objc_msgSend(*(a3 + 8) objectForKey:{v10), "objectForKey:", recordID}];
    if (v11)
    {
      v12 = v11;
      v13 = [a4 objectWithID:v11];
      relatedRecordID = self->_relatedRecordID;
      if (!relatedRecordID)
      {
        [v13 setValue:0 forKey:{-[NSPropertyDescription name](self->_relationshipDescription, "name")}];
        goto LABEL_38;
      }

      v15 = [objc_msgSend(*(a3 + 8) objectForKey:{-[NSEntityDescription name](-[NSPropertyDescription entity](self->_inverseRelationshipDescription, "entity"), "name")), "objectForKey:", relatedRecordID}];
      if (v15)
      {
        v16 = [a4 objectWithID:v15];
        v17 = objc_autoreleasePoolPush();
        Stream = __PFCloudKitLoggingGetStream();
        v19 = Stream;
        if (__ckLoggingOverride == 17)
        {
          v20 = 17;
        }

        else
        {
          v20 = 2;
        }

        if (__ckLoggingOverride == 16)
        {
          v20 = 16;
        }

        if (__ckLoggingOverride == 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (!__ckLoggingOverride)
        {
          v21 = 0;
        }

        if (__ckLoggingOverride <= 0xFu)
        {
          v22 = v21;
        }

        else
        {
          v22 = v20;
        }

        if (os_log_type_enabled(Stream, v22))
        {
          v45 = v17;
          v23 = self->_recordID;
          v24 = self->_relatedRecordID;
          v25 = [(NSPropertyDescription *)self->_relationshipDescription name];
          *buf = 136316674;
          v47 = "[PFMirroredOneToManyRelationship updateRelationshipValueUsingImportContext:andManagedObjectContext:error:]";
          v48 = 1024;
          *v49 = 444;
          *&v49[4] = 2112;
          *&v49[6] = v23;
          v17 = v45;
          v50 = 2112;
          v51 = v24;
          v52 = 2112;
          v53 = v25;
          v54 = 2112;
          v55 = v12;
          v56 = 2112;
          v57 = [v16 objectID];
          _os_log_impl(&dword_18565F000, v19, v22, "CoreData+CloudKit: %s(%d): Linking object with record name %@ to %@ via %@ on %@->%@", buf, 0x44u);
        }

        objc_autoreleasePoolPop(v17);
        [v13 setValue:v16 forKey:{-[NSPropertyDescription name](self->_relationshipDescription, "name")}];
        LOBYTE(v26) = 1;
        goto LABEL_43;
      }

      v31 = objc_autoreleasePoolPush();
      v32 = __PFCloudKitLoggingGetStream();
      v33 = v32;
      v34 = OS_LOG_TYPE_DEBUG;
      if (__ckLoggingOverride > 0xFu)
      {
        if (__ckLoggingOverride != 16 && __ckLoggingOverride != 17)
        {
          goto LABEL_32;
        }
      }

      else if (__ckLoggingOverride >= 2u)
      {
        goto LABEL_32;
      }

      v34 = __ckLoggingOverride;
LABEL_32:
      if (os_log_type_enabled(v32, v34))
      {
        v35 = self->_recordID;
        v36 = self->_relatedRecordID;
        v37 = [(NSPropertyDescription *)self->_relationshipDescription name];
        *buf = 136316162;
        v47 = "[PFMirroredOneToManyRelationship updateRelationshipValueUsingImportContext:andManagedObjectContext:error:]";
        v48 = 1024;
        *v49 = 449;
        *&v49[4] = 2112;
        *&v49[6] = v35;
        v50 = 2112;
        v51 = v36;
        v52 = 2112;
        v53 = v37;
        _os_log_impl(&dword_18565F000, v33, v34, "CoreData+CloudKit: %s(%d): Couldn't find related object to link for object with record name %@ to %@ via %@", buf, 0x30u);
      }

      objc_autoreleasePoolPop(v31);
      goto LABEL_35;
    }
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    v42 = self->_recordID;
    relationshipDescription = self->_relationshipDescription;
    *buf = 138412546;
    v47 = v42;
    v48 = 2112;
    *v49 = relationshipDescription;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Import context cache is stale. To-one mirrored relationship source object has gone missing: %@ - %@\n", buf, 0x16u);
  }

  v28 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
  {
    v29 = self->_recordID;
    v30 = self->_relationshipDescription;
    *buf = 138412546;
    v47 = v29;
    v48 = 2112;
    *v49 = v30;
    _os_log_fault_impl(&dword_18565F000, v28, OS_LOG_TYPE_FAULT, "CoreData: Import context cache is stale. To-one mirrored relationship source object has gone missing: %@ - %@", buf, 0x16u);
  }

LABEL_35:
  v26 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134412 userInfo:0];
  if (v26)
  {
    if (a5)
    {
      v38 = v26;
      LOBYTE(v26) = 0;
      *a5 = v38;
      goto LABEL_43;
    }

LABEL_42:
    LOBYTE(v26) = 0;
    goto LABEL_43;
  }

LABEL_38:
  v39 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v47 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFMirroredRelationship.m";
    v48 = 1024;
    *v49 = 466;
    _os_log_error_impl(&dword_18565F000, v39, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v40 = _PFLogGetLogStream(17);
  LODWORD(v26) = os_log_type_enabled(v40, OS_LOG_TYPE_FAULT);
  if (v26)
  {
    *buf = 136315394;
    v47 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFMirroredRelationship.m";
    v48 = 1024;
    *v49 = 466;
    _os_log_fault_impl(&dword_18565F000, v40, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_42;
  }

LABEL_43:
  v41 = *MEMORY[0x1E69E9840];
  return v26;
}

- (void)recordTypesToRecordIDs
{
  if (result)
  {
    v1 = result;
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{result[4], 0}];
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v3 setObject:v2 forKey:{objc_msgSend(objc_msgSend(v1[1], "entity"), "name")}];

    v4 = [v3 objectForKey:{objc_msgSend(objc_msgSend(v1[2], "entity"), "name")}];
    if (!v4)
    {
      v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v1[3], 0}];
      [v3 setObject:v4 forKey:{objc_msgSend(objc_msgSend(v1[2], "entity"), "name")}];
    }

    return v3;
  }

  return result;
}

@end
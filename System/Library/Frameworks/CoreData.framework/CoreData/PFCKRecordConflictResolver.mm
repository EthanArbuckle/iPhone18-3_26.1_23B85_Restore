@interface PFCKRecordConflictResolver
- (PFCKRecordConflictResolver)initWithAncestorRecord:(id)a3 serverRecord:(id)a4 clientRecord:(id)a5;
- (void)dealloc;
@end

@implementation PFCKRecordConflictResolver

- (PFCKRecordConflictResolver)initWithAncestorRecord:(id)a3 serverRecord:(id)a4 clientRecord:(id)a5
{
  v36[1] = *MEMORY[0x1E69E9840];
  if (a3 && (getCloudKitCKShareClass[0](), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || a4 && (getCloudKitCKShareClass[0](), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || a5 && (getCloudKitCKShareClass[0](), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Conflict resolver only knows how to work with CKShares today.\n", buf, 2u);
    }

    v10 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Conflict resolver only knows how to work with CKShares today.", buf, 2u);
    }
  }

  v25.receiver = self;
  v25.super_class = PFCKRecordConflictResolver;
  v11 = [(PFCKRecordConflictResolver *)&v25 init];
  if (v11)
  {
    v11->_ancestorRecord = a3;
    v11->_serverRecord = a4;
    v11->_clientRecord = a5;
    objc_opt_self();
    v12 = objc_alloc_init(NSManagedObjectModel);
    v13 = objc_alloc_init(NSEntityDescription);
    v14 = objc_opt_class();
    [(NSEntityDescription *)v13 setName:NSStringFromClass(v14)];
    v15 = objc_opt_class();
    [(NSEntityDescription *)v13 setManagedObjectClassName:NSStringFromClass(v15)];
    [_PFModelUtilities addAttributes:v13 toPropertiesOfEntity:?];
    [(NSEntityDescription *)v13 setUniquenessConstraints:&unk_1EF43D468];
    v16 = objc_alloc_init(NSEntityDescription);
    v17 = objc_opt_class();
    [(NSEntityDescription *)v16 setName:NSStringFromClass(v17)];
    v18 = objc_opt_class();
    [(NSEntityDescription *)v16 setManagedObjectClassName:NSStringFromClass(v18)];
    [_PFModelUtilities addAttributes:v16 toPropertiesOfEntity:?];
    [(NSEntityDescription *)v16 setUniquenessConstraints:&unk_1EF43D4B0];
    v35 = @"participants";
    v34[0] = &unk_1EF435BD8;
    v34[1] = v16;
    v34[2] = [MEMORY[0x1E695DFB0] null];
    v34[3] = &unk_1EF435BF0;
    v36[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];
    +[_PFModelUtilities addRelationships:toPropertiesOfEntity:](_PFModelUtilities, [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1], v13);
    v32 = @"share";
    *buf = &unk_1EF435C08;
    v28 = v13;
    v29 = @"participants";
    v30 = &unk_1EF435C20;
    v31 = &unk_1EF435BD8;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:5];
    +[_PFModelUtilities addRelationships:toPropertiesOfEntity:](_PFModelUtilities, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1], v16);
    v26[0] = v13;
    v26[1] = v16;
    -[NSManagedObjectModel setEntities:](v12, "setEntities:", [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2]);

    v19 = [NSPersistentContainer alloc];
    v20 = MEMORY[0x1E696AEC0];
    v21 = objc_opt_class();
    v22 = -[NSPersistentContainer initWithName:managedObjectModel:](v19, "initWithName:managedObjectModel:", [v20 stringWithFormat:@"%@-%p", NSStringFromClass(v21), v11], v12);
    v11->_container = v22;
    [-[NSArray objectAtIndexedSubscript:](-[NSPersistentContainer persistentStoreDescriptions](v11->_container "persistentStoreDescriptions")];

    v11->_allParticipantsByID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11->_participantObjectIDsByParticipantID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11->_recordIDToObjectID = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)dealloc
{
  self->_ancestorRecord = 0;

  self->_serverRecord = 0;
  self->_clientRecord = 0;

  self->_resolvedRecord = 0;
  self->_container = 0;

  v3.receiver = self;
  v3.super_class = PFCKRecordConflictResolver;
  [(PFCKRecordConflictResolver *)&v3 dealloc];
}

@end
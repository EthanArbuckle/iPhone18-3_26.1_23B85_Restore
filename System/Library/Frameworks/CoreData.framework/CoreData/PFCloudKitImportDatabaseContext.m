@interface PFCloudKitImportDatabaseContext
- (BOOL)hasWorkToDo;
- (PFCloudKitImportDatabaseContext)init;
- (id)description;
- (void)dealloc;
@end

@implementation PFCloudKitImportDatabaseContext

- (PFCloudKitImportDatabaseContext)init
{
  v4.receiver = self;
  v4.super_class = PFCloudKitImportDatabaseContext;
  v2 = [(PFCloudKitImportDatabaseContext *)&v4 init];
  if (v2)
  {
    v2->_changedRecordZoneIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->_deletedRecordZoneIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->_purgedRecordZoneIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->_userResetEncryptedDataZoneIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->_updatedChangeToken = 0;
  }

  return v2;
}

- (void)dealloc
{
  self->_changedRecordZoneIDs = 0;

  self->_deletedRecordZoneIDs = 0;
  self->_purgedRecordZoneIDs = 0;

  self->_userResetEncryptedDataZoneIDs = 0;
  self->_updatedChangeToken = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitImportDatabaseContext;
  [(PFCloudKitImportDatabaseContext *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v7.receiver = self;
  v7.super_class = PFCloudKitImportDatabaseContext;
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:{-[PFCloudKitImportDatabaseContext description](&v7, sel_description)}];
  updatedChangeToken = self->_updatedChangeToken;
  if (!updatedChangeToken)
  {
    updatedChangeToken = [MEMORY[0x1E695DFB0] null];
  }

  [v4 appendFormat:@" {\nToken: %@", updatedChangeToken];
  if ([(NSMutableSet *)self->_changedRecordZoneIDs count])
  {
    [v4 appendFormat:@"\nChanged:\n%@", self->_changedRecordZoneIDs];
  }

  if ([(NSMutableSet *)self->_deletedRecordZoneIDs count])
  {
    [v4 appendFormat:@"\nDeleted:\n%@", self->_deletedRecordZoneIDs];
  }

  if ([(NSMutableSet *)self->_purgedRecordZoneIDs count])
  {
    [v4 appendFormat:@"\nPurged:\n%@", self->_purgedRecordZoneIDs];
  }

  if ([(NSMutableSet *)self->_userResetEncryptedDataZoneIDs count])
  {
    [v4 appendFormat:@"\nReset:\n%@", self->_userResetEncryptedDataZoneIDs];
  }

  [v4 appendString:@"\n}"];
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (BOOL)hasWorkToDo
{
  if (result)
  {
    v1 = result;
    return [*(result + 8) count] || objc_msgSend(*(v1 + 24), "count") || objc_msgSend(*(v1 + 16), "count") != 0;
  }

  return result;
}

@end
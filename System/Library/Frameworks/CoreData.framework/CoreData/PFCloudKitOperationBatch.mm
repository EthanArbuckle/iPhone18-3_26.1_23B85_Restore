@interface PFCloudKitOperationBatch
- (PFCloudKitOperationBatch)init;
- (uint64_t)addRecord:(uint64_t)result;
- (void)addDeletedRecordID:(uint64_t)a3 forRecordOfType:;
- (void)dealloc;
@end

@implementation PFCloudKitOperationBatch

- (PFCloudKitOperationBatch)init
{
  v5.receiver = self;
  v5.super_class = PFCloudKitOperationBatch;
  v2 = [(PFCloudKitOperationBatch *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_sizeInBytes = 0;
    v2->_recordTypeToDeletedRecordID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3->_records = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3->_deletedRecordIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v3->_recordIDs = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  return v3;
}

- (void)dealloc
{
  self->_recordTypeToDeletedRecordID = 0;

  self->_records = 0;
  self->_deletedRecordIDs = 0;

  self->_recordIDs = 0;
  v3.receiver = self;
  v3.super_class = PFCloudKitOperationBatch;
  [(PFCloudKitOperationBatch *)&v3 dealloc];
}

- (uint64_t)addRecord:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    *(result + 40) += [a2 size];
    [*(v3 + 24) addObject:a2];
    v4 = *(v3 + 32);
    v5 = [a2 recordID];

    return [v4 addObject:v5];
  }

  return result;
}

- (void)addDeletedRecordID:(uint64_t)a3 forRecordOfType:
{
  if (a1)
  {
    [*(a1 + 8) addObject:a2];
    *(a1 + 40) += [PFCloudKitSerializer estimateByteSizeOfRecordID:a2];
    v6 = [*(a1 + 16) objectForKey:a3];
    if (!v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [*(a1 + 16) setObject:v7 forKey:a3];
      v6 = v7;
    }

    v8 = v6;
    [v6 addObject:a2];
  }
}

@end
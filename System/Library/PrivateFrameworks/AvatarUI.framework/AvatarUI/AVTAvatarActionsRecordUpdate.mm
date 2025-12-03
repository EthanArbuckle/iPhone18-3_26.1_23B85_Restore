@interface AVTAvatarActionsRecordUpdate
+ (id)recordUpdateForDeletingRecord:(id)record withDataSource:(id)source;
- (AVTAvatarActionsRecordUpdate)initWithAvatarRecord:(id)record fromLeft:(BOOL)left;
@end

@implementation AVTAvatarActionsRecordUpdate

- (AVTAvatarActionsRecordUpdate)initWithAvatarRecord:(id)record fromLeft:(BOOL)left
{
  recordCopy = record;
  v11.receiver = self;
  v11.super_class = AVTAvatarActionsRecordUpdate;
  v8 = [(AVTAvatarActionsRecordUpdate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_avatarRecord, record);
    v9->_fromLeft = left;
  }

  return v9;
}

+ (id)recordUpdateForDeletingRecord:(id)record withDataSource:(id)source
{
  recordCopy = record;
  sourceCopy = source;
  if ([sourceCopy numberOfRecords] < 2)
  {
    v15 = 0;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __77__AVTAvatarActionsRecordUpdate_recordUpdateForDeletingRecord_withDataSource___block_invoke;
    v17[3] = &unk_1E7F3B3B0;
    v18 = recordCopy;
    v8 = [sourceCopy indexOfRecordPassingTest:v17];
    indexSetForEditableRecords = [sourceCopy indexSetForEditableRecords];
    v10 = [indexSetForEditableRecords mutableCopy];

    [v10 removeIndex:v8];
    if ([v10 count])
    {
      v11 = [v10 closestIndexToIndex:v8 greaterIndexesFirst:1];
      v12 = v11 < v8;
      v13 = [self alloc];
      v14 = [sourceCopy recordAtIndex:v11];
      v15 = [v13 initWithAvatarRecord:v14 fromLeft:v12];
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

uint64_t __77__AVTAvatarActionsRecordUpdate_recordUpdateForDeletingRecord_withDataSource___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = [v3 identifier];

  v6 = [v4 isEqual:v5];
  return v6;
}

@end
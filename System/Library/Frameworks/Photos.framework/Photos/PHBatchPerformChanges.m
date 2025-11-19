@interface PHBatchPerformChanges
- (BOOL)_addBatchRangeAtIndex:(unint64_t)a3 toOutError:(id *)a4;
- (BOOL)_performChangesAndWaitStartingAtIndex:(unint64_t)a3 error:(id *)a4;
- (BOOL)performChangesAndWait:(id *)a3;
- (PHBatchPerformChanges)initWithPhotoLibrary:(id)a3 itemCount:(unint64_t)a4 batchSize:(unint64_t)a5 batchBlock:(id)a6;
- (PHBatchPerformChanges)performChangesWithCompletionHandler:(id)a3;
- (_NSRange)_batchRangeAtIndex:(unint64_t)a3;
- (id)_errorByAddingBatchRangeAtIndex:(unint64_t)a3 tofError:(id)a4;
- (unint64_t)_performBatchAtIndex:(unint64_t)a3;
- (unint64_t)_performBatchAtIndexAndWait:(unint64_t)a3 error:(id *)a4;
- (void)_performChangesStartingAtIndex:(unint64_t)a3 withCompletionHandler:(id)a4;
- (void)_performNextBatchAtIndex:(unint64_t)a3 withCompletionHandler:(id)a4;
@end

@implementation PHBatchPerformChanges

- (id)_errorByAddingBatchRangeAtIndex:(unint64_t)a3 tofError:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [(PHBatchPerformChanges *)self _batchRangeAtIndex:a3];
    v9 = v8;
    v10 = [v6 userInfo];
    v11 = [v10 mutableCopy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [MEMORY[0x1E695DF90] dictionary];
    }

    v15 = v13;

    v16 = [MEMORY[0x1E696B098] valueWithRange:{v7, v9}];
    [v15 setObject:v16 forKeyedSubscript:@"PHBatchPerformChangesRangeErrorKey"];

    v17 = MEMORY[0x1E696ABC0];
    v18 = [v6 domain];
    v14 = [v17 errorWithDomain:v18 code:objc_msgSend(v6 userInfo:{"code"), v15}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_addBatchRangeAtIndex:(unint64_t)a3 toOutError:(id *)a4
{
  if (a4)
  {
    v5 = [(PHBatchPerformChanges *)self _errorByAddingBatchRangeAtIndex:a3 tofError:*a4];
    *a4 = v5;
  }

  return 0;
}

- (unint64_t)_performBatchAtIndex:(unint64_t)a3
{
  [(PHBatchPerformChanges *)self _batchRangeAtIndex:a3];
  v5 = v4;
  v6 = objc_autoreleasePoolPush();
  (*(self->_batchBlock + 2))();
  objc_autoreleasePoolPop(v6);
  return v5;
}

- (_NSRange)_batchRangeAtIndex:(unint64_t)a3
{
  itemCount = self->_itemCount;
  if (itemCount <= a3)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PHBatchPerformChanges.m" lineNumber:136 description:{@"Batch index %tu must be less than item count %tu", a3, self->_itemCount}];

    itemCount = self->_itemCount;
  }

  v6 = itemCount - a3;
  if (self->_batchSize >= v6)
  {
    batchSize = v6;
  }

  else
  {
    batchSize = self->_batchSize;
  }

  v8 = a3;
  result.length = batchSize;
  result.location = v8;
  return result;
}

- (void)_performNextBatchAtIndex:(unint64_t)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  library = self->_library;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__PHBatchPerformChanges__performNextBatchAtIndex_withCompletionHandler___block_invoke;
  v12[3] = &unk_1E75A9F38;
  v12[4] = self;
  v12[5] = v13;
  v12[6] = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__PHBatchPerformChanges__performNextBatchAtIndex_withCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E75A9F88;
  v8 = v6;
  v10 = v8;
  v11 = v13;
  [(PHPhotoLibrary *)library performChanges:v12 completionHandler:v9];

  _Block_object_dispose(v13, 8);
}

uint64_t __72__PHBatchPerformChanges__performNextBatchAtIndex_withCompletionHandler___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _performBatchAtIndex:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __72__PHBatchPerformChanges__performNextBatchAtIndex_withCompletionHandler___block_invoke_2(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return (*(v3 + 16))(v3, *(*(*(a1 + 40) + 8) + 24), 0);
  }

  else
  {
    return (*(v3 + 16))(v3, 0);
  }
}

- (void)_performChangesStartingAtIndex:(unint64_t)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  if ([(PHBatchPerformChanges *)self _hasMoreBatchesAtIndex:a3])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __78__PHBatchPerformChanges__performChangesStartingAtIndex_withCompletionHandler___block_invoke;
    v7[3] = &unk_1E75A9F60;
    v7[4] = self;
    v8 = v6;
    v9 = a3;
    [(PHBatchPerformChanges *)self _performNextBatchAtIndex:a3 withCompletionHandler:v7];
  }

  else
  {
    (*(v6 + 2))(v6, 1, 0);
  }
}

void __78__PHBatchPerformChanges__performChangesStartingAtIndex_withCompletionHandler___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  if (a2)
  {
    v6 = a1[5];
    v7 = a1[6] + a2;

    [v5 _performChangesStartingAtIndex:v7 withCompletionHandler:v6];
  }

  else
  {
    v8 = a1[5];
    v9 = [v5 _errorByAddingBatchRangeAtIndex:a1[6] tofError:a3];
    (*(v8 + 16))(v8, 0, v9);
  }
}

- (PHBatchPerformChanges)performChangesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__PHBatchPerformChanges_performChangesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E75AA5B8;
  v8 = v4;
  v5 = v4;
  [(PHBatchPerformChanges *)self _performChangesStartingAtIndex:0 withCompletionHandler:v7];

  return result;
}

uint64_t __61__PHBatchPerformChanges_performChangesWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (unint64_t)_performBatchAtIndexAndWait:(unint64_t)a3 error:(id *)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  library = self->_library;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PHBatchPerformChanges__performBatchAtIndexAndWait_error___block_invoke;
  v7[3] = &unk_1E75A9F38;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = a3;
  if ([(PHPhotoLibrary *)library performChangesAndWait:v7 error:a4])
  {
    v5 = v9[3];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __59__PHBatchPerformChanges__performBatchAtIndexAndWait_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _performBatchAtIndex:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_performChangesAndWaitStartingAtIndex:(unint64_t)a3 error:(id *)a4
{
  if (![(PHBatchPerformChanges *)self _hasMoreBatchesAtIndex:?])
  {
    return 1;
  }

  v7 = [(PHBatchPerformChanges *)self _performBatchAtIndexAndWait:a3 error:a4];
  if (v7)
  {

    return [(PHBatchPerformChanges *)self _performChangesAndWaitStartingAtIndex:v7 + a3 error:a4];
  }

  else
  {
    [(PHBatchPerformChanges *)self _addBatchRangeAtIndex:a3 toOutError:a4];
    return 0;
  }
}

- (BOOL)performChangesAndWait:(id *)a3
{
  v7 = 0;
  v4 = [(PHBatchPerformChanges *)self _performChangesAndWaitStartingAtIndex:0 error:&v7];
  v5 = v7;
  if (a3)
  {
    v5 = v5;
    *a3 = v5;
  }

  return v4;
}

- (PHBatchPerformChanges)initWithPhotoLibrary:(id)a3 itemCount:(unint64_t)a4 batchSize:(unint64_t)a5 batchBlock:(id)a6
{
  v11 = a3;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = PHBatchPerformChanges;
  v13 = [(PHBatchPerformChanges *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_library, a3);
    v14->_itemCount = a4;
    v14->_batchSize = a5;
    v15 = [v12 copy];
    batchBlock = v14->_batchBlock;
    v14->_batchBlock = v15;

    v17 = v14;
  }

  return v14;
}

@end
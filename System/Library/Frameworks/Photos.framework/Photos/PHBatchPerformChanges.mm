@interface PHBatchPerformChanges
- (BOOL)_addBatchRangeAtIndex:(unint64_t)index toOutError:(id *)error;
- (BOOL)_performChangesAndWaitStartingAtIndex:(unint64_t)index error:(id *)error;
- (BOOL)performChangesAndWait:(id *)wait;
- (PHBatchPerformChanges)initWithPhotoLibrary:(id)library itemCount:(unint64_t)count batchSize:(unint64_t)size batchBlock:(id)block;
- (PHBatchPerformChanges)performChangesWithCompletionHandler:(id)handler;
- (_NSRange)_batchRangeAtIndex:(unint64_t)index;
- (id)_errorByAddingBatchRangeAtIndex:(unint64_t)index tofError:(id)error;
- (unint64_t)_performBatchAtIndex:(unint64_t)index;
- (unint64_t)_performBatchAtIndexAndWait:(unint64_t)wait error:(id *)error;
- (void)_performChangesStartingAtIndex:(unint64_t)index withCompletionHandler:(id)handler;
- (void)_performNextBatchAtIndex:(unint64_t)index withCompletionHandler:(id)handler;
@end

@implementation PHBatchPerformChanges

- (id)_errorByAddingBatchRangeAtIndex:(unint64_t)index tofError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v7 = [(PHBatchPerformChanges *)self _batchRangeAtIndex:index];
    v9 = v8;
    userInfo = [errorCopy userInfo];
    v11 = [userInfo mutableCopy];
    v12 = v11;
    if (v11)
    {
      dictionary = v11;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v15 = dictionary;

    v16 = [MEMORY[0x1E696B098] valueWithRange:{v7, v9}];
    [v15 setObject:v16 forKeyedSubscript:@"PHBatchPerformChangesRangeErrorKey"];

    v17 = MEMORY[0x1E696ABC0];
    domain = [errorCopy domain];
    v14 = [v17 errorWithDomain:domain code:objc_msgSend(errorCopy userInfo:{"code"), v15}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_addBatchRangeAtIndex:(unint64_t)index toOutError:(id *)error
{
  if (error)
  {
    v5 = [(PHBatchPerformChanges *)self _errorByAddingBatchRangeAtIndex:index tofError:*error];
    *error = v5;
  }

  return 0;
}

- (unint64_t)_performBatchAtIndex:(unint64_t)index
{
  [(PHBatchPerformChanges *)self _batchRangeAtIndex:index];
  v5 = v4;
  v6 = objc_autoreleasePoolPush();
  (*(self->_batchBlock + 2))();
  objc_autoreleasePoolPop(v6);
  return v5;
}

- (_NSRange)_batchRangeAtIndex:(unint64_t)index
{
  itemCount = self->_itemCount;
  if (itemCount <= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHBatchPerformChanges.m" lineNumber:136 description:{@"Batch index %tu must be less than item count %tu", index, self->_itemCount}];

    itemCount = self->_itemCount;
  }

  v6 = itemCount - index;
  if (self->_batchSize >= v6)
  {
    batchSize = v6;
  }

  else
  {
    batchSize = self->_batchSize;
  }

  indexCopy = index;
  result.length = batchSize;
  result.location = indexCopy;
  return result;
}

- (void)_performNextBatchAtIndex:(unint64_t)index withCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
  v12[6] = index;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__PHBatchPerformChanges__performNextBatchAtIndex_withCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E75A9F88;
  v8 = handlerCopy;
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

- (void)_performChangesStartingAtIndex:(unint64_t)index withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PHBatchPerformChanges *)self _hasMoreBatchesAtIndex:index])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __78__PHBatchPerformChanges__performChangesStartingAtIndex_withCompletionHandler___block_invoke;
    v7[3] = &unk_1E75A9F60;
    v7[4] = self;
    v8 = handlerCopy;
    indexCopy = index;
    [(PHBatchPerformChanges *)self _performNextBatchAtIndex:index withCompletionHandler:v7];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0);
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

- (PHBatchPerformChanges)performChangesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__PHBatchPerformChanges_performChangesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E75AA5B8;
  v8 = handlerCopy;
  v5 = handlerCopy;
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

- (unint64_t)_performBatchAtIndexAndWait:(unint64_t)wait error:(id *)error
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
  v7[6] = wait;
  if ([(PHPhotoLibrary *)library performChangesAndWait:v7 error:error])
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

- (BOOL)_performChangesAndWaitStartingAtIndex:(unint64_t)index error:(id *)error
{
  if (![(PHBatchPerformChanges *)self _hasMoreBatchesAtIndex:?])
  {
    return 1;
  }

  v7 = [(PHBatchPerformChanges *)self _performBatchAtIndexAndWait:index error:error];
  if (v7)
  {

    return [(PHBatchPerformChanges *)self _performChangesAndWaitStartingAtIndex:v7 + index error:error];
  }

  else
  {
    [(PHBatchPerformChanges *)self _addBatchRangeAtIndex:index toOutError:error];
    return 0;
  }
}

- (BOOL)performChangesAndWait:(id *)wait
{
  v7 = 0;
  v4 = [(PHBatchPerformChanges *)self _performChangesAndWaitStartingAtIndex:0 error:&v7];
  v5 = v7;
  if (wait)
  {
    v5 = v5;
    *wait = v5;
  }

  return v4;
}

- (PHBatchPerformChanges)initWithPhotoLibrary:(id)library itemCount:(unint64_t)count batchSize:(unint64_t)size batchBlock:(id)block
{
  libraryCopy = library;
  blockCopy = block;
  v19.receiver = self;
  v19.super_class = PHBatchPerformChanges;
  v13 = [(PHBatchPerformChanges *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_library, library);
    v14->_itemCount = count;
    v14->_batchSize = size;
    v15 = [blockCopy copy];
    batchBlock = v14->_batchBlock;
    v14->_batchBlock = v15;

    v17 = v14;
  }

  return v14;
}

@end
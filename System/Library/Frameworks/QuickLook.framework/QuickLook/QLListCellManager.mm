@interface QLListCellManager
- (QLListCellManager)init;
- (void)_operationDidFinish:(id)finish;
- (void)dealloc;
- (void)operation:(id)operation didDetermineFileSize:(id)size fileTypeString:(id)string;
- (void)operation:(id)operation didGenerateThumbnail:(id)thumbnail;
- (void)setupCell:(id)cell withItem:(id)item atIndex:(unint64_t)index;
@end

@implementation QLListCellManager

- (QLListCellManager)init
{
  v11.receiver = self;
  v11.super_class = QLListCellManager;
  v2 = [(QLListCellManager *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    operations = v2->_operations;
    v2->_operations = v3;

    v5 = dispatch_queue_create("com.apple.quicklook.celllistmanager.serialqueue", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v5;

    v7 = objc_opt_new();
    generationQueue = v2->_generationQueue;
    v2->_generationQueue = v7;

    [(NSOperationQueue *)v2->_generationQueue setMaxConcurrentOperationCount:4];
    v9 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_generationQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = QLListCellManager;
  [(QLListCellManager *)&v3 dealloc];
}

- (void)setupCell:(id)cell withItem:(id)item atIndex:(unint64_t)index
{
  cellCopy = cell;
  itemCopy = item;
  serialQueue = self->_serialQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__QLListCellManager_setupCell_withItem_atIndex___block_invoke;
  v13[3] = &unk_278B574D0;
  v13[4] = self;
  v14 = cellCopy;
  v15 = itemCopy;
  indexCopy = index;
  v11 = itemCopy;
  v12 = cellCopy;
  dispatch_async(serialQueue, v13);
}

void __48__QLListCellManager_setupCell_withItem_atIndex___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 56)];
  v3 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v2];
  v4 = v3;
  if (v3)
  {
    [v3 cancel];
  }

  [*(a1 + 40) setRow:*(a1 + 56)];
  v5 = [[QLListCellDataGenerationOperation alloc] initWithListCell:*(a1 + 40) index:*(a1 + 56) item:*(a1 + 48) delegate:*(a1 + 32)];
  objc_initWeak(&location, v5);
  objc_initWeak(&from, *(a1 + 32));
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __48__QLListCellManager_setupCell_withItem_atIndex___block_invoke_2;
  v9 = &unk_278B57D90;
  objc_copyWeak(&v10, &from);
  objc_copyWeak(&v11, &location);
  [(QLListCellDataGenerationOperation *)v5 setCompletionBlock:&v6];
  [*(*(a1 + 32) + 16) setObject:v5 forKeyedSubscript:{v2, v6, v7, v8, v9}];
  [*(*(a1 + 32) + 24) addOperation:v5];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __48__QLListCellManager_setupCell_withItem_atIndex___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _operationDidFinish:v2];
}

- (void)_operationDidFinish:(id)finish
{
  finishCopy = finish;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(finishCopy, "index")}];
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__QLListCellManager__operationDidFinish___block_invoke;
  block[3] = &unk_278B56E00;
  block[4] = self;
  v10 = v5;
  v11 = finishCopy;
  v7 = finishCopy;
  v8 = v5;
  dispatch_sync(serialQueue, block);
}

void __41__QLListCellManager__operationDidFinish___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = a1[6];

  if (v2 == v3)
  {
    v4 = a1[5];
    v5 = *(a1[4] + 16);

    [v5 removeObjectForKey:v4];
  }
}

- (void)operation:(id)operation didGenerateThumbnail:(id)thumbnail
{
  operationCopy = operation;
  thumbnailCopy = thumbnail;
  if (([operationCopy isCancelled] & 1) == 0)
  {
    serialQueue = self->_serialQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__QLListCellManager_operation_didGenerateThumbnail___block_invoke;
    v9[3] = &unk_278B56E50;
    v10 = operationCopy;
    v11 = thumbnailCopy;
    dispatch_sync(serialQueue, v9);
  }
}

void __52__QLListCellManager_operation_didGenerateThumbnail___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) index];
  v4 = [*(a1 + 32) cell];
  if (v2 == [v4 row])
  {
    v3 = [*(a1 + 32) isCancelled];

    if ((v3 & 1) == 0)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      QLRunInMainThread();
    }
  }

  else
  {
  }
}

void __52__QLListCellManager_operation_didGenerateThumbnail___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) cell];
  [v2 setThumbnail:v1];
}

- (void)operation:(id)operation didDetermineFileSize:(id)size fileTypeString:(id)string
{
  operationCopy = operation;
  sizeCopy = size;
  stringCopy = string;
  if (([operationCopy isCancelled] & 1) == 0)
  {
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__QLListCellManager_operation_didDetermineFileSize_fileTypeString___block_invoke;
    block[3] = &unk_278B56E00;
    v13 = operationCopy;
    v14 = sizeCopy;
    v15 = stringCopy;
    dispatch_sync(serialQueue, block);
  }
}

void __67__QLListCellManager_operation_didDetermineFileSize_fileTypeString___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) index];
  v10 = [*(a1 + 32) cell];
  if (v2 == [v10 row])
  {
    v3 = [*(a1 + 32) isCancelled];

    if (v3)
    {
      return;
    }

    v4 = [MEMORY[0x277CCA8E8] stringFromByteCount:objc_msgSend(*(a1 + 40) countStyle:{"longLongValue"), 0}];
    v5 = v4;
    v6 = *(a1 + 48);
    if (v6 && v4)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ – %@", *(a1 + 48), v4];
    }

    else if (v6)
    {
      v7 = v6;
    }

    else
    {
      if (!v4)
      {
        v8 = 0;
        goto LABEL_14;
      }

      v7 = v4;
    }

    v8 = v7;
LABEL_14:
    v11 = *(a1 + 32);
    v9 = v8;
    QLRunInMainThread();

    return;
  }
}

void __67__QLListCellManager_operation_didDetermineFileSize_fileTypeString___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) cell];
  [v2 setSubtitleString:v1];
}

@end
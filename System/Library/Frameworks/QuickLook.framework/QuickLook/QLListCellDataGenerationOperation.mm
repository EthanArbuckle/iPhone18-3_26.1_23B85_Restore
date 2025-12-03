@interface QLListCellDataGenerationOperation
- (QLItem)item;
- (QLListCell)cell;
- (QLListCellDataGenerationOperation)initWithListCell:(id)cell index:(unint64_t)index item:(id)item delegate:(id)delegate;
- (QLListCellDataGenerationOperationDelegate)delegate;
- (void)_didDetermineFileSize:(id)size fileTypeString:(id)string;
- (void)_didGenerateThumbnail:(id)thumbnail;
- (void)_finishIfNeeded;
- (void)main;
@end

@implementation QLListCellDataGenerationOperation

- (QLListCellDataGenerationOperation)initWithListCell:(id)cell index:(unint64_t)index item:(id)item delegate:(id)delegate
{
  cellCopy = cell;
  itemCopy = item;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = QLListCellDataGenerationOperation;
  v13 = [(QLListCellDataGenerationOperation *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(v13 + 33, cellCopy);
    objc_storeWeak(&v14->_cell, itemCopy);
    *&v14->_didGenerateThumbnail = index;
    objc_storeWeak(&v14->_item, delegateCopy);
    v15 = v14;
  }

  return v14;
}

- (void)main
{
  if ([(QLListCellDataGenerationOperation *)self isCancelled])
  {

    [(QLAsynchronousOperation *)self finish];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_cell);
    thumbnailGenerator = [WeakRetained thumbnailGenerator];
    QLCGSizeFromQLItemThumbnailSize();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__QLListCellDataGenerationOperation_main__block_invoke;
    v15[3] = &unk_278B57B68;
    v15[4] = self;
    [thumbnailGenerator generateThumbnailWithSize:v15 completionBlock:?];

    v5 = objc_loadWeakRetained(&self->_cell);
    fetcher = [v5 fetcher];
    itemSize = [fetcher itemSize];

    v8 = objc_loadWeakRetained(&self->_cell);
    previewItemContentType = [v8 previewItemContentType];

    if (previewItemContentType)
    {
      v10 = MEMORY[0x277CE1CB8];
      v11 = objc_loadWeakRetained(&self->_cell);
      previewItemContentType2 = [v11 previewItemContentType];
      v13 = [v10 typeWithIdentifier:previewItemContentType2];
      localizedDescription = [v13 localizedDescription];
    }

    else
    {
      localizedDescription = 0;
    }

    [(QLListCellDataGenerationOperation *)self _didDetermineFileSize:itemSize fileTypeString:localizedDescription];
  }
}

- (void)_finishIfNeeded
{
  if (*(&self->super._executing + 1) && *(&self->super._executing + 2))
  {
    [(QLAsynchronousOperation *)self finish];
  }
}

- (void)_didGenerateThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  WeakRetained = objc_loadWeakRetained(&self->_item);
  [WeakRetained operation:self didGenerateThumbnail:thumbnailCopy];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  *(&selfCopy->super._executing + 1) = 1;
  [(QLListCellDataGenerationOperation *)selfCopy _finishIfNeeded];
  objc_sync_exit(selfCopy);
}

- (void)_didDetermineFileSize:(id)size fileTypeString:(id)string
{
  sizeCopy = size;
  stringCopy = string;
  WeakRetained = objc_loadWeakRetained(&self->_item);
  [WeakRetained operation:self didDetermineFileSize:sizeCopy fileTypeString:stringCopy];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  *(&selfCopy->super._executing + 2) = 1;
  [(QLListCellDataGenerationOperation *)selfCopy _finishIfNeeded];
  objc_sync_exit(selfCopy);
}

- (QLListCell)cell
{
  WeakRetained = objc_loadWeakRetained(&self->_index);

  return WeakRetained;
}

- (QLItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);

  return WeakRetained;
}

- (QLListCellDataGenerationOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

@end
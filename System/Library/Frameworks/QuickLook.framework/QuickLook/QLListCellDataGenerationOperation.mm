@interface QLListCellDataGenerationOperation
- (QLItem)item;
- (QLListCell)cell;
- (QLListCellDataGenerationOperation)initWithListCell:(id)a3 index:(unint64_t)a4 item:(id)a5 delegate:(id)a6;
- (QLListCellDataGenerationOperationDelegate)delegate;
- (void)_didDetermineFileSize:(id)a3 fileTypeString:(id)a4;
- (void)_didGenerateThumbnail:(id)a3;
- (void)_finishIfNeeded;
- (void)main;
@end

@implementation QLListCellDataGenerationOperation

- (QLListCellDataGenerationOperation)initWithListCell:(id)a3 index:(unint64_t)a4 item:(id)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = QLListCellDataGenerationOperation;
  v13 = [(QLListCellDataGenerationOperation *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(v13 + 33, v10);
    objc_storeWeak(&v14->_cell, v11);
    *&v14->_didGenerateThumbnail = a4;
    objc_storeWeak(&v14->_item, v12);
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
    v4 = [WeakRetained thumbnailGenerator];
    QLCGSizeFromQLItemThumbnailSize();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__QLListCellDataGenerationOperation_main__block_invoke;
    v15[3] = &unk_278B57B68;
    v15[4] = self;
    [v4 generateThumbnailWithSize:v15 completionBlock:?];

    v5 = objc_loadWeakRetained(&self->_cell);
    v6 = [v5 fetcher];
    v7 = [v6 itemSize];

    v8 = objc_loadWeakRetained(&self->_cell);
    v9 = [v8 previewItemContentType];

    if (v9)
    {
      v10 = MEMORY[0x277CE1CB8];
      v11 = objc_loadWeakRetained(&self->_cell);
      v12 = [v11 previewItemContentType];
      v13 = [v10 typeWithIdentifier:v12];
      v14 = [v13 localizedDescription];
    }

    else
    {
      v14 = 0;
    }

    [(QLListCellDataGenerationOperation *)self _didDetermineFileSize:v7 fileTypeString:v14];
  }
}

- (void)_finishIfNeeded
{
  if (*(&self->super._executing + 1) && *(&self->super._executing + 2))
  {
    [(QLAsynchronousOperation *)self finish];
  }
}

- (void)_didGenerateThumbnail:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_item);
  [WeakRetained operation:self didGenerateThumbnail:v6];

  v5 = self;
  objc_sync_enter(v5);
  *(&v5->super._executing + 1) = 1;
  [(QLListCellDataGenerationOperation *)v5 _finishIfNeeded];
  objc_sync_exit(v5);
}

- (void)_didDetermineFileSize:(id)a3 fileTypeString:(id)a4
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_item);
  [WeakRetained operation:self didDetermineFileSize:v9 fileTypeString:v6];

  v8 = self;
  objc_sync_enter(v8);
  *(&v8->super._executing + 2) = 1;
  [(QLListCellDataGenerationOperation *)v8 _finishIfNeeded];
  objc_sync_exit(v8);
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
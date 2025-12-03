@interface MFPhotoPickerProgressManager
- (BOOL)anyRequestExists;
- (BOOL)requestExistsForIndexPath:(id)path;
- (MFPhotoPickerProgressManager)init;
- (double)progressForIndexPath:(id)path;
- (void)_cancelProgressItem:(id)item;
- (void)cancelEverything;
- (void)cancelEverythingAtIndexPath:(id)path;
- (void)setExportSession:(id)session forIndexPath:(id)path;
- (void)setImageRequestID:(int)d forIndexPath:(id)path;
- (void)setProgress:(double)progress forIndexPath:(id)path;
@end

@implementation MFPhotoPickerProgressManager

- (MFPhotoPickerProgressManager)init
{
  v6.receiver = self;
  v6.super_class = MFPhotoPickerProgressManager;
  v2 = [(MFPhotoPickerProgressManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    progressItems = v2->_progressItems;
    v2->_progressItems = v3;
  }

  return v2;
}

- (void)setProgress:(double)progress forIndexPath:(id)path
{
  pathCopy = path;
  if (progress >= 0.0 && progress <= 1.0)
  {
    v13 = pathCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    progressItems = [(MFPhotoPickerProgressManager *)selfCopy progressItems];
    v10 = [progressItems objectForKey:v13];

    if (v10)
    {
      [v10 setProgress:progress];
    }

    else
    {
      v11 = objc_alloc_init(MFPhotoPickerProgressItem);
      [(MFPhotoPickerProgressItem *)v11 setProgress:progress];
      progressItems2 = [(MFPhotoPickerProgressManager *)selfCopy progressItems];
      [progressItems2 setObject:v11 forKey:v13];

      v10 = v11;
    }

    objc_sync_exit(selfCopy);
    pathCopy = v13;
  }
}

- (void)setImageRequestID:(int)d forIndexPath:(id)path
{
  v4 = *&d;
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  progressItems = [(MFPhotoPickerProgressManager *)selfCopy progressItems];
  v8 = [progressItems objectForKey:pathCopy];

  if (v8)
  {
    [v8 setImageRequestID:v4];
  }

  else
  {
    v9 = objc_alloc_init(MFPhotoPickerProgressItem);
    [(MFPhotoPickerProgressItem *)v9 setImageRequestID:v4];
    progressItems2 = [(MFPhotoPickerProgressManager *)selfCopy progressItems];
    [progressItems2 setObject:v9 forKey:pathCopy];

    v8 = v9;
  }

  objc_sync_exit(selfCopy);
}

- (void)setExportSession:(id)session forIndexPath:(id)path
{
  sessionCopy = session;
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  progressItems = [(MFPhotoPickerProgressManager *)selfCopy progressItems];
  v9 = [progressItems objectForKey:pathCopy];

  if (v9)
  {
    [v9 setExportSession:sessionCopy];
  }

  else
  {
    v10 = objc_alloc_init(MFPhotoPickerProgressItem);
    [(MFPhotoPickerProgressItem *)v10 setExportSession:sessionCopy];
    progressItems2 = [(MFPhotoPickerProgressManager *)selfCopy progressItems];
    [progressItems2 setObject:v10 forKey:pathCopy];

    v9 = v10;
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)anyRequestExists
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  progressItems = [(MFPhotoPickerProgressManager *)selfCopy progressItems];
  allValues = [progressItems allValues];
  v5 = [allValues count] != 0;

  objc_sync_exit(selfCopy);
  return v5;
}

- (BOOL)requestExistsForIndexPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  progressItems = [(MFPhotoPickerProgressManager *)selfCopy progressItems];
  v7 = [progressItems objectForKey:pathCopy];

  objc_sync_exit(selfCopy);
  return v7 != 0;
}

- (double)progressForIndexPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  progressItems = [(MFPhotoPickerProgressManager *)selfCopy progressItems];
  v7 = [progressItems objectForKey:pathCopy];

  if (v7)
  {
    [v7 progress];
    v9 = v8;
  }

  else
  {
    v9 = -1.0;
  }

  objc_sync_exit(selfCopy);
  return v9;
}

- (void)cancelEverything
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  progressItems = [(MFPhotoPickerProgressManager *)selfCopy progressItems];
  allValues = [progressItems allValues];
  [progressItems removeAllObjects];

  objc_sync_exit(selfCopy);
  v5 = dispatch_get_global_queue(17, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__MFPhotoPickerProgressManager_cancelEverything__block_invoke;
  v7[3] = &unk_1E806C520;
  v8 = allValues;
  v9 = selfCopy;
  v6 = allValues;
  dispatch_async(v5, v7);
}

void __48__MFPhotoPickerProgressManager_cancelEverything__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _cancelProgressItem:{*(*(&v6 + 1) + 8 * v5++), v6}];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)cancelEverythingAtIndexPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  progressItems = [(MFPhotoPickerProgressManager *)selfCopy progressItems];
  v6 = [progressItems objectForKey:pathCopy];
  [progressItems removeObjectForKey:pathCopy];

  objc_sync_exit(selfCopy);
  [(MFPhotoPickerProgressManager *)selfCopy _cancelProgressItem:v6];
}

- (void)_cancelProgressItem:(id)item
{
  itemCopy = item;
  defaultManager = [MEMORY[0x1E6978860] defaultManager];
  [defaultManager cancelImageRequest:{objc_msgSend(itemCopy, "imageRequestID")}];

  exportSession = [itemCopy exportSession];
  [exportSession cancelExport];
}

@end
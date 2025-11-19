@interface MFPhotoPickerProgressManager
- (BOOL)anyRequestExists;
- (BOOL)requestExistsForIndexPath:(id)a3;
- (MFPhotoPickerProgressManager)init;
- (double)progressForIndexPath:(id)a3;
- (void)_cancelProgressItem:(id)a3;
- (void)cancelEverything;
- (void)cancelEverythingAtIndexPath:(id)a3;
- (void)setExportSession:(id)a3 forIndexPath:(id)a4;
- (void)setImageRequestID:(int)a3 forIndexPath:(id)a4;
- (void)setProgress:(double)a3 forIndexPath:(id)a4;
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

- (void)setProgress:(double)a3 forIndexPath:(id)a4
{
  v6 = a4;
  if (a3 >= 0.0 && a3 <= 1.0)
  {
    v13 = v6;
    v8 = self;
    objc_sync_enter(v8);
    v9 = [(MFPhotoPickerProgressManager *)v8 progressItems];
    v10 = [v9 objectForKey:v13];

    if (v10)
    {
      [v10 setProgress:a3];
    }

    else
    {
      v11 = objc_alloc_init(MFPhotoPickerProgressItem);
      [(MFPhotoPickerProgressItem *)v11 setProgress:a3];
      v12 = [(MFPhotoPickerProgressManager *)v8 progressItems];
      [v12 setObject:v11 forKey:v13];

      v10 = v11;
    }

    objc_sync_exit(v8);
    v6 = v13;
  }
}

- (void)setImageRequestID:(int)a3 forIndexPath:(id)a4
{
  v4 = *&a3;
  v11 = a4;
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(MFPhotoPickerProgressManager *)v6 progressItems];
  v8 = [v7 objectForKey:v11];

  if (v8)
  {
    [v8 setImageRequestID:v4];
  }

  else
  {
    v9 = objc_alloc_init(MFPhotoPickerProgressItem);
    [(MFPhotoPickerProgressItem *)v9 setImageRequestID:v4];
    v10 = [(MFPhotoPickerProgressManager *)v6 progressItems];
    [v10 setObject:v9 forKey:v11];

    v8 = v9;
  }

  objc_sync_exit(v6);
}

- (void)setExportSession:(id)a3 forIndexPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(MFPhotoPickerProgressManager *)v7 progressItems];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    [v9 setExportSession:v12];
  }

  else
  {
    v10 = objc_alloc_init(MFPhotoPickerProgressItem);
    [(MFPhotoPickerProgressItem *)v10 setExportSession:v12];
    v11 = [(MFPhotoPickerProgressManager *)v7 progressItems];
    [v11 setObject:v10 forKey:v6];

    v9 = v10;
  }

  objc_sync_exit(v7);
}

- (BOOL)anyRequestExists
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MFPhotoPickerProgressManager *)v2 progressItems];
  v4 = [v3 allValues];
  v5 = [v4 count] != 0;

  objc_sync_exit(v2);
  return v5;
}

- (BOOL)requestExistsForIndexPath:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MFPhotoPickerProgressManager *)v5 progressItems];
  v7 = [v6 objectForKey:v4];

  objc_sync_exit(v5);
  return v7 != 0;
}

- (double)progressForIndexPath:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MFPhotoPickerProgressManager *)v5 progressItems];
  v7 = [v6 objectForKey:v4];

  if (v7)
  {
    [v7 progress];
    v9 = v8;
  }

  else
  {
    v9 = -1.0;
  }

  objc_sync_exit(v5);
  return v9;
}

- (void)cancelEverything
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(MFPhotoPickerProgressManager *)v2 progressItems];
  v4 = [v3 allValues];
  [v3 removeAllObjects];

  objc_sync_exit(v2);
  v5 = dispatch_get_global_queue(17, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__MFPhotoPickerProgressManager_cancelEverything__block_invoke;
  v7[3] = &unk_1E806C520;
  v8 = v4;
  v9 = v2;
  v6 = v4;
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

- (void)cancelEverythingAtIndexPath:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(MFPhotoPickerProgressManager *)v4 progressItems];
  v6 = [v5 objectForKey:v7];
  [v5 removeObjectForKey:v7];

  objc_sync_exit(v4);
  [(MFPhotoPickerProgressManager *)v4 _cancelProgressItem:v6];
}

- (void)_cancelProgressItem:(id)a3
{
  v5 = a3;
  v3 = [MEMORY[0x1E6978860] defaultManager];
  [v3 cancelImageRequest:{objc_msgSend(v5, "imageRequestID")}];

  v4 = [v5 exportSession];
  [v4 cancelExport];
}

@end
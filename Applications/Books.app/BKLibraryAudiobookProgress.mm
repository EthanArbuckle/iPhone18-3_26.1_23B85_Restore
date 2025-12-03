@interface BKLibraryAudiobookProgress
- (BKLibraryAudiobookProgress)initWithKind:(id)kind instance:(id)instance parameters:(id)parameters;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerProgressObserver:(id)observer;
- (void)setFormattedProgress:(id)progress;
- (void)setProgress:(id)progress;
- (void)unregisterProgressObserver:(id)observer;
@end

@implementation BKLibraryAudiobookProgress

- (BKLibraryAudiobookProgress)initWithKind:(id)kind instance:(id)instance parameters:(id)parameters
{
  kindCopy = kind;
  instanceCopy = instance;
  parametersCopy = parameters;
  v29.receiver = self;
  v29.super_class = BKLibraryAudiobookProgress;
  v12 = [(BKLibraryAudiobookProgress *)&v29 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_kind, kind);
    objc_storeStrong(&v13->_instance, instance);
    objc_storeStrong(&v13->_parameters, parameters);
    v14 = +[NSHashTable weakObjectsHashTable];
    observers = v13->_observers;
    v13->_observers = v14;

    v16 = dispatch_queue_create("BKLibraryAudiobookProgress.access", 0);
    access = v13->_access;
    v13->_access = v16;

    objc_opt_class();
    v18 = BUDynamicCast();
    objc_opt_class();
    v19 = BCGetUnsafeAppDelegateReference();
    v20 = BUDynamicCast();
    sceneManager = [v20 sceneManager];

    minifiedPresenter = [sceneManager minifiedPresenter];
    v23 = [minifiedPresenter minifiedPresenterAssetCurrentPresenterForAssetID:v18];
    minifiedAssetStatus = [v23 minifiedAssetStatus];
    objc_opt_class();
    v25 = BUClassAndProtocolCast();

    objc_storeStrong(&v13->_audiobookStatus, v25);
    if ([(NSString *)v13->_kind isEqualToString:@"chapterProgress", &OBJC_PROTOCOL___AEAssetAudiobookStatus])
    {
      v26 = @"assetAudiobookStatusTrackProgress";
      v27 = &off_100AD1088;
    }

    else
    {
      if (![(NSString *)v13->_kind isEqualToString:@"timeRemaining"])
      {
LABEL_7:

        goto LABEL_8;
      }

      v26 = @"assetAudiobookStatusTrackTimeRemaining";
      v27 = &off_100AD1090;
    }

    [(AEAssetAudiobookStatus *)v13->_audiobookStatus addObserver:v13 forKeyPath:v26 options:0 context:*v27];
    goto LABEL_7;
  }

LABEL_8:

  return v13;
}

- (void)dealloc
{
  if ([(NSString *)self->_kind isEqualToString:@"chapterProgress"])
  {
    v3 = @"assetAudiobookStatusTrackProgress";
    v4 = &off_100AD1088;
LABEL_5:
    [(AEAssetAudiobookStatus *)self->_audiobookStatus removeObserver:self forKeyPath:v3 context:*v4];
    goto LABEL_6;
  }

  if ([(NSString *)self->_kind isEqualToString:@"timeRemaining"])
  {
    v3 = @"assetAudiobookStatusTrackTimeRemaining";
    v4 = &off_100AD1090;
    goto LABEL_5;
  }

LABEL_6:
  v5.receiver = self;
  v5.super_class = BKLibraryAudiobookProgress;
  [(BKLibraryAudiobookProgress *)&v5 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_100AD1088 != context && off_100AD1090 != context)
  {
    v10.receiver = self;
    v10.super_class = BKLibraryAudiobookProgress;
    [(BKLibraryAudiobookProgress *)&v10 observeValueForKeyPath:path ofObject:object change:change context:?];
    return;
  }

  if ([(NSString *)self->_kind isEqualToString:@"chapterProgress", object, change])
  {
    [(AEAssetAudiobookStatus *)self->_audiobookStatus assetAudiobookStatusTrackProgress];
    v9 = [NSNumber numberWithDouble:?];
    [(BKLibraryAudiobookProgress *)self setProgress:v9];
  }

  else
  {
    if (![(NSString *)self->_kind isEqualToString:@"timeRemaining"])
    {
      return;
    }

    [(AEAssetAudiobookStatus *)self->_audiobookStatus assetAudiobookStatusTrackTimeRemaining];
    v9 = [NSString stringWithDuration:-v8];
    [(BKLibraryAudiobookProgress *)self setFormattedProgress:v9];
  }
}

- (void)setFormattedProgress:(id)progress
{
  progressCopy = progress;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10002750C;
  v20 = sub_1000276B0;
  v21 = 0;
  access = self->_access;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DF774;
  block[3] = &unk_100A036C0;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(access, block);
  objc_storeStrong(&self->_formattedProgress, progress);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = v17[5];
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v22 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10) dynamicProgressChanged:{self, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v22 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(&v16, 8);
}

- (void)setProgress:(id)progress
{
  progressCopy = progress;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10002750C;
  v20 = sub_1000276B0;
  v21 = 0;
  access = self->_access;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001DF9A8;
  block[3] = &unk_100A036C0;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(access, block);
  objc_storeStrong(&self->_progress, progress);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = v17[5];
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v22 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10) dynamicProgressChanged:{self, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v22 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(&v16, 8);
}

- (void)registerProgressObserver:(id)observer
{
  observerCopy = observer;
  access = self->_access;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DFA8C;
  v7[3] = &unk_100A03440;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(access, v7);
}

- (void)unregisterProgressObserver:(id)observer
{
  observerCopy = observer;
  access = self->_access;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001DFB30;
  v7[3] = &unk_100A03440;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(access, v7);
}

@end
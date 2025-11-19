@interface BSUIDownloadProgress
- (BSUIDownloadProgress)initWithKind:(id)a3 instance:(id)a4 parameters:(id)a5;
- (void)registerProgressObserver:(id)a3;
- (void)setProgress:(id)a3;
- (void)unregisterProgressObserver:(id)a3;
@end

@implementation BSUIDownloadProgress

- (BSUIDownloadProgress)initWithKind:(id)a3 instance:(id)a4 parameters:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = BSUIDownloadProgress;
  v12 = [(BSUIDownloadProgress *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_kind, a3);
    objc_storeStrong(&v13->_instance, a4);
    objc_storeStrong(&v13->_parameters, a5);
    v14 = +[NSHashTable weakObjectsHashTable];
    observers = v13->_observers;
    v13->_observers = v14;

    v16 = dispatch_queue_create("BSUIDownloadProgress.access", 0);
    access = v13->_access;
    v13->_access = v16;
  }

  return v13;
}

- (void)setProgress:(id)a3
{
  v5 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_29C84;
  v20 = sub_29C94;
  v21 = 0;
  access = self->_access;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2A938;
  block[3] = &unk_3870C8;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(access, block);
  objc_storeStrong(&self->_progress, a3);
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

- (void)registerProgressObserver:(id)a3
{
  v4 = a3;
  access = self->_access;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_2AA1C;
  v7[3] = &unk_386D98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(access, v7);
}

- (void)unregisterProgressObserver:(id)a3
{
  v4 = a3;
  access = self->_access;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_2AAC0;
  v7[3] = &unk_386D98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(access, v7);
}

@end
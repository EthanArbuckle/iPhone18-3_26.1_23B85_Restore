@interface BKLibraryAssetStatusObserver
- (BKLibraryAssetStatusObserver)initWithFilter:(id)a3 notify:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation BKLibraryAssetStatusObserver

- (BKLibraryAssetStatusObserver)initWithFilter:(id)a3 notify:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = BKLibraryAssetStatusObserver;
  v8 = [(BKLibraryAssetStatusObserver *)&v15 init];
  if (v8)
  {
    v9 = +[BKLibraryAssetStatusController sharedController];
    v10 = [v9 _addArrayControllerWithFilter:v6];
    controller = v8->_controller;
    v8->_controller = v10;

    [(IMArrayController *)v8->_controller addObserver:v8 forKeyPath:@"arrangedObjects" options:3 context:off_EED70];
    v12 = [v7 copy];
    notify = v8->_notify;
    v8->_notify = v12;
  }

  return v8;
}

- (void)dealloc
{
  [(IMArrayController *)self->_controller removeObserver:self forKeyPath:@"arrangedObjects" context:off_EED70];
  v3 = +[BKLibraryAssetStatusController sharedController];
  [v3 _removeArrayController:self->_controller];

  v4.receiver = self;
  v4.super_class = BKLibraryAssetStatusObserver;
  [(BKLibraryAssetStatusObserver *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_EED70 == a6)
  {
    v11 = a5;
    objc_opt_class();
    v12 = [v11 objectForKey:NSKeyValueChangeOldKey];
    v19 = BUDynamicCast();

    objc_opt_class();
    v13 = [v11 objectForKey:NSKeyValueChangeNewKey];

    v14 = BUDynamicCast();

    v15 = [NSMutableSet setWithArray:v14];
    v16 = [NSSet setWithArray:v19];
    [v15 minusSet:v16];

    v17 = [NSMutableSet setWithArray:v19];
    v18 = [NSSet setWithArray:v14];
    [v17 minusSet:v18];

    if ([v15 count] || objc_msgSend(v17, "count"))
    {
      (*(self->_notify + 2))();
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = BKLibraryAssetStatusObserver;
    v10 = a5;
    [(BKLibraryAssetStatusObserver *)&v20 observeValueForKeyPath:a3 ofObject:a4 change:v10 context:a6];
  }
}

@end
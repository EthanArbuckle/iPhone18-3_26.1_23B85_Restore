@interface BKLibraryAssetStatusObserver
- (BKLibraryAssetStatusObserver)initWithFilter:(id)filter notify:(id)notify;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation BKLibraryAssetStatusObserver

- (BKLibraryAssetStatusObserver)initWithFilter:(id)filter notify:(id)notify
{
  filterCopy = filter;
  notifyCopy = notify;
  v15.receiver = self;
  v15.super_class = BKLibraryAssetStatusObserver;
  v8 = [(BKLibraryAssetStatusObserver *)&v15 init];
  if (v8)
  {
    v9 = +[BKLibraryAssetStatusController sharedController];
    v10 = [v9 _addArrayControllerWithFilter:filterCopy];
    controller = v8->_controller;
    v8->_controller = v10;

    [(IMArrayController *)v8->_controller addObserver:v8 forKeyPath:@"arrangedObjects" options:3 context:off_EED70];
    v12 = [notifyCopy copy];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_EED70 == context)
  {
    changeCopy = change;
    objc_opt_class();
    v12 = [changeCopy objectForKey:NSKeyValueChangeOldKey];
    v19 = BUDynamicCast();

    objc_opt_class();
    v13 = [changeCopy objectForKey:NSKeyValueChangeNewKey];

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
    changeCopy2 = change;
    [(BKLibraryAssetStatusObserver *)&v20 observeValueForKeyPath:path ofObject:object change:changeCopy2 context:context];
  }
}

@end
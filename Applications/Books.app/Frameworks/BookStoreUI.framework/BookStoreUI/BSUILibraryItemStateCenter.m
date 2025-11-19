@interface BSUILibraryItemStateCenter
- (BSUILibraryItemStateCenter)initWithProvider:(id)a3;
- (BSUILibraryItemStateProviding)provider;
- (id)dynamicStateForKind:(id)a3 instance:(id)a4 parameters:(id)a5;
- (id)mapItemState:(id)a3;
- (id)observersToNotifyForItemIdentifier:(id)a3;
- (void)_notifyObserversItemUpdatedFor:(id)a3 itemState:(id)a4;
- (void)addObserver:(id)a3 forItemIdentifier:(id)a4;
- (void)addOrUpdateObserver:(id)a3 forSingleItemIdentifier:(id)a4;
- (void)aq_updateInterest;
- (void)removeObserver:(id)a3;
- (void)removeObserver:(id)a3 forItemIdentifier:(id)a4;
- (void)updateItemWithIdentifier:(id)a3 state:(id)a4 allowsInsert:(BOOL)a5;
@end

@implementation BSUILibraryItemStateCenter

- (BSUILibraryItemStateCenter)initWithProvider:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = BSUILibraryItemStateCenter;
  v5 = [(BSUILibraryItemStateCenter *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_provider, v4);
    v7 = [NSMapTable mapTableWithKeyOptions:0 valueOptions:517];
    instanceMap = v6->_instanceMap;
    v6->_instanceMap = v7;

    v9 = dispatch_queue_create("BSUILibraryItemStateCenter.access", 0);
    access = v6->_access;
    v6->_access = v9;

    v11 = [NSMapTable mapTableWithKeyOptions:517 valueOptions:0];
    observers = v6->_observers;
    v6->_observers = v11;
  }

  return v6;
}

- (id)mapItemState:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 itemIdentifier];
  [v4 setObject:v5 forKeyedSubscript:@"itemIdentifier"];

  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isSample]);
  [v4 setObject:v6 forKeyedSubscript:@"sample"];

  v7 = [v3 readingProgress];
  [v4 setObject:v7 forKeyedSubscript:@"readingProgress"];

  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 wantToRead]);
  [v4 setObject:v8 forKeyedSubscript:@"wantToRead"];

  v9 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isUpdateAvailable]);
  [v4 setObject:v9 forKeyedSubscript:@"updateAvailable"];

  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isStreamable]);
  [v4 setObject:v10 forKeyedSubscript:@"streamable"];

  if ([v3 library] > 5)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = *(&off_387418 + [v3 library]);
  }

  [v4 setObject:v11 forKeyedSubscript:@"library"];
  if ([v3 download] > 2)
  {
    v12 = @"unknown";
  }

  else
  {
    v12 = *(&off_387448 + [v3 download]);
  }

  [v4 setObject:v12 forKeyedSubscript:@"download"];
  if ([v3 play] > 2)
  {
    v13 = @"unknown";
  }

  else
  {
    v13 = *(&off_387460 + [v3 play]);
  }

  [v4 setObject:v13 forKeyedSubscript:@"play"];
  v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isTrackedAsRecent]);
  [v4 setObject:v14 forKeyedSubscript:@"trackedAsRecent"];

  v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isPurchased]);
  [v4 setObject:v15 forKeyedSubscript:@"isPurchased"];

  return v4;
}

- (id)dynamicStateForKind:(id)a3 instance:(id)a4 parameters:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_144A4;
  v32 = sub_144B4;
  v33 = 0;
  objc_opt_class();
  v12 = BUDynamicCast();
  if (v12 || (objc_opt_respondsToSelector() & 1) != 0 && ([v9 stringValue], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    access = self->_access;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_144BC;
    block[3] = &unk_387028;
    v27 = &v28;
    block[4] = self;
    v14 = v12;
    v26 = v14;
    dispatch_sync(access, block);
    if (!v29[5])
    {
      v15 = [WeakRetained itemStateWithIdentifier:v14];
      if (v15)
      {
        v16 = [(BSUILibraryItemStateCenter *)self mapItemState:v15];
        v17 = [TUIMutableDynamicValue valueWithValue:v16];
        v18 = v29[5];
        v29[5] = v17;

        sub_2BD3F8(self, v29[5], v14);
        v19 = self->_access;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1450C;
        v22[3] = &unk_387050;
        v22[4] = self;
        v23 = v14;
        v24 = &v28;
        dispatch_sync(v19, v22);
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v20 = v29[5];

  _Block_object_dispose(&v28, 8);

  return v20;
}

- (void)updateItemWithIdentifier:(id)a3 state:(id)a4 allowsInsert:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_144A4;
  v21 = sub_144B4;
  v22 = 0;
  v10 = [(BSUILibraryItemStateCenter *)self mapItemState:v9];
  if (v8)
  {
    access = self->_access;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_14728;
    block[3] = &unk_387480;
    v15 = &v17;
    block[4] = self;
    v13 = v8;
    v16 = a5;
    v14 = v10;
    dispatch_sync(access, block);
  }

  [v18[5] updateWithValue:v10];
  [(BSUILibraryItemStateCenter *)self _notifyObserversItemUpdatedFor:v8 itemState:v9];

  _Block_object_dispose(&v17, 8);
}

- (void)aq_updateInterest
{
  v3 = [(NSMapTable *)self->_instanceMap keyEnumerator];
  v4 = [v3 allObjects];
  v5 = [NSMutableSet setWithArray:v4];

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_148BC;
  v11 = &unk_386D98;
  v12 = self;
  v13 = v5;
  v6 = v5;
  os_unfair_lock_lock_with_options();
  sub_148BC(&v8);
  os_unfair_lock_unlock(&self->_accessLock);
  WeakRetained = objc_loadWeakRetained(&self->_provider);
  [WeakRetained updateInterest:{v6, v8, v9}];
}

- (id)observersToNotifyForItemIdentifier:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_144A4;
  v19 = sub_144B4;
  v20 = +[NSMutableArray array];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v10 = sub_14B34;
  v11 = &unk_387050;
  v12 = self;
  v5 = v4;
  v13 = v5;
  v14 = &v15;
  v6 = v9;
  os_unfair_lock_lock_with_options();
  v10(v6);
  os_unfair_lock_unlock(&self->_accessLock);

  v7 = [v16[5] copy];
  _Block_object_dispose(&v15, 8);

  return v7;
}

- (void)addObserver:(id)a3 forItemIdentifier:(id)a4
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_14DA8;
  v10[3] = &unk_387000;
  v10[4] = self;
  v11 = a3;
  v12 = a4;
  v6 = v12;
  v7 = v11;
  os_unfair_lock_lock_with_options();
  sub_14DA8(v10);
  os_unfair_lock_unlock(&self->_accessLock);
  access = self->_access;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_14E6C;
  v9[3] = &unk_3873D8;
  v9[4] = self;
  dispatch_sync(access, v9);
}

- (void)addOrUpdateObserver:(id)a3 forSingleItemIdentifier:(id)a4
{
  v6 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_14FA8;
  v11[3] = &unk_387000;
  v11[4] = self;
  v12 = a4;
  v13 = v6;
  v7 = v6;
  v8 = v12;
  os_unfair_lock_lock_with_options();
  sub_14FA8(v11);
  os_unfair_lock_unlock(&self->_accessLock);
  access = self->_access;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_15020;
  v10[3] = &unk_3873D8;
  v10[4] = self;
  dispatch_sync(access, v10);
}

- (void)removeObserver:(id)a3 forItemIdentifier:(id)a4
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_15150;
  v10[3] = &unk_387000;
  v10[4] = self;
  v11 = a3;
  v12 = a4;
  v6 = v12;
  v7 = v11;
  os_unfair_lock_lock_with_options();
  sub_15150(v10);
  os_unfair_lock_unlock(&self->_accessLock);
  access = self->_access;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_15248;
  v9[3] = &unk_3873D8;
  v9[4] = self;
  dispatch_sync(access, v9);
}

- (void)removeObserver:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_15354;
  v7[3] = &unk_386D98;
  v7[4] = self;
  v8 = a3;
  v4 = v8;
  os_unfair_lock_lock_with_options();
  sub_15354(v7);
  os_unfair_lock_unlock(&self->_accessLock);
  access = self->_access;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_153A8;
  block[3] = &unk_3873D8;
  block[4] = self;
  dispatch_sync(access, block);
}

- (void)_notifyObserversItemUpdatedFor:(id)a3 itemState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(BSUILibraryItemStateCenter *)self observersToNotifyForItemIdentifier:v6, 0];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12) libraryItemStateCenter:self didUpdateItemState:v7 forIdentifier:v6];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (BSUILibraryItemStateProviding)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end
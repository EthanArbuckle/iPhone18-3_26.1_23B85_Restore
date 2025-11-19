@interface FBSApplicationDataStore
- (id)_cachedSceneDataStores;
- (id)_createSceneStoreWithIdentifier:(id)a3 data:(id)a4;
- (id)_fetchPersistedSceneDataStores;
- (id)sceneStoreForIdentifier:(id)a3 creatingIfNecessary:(BOOL)a4;
- (void)_modifyPersistentSceneData:(unint64_t)a3 identifier:(id)a4 data:(id)a5;
- (void)enumerateSceneStoresUsingBlock:(id)a3;
- (void)removeAllSceneDataStores;
- (void)removeSceneStoreForIdentifier:(id)a3;
@end

@implementation FBSApplicationDataStore

- (id)sceneStoreForIdentifier:(id)a3 creatingIfNecessary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  BSDispatchQueueAssertMain();
  v7 = [(FBSApplicationDataStore *)self _cachedSceneDataStores];
  v8 = [v7 objectForKey:v6];
  if (!v8)
  {
    v9 = [(FBSApplicationDataStore *)self _fetchPersistedSceneDataStores];
    v10 = [v9 objectForKey:v6];
    if (v10)
    {
      v11 = [[NSMutableDictionary alloc] initWithDictionary:v10];
    }

    else
    {
      if (!v4)
      {
        v8 = 0;
LABEL_9:

        goto LABEL_10;
      }

      v11 = objc_alloc_init(NSMutableDictionary);
    }

    v12 = v11;
    v8 = [(FBSApplicationDataStore *)self _createSceneStoreWithIdentifier:v6 data:v11];

    if (v8)
    {
      [v7 setObject:v8 forKey:v6];
    }

    goto LABEL_9;
  }

LABEL_10:

  return v8;
}

- (void)removeSceneStoreForIdentifier:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v6 = [(FBSApplicationDataStore *)self _cachedSceneDataStores];
  v5 = [v6 objectForKey:v4];
  [v5 _invalidate];

  [v6 removeObjectForKey:v4];
  [(FBSApplicationDataStore *)self _modifyPersistentSceneData:0 identifier:v4 data:0];
}

- (void)removeAllSceneDataStores
{
  BSDispatchQueueAssertMain();
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(FBSApplicationDataStore *)self _cachedSceneDataStores];
  v4 = [v3 objectEnumerator];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) _invalidate];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(FBSApplicationDataStore *)self _setCachedSceneDataStores:0];
  [(FBSApplicationDataStore *)self _removeAllPersistentSceneData];
}

- (void)enumerateSceneStoresUsingBlock:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v28 = 0;
  v5 = [(FBSApplicationDataStore *)self _cachedSceneDataStores];
  v22 = self;
  v6 = [(FBSApplicationDataStore *)self _fetchPersistedSceneDataStores];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [v6 allKeys];
  v23 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v23)
  {
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v7);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v11 = [v5 objectForKey:v10];
        if (v11)
        {
          v12 = v11;
LABEL_8:
          v4[2](v4, v10, v12, &v28);

          goto LABEL_9;
        }

        v13 = [v6 objectForKey:v10];
        if (v13)
        {
          v14 = v13;
          v15 = v4;
          v16 = v8;
          v17 = v5;
          v18 = v7;
          v19 = v6;
          v20 = [[NSMutableDictionary alloc] initWithDictionary:v13];
          v12 = [(FBSApplicationDataStore *)v22 _createSceneStoreWithIdentifier:v10 data:v20];

          v6 = v19;
          v7 = v18;
          v5 = v17;
          v8 = v16;
          v4 = v15;

          if (v12)
          {
            goto LABEL_8;
          }
        }

LABEL_9:
        if (v28)
        {
          goto LABEL_16;
        }

        v9 = v9 + 1;
      }

      while (v23 != v9);
      v21 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      v23 = v21;
    }

    while (v21);
  }

LABEL_16:
}

- (id)_cachedSceneDataStores
{
  v4 = objc_getAssociatedObject(self, "__sceneDataStores");
  if (!v4)
  {
    v4 = +[NSMapTable strongToWeakObjectsMapTable];
    if (!v4)
    {
      sub_F52C(a2, self);
    }

    [(FBSApplicationDataStore *)self _setCachedSceneDataStores:v4];
  }

  return v4;
}

- (id)_createSceneStoreWithIdentifier:(id)a3 data:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_F5A0(a2, self);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  sub_F61C(a2, self);
LABEL_3:
  objc_initWeak(&location, self);
  v10 = [SBSceneDataStore alloc];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_C1E8;
  v14[3] = &unk_198F0;
  objc_copyWeak(v17, &location);
  v11 = v7;
  v17[1] = a2;
  v15 = v11;
  v16 = self;
  v12 = [(SBSceneDataStore *)v10 _initWithIdentifier:v11 data:v9 changeHandler:v14];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);

  return v12;
}

- (id)_fetchPersistedSceneDataStores
{
  v3 = objc_opt_class();

  return [(FBSApplicationDataStore *)self safeObjectForKey:@"_SBScenes" ofType:v3];
}

- (void)_modifyPersistentSceneData:(unint64_t)a3 identifier:(id)a4 data:(id)a5
{
  v12 = a4;
  v8 = a5;
  v9 = [NSMutableDictionary alloc];
  v10 = [(FBSApplicationDataStore *)self _fetchPersistedSceneDataStores];
  v11 = [v9 initWithDictionary:v10];

  if (a3 == 1)
  {
    [v11 setObject:v8 forKey:v12];
  }

  else if (!a3)
  {
    [v11 removeObjectForKey:v12];
  }

  [(FBSApplicationDataStore *)self setObject:v11 forKey:@"_SBScenes"];
}

@end
@interface FBSApplicationDataStore
- (id)_cachedSceneDataStores;
- (id)_createSceneStoreWithIdentifier:(id)identifier data:(id)data;
- (id)_fetchPersistedSceneDataStores;
- (id)sceneStoreForIdentifier:(id)identifier creatingIfNecessary:(BOOL)necessary;
- (void)_modifyPersistentSceneData:(unint64_t)data identifier:(id)identifier data:(id)a5;
- (void)enumerateSceneStoresUsingBlock:(id)block;
- (void)removeAllSceneDataStores;
- (void)removeSceneStoreForIdentifier:(id)identifier;
@end

@implementation FBSApplicationDataStore

- (id)sceneStoreForIdentifier:(id)identifier creatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  identifierCopy = identifier;
  BSDispatchQueueAssertMain();
  _cachedSceneDataStores = [(FBSApplicationDataStore *)self _cachedSceneDataStores];
  v8 = [_cachedSceneDataStores objectForKey:identifierCopy];
  if (!v8)
  {
    _fetchPersistedSceneDataStores = [(FBSApplicationDataStore *)self _fetchPersistedSceneDataStores];
    v10 = [_fetchPersistedSceneDataStores objectForKey:identifierCopy];
    if (v10)
    {
      v11 = [[NSMutableDictionary alloc] initWithDictionary:v10];
    }

    else
    {
      if (!necessaryCopy)
      {
        v8 = 0;
LABEL_9:

        goto LABEL_10;
      }

      v11 = objc_alloc_init(NSMutableDictionary);
    }

    v12 = v11;
    v8 = [(FBSApplicationDataStore *)self _createSceneStoreWithIdentifier:identifierCopy data:v11];

    if (v8)
    {
      [_cachedSceneDataStores setObject:v8 forKey:identifierCopy];
    }

    goto LABEL_9;
  }

LABEL_10:

  return v8;
}

- (void)removeSceneStoreForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  BSDispatchQueueAssertMain();
  _cachedSceneDataStores = [(FBSApplicationDataStore *)self _cachedSceneDataStores];
  v5 = [_cachedSceneDataStores objectForKey:identifierCopy];
  [v5 _invalidate];

  [_cachedSceneDataStores removeObjectForKey:identifierCopy];
  [(FBSApplicationDataStore *)self _modifyPersistentSceneData:0 identifier:identifierCopy data:0];
}

- (void)removeAllSceneDataStores
{
  BSDispatchQueueAssertMain();
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  _cachedSceneDataStores = [(FBSApplicationDataStore *)self _cachedSceneDataStores];
  objectEnumerator = [_cachedSceneDataStores objectEnumerator];

  v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v9 + 1) + 8 * v8) _invalidate];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(FBSApplicationDataStore *)self _setCachedSceneDataStores:0];
  [(FBSApplicationDataStore *)self _removeAllPersistentSceneData];
}

- (void)enumerateSceneStoresUsingBlock:(id)block
{
  blockCopy = block;
  BSDispatchQueueAssertMain();
  v28 = 0;
  _cachedSceneDataStores = [(FBSApplicationDataStore *)self _cachedSceneDataStores];
  selfCopy = self;
  _fetchPersistedSceneDataStores = [(FBSApplicationDataStore *)self _fetchPersistedSceneDataStores];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  allKeys = [_fetchPersistedSceneDataStores allKeys];
  v23 = [allKeys countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v11 = [_cachedSceneDataStores objectForKey:v10];
        if (v11)
        {
          v12 = v11;
LABEL_8:
          blockCopy[2](blockCopy, v10, v12, &v28);

          goto LABEL_9;
        }

        v13 = [_fetchPersistedSceneDataStores objectForKey:v10];
        if (v13)
        {
          v14 = v13;
          v15 = blockCopy;
          v16 = v8;
          v17 = _cachedSceneDataStores;
          v18 = allKeys;
          v19 = _fetchPersistedSceneDataStores;
          v20 = [[NSMutableDictionary alloc] initWithDictionary:v13];
          v12 = [(FBSApplicationDataStore *)selfCopy _createSceneStoreWithIdentifier:v10 data:v20];

          _fetchPersistedSceneDataStores = v19;
          allKeys = v18;
          _cachedSceneDataStores = v17;
          v8 = v16;
          blockCopy = v15;

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
      v21 = [allKeys countByEnumeratingWithState:&v24 objects:v29 count:16];
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

- (id)_createSceneStoreWithIdentifier:(id)identifier data:(id)data
{
  identifierCopy = identifier;
  dataCopy = data;
  v9 = dataCopy;
  if (identifierCopy)
  {
    if (dataCopy)
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
  v11 = identifierCopy;
  v17[1] = a2;
  v15 = v11;
  selfCopy = self;
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

- (void)_modifyPersistentSceneData:(unint64_t)data identifier:(id)identifier data:(id)a5
{
  identifierCopy = identifier;
  v8 = a5;
  v9 = [NSMutableDictionary alloc];
  _fetchPersistedSceneDataStores = [(FBSApplicationDataStore *)self _fetchPersistedSceneDataStores];
  v11 = [v9 initWithDictionary:_fetchPersistedSceneDataStores];

  if (data == 1)
  {
    [v11 setObject:v8 forKey:identifierCopy];
  }

  else if (!data)
  {
    [v11 removeObjectForKey:identifierCopy];
  }

  [(FBSApplicationDataStore *)self setObject:v11 forKey:@"_SBScenes"];
}

@end
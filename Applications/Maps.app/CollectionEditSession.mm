@interface CollectionEditSession
+ (id)collectionSessionWithSession:(id)a3;
- (BOOL)isEmpty;
- (BOOL)isObjectSelected:(id)a3;
- (CollectionEditSession)init;
- (CollectionEditSession)initWithCollection:(id)a3;
- (CollectionEditSessionProtocol)delegate;
- (NSMutableSet)selectedObjectSet;
- (void)addSelectedObject:(id)a3;
- (void)addSelectedObjects:(id)a3;
- (void)clearSelectedobjects;
- (void)markAllSelected;
- (void)removeSelectedObject:(id)a3;
@end

@implementation CollectionEditSession

- (CollectionEditSessionProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)markAllSelected
{
  v3 = [(CollectionHandler *)self->_collection content];
  v4 = [NSMutableSet setWithArray:v3];
  [(CollectionEditSession *)self setSelectedObjectSet:v4];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained collectionEditSessionUpdated:self];
}

- (void)removeSelectedObject:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(CollectionEditSession *)self selectedObjectSet];
    [v5 removeObject:v4];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained collectionEditSessionUpdated:self];
  }
}

- (void)addSelectedObjects:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 conformsToProtocol:{&OBJC_PROTOCOL___GEOTransitLine, v14}])
        {
          v12 = sub_10000BDA4();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = [(CollectionEditSession *)self collection];
            *buf = 138412546;
            v19 = v9;
            v20 = 2112;
            v21 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Attempting to add an object to an unsupported collection. Cannot add %@ to %@", buf, 0x16u);
          }

          WeakRetained = v4;
          goto LABEL_14;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if ([v4 count])
  {
    v10 = [(CollectionEditSession *)self selectedObjectSet];
    [v10 addObjectsFromArray:v4];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained collectionEditSessionUpdated:self];
LABEL_14:
  }
}

- (void)addSelectedObject:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___GEOTransitLine])
  {
    WeakRetained = sub_10000BDA4();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v6 = [(CollectionEditSession *)self collection];
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "Attempting to add an object to an unsupported collection. Cannot add %@ to %@", &v8, 0x16u);
    }

    goto LABEL_6;
  }

  if (v4)
  {
    v7 = [(CollectionEditSession *)self selectedObjectSet];
    [v7 addObject:v4];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained collectionEditSessionUpdated:self];
LABEL_6:
  }
}

- (BOOL)isObjectSelected:(id)a3
{
  v4 = a3;
  v5 = [(CollectionEditSession *)self selectedObjectSet];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)isEmpty
{
  v2 = [(CollectionEditSession *)self selectedObjectSet];
  v3 = [v2 count] == 0;

  return v3;
}

- (NSMutableSet)selectedObjectSet
{
  selectedObjectSet = self->_selectedObjectSet;
  if (!selectedObjectSet)
  {
    v4 = +[NSMutableSet set];
    v5 = self->_selectedObjectSet;
    self->_selectedObjectSet = v4;

    selectedObjectSet = self->_selectedObjectSet;
  }

  return selectedObjectSet;
}

- (void)clearSelectedobjects
{
  [(NSMutableSet *)self->_selectedObjectSet removeAllObjects];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained collectionEditSessionUpdated:self];
}

- (CollectionEditSession)initWithCollection:(id)a3
{
  v5 = a3;
  v6 = [(CollectionEditSession *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collection, a3);
  }

  return v7;
}

- (CollectionEditSession)init
{
  v3.receiver = self;
  v3.super_class = CollectionEditSession;
  result = [(CollectionEditSession *)&v3 init];
  if (result)
  {
    result->_analyticsTarget = 201;
  }

  return result;
}

+ (id)collectionSessionWithSession:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 5, v3[5]);
  v5 = [v3[4] mutableCopy];
  v6 = v4[4];
  v4[4] = v5;

  *(v4 + 8) = *(v3 + 8);
  *(v4 + 3) = *(v3 + 3);
  v7 = [v3[3] copy];
  v8 = v4[3];
  v4[3] = v7;

  WeakRetained = objc_loadWeakRetained(v3 + 2);
  objc_storeWeak(v4 + 2, WeakRetained);

  return v4;
}

@end
@interface CollectionEditSession
+ (id)collectionSessionWithSession:(id)session;
- (BOOL)isEmpty;
- (BOOL)isObjectSelected:(id)selected;
- (CollectionEditSession)init;
- (CollectionEditSession)initWithCollection:(id)collection;
- (CollectionEditSessionProtocol)delegate;
- (NSMutableSet)selectedObjectSet;
- (void)addSelectedObject:(id)object;
- (void)addSelectedObjects:(id)objects;
- (void)clearSelectedobjects;
- (void)markAllSelected;
- (void)removeSelectedObject:(id)object;
@end

@implementation CollectionEditSession

- (CollectionEditSessionProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)markAllSelected
{
  content = [(CollectionHandler *)self->_collection content];
  v4 = [NSMutableSet setWithArray:content];
  [(CollectionEditSession *)self setSelectedObjectSet:v4];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained collectionEditSessionUpdated:self];
}

- (void)removeSelectedObject:(id)object
{
  if (object)
  {
    objectCopy = object;
    selectedObjectSet = [(CollectionEditSession *)self selectedObjectSet];
    [selectedObjectSet removeObject:objectCopy];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained collectionEditSessionUpdated:self];
  }
}

- (void)addSelectedObjects:(id)objects
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  objectsCopy = objects;
  v5 = [objectsCopy countByEnumeratingWithState:&v14 objects:v22 count:16];
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
          objc_enumerationMutation(objectsCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 conformsToProtocol:{&OBJC_PROTOCOL___GEOTransitLine, v14}])
        {
          v12 = sub_10000BDA4();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            collection = [(CollectionEditSession *)self collection];
            *buf = 138412546;
            v19 = v9;
            v20 = 2112;
            v21 = collection;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Attempting to add an object to an unsupported collection. Cannot add %@ to %@", buf, 0x16u);
          }

          WeakRetained = objectsCopy;
          goto LABEL_14;
        }
      }

      v6 = [objectsCopy countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if ([objectsCopy count])
  {
    selectedObjectSet = [(CollectionEditSession *)self selectedObjectSet];
    [selectedObjectSet addObjectsFromArray:objectsCopy];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained collectionEditSessionUpdated:self];
LABEL_14:
  }
}

- (void)addSelectedObject:(id)object
{
  objectCopy = object;
  if ([objectCopy conformsToProtocol:&OBJC_PROTOCOL___GEOTransitLine])
  {
    WeakRetained = sub_10000BDA4();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      collection = [(CollectionEditSession *)self collection];
      v8 = 138412546;
      v9 = objectCopy;
      v10 = 2112;
      v11 = collection;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "Attempting to add an object to an unsupported collection. Cannot add %@ to %@", &v8, 0x16u);
    }

    goto LABEL_6;
  }

  if (objectCopy)
  {
    selectedObjectSet = [(CollectionEditSession *)self selectedObjectSet];
    [selectedObjectSet addObject:objectCopy];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained collectionEditSessionUpdated:self];
LABEL_6:
  }
}

- (BOOL)isObjectSelected:(id)selected
{
  selectedCopy = selected;
  selectedObjectSet = [(CollectionEditSession *)self selectedObjectSet];
  v6 = [selectedObjectSet containsObject:selectedCopy];

  return v6;
}

- (BOOL)isEmpty
{
  selectedObjectSet = [(CollectionEditSession *)self selectedObjectSet];
  v3 = [selectedObjectSet count] == 0;

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

- (CollectionEditSession)initWithCollection:(id)collection
{
  collectionCopy = collection;
  v6 = [(CollectionEditSession *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collection, collection);
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

+ (id)collectionSessionWithSession:(id)session
{
  sessionCopy = session;
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 5, sessionCopy[5]);
  v5 = [sessionCopy[4] mutableCopy];
  v6 = v4[4];
  v4[4] = v5;

  *(v4 + 8) = *(sessionCopy + 8);
  *(v4 + 3) = *(sessionCopy + 3);
  v7 = [sessionCopy[3] copy];
  v8 = v4[3];
  v4[3] = v7;

  WeakRetained = objc_loadWeakRetained(sessionCopy + 2);
  objc_storeWeak(v4 + 2, WeakRetained);

  return v4;
}

@end
@interface SharedCollectionsDataProvider
- (GEOObserverHashTable)observers;
- (SharedCollectionsDataProvider)init;
- (void)_updateAndNotifyObservers:(BOOL)a3;
- (void)addSharedCollection:(id)a3;
- (void)removeSharedCollection:(id)a3;
- (void)setActive:(BOOL)a3;
@end

@implementation SharedCollectionsDataProvider

- (void)removeSharedCollection:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_mutableCollections containsObject:?])
  {
    [(NSMutableArray *)self->_mutableCollections removeObject:v4];
    [v4 removeObserver:self];
    [(SharedCollectionsDataProvider *)self _updateAndNotifyObservers:1];
  }
}

- (void)addSharedCollection:(id)a3
{
  v4 = a3;
  if (([(NSMutableArray *)self->_mutableCollections containsObject:?]& 1) == 0)
  {
    [(NSMutableArray *)self->_mutableCollections addObject:v4];
    [v4 addObserver:self];
    [(SharedCollectionsDataProvider *)self _updateAndNotifyObservers:1];
  }
}

- (void)_updateAndNotifyObservers:(BOOL)a3
{
  if (self->_active)
  {
    v3 = a3;
    v6 = sub_1000282CC(self->_mutableCollections, &stru_1016509F0);
    v7 = v6;
    if (v6 == self->_sharedCollections)
    {
      v8 = 1;
    }

    else
    {
      v8 = [(NSArray *)v6 isEqual:?];
    }

    v9 = sub_1000410AC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v19 = v10;
      v11 = NSStringFromSelector(a2);
      if (v3)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = v12;
      if (v8)
      {
        v14 = @"NO";
      }

      else
      {
        v14 = @"YES";
      }

      v15 = v14;
      v16 = [(NSMutableArray *)self->_mutableCollections count];
      *buf = 138413570;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v15;
      v28 = 1024;
      v29 = v16 - [(NSArray *)v7 count];
      v30 = 1024;
      v31 = [(NSArray *)v7 count];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ %@%@, collectionDidChange = %@, # loading collections = %d, # loaded collections = %d", buf, 0x36u);
    }

    if ((v8 & 1) == 0)
    {
      v17 = [(NSArray *)v7 copy];
      sharedCollections = self->_sharedCollections;
      self->_sharedCollections = v17;

      if (v3)
      {
        [(GEOObserverHashTable *)self->_observers homeDataProvidingObjectDidUpdate:self];
      }
    }
  }
}

- (GEOObserverHashTable)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___HomeDataProvidingObserver queue:0];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    [(SharedCollectionsDataProvider *)self _updateAndNotifyObservers:0];
  }
}

- (SharedCollectionsDataProvider)init
{
  v8.receiver = self;
  v8.super_class = SharedCollectionsDataProvider;
  v2 = [(SharedCollectionsDataProvider *)&v8 init];
  v3 = v2;
  if (v2)
  {
    sharedCollections = v2->_sharedCollections;
    v2->_sharedCollections = &__NSArray0__struct;

    v5 = +[NSMutableArray array];
    mutableCollections = v3->_mutableCollections;
    v3->_mutableCollections = v5;
  }

  return v3;
}

@end
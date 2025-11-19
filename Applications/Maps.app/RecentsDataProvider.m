@interface RecentsDataProvider
- (GEOObserverHashTable)observers;
- (RecentsDataProvider)init;
- (void)_recentsDidChange:(id)a3;
- (void)_updateAndNotifyObservers:(BOOL)a3;
- (void)deleteAllRecentsWithCompletion:(id)a3;
- (void)deleteRecents:(id)a3 completion:(id)a4;
- (void)setActive:(BOOL)a3;
@end

@implementation RecentsDataProvider

- (RecentsDataProvider)init
{
  v6.receiver = self;
  v6.super_class = RecentsDataProvider;
  v2 = [(RecentsDataProvider *)&v6 init];
  v3 = v2;
  if (v2)
  {
    recents = v2->_recents;
    v2->_recents = &__NSArray0__struct;
  }

  return v3;
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

- (void)deleteAllRecentsWithCompletion:(id)a3
{
  v5 = a3;
  v6 = sub_1000410AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ %@", &v11, 0x16u);
  }

  v10 = [(RecentsDataProvider *)self _recentsEngine];
  [v10 deleteAllRecentsWithCompletion:v5];
}

- (void)deleteRecents:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = sub_1000410AC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    v14 = 138412546;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ %@", &v14, 0x16u);
  }

  v13 = [(RecentsDataProvider *)self _recentsEngine];
  [v13 deleteRecents:v8 completion:v7];
}

- (void)_recentsDidChange:(id)a3
{
  [(RecentsDataProvider *)self setInitialDataHasBeenLoaded:1];

  [(RecentsDataProvider *)self _updateAndNotifyObservers:1];
}

- (void)_updateAndNotifyObservers:(BOOL)a3
{
  if (self->_active)
  {
    v3 = a3;
    v6 = [(RecentsDataProvider *)self _recentsEngine];
    v7 = [v6 orderedRecents];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &__NSArray0__struct;
    }

    objc_storeStrong(&self->_recents, v9);

    self->_hasInitialData = 1;
    v10 = sub_1000410AC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v14 = [(NSArray *)self->_recents count];
      v15 = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 1024;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@ %@, # recents = %d", &v15, 0x1Cu);
    }

    if (v3)
    {
      [(GEOObserverHashTable *)self->_observers homeDataProvidingObjectDidUpdate:self];
    }
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v3 = a3;
    self->_active = a3;
    v5 = +[NSNotificationCenter defaultCenter];
    v7 = v5;
    if (v3)
    {
      v6 = [(RecentsDataProvider *)self _recentsEngine];
      [v7 addObserver:self selector:"_recentsDidChange:" name:@"RecentsDidChangeNotification" object:v6];

      [(RecentsDataProvider *)self _updateAndNotifyObservers:0];
    }

    else
    {
      [v5 removeObserver:self];
    }
  }
}

@end
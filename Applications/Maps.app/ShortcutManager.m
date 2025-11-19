@interface ShortcutManager
+ (id)sharedManager;
- (NSString)uniqueName;
- (id)_observers;
- (void)_loadMapsSuggestionsEngineIfNecessary;
- (void)_updateMeCard:(id)a3;
- (void)addObserver:(id)a3;
- (void)meCardReader:(id)a3 didUpdateMeCard:(id)a4;
- (void)moveShortcut:(id)a3 toIndex:(int64_t)a4 completion:(id)a5;
- (void)removeObserver:(id)a3;
@end

@implementation ShortcutManager

- (id)_observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___ShortcutManagerObserver queue:0];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

+ (id)sharedManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100DA4BD0;
  block[3] = &unk_1016611D0;
  block[4] = a1;
  if (qword_10195F180 != -1)
  {
    dispatch_once(&qword_10195F180, block);
  }

  v2 = qword_10195F178;

  return v2;
}

- (void)moveShortcut:(id)a3 toIndex:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (self->_engine && self->_meCard)
  {
    objc_initWeak(&location, self);
    v11 = [(MapsSuggestionsEngine *)self->_engine oneFavorites];
    v12 = [(MapsSuggestionsMeCard *)self->_meCard shortcutsForAll];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100DA4DC4;
    v13[3] = &unk_101661108;
    v14 = v10;
    objc_copyWeak(&v15, &location);
    [v11 moveShortcut:v8 toIndex:a4 withSnapshot:v12 handler:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else if (v9)
  {
    (*(v9 + 2))(v9, 0);
  }
}

- (void)meCardReader:(id)a3 didUpdateMeCard:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100DA4EC0;
  v5[3] = &unk_101661A90;
  v5[4] = self;
  v6 = [a4 copy];
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_updateMeCard:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = v7;
  if (self->_meCard != v7)
  {
    v6 = [(MapsSuggestionsMeCard *)v7 isEqual:?];
    v5 = v7;
    if ((v6 & 1) == 0)
    {
      objc_storeStrong(&self->_meCard, a3);
      [(GEOObserverHashTable *)self->_observers shortcutManagerMeCardDidChange:self];
      v5 = v7;
    }
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(ShortcutManager *)self _observers];
  [v5 unregisterObserver:v4];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(ShortcutManager *)self _observers];
  [v5 registerObserver:v4];

  [(ShortcutManager *)self _loadMapsSuggestionsEngineIfNecessary];
}

- (void)_loadMapsSuggestionsEngineIfNecessary
{
  if (!self->_engine)
  {
    objc_initWeak(&location, self);
    v3 = MapsSuggestionsEngineForMapsProcess();
    engine = self->_engine;
    self->_engine = v3;

    v5 = [(MapsSuggestionsEngine *)self->_engine oneFavorites];
    [v5 registerMeCardObserver:self];

    v6 = [(MapsSuggestionsEngine *)self->_engine oneFavorites];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100DA5170;
    v7[3] = &unk_101654100;
    objc_copyWeak(&v8, &location);
    [v6 readMeCardWithHandler:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

@end
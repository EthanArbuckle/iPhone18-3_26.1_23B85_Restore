@interface ShortcutManager
+ (id)sharedManager;
- (NSString)uniqueName;
- (id)_observers;
- (void)_loadMapsSuggestionsEngineIfNecessary;
- (void)_updateMeCard:(id)card;
- (void)addObserver:(id)observer;
- (void)meCardReader:(id)reader didUpdateMeCard:(id)card;
- (void)moveShortcut:(id)shortcut toIndex:(int64_t)index completion:(id)completion;
- (void)removeObserver:(id)observer;
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
  block[4] = self;
  if (qword_10195F180 != -1)
  {
    dispatch_once(&qword_10195F180, block);
  }

  v2 = qword_10195F178;

  return v2;
}

- (void)moveShortcut:(id)shortcut toIndex:(int64_t)index completion:(id)completion
{
  shortcutCopy = shortcut;
  completionCopy = completion;
  v10 = completionCopy;
  if (self->_engine && self->_meCard)
  {
    objc_initWeak(&location, self);
    oneFavorites = [(MapsSuggestionsEngine *)self->_engine oneFavorites];
    shortcutsForAll = [(MapsSuggestionsMeCard *)self->_meCard shortcutsForAll];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100DA4DC4;
    v13[3] = &unk_101661108;
    v14 = v10;
    objc_copyWeak(&v15, &location);
    [oneFavorites moveShortcut:shortcutCopy toIndex:index withSnapshot:shortcutsForAll handler:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)meCardReader:(id)reader didUpdateMeCard:(id)card
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100DA4EC0;
  v5[3] = &unk_101661A90;
  v5[4] = self;
  v6 = [card copy];
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_updateMeCard:(id)card
{
  cardCopy = card;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = cardCopy;
  if (self->_meCard != cardCopy)
  {
    v6 = [(MapsSuggestionsMeCard *)cardCopy isEqual:?];
    v5 = cardCopy;
    if ((v6 & 1) == 0)
    {
      objc_storeStrong(&self->_meCard, card);
      [(GEOObserverHashTable *)self->_observers shortcutManagerMeCardDidChange:self];
      v5 = cardCopy;
    }
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  _observers = [(ShortcutManager *)self _observers];
  [_observers unregisterObserver:observerCopy];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  _observers = [(ShortcutManager *)self _observers];
  [_observers registerObserver:observerCopy];

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

    oneFavorites = [(MapsSuggestionsEngine *)self->_engine oneFavorites];
    [oneFavorites registerMeCardObserver:self];

    oneFavorites2 = [(MapsSuggestionsEngine *)self->_engine oneFavorites];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100DA5170;
    v7[3] = &unk_101654100;
    objc_copyWeak(&v8, &location);
    [oneFavorites2 readMeCardWithHandler:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

@end
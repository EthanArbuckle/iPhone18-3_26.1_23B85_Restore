@interface MeCardDataProvider
- (GEOObserverHashTable)observers;
- (MeCardDataProvider)init;
- (void)_updateMeCardAndNotifyObservers:(BOOL)observers;
- (void)setActive:(BOOL)active;
@end

@implementation MeCardDataProvider

- (void)_updateMeCardAndNotifyObservers:(BOOL)observers
{
  if (self->_active)
  {
    observersCopy = observers;
    meCard = [(ShortcutManager *)self->_shortcutManager meCard];
    v7 = meCard;
    if (meCard && !self->_hasInitialData)
    {
      v8 = 1;
      self->_hasInitialData = 1;
    }

    else
    {
      v8 = 0;
    }

    if (meCard == self->_meCard)
    {
      v9 = 0;
    }

    else
    {
      v9 = [(MapsSuggestionsMeCard *)meCard isEqual:?]^ 1;
    }

    v10 = sub_1000410AC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      NSStringFromClass(v11);
      v12 = v22 = v9;
      v19 = NSStringFromSelector(a2);
      shortcutsForAll = [(MapsSuggestionsMeCard *)v7 shortcutsForAll];
      v14 = [shortcutsForAll count];
      v21 = observersCopy;
      if (v8)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v20 = v8;
      v16 = v15;
      if (v22)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v18 = v17;
      *buf = 138413314;
      v24 = v12;
      v25 = 2112;
      v26 = v19;
      v27 = 1024;
      v28 = v14;
      v29 = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@ %@, # favorites = %d, hasInitialDataChanged = %@, meCardChanged = %@", buf, 0x30u);

      observersCopy = v21;
      v8 = v20;

      v9 = v22;
    }

    if ((v8 | v9))
    {
      objc_storeStrong(&self->_meCard, v7);
      if (observersCopy)
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

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    shortcutManager = self->_shortcutManager;
    if (active)
    {
      [(ShortcutManager *)shortcutManager addObserver:self];

      [(MeCardDataProvider *)self _updateMeCardAndNotifyObservers:0];
    }

    else
    {

      [(ShortcutManager *)shortcutManager removeObserver:self];
    }
  }
}

- (MeCardDataProvider)init
{
  v6.receiver = self;
  v6.super_class = MeCardDataProvider;
  v2 = [(MeCardDataProvider *)&v6 init];
  if (v2)
  {
    v3 = +[ShortcutManager sharedManager];
    shortcutManager = v2->_shortcutManager;
    v2->_shortcutManager = v3;
  }

  return v2;
}

@end
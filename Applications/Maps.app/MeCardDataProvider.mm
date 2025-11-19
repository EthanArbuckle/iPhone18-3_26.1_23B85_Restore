@interface MeCardDataProvider
- (GEOObserverHashTable)observers;
- (MeCardDataProvider)init;
- (void)_updateMeCardAndNotifyObservers:(BOOL)a3;
- (void)setActive:(BOOL)a3;
@end

@implementation MeCardDataProvider

- (void)_updateMeCardAndNotifyObservers:(BOOL)a3
{
  if (self->_active)
  {
    v3 = a3;
    v6 = [(ShortcutManager *)self->_shortcutManager meCard];
    v7 = v6;
    if (v6 && !self->_hasInitialData)
    {
      v8 = 1;
      self->_hasInitialData = 1;
    }

    else
    {
      v8 = 0;
    }

    if (v6 == self->_meCard)
    {
      v9 = 0;
    }

    else
    {
      v9 = [(MapsSuggestionsMeCard *)v6 isEqual:?]^ 1;
    }

    v10 = sub_1000410AC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      NSStringFromClass(v11);
      v12 = v22 = v9;
      v19 = NSStringFromSelector(a2);
      v13 = [(MapsSuggestionsMeCard *)v7 shortcutsForAll];
      v14 = [v13 count];
      v21 = v3;
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

      v3 = v21;
      v8 = v20;

      v9 = v22;
    }

    if ((v8 | v9))
    {
      objc_storeStrong(&self->_meCard, v7);
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
    shortcutManager = self->_shortcutManager;
    if (a3)
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
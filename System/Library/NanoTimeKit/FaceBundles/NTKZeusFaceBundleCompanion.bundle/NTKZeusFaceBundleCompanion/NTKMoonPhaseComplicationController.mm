@interface NTKMoonPhaseComplicationController
- (void)_activate;
- (void)_afterEventTimerFired:(id)fired;
- (void)_asyncUpdateDisplay;
- (void)_configureForLegacyDisplay:(id)display;
- (void)_deactivate;
- (void)_invalidateEventTimer;
- (void)_scheduleAfterEventTimer:(id)timer;
- (void)_updateDisplayForced:(BOOL)forced;
- (void)setDisplayProperties:(id)properties forDisplayWrapper:(id)wrapper;
- (void)setShowsLockedUI:(BOOL)i;
- (void)setTimeTravelDate:(id)date animated:(BOOL)animated;
@end

@implementation NTKMoonPhaseComplicationController

- (void)_activate
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_updateDisplay" name:UIApplicationSignificantTimeChangeNotification object:0];
  [v3 addObserver:self selector:"_asyncUpdateDisplay" name:NSCalendarDayChangedNotification object:0];
  [v3 addObserver:self selector:"_updateDisplay" name:NSCurrentLocaleDidChangeNotification object:0];
  v4 = +[NTKLocationManager sharedLocationManager];
  objc_initWeak(&location, self);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_DBC0;
  v12 = &unk_44E28;
  objc_copyWeak(&v13, &location);
  v5 = objc_retainBlock(&v9);
  v6 = [v4 startLocationUpdatesWithIdentifier:@"ntk.moonPhaseComplication" handler:{v5, v9, v10, v11, v12}];
  [(NTKMoonPhaseComplicationController *)self setToken:v6];

  currentLocation = [v4 currentLocation];
  anyLocation = [v4 anyLocation];
  (v5[2])(v5, currentLocation, anyLocation, 0);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_deactivate
{
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIApplicationSignificantTimeChangeNotification object:0];
  [v5 removeObserver:self name:NSCalendarDayChangedNotification object:0];
  [v5 removeObserver:self name:NSCurrentLocaleDidChangeNotification object:0];
  if (self->_token)
  {
    v3 = +[NTKLocationManager sharedLocationManager];
    [v3 stopLocationUpdatesForToken:self->_token];

    token = self->_token;
    self->_token = 0;
  }

  [(NTKMoonPhaseComplicationController *)self _invalidateEventTimer];
}

- (void)_configureForLegacyDisplay:(id)display
{
  displayCopy = display;
  *&self->_displayFlags = *&self->_displayFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_displayFlags = *&self->_displayFlags & 0xFD | v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *&self->_displayFlags = *&self->_displayFlags & 0xFB | v6;
  if (objc_opt_respondsToSelector())
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  *&self->_displayFlags = *&self->_displayFlags & 0xF7 | v7;
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = 16;
  }

  else
  {
    v9 = 0;
  }

  *&self->_displayFlags = *&self->_displayFlags & 0xEF | v9;

  [(NTKMoonPhaseComplicationController *)self _updateDisplayForced:1];
}

- (void)setDisplayProperties:(id)properties forDisplayWrapper:(id)wrapper
{
  v7.receiver = self;
  v7.super_class = NTKMoonPhaseComplicationController;
  [(NTKMoonPhaseComplicationController *)&v7 setDisplayProperties:properties forDisplayWrapper:wrapper];
  effectiveFaceDataMode = [(NTKMoonPhaseComplicationController *)self effectiveFaceDataMode];
  self->_paused = effectiveFaceDataMode != &dword_0 + 1;
  if ((*&self->_displayFlags & 0x10) != 0)
  {
    legacyDisplay = [(NTKMoonPhaseComplicationController *)self legacyDisplay];
    [legacyDisplay setPaused:self->_paused];

    if (self->_paused)
    {
      return;
    }
  }

  else if (effectiveFaceDataMode != &dword_0 + 1)
  {
    return;
  }

  if (self->_missedUpdateWhilePaused)
  {
    self->_missedUpdateWhilePaused = 0;
    [(NTKMoonPhaseComplicationController *)self _updateDisplay];
  }
}

- (void)setShowsLockedUI:(BOOL)i
{
  iCopy = i;
  showsLockedUI = [(NTKMoonPhaseComplicationController *)self showsLockedUI];
  v6.receiver = self;
  v6.super_class = NTKMoonPhaseComplicationController;
  [(NTKMoonPhaseComplicationController *)&v6 setShowsLockedUI:iCopy];
  if (showsLockedUI != [(NTKMoonPhaseComplicationController *)self showsLockedUI])
  {
    [(NTKMoonPhaseComplicationController *)self _updateDisplay];
  }
}

- (void)_asyncUpdateDisplay
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E01C;
  block[3] = &unk_44E50;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_updateDisplayForced:(BOOL)forced
{
  if (self->_paused && !forced)
  {
    self->_missedUpdateWhilePaused = 1;
    return;
  }

  legacyDisplay = [(NTKMoonPhaseComplicationController *)self legacyDisplay];
  displayFlags = self->_displayFlags;
  if ((displayFlags & 1) == 0)
  {
    if ((*&self->_displayFlags & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    [legacyDisplay setPhaseNumber:88 hemisphere:0];
    if ((*&self->_displayFlags & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = NUNILocalizedString();
  [legacyDisplay setPhaseName:v5];

  displayFlags = self->_displayFlags;
  if ((displayFlags & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((displayFlags & 8) != 0)
  {
LABEL_7:
    [legacyDisplay setLocked:{-[NTKMoonPhaseComplicationController showsLockedUI](self, "showsLockedUI")}];
  }

LABEL_8:
}

- (void)setTimeTravelDate:(id)date animated:(BOOL)animated
{
  dateCopy = date;
  if (([dateCopy isEqualToDate:self->_timeTravelDate] & 1) == 0)
  {
    objc_storeStrong(&self->_timeTravelDate, date);
    [(NTKMoonPhaseComplicationController *)self _updateDisplay];
  }
}

- (void)_invalidateEventTimer
{
  if ([(NSTimer *)self->_afterEventTimer isValid])
  {
    afterEventTimer = self->_afterEventTimer;

    [(NSTimer *)afterEventTimer invalidate];
  }
}

- (void)_scheduleAfterEventTimer:(id)timer
{
  v12 = [timer dateByAddingTimeInterval:60.0];
  if (timer && (*&self->_displayFlags & 4) != 0 && (+[NTKDate complicationDate](NTKDate, "complicationDate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v12 compare:v5], v5, v6 == &dword_0 + 1))
  {
    fireDate = [(NSTimer *)self->_afterEventTimer fireDate];
    v8 = [v12 isEqualToDate:fireDate];

    if ((v8 & 1) == 0)
    {
      [(NTKMoonPhaseComplicationController *)self _invalidateEventTimer];
      v9 = [[NSTimer alloc] initWithFireDate:v12 interval:self target:"_afterEventTimerFired:" selector:0 userInfo:0 repeats:0.0];
      afterEventTimer = self->_afterEventTimer;
      self->_afterEventTimer = v9;

      v11 = +[NSRunLoop mainRunLoop];
      [v11 addTimer:self->_afterEventTimer forMode:NSRunLoopCommonModes];
    }
  }

  else
  {
    [(NTKMoonPhaseComplicationController *)self _invalidateEventTimer];
  }
}

- (void)_afterEventTimerFired:(id)fired
{
  if ((*&self->_displayFlags & 4) != 0)
  {
    [(NTKMoonPhaseComplicationController *)self _updateDisplay];
  }
}

@end
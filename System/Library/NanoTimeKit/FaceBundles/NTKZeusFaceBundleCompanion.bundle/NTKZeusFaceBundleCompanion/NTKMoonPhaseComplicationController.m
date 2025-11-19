@interface NTKMoonPhaseComplicationController
- (void)_activate;
- (void)_afterEventTimerFired:(id)a3;
- (void)_asyncUpdateDisplay;
- (void)_configureForLegacyDisplay:(id)a3;
- (void)_deactivate;
- (void)_invalidateEventTimer;
- (void)_scheduleAfterEventTimer:(id)a3;
- (void)_updateDisplayForced:(BOOL)a3;
- (void)setDisplayProperties:(id)a3 forDisplayWrapper:(id)a4;
- (void)setShowsLockedUI:(BOOL)a3;
- (void)setTimeTravelDate:(id)a3 animated:(BOOL)a4;
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

  v7 = [v4 currentLocation];
  v8 = [v4 anyLocation];
  (v5[2])(v5, v7, v8, 0);

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

- (void)_configureForLegacyDisplay:(id)a3
{
  v4 = a3;
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

- (void)setDisplayProperties:(id)a3 forDisplayWrapper:(id)a4
{
  v7.receiver = self;
  v7.super_class = NTKMoonPhaseComplicationController;
  [(NTKMoonPhaseComplicationController *)&v7 setDisplayProperties:a3 forDisplayWrapper:a4];
  v5 = [(NTKMoonPhaseComplicationController *)self effectiveFaceDataMode];
  self->_paused = v5 != &dword_0 + 1;
  if ((*&self->_displayFlags & 0x10) != 0)
  {
    v6 = [(NTKMoonPhaseComplicationController *)self legacyDisplay];
    [v6 setPaused:self->_paused];

    if (self->_paused)
    {
      return;
    }
  }

  else if (v5 != &dword_0 + 1)
  {
    return;
  }

  if (self->_missedUpdateWhilePaused)
  {
    self->_missedUpdateWhilePaused = 0;
    [(NTKMoonPhaseComplicationController *)self _updateDisplay];
  }
}

- (void)setShowsLockedUI:(BOOL)a3
{
  v3 = a3;
  v5 = [(NTKMoonPhaseComplicationController *)self showsLockedUI];
  v6.receiver = self;
  v6.super_class = NTKMoonPhaseComplicationController;
  [(NTKMoonPhaseComplicationController *)&v6 setShowsLockedUI:v3];
  if (v5 != [(NTKMoonPhaseComplicationController *)self showsLockedUI])
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

- (void)_updateDisplayForced:(BOOL)a3
{
  if (self->_paused && !a3)
  {
    self->_missedUpdateWhilePaused = 1;
    return;
  }

  v6 = [(NTKMoonPhaseComplicationController *)self legacyDisplay];
  displayFlags = self->_displayFlags;
  if ((displayFlags & 1) == 0)
  {
    if ((*&self->_displayFlags & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    [v6 setPhaseNumber:88 hemisphere:0];
    if ((*&self->_displayFlags & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = NUNILocalizedString();
  [v6 setPhaseName:v5];

  displayFlags = self->_displayFlags;
  if ((displayFlags & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((displayFlags & 8) != 0)
  {
LABEL_7:
    [v6 setLocked:{-[NTKMoonPhaseComplicationController showsLockedUI](self, "showsLockedUI")}];
  }

LABEL_8:
}

- (void)setTimeTravelDate:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  if (([v6 isEqualToDate:self->_timeTravelDate] & 1) == 0)
  {
    objc_storeStrong(&self->_timeTravelDate, a3);
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

- (void)_scheduleAfterEventTimer:(id)a3
{
  v12 = [a3 dateByAddingTimeInterval:60.0];
  if (a3 && (*&self->_displayFlags & 4) != 0 && (+[NTKDate complicationDate](NTKDate, "complicationDate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v12 compare:v5], v5, v6 == &dword_0 + 1))
  {
    v7 = [(NSTimer *)self->_afterEventTimer fireDate];
    v8 = [v12 isEqualToDate:v7];

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

- (void)_afterEventTimerFired:(id)a3
{
  if ((*&self->_displayFlags & 4) != 0)
  {
    [(NTKMoonPhaseComplicationController *)self _updateDisplay];
  }
}

@end
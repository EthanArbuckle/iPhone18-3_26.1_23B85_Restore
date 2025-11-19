@interface NTKWorldClockComplicationController
- (void)_activate;
- (void)_configureForLegacyDisplay:(id)a3;
- (void)_deactivate;
- (void)_endTimeTravelAnimated:(BOOL)a3;
- (void)_handleAbbreviationStoreChange:(id)a3;
- (void)_handleLocaleChange;
- (void)_handleTimeZoneChange;
- (void)_startTimeTravelAnimated:(BOOL)a3;
- (void)_updateDisplay;
- (void)performTapActionForDisplayWrapper:(id)a3;
- (void)setDisplayProperties:(id)a3 forDisplayWrapper:(id)a4;
- (void)setPauseDate:(id)a3;
- (void)setTimeTravelDate:(id)a3 animated:(BOOL)a4;
@end

@implementation NTKWorldClockComplicationController

- (void)_activate
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handleAbbreviationStoreChange:" name:NTKCustomWorldCityAbbreviationsChangedNotification object:0];
  [v3 addObserver:self selector:"_handleLocaleChange" name:NSCurrentLocaleDidChangeNotification object:0];
  [v3 addObserver:self selector:"_handleTimeZoneChange" name:NSSystemTimeZoneDidChangeNotification object:0];
}

- (void)_deactivate
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NTKCustomWorldCityAbbreviationsChangedNotification object:0];
  [v3 removeObserver:self name:NSCurrentLocaleDidChangeNotification object:0];
  [v3 removeObserver:self name:NSSystemTimeZoneDidChangeNotification object:0];
}

- (void)_configureForLegacyDisplay:(id)a3
{
  v4 = a3;
  *&self->_displayFlags = *&self->_displayFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  *&self->_displayFlags = *&self->_displayFlags & 0xFD | v6;

  [(NTKWorldClockComplicationController *)self _updateDisplay];
}

- (void)setPauseDate:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = NTKWorldClockComplicationController;
  [(NTKWorldClockComplicationController *)&v6 setPauseDate:v4];
  if ([(NTKWorldClockComplicationController *)self effectiveFaceDataMode]== &dword_0 + 2)
  {
    v5 = [(NTKWorldClockComplicationController *)self legacyDisplay];
    [v5 setOverrideDate:v4];
  }
}

- (void)setDisplayProperties:(id)a3 forDisplayWrapper:(id)a4
{
  v9.receiver = self;
  v9.super_class = NTKWorldClockComplicationController;
  [(NTKWorldClockComplicationController *)&v9 setDisplayProperties:a3 forDisplayWrapper:a4];
  v5 = [(NTKWorldClockComplicationController *)self effectiveFaceDataMode];
  v6 = [(NTKWorldClockComplicationController *)self legacyDisplay];
  if (v5 == &dword_0 + 2)
  {
    v7 = [(NTKWorldClockComplicationController *)self pauseDate];
  }

  else
  {
    if (v5 == &dword_0 + 3)
    {
      NTKIdealizedDate();
    }

    else
    {
      NTKNilOrDateOverrideInDemoMode();
    }
    v7 = ;
  }

  v8 = v7;
  [v6 setOverrideDate:v7];
}

- (void)performTapActionForDisplayWrapper:(id)a3
{
  v4 = a3;
  v5 = [(NTKWorldClockComplicationController *)self complication];
  v6 = [v5 city];
  v7 = [v6 alCityId];
  v9 = [NSString stringWithFormat:@"nwc://id/%@", v7];

  v8 = [NSURL URLWithString:v9];
  [(NTKWorldClockComplicationController *)self _openAppWithURL:v8 forDisplayWrapper:v4];
}

- (void)_updateDisplay
{
  v3 = [(NTKWorldClockComplicationController *)self complication];
  v12 = [v3 city];

  displayFlags = self->_displayFlags;
  if (displayFlags)
  {
    v5 = [(NTKWorldClockComplicationController *)self legacyDisplay];
    v6 = NTKWorldClockCityAbbreviation();
    [v5 setShortCity:v6];

    displayFlags = self->_displayFlags;
  }

  if ((displayFlags & 2) != 0)
  {
    v7 = [(NTKWorldClockComplicationController *)self legacyDisplay];
    v8 = [v12 name];
    [v7 setLongCity:v8];
  }

  v9 = [(NTKWorldClockComplicationController *)self legacyDisplay];
  if (v12)
  {
    v10 = [v12 timeZone];
    v11 = [NSTimeZone timeZoneWithName:v10];
    [v9 setTimeZone:v11];
  }

  else
  {
    [v9 setTimeZone:0];
  }
}

- (void)_handleAbbreviationStoreChange:(id)a3
{
  if (*&self->_displayFlags)
  {
    [(NTKWorldClockComplicationController *)self _updateDisplay];
  }
}

- (void)_handleLocaleChange
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_ECE0;
  block[3] = &unk_44E50;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_handleTimeZoneChange
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_ED5C;
  block[3] = &unk_44E50;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_startTimeTravelAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(NTKWorldClockComplicationController *)self legacyDisplay];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(NTKWorldClockComplicationController *)self legacyDisplay];
    [v7 startTimeTravelAnimated:v3];
  }
}

- (void)_endTimeTravelAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(NTKWorldClockComplicationController *)self legacyDisplay];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(NTKWorldClockComplicationController *)self legacyDisplay];
    [v7 endTimeTravelAnimated:v3];
  }
}

- (void)setTimeTravelDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  timeTravelDate = self->_timeTravelDate;
  if (!v6 || timeTravelDate)
  {
    if (!v6 && timeTravelDate)
    {
      [(NTKWorldClockComplicationController *)self _endTimeTravelAnimated:v4];
    }
  }

  else
  {
    [(NTKWorldClockComplicationController *)self _startTimeTravelAnimated:v4];
  }

  v9 = self->_timeTravelDate;
  self->_timeTravelDate = v7;
  v10 = v7;

  v11 = [(NTKWorldClockComplicationController *)self legacyDisplay];
  [v11 setOverrideDate:self->_timeTravelDate];
}

@end
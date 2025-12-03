@interface NTKWorldClockComplicationController
- (void)_activate;
- (void)_configureForLegacyDisplay:(id)display;
- (void)_deactivate;
- (void)_endTimeTravelAnimated:(BOOL)animated;
- (void)_handleAbbreviationStoreChange:(id)change;
- (void)_handleLocaleChange;
- (void)_handleTimeZoneChange;
- (void)_startTimeTravelAnimated:(BOOL)animated;
- (void)_updateDisplay;
- (void)performTapActionForDisplayWrapper:(id)wrapper;
- (void)setDisplayProperties:(id)properties forDisplayWrapper:(id)wrapper;
- (void)setPauseDate:(id)date;
- (void)setTimeTravelDate:(id)date animated:(BOOL)animated;
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

- (void)_configureForLegacyDisplay:(id)display
{
  displayCopy = display;
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

- (void)setPauseDate:(id)date
{
  dateCopy = date;
  v6.receiver = self;
  v6.super_class = NTKWorldClockComplicationController;
  [(NTKWorldClockComplicationController *)&v6 setPauseDate:dateCopy];
  if ([(NTKWorldClockComplicationController *)self effectiveFaceDataMode]== &dword_0 + 2)
  {
    legacyDisplay = [(NTKWorldClockComplicationController *)self legacyDisplay];
    [legacyDisplay setOverrideDate:dateCopy];
  }
}

- (void)setDisplayProperties:(id)properties forDisplayWrapper:(id)wrapper
{
  v9.receiver = self;
  v9.super_class = NTKWorldClockComplicationController;
  [(NTKWorldClockComplicationController *)&v9 setDisplayProperties:properties forDisplayWrapper:wrapper];
  effectiveFaceDataMode = [(NTKWorldClockComplicationController *)self effectiveFaceDataMode];
  legacyDisplay = [(NTKWorldClockComplicationController *)self legacyDisplay];
  if (effectiveFaceDataMode == &dword_0 + 2)
  {
    pauseDate = [(NTKWorldClockComplicationController *)self pauseDate];
  }

  else
  {
    if (effectiveFaceDataMode == &dword_0 + 3)
    {
      NTKIdealizedDate();
    }

    else
    {
      NTKNilOrDateOverrideInDemoMode();
    }
    pauseDate = ;
  }

  v8 = pauseDate;
  [legacyDisplay setOverrideDate:pauseDate];
}

- (void)performTapActionForDisplayWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  complication = [(NTKWorldClockComplicationController *)self complication];
  city = [complication city];
  alCityId = [city alCityId];
  v9 = [NSString stringWithFormat:@"nwc://id/%@", alCityId];

  v8 = [NSURL URLWithString:v9];
  [(NTKWorldClockComplicationController *)self _openAppWithURL:v8 forDisplayWrapper:wrapperCopy];
}

- (void)_updateDisplay
{
  complication = [(NTKWorldClockComplicationController *)self complication];
  city = [complication city];

  displayFlags = self->_displayFlags;
  if (displayFlags)
  {
    legacyDisplay = [(NTKWorldClockComplicationController *)self legacyDisplay];
    v6 = NTKWorldClockCityAbbreviation();
    [legacyDisplay setShortCity:v6];

    displayFlags = self->_displayFlags;
  }

  if ((displayFlags & 2) != 0)
  {
    legacyDisplay2 = [(NTKWorldClockComplicationController *)self legacyDisplay];
    name = [city name];
    [legacyDisplay2 setLongCity:name];
  }

  legacyDisplay3 = [(NTKWorldClockComplicationController *)self legacyDisplay];
  if (city)
  {
    timeZone = [city timeZone];
    v11 = [NSTimeZone timeZoneWithName:timeZone];
    [legacyDisplay3 setTimeZone:v11];
  }

  else
  {
    [legacyDisplay3 setTimeZone:0];
  }
}

- (void)_handleAbbreviationStoreChange:(id)change
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

- (void)_startTimeTravelAnimated:(BOOL)animated
{
  animatedCopy = animated;
  legacyDisplay = [(NTKWorldClockComplicationController *)self legacyDisplay];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    legacyDisplay2 = [(NTKWorldClockComplicationController *)self legacyDisplay];
    [legacyDisplay2 startTimeTravelAnimated:animatedCopy];
  }
}

- (void)_endTimeTravelAnimated:(BOOL)animated
{
  animatedCopy = animated;
  legacyDisplay = [(NTKWorldClockComplicationController *)self legacyDisplay];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    legacyDisplay2 = [(NTKWorldClockComplicationController *)self legacyDisplay];
    [legacyDisplay2 endTimeTravelAnimated:animatedCopy];
  }
}

- (void)setTimeTravelDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  v7 = dateCopy;
  timeTravelDate = self->_timeTravelDate;
  if (!dateCopy || timeTravelDate)
  {
    if (!dateCopy && timeTravelDate)
    {
      [(NTKWorldClockComplicationController *)self _endTimeTravelAnimated:animatedCopy];
    }
  }

  else
  {
    [(NTKWorldClockComplicationController *)self _startTimeTravelAnimated:animatedCopy];
  }

  v9 = self->_timeTravelDate;
  self->_timeTravelDate = v7;
  v10 = v7;

  legacyDisplay = [(NTKWorldClockComplicationController *)self legacyDisplay];
  [legacyDisplay setOverrideDate:self->_timeTravelDate];
}

@end
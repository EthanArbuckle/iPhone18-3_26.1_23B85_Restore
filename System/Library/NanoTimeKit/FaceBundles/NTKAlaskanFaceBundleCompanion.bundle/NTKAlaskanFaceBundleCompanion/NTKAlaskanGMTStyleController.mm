@interface NTKAlaskanGMTStyleController
- ($F24F406B2B787EFB06265DBA3D28CBD5)_geoLocationForCLLocation:(id)a3;
- (BOOL)containsCityIdentifier:(id)a3;
- (BOOL)crownInputHandlerCanChangeProgress:(id)a3;
- (BOOL)crownInputHandlerDidPressCrown:(id)a3;
- (BOOL)updateTimezoneLocations:(id)a3;
- (BOOL)updateWorldClockCitiesIfNeeded;
- (NTKAlaskanGMTStyleController)initWithContentView:(id)a3 crownInputHandler:(id)a4 storage:(id)a5;
- (NTKAlaskanGMTStyleView)gmtView;
- (NTKAnalogFaceView)faceView;
- (float)hourOffsetForTimezone:(id)a3;
- (id)almanacTransitInfoForCity:(id)a3;
- (id)currentDate;
- (id)currentTimezoneLocation;
- (id)timezoneLocationFromCLLocation:(id)a3;
- (id)timezoneLocationFromCity:(id)a3;
- (id)timezoneLocationFromCityIdentifier:(int)a3;
- (id)worldClockCities;
- (void)_saveReferenceTimezoneLocation;
- (void)_startClockUpdates;
- (void)_stopClockUpdates;
- (void)_updateDefaultLocations;
- (void)alaskanGMTStyleView:(id)a3 didSelectTimezoneLocation:(id)a4;
- (void)alaskanGMTStyleViewDidCancelEditing:(id)a3 animated:(BOOL)a4;
- (void)alaskanGMTStyleViewDidFinishEditing:(id)a3;
- (void)alaskanGMTStyleViewDidStartEditing:(id)a3;
- (void)crownInputHandler:(id)a3 didChangeProgress:(double)a4;
- (void)currentLocationChangeNotification;
- (void)dealloc;
- (void)handleExitingEditModeAnimated:(BOOL)a3;
- (void)handleLocalTimeZoneChangedNotification;
- (void)handleTimezoneChanged;
- (void)resetGMTSunsetSunriseInformation;
- (void)setDatamode:(int64_t)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setStorage:(id)a3;
- (void)setTritiumAnimationInProgress:(BOOL)a3;
- (void)significantTimeChangeNotification;
- (void)startListeningForLocalTimeZoneChangeNotification;
- (void)startListeningForLocationChangeNotification;
- (void)startListeningForSignificantTimeChangeNotification;
- (void)startListeningTimezoneChangeNotification;
- (void)stopListeningForLocalTimeZoneChangeNotification;
- (void)stopListeningForLocationChangeNotification;
- (void)stopListeningForSignificantTimeChangeNotification;
- (void)stopListeningForTimezoneChangeNotification;
- (void)updateSelectionInViewAnimated:(BOOL)a3 saveSelection:(BOOL)a4 completionBlock:(id)a5;
- (void)updateWorldClockCities;
@end

@implementation NTKAlaskanGMTStyleController

- (NTKAlaskanGMTStyleController)initWithContentView:(id)a3 crownInputHandler:(id)a4 storage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = NTKAlaskanGMTStyleController;
  v11 = [(NTKAlaskanGMTStyleController *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_crownInputHandler, a4);
    objc_storeStrong(&v12->_storage, a5);
    v13 = objc_storeWeak(&v12->_gmtView, v8);
    [v8 setDelegate:v12];

    [(NTKCrownInputHandler *)v12->_crownInputHandler setDelegate:v12];
    [(NTKCrownInputHandler *)v12->_crownInputHandler setOffsetPerRevolution:NTKCrownInputHandlerDefaultOffsetPerRevolution];
    [(NTKCrownInputHandler *)v12->_crownInputHandler setUseWideIdleCheck:0];
    [(NTKCrownInputHandler *)v12->_crownInputHandler progress];
    v12->_previousProgress = v14;
    v15 = [NSSet setWithObjects:&off_3A6E0, &off_3A6F8, &off_3A710, &off_3A728, &off_3A740, &off_3A758, &off_3A770, &off_3A788, &off_3A7A0, &off_3A7B8, &off_3A7D0, &off_3A7E8, &off_3A800, &off_3A818, &off_3A830, &off_3A848, &off_3A860, &off_3A878, &off_3A890, &off_3A8A8, &off_3A8C0, &off_3A8D8, &off_3A8F0, &off_3A908, &off_3A920, 0];
    defaultCityIdentifiers = v12->_defaultCityIdentifiers;
    v12->_defaultCityIdentifiers = v15;

    [(NTKAlaskanGMTStyleController *)v12 _updateDefaultLocations];
    WeakRetained = objc_loadWeakRetained(&v12->_gmtView);
    [WeakRetained setAdditionalTimezoneLocations:&__NSArray0__struct];

    [(NTKAlaskanGMTStyleController *)v12 updateWorldClockCitiesIfNeeded];
    [(NTKAlaskanGMTStyleController *)v12 startListeningForSignificantTimeChangeNotification];
    [(NTKAlaskanGMTStyleController *)v12 startListeningForLocationChangeNotification];
    v18 = NTKIdealizedDate();
    v19 = objc_loadWeakRetained(&v12->_gmtView);
    [v19 setDate:v18];
  }

  return v12;
}

- (void)dealloc
{
  [(NTKAlaskanGMTStyleController *)self _stopClockUpdates];
  [(NTKAlaskanGMTStyleController *)self stopListeningForSignificantTimeChangeNotification];
  [(NTKAlaskanGMTStyleController *)self stopListeningForLocalTimeZoneChangeNotification];
  [(NTKAlaskanGMTStyleController *)self stopListeningForLocationChangeNotification];
  [(NTKAlaskanGMTStyleController *)self stopListeningForTimezoneChangeNotification];
  v3.receiver = self;
  v3.super_class = NTKAlaskanGMTStyleController;
  [(NTKAlaskanGMTStyleController *)&v3 dealloc];
}

- (void)setTritiumAnimationInProgress:(BOOL)a3
{
  v3 = a3;
  self->_tritiumAnimationInProgress = a3;
  WeakRetained = objc_loadWeakRetained(&self->_gmtView);
  [WeakRetained setUserInteractionEnabled:!v3];
}

- (void)setStorage:(id)a3
{
  objc_storeStrong(&self->_storage, a3);

  [(NTKAlaskanGMTStyleController *)self updateWorldClockCitiesIfNeeded];
}

- (void)setDatamode:(int64_t)a3
{
  if (a3 <= 5)
  {
    if (((1 << a3) & 0x35) != 0)
    {
      [(NTKAlaskanGMTStyleController *)self _stopClockUpdates];
      WeakRetained = objc_loadWeakRetained(&self->_gmtView);
      [WeakRetained setIsEditing:0];

      v5 = objc_loadWeakRetained(&self->_gmtView);
      [v5 setUserInteractionEnabled:0];

      [(NTKAlaskanGMTStyleController *)self stopListeningForLocalTimeZoneChangeNotification];
      [(NTKAlaskanGMTStyleController *)self stopListeningForTimezoneChangeNotification];

      [(NTKAlaskanGMTStyleController *)self updateWorldClockCitiesIfNeeded];
    }

    else if (a3 == 1)
    {
      [(NTKAlaskanGMTStyleController *)self updateWorldClockCitiesIfNeeded];
      v6 = [(NTKAlaskanGMTStyleController *)self tritiumAnimationInProgress];
      v7 = objc_loadWeakRetained(&self->_gmtView);
      [v7 setUserInteractionEnabled:v6 ^ 1];

      [(NTKAlaskanGMTStyleController *)self _startClockUpdates];
      [(NTKAlaskanGMTStyleController *)self startListeningForLocalTimeZoneChangeNotification];

      [(NTKAlaskanGMTStyleController *)self startListeningTimezoneChangeNotification];
    }

    else
    {
      [(NTKAlaskanGMTStyleController *)self _stopClockUpdates];
      v8 = objc_loadWeakRetained(&self->_gmtView);
      [v8 setIsEditing:0];

      v9 = objc_loadWeakRetained(&self->_gmtView);
      [v9 setUserInteractionEnabled:0];

      [(NTKAlaskanGMTStyleController *)self stopListeningForLocalTimeZoneChangeNotification];

      [(NTKAlaskanGMTStyleController *)self stopListeningForTimezoneChangeNotification];
    }
  }
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_E7CC;
  v8[3] = &unk_38FB8;
  objc_copyWeak(&v10, &location);
  v7 = v6;
  v9 = v7;
  [UIView animateWithDuration:v8 animations:a4];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)resetGMTSunsetSunriseInformation
{
  WeakRetained = objc_loadWeakRetained(&self->_gmtView);
  [WeakRetained selectHourOffset:0.0];
}

- (void)_startClockUpdates
{
  if (!self->_clockTimerToken)
  {
    objc_initWeak(&location, self);
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_E980;
    v10 = &unk_38B18;
    objc_copyWeak(&v11, &location);
    v3 = objc_retainBlock(&v7);
    v4 = [CLKClockTimer sharedInstance:v7];
    v5 = [v4 startUpdatesWithUpdateFrequency:0 withHandler:v3 identificationLog:&stru_38FD8];
    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = v5;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)_stopClockUpdates
{
  if (self->_clockTimerToken)
  {
    v3 = +[CLKClockTimer sharedInstance];
    [v3 stopUpdatesForToken:self->_clockTimerToken];

    clockTimerToken = self->_clockTimerToken;
    self->_clockTimerToken = 0;
  }
}

- (void)crownInputHandler:(id)a3 didChangeProgress:(double)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_gmtView);
  v7 = [WeakRetained isEditing];

  if ((v7 & 1) == 0)
  {
    v8 = 1.0 - a4;
    if (a4 < 0.5)
    {
      v8 = a4;
    }

    if (vabdd_f64(self->_previousProgress, v8) > 0.04)
    {
      self->_previousProgress = a4;
      v9 = objc_loadWeakRetained(&self->_gmtView);
      [v9 setIsEditing:1];
    }
  }
}

- (BOOL)crownInputHandlerCanChangeProgress:(id)a3
{
  v4 = [(NTKAlaskanGMTStyleController *)self faceView];
  if ([v4 dataMode] == &dword_0 + 1)
  {
    v5 = ![(NTKAlaskanGMTStyleController *)self tritiumAnimationInProgress];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)crownInputHandlerDidPressCrown:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_gmtView);
  v5 = [WeakRetained isEditing];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_gmtView);
    [v6 setIsEditing:0];
  }

  return v5;
}

- (void)alaskanGMTStyleViewDidStartEditing:(id)a3
{
  v4 = a3;
  v5 = [(NTKAlaskanGMTStyleController *)self faceView];
  [v5 enableCrownEventReception];

  v6 = [(NTKAlaskanGMTStyleController *)self faceView];
  [v6 enumerateComplicationDisplayWrappersWithBlock:&stru_38FF8];

  objc_initWeak(&location, self);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_EDD8;
  v12 = &unk_38BE8;
  objc_copyWeak(&v13, &location);
  [UIView animateWithDuration:&v9 animations:0.3 * 0.5];
  v7 = [(NTKAlaskanGMTStyleController *)self faceView:v9];
  v8 = [v7 delegate];
  [v8 faceViewWantsStatusBarHidden:1 animated:1];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)alaskanGMTStyleViewDidFinishEditing:(id)a3
{
  v4 = [(NTKAlaskanGMTStyleController *)self faceView];
  [v4 disableCrownEventReception];

  [(NTKAlaskanGMTStyleController *)self handleExitingEditModeAnimated:1];
  v5 = [(NTKAlaskanGMTTimezoneLocation *)self->_currentSelectedTimezoneLocation cityIdentifier];

  currentSelectedTimezoneLocation = self->_currentSelectedTimezoneLocation;
  if (v5)
  {
    v7 = [(NTKAlaskanGMTTimezoneLocation *)currentSelectedTimezoneLocation cityIdentifier];
    v8 = [(NTKAlaskanGMTStyleController *)self storage];
    [v8 setGmtSelectedCityIdentifier:v7];

LABEL_5:
    goto LABEL_6;
  }

  v9 = [(NTKAlaskanGMTTimezoneLocation *)currentSelectedTimezoneLocation locationName];

  if (v9)
  {
    v10 = [(NTKAlaskanGMTStyleController *)self storage];
    [v10 setGmtOffsetHours:0];

    v11 = [(NTKAlaskanGMTStyleController *)self storage];
    [v11 setGmtSelectedCityIdentifier:0];

    v7 = [(NTKAlaskanGMTStyleController *)self storage];
    [v7 setGmtSelectedTimezone:0];
    goto LABEL_5;
  }

  [(NTKAlaskanGMTStyleController *)self _saveReferenceTimezoneLocation];
LABEL_6:

  [(NTKAlaskanGMTStyleController *)self updateSelectionInViewSavingSelection:1];
}

- (void)alaskanGMTStyleViewDidCancelEditing:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(NTKAlaskanGMTStyleController *)self faceView];
  [v6 disableCrownEventReception];

  [(NTKAlaskanGMTStyleController *)self handleExitingEditModeAnimated:v4];
}

- (void)handleExitingEditModeAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(NTKAlaskanGMTStyleController *)self faceView];
  [v5 enumerateComplicationDisplayWrappersWithBlock:&stru_39018];

  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_F1E8;
  v13[3] = &unk_38BE8;
  objc_copyWeak(&v14, &location);
  v6 = objc_retainBlock(v13);
  v7 = v6;
  if (v3)
  {
    v8 = dispatch_time(0, (0.3 * 0.5 * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_F2B4;
    block[3] = &unk_39040;
    v12 = v7;
    dispatch_after(v8, &_dispatch_main_q, block);
  }

  else
  {
    (v6[2])(v6);
  }

  v9 = [(NTKAlaskanGMTStyleController *)self faceView];
  v10 = [v9 delegate];
  [v10 faceViewWantsStatusBarHidden:0 animated:1];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)alaskanGMTStyleView:(id)a3 didSelectTimezoneLocation:(id)a4
{
  v5 = a4;
  v6 = [(NTKAlaskanGMTStyleController *)self faceView];
  v7 = [v6 dataMode];

  if (v7 == &dword_0 + 1)
  {
    [(NTKCrownInputHandler *)self->_crownInputHandler generateMajorDetents];
  }

  currentSelectedTimezoneLocation = self->_currentSelectedTimezoneLocation;
  self->_currentSelectedTimezoneLocation = v5;
}

- (void)_updateDefaultLocations
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_defaultCityIdentifiers;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = -[NTKAlaskanGMTStyleController timezoneLocationFromCityIdentifier:](self, "timezoneLocationFromCityIdentifier:", [*(*(&v12 + 1) + 8 * v8) intValue]);
        if (v9)
        {
          [v3 addObject:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 sortedArrayUsingComparator:&stru_39080];
  WeakRetained = objc_loadWeakRetained(&self->_gmtView);
  [WeakRetained setDefaultLocations:v10];
}

- (void)updateWorldClockCities
{
  currentTimezoneLocations = self->_currentTimezoneLocations;
  self->_currentTimezoneLocations = 0;

  currentWorldClockCities = self->_currentWorldClockCities;
  self->_currentWorldClockCities = 0;

  [(NTKAlaskanGMTStyleController *)self updateWorldClockCitiesIfNeeded];
}

- (BOOL)updateWorldClockCitiesIfNeeded
{
  v3 = self->_currentWorldClockCities;
  v4 = [(NTKAlaskanGMTStyleController *)self worldClockCities];
  v5 = [NSSet setWithArray:v4];
  currentWorldClockCities = self->_currentWorldClockCities;
  self->_currentWorldClockCities = v5;

  v7 = [(NSSet *)self->_currentWorldClockCities isEqualToSet:v3];
  if ((v7 & 1) == 0)
  {
    v24 = v3;
    v8 = [NSMutableArray arrayWithCapacity:[(NSSet *)self->_currentWorldClockCities count]];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = self->_currentWorldClockCities;
    v10 = [(NSSet *)v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          defaultCityIdentifiers = self->_defaultCityIdentifiers;
          v16 = [v14 alCityId];
          LOBYTE(defaultCityIdentifiers) = [(NSSet *)defaultCityIdentifiers containsObject:v16];

          if ((defaultCityIdentifiers & 1) == 0)
          {
            v17 = [(NTKAlaskanGMTStyleController *)self timezoneLocationFromCity:v14];
            [v8 addObject:v17];
          }
        }

        v11 = [(NSSet *)v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }

    v3 = v24;
    if (![(NTKAlaskanGMTStyleController *)self updateTimezoneLocations:v8])
    {
      goto LABEL_18;
    }

    v18 = [(NTKAlaskanGMTStyleController *)self faceView];
    if ([v18 dataMode] == &dword_0 + 3)
    {
    }

    else
    {
      v19 = [(NTKAlaskanGMTStyleController *)self storage];

      if (v19)
      {
        v20 = [(NTKAlaskanGMTStyleController *)self currentTimezoneLocation];
        WeakRetained = objc_loadWeakRetained(&self->_gmtView);
        [WeakRetained setReferenceTimezoneLocation:v20];

LABEL_17:
        v22 = objc_loadWeakRetained(&self->_gmtView);
        [v22 setAdditionalTimezoneLocations:v8];

        [(NTKAlaskanGMTStyleController *)self updateSelectionInViewSavingSelection:0];
LABEL_18:

        goto LABEL_19;
      }
    }

    v20 = objc_loadWeakRetained(&self->_gmtView);
    [v20 setReferenceTimezoneLocation:0];
    goto LABEL_17;
  }

LABEL_19:

  return v7 ^ 1;
}

- (BOOL)updateTimezoneLocations:(id)a3
{
  v4 = a3;
  v5 = [v4 sortedArrayUsingComparator:&stru_390A0];
  v6 = [v5 mutableCopy];

  v7 = [v4 count];
  currentTimezoneLocations = self->_currentTimezoneLocations;
  p_currentTimezoneLocations = &self->_currentTimezoneLocations;
  if (v7 != [(NSArray *)currentTimezoneLocations count]|| !*p_currentTimezoneLocations)
  {
LABEL_8:
    objc_storeStrong(p_currentTimezoneLocations, v6);
    v14 = 1;
    goto LABEL_9;
  }

  if ([(NSArray *)*p_currentTimezoneLocations count])
  {
    v10 = 0;
    do
    {
      v11 = [v6 objectAtIndexedSubscript:v10];
      v12 = [(NSArray *)*p_currentTimezoneLocations objectAtIndexedSubscript:v10];
      v13 = [v11 isEqual:v12];

      if ((v13 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    while (++v10 < [(NSArray *)*p_currentTimezoneLocations count]);
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (id)currentTimezoneLocation
{
  v3 = +[NTKLocationManager sharedLocationManager];
  v4 = [v3 anyLocation];

  v5 = [(NTKAlaskanGMTStyleController *)self timezoneLocationFromCLLocation:v4];

  return v5;
}

- (id)worldClockCities
{
  v2 = +[NTKWorldClockManager sharedManager];
  v3 = [v2 cities];
  if (!v3 || (v4 = v3, v5 = [v2 checkIfCitiesModified], v4, v5))
  {
    [v2 loadCities];
  }

  v6 = [v2 cities];

  return v6;
}

- (id)timezoneLocationFromCityIdentifier:(int)a3
{
  v4 = [[WorldClockCity alloc] initWithALCityIdentifier:*&a3];
  if (v4)
  {
    v5 = [(NTKAlaskanGMTStyleController *)self timezoneLocationFromCity:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)timezoneLocationFromCity:(id)a3
{
  v4 = a3;
  v5 = [v4 timeZone];
  v6 = [NSTimeZone timeZoneWithName:v5];

  v7 = objc_alloc_init(NTKAlaskanGMTTimezoneLocation);
  [(NTKAlaskanGMTStyleController *)self hourOffsetForTimezone:v6];
  [(NTKAlaskanGMTTimezoneLocation *)v7 setHourOffset:?];
  v8 = NTKWorldClockCityAbbreviation();
  [(NTKAlaskanGMTTimezoneLocation *)v7 setLocationName:v8];

  v9 = [v6 name];
  [(NTKAlaskanGMTTimezoneLocation *)v7 setTimezone:v9];

  v10 = [v4 alCityId];
  [(NTKAlaskanGMTTimezoneLocation *)v7 setCityIdentifier:v10];

  v11 = [v4 countryCode];

  [v4 name];
  if (v11)
    v12 = {;
    v13 = [v4 countryCode];
    v14 = [NSString stringWithFormat:@"%@, %@", v12, v13];
    [(NTKAlaskanGMTTimezoneLocation *)v7 setCityName:v14];
  }

  else
    v12 = {;
    [(NTKAlaskanGMTTimezoneLocation *)v7 setCityName:v12];
  }

  v15 = [v4 alCity];

  if (v15)
  {
    v16 = [(NTKAlaskanGMTStyleController *)self almanacTransitInfoForCity:v4];
    v17 = [v16 rise];
    if (v17)
    {
      v18 = v17;
      v19 = [v16 set];

      if (v19)
      {
        v20 = +[NSCalendar currentCalendar];
        v21 = [v16 rise];
        v22 = [v20 componentsInTimeZone:v6 fromDate:v21];

        -[NTKAlaskanGMTTimezoneLocation setSunriseHourOfDay:](v7, "setSunriseHourOfDay:", [v22 minute] / 60.0 + objc_msgSend(v22, "hour"));
        v23 = [v16 set];
        v24 = [v20 componentsInTimeZone:v6 fromDate:v23];

        -[NTKAlaskanGMTTimezoneLocation setSunsetHourOfDay:](v7, "setSunsetHourOfDay:", [v24 minute] / 60.0 + objc_msgSend(v24, "hour"));
      }
    }
  }

  return v7;
}

- (id)timezoneLocationFromCLLocation:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NTKAlaskanGMTTimezoneLocation);
  [(NTKAlaskanGMTTimezoneLocation *)v5 setHourOffset:0.0];
  v6 = [(NTKAlaskanGMTStyleController *)self currentDate];
  [(NTKAlaskanGMTStyleController *)self _geoLocationForCLLocation:v4];
  v8 = v7;
  v10 = v9;

  v11 = [CLKUIAlmanacTransitInfo transitInfoForDate:v6 location:v8, v10];

  v12 = [v11 rise];
  if (v12)
  {
    v13 = v12;
    v14 = [v11 set];

    if (v14)
    {
      v15 = +[NSCalendar currentCalendar];
      v16 = +[NSTimeZone localTimeZone];
      v17 = [v11 rise];
      v18 = [v15 componentsInTimeZone:v16 fromDate:v17];

      -[NTKAlaskanGMTTimezoneLocation setSunriseHourOfDay:](v5, "setSunriseHourOfDay:", [v18 minute] / 60.0 + objc_msgSend(v18, "hour"));
      v19 = +[NSTimeZone localTimeZone];
      v20 = [v11 set];
      v21 = [v15 componentsInTimeZone:v19 fromDate:v20];

      -[NTKAlaskanGMTTimezoneLocation setSunsetHourOfDay:](v5, "setSunsetHourOfDay:", [v21 minute] / 60.0 + objc_msgSend(v21, "hour"));
    }
  }

  return v5;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_geoLocationForCLLocation:(id)a3
{
  v3 = a3;
  [v3 coordinate];
  v5 = v4;
  [v3 coordinate];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- (id)almanacTransitInfoForCity:(id)a3
{
  v4 = a3;
  v5 = [v4 alCity];

  if (v5)
  {
    transitInfoByCity = self->_transitInfoByCity;
    if (!transitInfoByCity)
    {
      v7 = +[NSMutableDictionary dictionary];
      v8 = self->_transitInfoByCity;
      self->_transitInfoByCity = v7;

      transitInfoByCity = self->_transitInfoByCity;
    }

    v9 = [v4 alCity];
    v10 = [v9 classicIdentifier];
    v5 = [(NSMutableDictionary *)transitInfoByCity objectForKeyedSubscript:v10];

    if (!v5)
    {
      v11 = [(NTKAlaskanGMTStyleController *)self currentDate];
      v12 = [v4 alCity];
      v5 = [CLKUIAlmanacTransitInfo transitInfoForDate:v11 city:v12];

      v13 = self->_transitInfoByCity;
      v14 = [v4 alCity];
      v15 = [v14 classicIdentifier];
      [(NSMutableDictionary *)v13 setObject:v5 forKeyedSubscript:v15];
    }
  }

  return v5;
}

- (BOOL)containsCityIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = [(NSSet *)self->_defaultCityIdentifiers containsObject:v4];
    if (v12[3])
    {
      v5 = 1;
    }

    else
    {
      currentWorldClockCities = self->_currentWorldClockCities;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1032C;
      v8[3] = &unk_390C8;
      v9 = v4;
      v10 = &v11;
      [(NSSet *)currentWorldClockCities enumerateObjectsUsingBlock:v8];

      v5 = *(v12 + 24);
    }

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)updateSelectionInViewAnimated:(BOOL)a3 saveSelection:(BOOL)a4 completionBlock:(id)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_gmtView);
  [WeakRetained selectHourOffset:0.0];
}

- (void)_saveReferenceTimezoneLocation
{
  v3 = +[NSTimeZone localTimeZone];
  v4 = [v3 name];
  v5 = [(NTKAlaskanGMTStyleController *)self storage];
  [v5 setGmtSelectedTimezone:v4];

  v6 = [(NTKAlaskanGMTStyleController *)self storage];
  [v6 setGmtOffsetHours:&off_3A938];

  v7 = [(NTKAlaskanGMTStyleController *)self storage];
  [v7 setGmtSelectedCityIdentifier:0];
}

- (float)hourOffsetForTimezone:(id)a3
{
  v3 = a3;
  v4 = +[NSDate date];
  v5 = +[NSTimeZone localTimeZone];
  v6 = [v5 secondsFromGMTForDate:v4];
  v7 = [v3 secondsFromGMTForDate:v4];

  return (v7 - v6) / 60.0 / 60.0;
}

- (void)startListeningForSignificantTimeChangeNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"significantTimeChangeNotification" name:UIApplicationSignificantTimeChangeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"significantTimeChangeNotification" name:NSCalendarDayChangedNotification object:0];
}

- (void)stopListeningForSignificantTimeChangeNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationSignificantTimeChangeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:NSCalendarDayChangedNotification object:0];
}

- (void)startListeningForLocalTimeZoneChangeNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handleLocalTimeZoneChangedNotification" name:NSSystemTimeZoneDidChangeNotification object:0];
}

- (void)stopListeningForLocalTimeZoneChangeNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSSystemTimeZoneDidChangeNotification object:0];
}

- (void)startListeningForLocationChangeNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"currentLocationChangeNotification" name:NTKLocationManagerSignificantLocationChangeNotification object:0];
}

- (void)startListeningTimezoneChangeNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handleTimezoneChanged" name:NSSystemTimeZoneDidChangeNotification object:0];
}

- (void)stopListeningForTimezoneChangeNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSSystemTimeZoneDidChangeNotification object:0];
}

- (void)stopListeningForLocationChangeNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NTKLocationManagerSignificantLocationChangeNotification object:0];
}

- (void)handleLocalTimeZoneChangedNotification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10998;
  block[3] = &unk_390F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)significantTimeChangeNotification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10A48;
  block[3] = &unk_390F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)currentLocationChangeNotification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10B04;
  block[3] = &unk_390F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)handleTimezoneChanged
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10BB4;
  block[3] = &unk_390F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)currentDate
{
  v2 = [(NTKAlaskanGMTStyleController *)self faceView];
  v3 = [v2 currentDisplayDate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NTKDate faceDate];
  }

  v6 = v5;

  return v6;
}

- (NTKAnalogFaceView)faceView
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);

  return WeakRetained;
}

- (NTKAlaskanGMTStyleView)gmtView
{
  WeakRetained = objc_loadWeakRetained(&self->_gmtView);

  return WeakRetained;
}

@end
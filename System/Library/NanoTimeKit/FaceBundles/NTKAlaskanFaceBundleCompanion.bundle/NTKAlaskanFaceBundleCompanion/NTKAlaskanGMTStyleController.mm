@interface NTKAlaskanGMTStyleController
- ($F24F406B2B787EFB06265DBA3D28CBD5)_geoLocationForCLLocation:(id)location;
- (BOOL)containsCityIdentifier:(id)identifier;
- (BOOL)crownInputHandlerCanChangeProgress:(id)progress;
- (BOOL)crownInputHandlerDidPressCrown:(id)crown;
- (BOOL)updateTimezoneLocations:(id)locations;
- (BOOL)updateWorldClockCitiesIfNeeded;
- (NTKAlaskanGMTStyleController)initWithContentView:(id)view crownInputHandler:(id)handler storage:(id)storage;
- (NTKAlaskanGMTStyleView)gmtView;
- (NTKAnalogFaceView)faceView;
- (float)hourOffsetForTimezone:(id)timezone;
- (id)almanacTransitInfoForCity:(id)city;
- (id)currentDate;
- (id)currentTimezoneLocation;
- (id)timezoneLocationFromCLLocation:(id)location;
- (id)timezoneLocationFromCity:(id)city;
- (id)timezoneLocationFromCityIdentifier:(int)identifier;
- (id)worldClockCities;
- (void)_saveReferenceTimezoneLocation;
- (void)_startClockUpdates;
- (void)_stopClockUpdates;
- (void)_updateDefaultLocations;
- (void)alaskanGMTStyleView:(id)view didSelectTimezoneLocation:(id)location;
- (void)alaskanGMTStyleViewDidCancelEditing:(id)editing animated:(BOOL)animated;
- (void)alaskanGMTStyleViewDidFinishEditing:(id)editing;
- (void)alaskanGMTStyleViewDidStartEditing:(id)editing;
- (void)crownInputHandler:(id)handler didChangeProgress:(double)progress;
- (void)currentLocationChangeNotification;
- (void)dealloc;
- (void)handleExitingEditModeAnimated:(BOOL)animated;
- (void)handleLocalTimeZoneChangedNotification;
- (void)handleTimezoneChanged;
- (void)resetGMTSunsetSunriseInformation;
- (void)setDatamode:(int64_t)datamode;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setStorage:(id)storage;
- (void)setTritiumAnimationInProgress:(BOOL)progress;
- (void)significantTimeChangeNotification;
- (void)startListeningForLocalTimeZoneChangeNotification;
- (void)startListeningForLocationChangeNotification;
- (void)startListeningForSignificantTimeChangeNotification;
- (void)startListeningTimezoneChangeNotification;
- (void)stopListeningForLocalTimeZoneChangeNotification;
- (void)stopListeningForLocationChangeNotification;
- (void)stopListeningForSignificantTimeChangeNotification;
- (void)stopListeningForTimezoneChangeNotification;
- (void)updateSelectionInViewAnimated:(BOOL)animated saveSelection:(BOOL)selection completionBlock:(id)block;
- (void)updateWorldClockCities;
@end

@implementation NTKAlaskanGMTStyleController

- (NTKAlaskanGMTStyleController)initWithContentView:(id)view crownInputHandler:(id)handler storage:(id)storage
{
  viewCopy = view;
  handlerCopy = handler;
  storageCopy = storage;
  v21.receiver = self;
  v21.super_class = NTKAlaskanGMTStyleController;
  v11 = [(NTKAlaskanGMTStyleController *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_crownInputHandler, handler);
    objc_storeStrong(&v12->_storage, storage);
    v13 = objc_storeWeak(&v12->_gmtView, viewCopy);
    [viewCopy setDelegate:v12];

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

- (void)setTritiumAnimationInProgress:(BOOL)progress
{
  progressCopy = progress;
  self->_tritiumAnimationInProgress = progress;
  WeakRetained = objc_loadWeakRetained(&self->_gmtView);
  [WeakRetained setUserInteractionEnabled:!progressCopy];
}

- (void)setStorage:(id)storage
{
  objc_storeStrong(&self->_storage, storage);

  [(NTKAlaskanGMTStyleController *)self updateWorldClockCitiesIfNeeded];
}

- (void)setDatamode:(int64_t)datamode
{
  if (datamode <= 5)
  {
    if (((1 << datamode) & 0x35) != 0)
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

    else if (datamode == 1)
    {
      [(NTKAlaskanGMTStyleController *)self updateWorldClockCitiesIfNeeded];
      tritiumAnimationInProgress = [(NTKAlaskanGMTStyleController *)self tritiumAnimationInProgress];
      v7 = objc_loadWeakRetained(&self->_gmtView);
      [v7 setUserInteractionEnabled:tritiumAnimationInProgress ^ 1];

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

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_E7CC;
  v8[3] = &unk_38FB8;
  objc_copyWeak(&v10, &location);
  v7 = dateCopy;
  v9 = v7;
  [UIView animateWithDuration:v8 animations:duration];

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

- (void)crownInputHandler:(id)handler didChangeProgress:(double)progress
{
  WeakRetained = objc_loadWeakRetained(&self->_gmtView);
  isEditing = [WeakRetained isEditing];

  if ((isEditing & 1) == 0)
  {
    progressCopy = 1.0 - progress;
    if (progress < 0.5)
    {
      progressCopy = progress;
    }

    if (vabdd_f64(self->_previousProgress, progressCopy) > 0.04)
    {
      self->_previousProgress = progress;
      v9 = objc_loadWeakRetained(&self->_gmtView);
      [v9 setIsEditing:1];
    }
  }
}

- (BOOL)crownInputHandlerCanChangeProgress:(id)progress
{
  faceView = [(NTKAlaskanGMTStyleController *)self faceView];
  if ([faceView dataMode] == &dword_0 + 1)
  {
    v5 = ![(NTKAlaskanGMTStyleController *)self tritiumAnimationInProgress];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)crownInputHandlerDidPressCrown:(id)crown
{
  WeakRetained = objc_loadWeakRetained(&self->_gmtView);
  isEditing = [WeakRetained isEditing];

  if (isEditing)
  {
    v6 = objc_loadWeakRetained(&self->_gmtView);
    [v6 setIsEditing:0];
  }

  return isEditing;
}

- (void)alaskanGMTStyleViewDidStartEditing:(id)editing
{
  editingCopy = editing;
  faceView = [(NTKAlaskanGMTStyleController *)self faceView];
  [faceView enableCrownEventReception];

  faceView2 = [(NTKAlaskanGMTStyleController *)self faceView];
  [faceView2 enumerateComplicationDisplayWrappersWithBlock:&stru_38FF8];

  objc_initWeak(&location, self);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_EDD8;
  v12 = &unk_38BE8;
  objc_copyWeak(&v13, &location);
  [UIView animateWithDuration:&v9 animations:0.3 * 0.5];
  v7 = [(NTKAlaskanGMTStyleController *)self faceView:v9];
  delegate = [v7 delegate];
  [delegate faceViewWantsStatusBarHidden:1 animated:1];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)alaskanGMTStyleViewDidFinishEditing:(id)editing
{
  faceView = [(NTKAlaskanGMTStyleController *)self faceView];
  [faceView disableCrownEventReception];

  [(NTKAlaskanGMTStyleController *)self handleExitingEditModeAnimated:1];
  cityIdentifier = [(NTKAlaskanGMTTimezoneLocation *)self->_currentSelectedTimezoneLocation cityIdentifier];

  currentSelectedTimezoneLocation = self->_currentSelectedTimezoneLocation;
  if (cityIdentifier)
  {
    cityIdentifier2 = [(NTKAlaskanGMTTimezoneLocation *)currentSelectedTimezoneLocation cityIdentifier];
    storage = [(NTKAlaskanGMTStyleController *)self storage];
    [storage setGmtSelectedCityIdentifier:cityIdentifier2];

LABEL_5:
    goto LABEL_6;
  }

  locationName = [(NTKAlaskanGMTTimezoneLocation *)currentSelectedTimezoneLocation locationName];

  if (locationName)
  {
    storage2 = [(NTKAlaskanGMTStyleController *)self storage];
    [storage2 setGmtOffsetHours:0];

    storage3 = [(NTKAlaskanGMTStyleController *)self storage];
    [storage3 setGmtSelectedCityIdentifier:0];

    cityIdentifier2 = [(NTKAlaskanGMTStyleController *)self storage];
    [cityIdentifier2 setGmtSelectedTimezone:0];
    goto LABEL_5;
  }

  [(NTKAlaskanGMTStyleController *)self _saveReferenceTimezoneLocation];
LABEL_6:

  [(NTKAlaskanGMTStyleController *)self updateSelectionInViewSavingSelection:1];
}

- (void)alaskanGMTStyleViewDidCancelEditing:(id)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  faceView = [(NTKAlaskanGMTStyleController *)self faceView];
  [faceView disableCrownEventReception];

  [(NTKAlaskanGMTStyleController *)self handleExitingEditModeAnimated:animatedCopy];
}

- (void)handleExitingEditModeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  faceView = [(NTKAlaskanGMTStyleController *)self faceView];
  [faceView enumerateComplicationDisplayWrappersWithBlock:&stru_39018];

  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_F1E8;
  v13[3] = &unk_38BE8;
  objc_copyWeak(&v14, &location);
  v6 = objc_retainBlock(v13);
  v7 = v6;
  if (animatedCopy)
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

  faceView2 = [(NTKAlaskanGMTStyleController *)self faceView];
  delegate = [faceView2 delegate];
  [delegate faceViewWantsStatusBarHidden:0 animated:1];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)alaskanGMTStyleView:(id)view didSelectTimezoneLocation:(id)location
{
  locationCopy = location;
  faceView = [(NTKAlaskanGMTStyleController *)self faceView];
  dataMode = [faceView dataMode];

  if (dataMode == &dword_0 + 1)
  {
    [(NTKCrownInputHandler *)self->_crownInputHandler generateMajorDetents];
  }

  currentSelectedTimezoneLocation = self->_currentSelectedTimezoneLocation;
  self->_currentSelectedTimezoneLocation = locationCopy;
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
  worldClockCities = [(NTKAlaskanGMTStyleController *)self worldClockCities];
  v5 = [NSSet setWithArray:worldClockCities];
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
          alCityId = [v14 alCityId];
          LOBYTE(defaultCityIdentifiers) = [(NSSet *)defaultCityIdentifiers containsObject:alCityId];

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

    faceView = [(NTKAlaskanGMTStyleController *)self faceView];
    if ([faceView dataMode] == &dword_0 + 3)
    {
    }

    else
    {
      storage = [(NTKAlaskanGMTStyleController *)self storage];

      if (storage)
      {
        currentTimezoneLocation = [(NTKAlaskanGMTStyleController *)self currentTimezoneLocation];
        WeakRetained = objc_loadWeakRetained(&self->_gmtView);
        [WeakRetained setReferenceTimezoneLocation:currentTimezoneLocation];

LABEL_17:
        v22 = objc_loadWeakRetained(&self->_gmtView);
        [v22 setAdditionalTimezoneLocations:v8];

        [(NTKAlaskanGMTStyleController *)self updateSelectionInViewSavingSelection:0];
LABEL_18:

        goto LABEL_19;
      }
    }

    currentTimezoneLocation = objc_loadWeakRetained(&self->_gmtView);
    [currentTimezoneLocation setReferenceTimezoneLocation:0];
    goto LABEL_17;
  }

LABEL_19:

  return v7 ^ 1;
}

- (BOOL)updateTimezoneLocations:(id)locations
{
  locationsCopy = locations;
  v5 = [locationsCopy sortedArrayUsingComparator:&stru_390A0];
  v6 = [v5 mutableCopy];

  v7 = [locationsCopy count];
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
  anyLocation = [v3 anyLocation];

  v5 = [(NTKAlaskanGMTStyleController *)self timezoneLocationFromCLLocation:anyLocation];

  return v5;
}

- (id)worldClockCities
{
  v2 = +[NTKWorldClockManager sharedManager];
  cities = [v2 cities];
  if (!cities || (v4 = cities, v5 = [v2 checkIfCitiesModified], v4, v5))
  {
    [v2 loadCities];
  }

  cities2 = [v2 cities];

  return cities2;
}

- (id)timezoneLocationFromCityIdentifier:(int)identifier
{
  v4 = [[WorldClockCity alloc] initWithALCityIdentifier:*&identifier];
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

- (id)timezoneLocationFromCity:(id)city
{
  cityCopy = city;
  timeZone = [cityCopy timeZone];
  v6 = [NSTimeZone timeZoneWithName:timeZone];

  v7 = objc_alloc_init(NTKAlaskanGMTTimezoneLocation);
  [(NTKAlaskanGMTStyleController *)self hourOffsetForTimezone:v6];
  [(NTKAlaskanGMTTimezoneLocation *)v7 setHourOffset:?];
  v8 = NTKWorldClockCityAbbreviation();
  [(NTKAlaskanGMTTimezoneLocation *)v7 setLocationName:v8];

  name = [v6 name];
  [(NTKAlaskanGMTTimezoneLocation *)v7 setTimezone:name];

  alCityId = [cityCopy alCityId];
  [(NTKAlaskanGMTTimezoneLocation *)v7 setCityIdentifier:alCityId];

  countryCode = [cityCopy countryCode];

  [cityCopy name];
  if (countryCode)
    v12 = {;
    countryCode2 = [cityCopy countryCode];
    v14 = [NSString stringWithFormat:@"%@, %@", v12, countryCode2];
    [(NTKAlaskanGMTTimezoneLocation *)v7 setCityName:v14];
  }

  else
    v12 = {;
    [(NTKAlaskanGMTTimezoneLocation *)v7 setCityName:v12];
  }

  alCity = [cityCopy alCity];

  if (alCity)
  {
    v16 = [(NTKAlaskanGMTStyleController *)self almanacTransitInfoForCity:cityCopy];
    rise = [v16 rise];
    if (rise)
    {
      v18 = rise;
      v19 = [v16 set];

      if (v19)
      {
        v20 = +[NSCalendar currentCalendar];
        rise2 = [v16 rise];
        v22 = [v20 componentsInTimeZone:v6 fromDate:rise2];

        -[NTKAlaskanGMTTimezoneLocation setSunriseHourOfDay:](v7, "setSunriseHourOfDay:", [v22 minute] / 60.0 + objc_msgSend(v22, "hour"));
        v23 = [v16 set];
        v24 = [v20 componentsInTimeZone:v6 fromDate:v23];

        -[NTKAlaskanGMTTimezoneLocation setSunsetHourOfDay:](v7, "setSunsetHourOfDay:", [v24 minute] / 60.0 + objc_msgSend(v24, "hour"));
      }
    }
  }

  return v7;
}

- (id)timezoneLocationFromCLLocation:(id)location
{
  locationCopy = location;
  v5 = objc_alloc_init(NTKAlaskanGMTTimezoneLocation);
  [(NTKAlaskanGMTTimezoneLocation *)v5 setHourOffset:0.0];
  currentDate = [(NTKAlaskanGMTStyleController *)self currentDate];
  [(NTKAlaskanGMTStyleController *)self _geoLocationForCLLocation:locationCopy];
  v8 = v7;
  v10 = v9;

  v11 = [CLKUIAlmanacTransitInfo transitInfoForDate:currentDate location:v8, v10];

  rise = [v11 rise];
  if (rise)
  {
    v13 = rise;
    v14 = [v11 set];

    if (v14)
    {
      v15 = +[NSCalendar currentCalendar];
      v16 = +[NSTimeZone localTimeZone];
      rise2 = [v11 rise];
      v18 = [v15 componentsInTimeZone:v16 fromDate:rise2];

      -[NTKAlaskanGMTTimezoneLocation setSunriseHourOfDay:](v5, "setSunriseHourOfDay:", [v18 minute] / 60.0 + objc_msgSend(v18, "hour"));
      v19 = +[NSTimeZone localTimeZone];
      v20 = [v11 set];
      v21 = [v15 componentsInTimeZone:v19 fromDate:v20];

      -[NTKAlaskanGMTTimezoneLocation setSunsetHourOfDay:](v5, "setSunsetHourOfDay:", [v21 minute] / 60.0 + objc_msgSend(v21, "hour"));
    }
  }

  return v5;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_geoLocationForCLLocation:(id)location
{
  locationCopy = location;
  [locationCopy coordinate];
  v5 = v4;
  [locationCopy coordinate];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- (id)almanacTransitInfoForCity:(id)city
{
  cityCopy = city;
  alCity = [cityCopy alCity];

  if (alCity)
  {
    transitInfoByCity = self->_transitInfoByCity;
    if (!transitInfoByCity)
    {
      v7 = +[NSMutableDictionary dictionary];
      v8 = self->_transitInfoByCity;
      self->_transitInfoByCity = v7;

      transitInfoByCity = self->_transitInfoByCity;
    }

    alCity2 = [cityCopy alCity];
    classicIdentifier = [alCity2 classicIdentifier];
    alCity = [(NSMutableDictionary *)transitInfoByCity objectForKeyedSubscript:classicIdentifier];

    if (!alCity)
    {
      currentDate = [(NTKAlaskanGMTStyleController *)self currentDate];
      alCity3 = [cityCopy alCity];
      alCity = [CLKUIAlmanacTransitInfo transitInfoForDate:currentDate city:alCity3];

      v13 = self->_transitInfoByCity;
      alCity4 = [cityCopy alCity];
      classicIdentifier2 = [alCity4 classicIdentifier];
      [(NSMutableDictionary *)v13 setObject:alCity forKeyedSubscript:classicIdentifier2];
    }
  }

  return alCity;
}

- (BOOL)containsCityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = [(NSSet *)self->_defaultCityIdentifiers containsObject:identifierCopy];
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
      v9 = identifierCopy;
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

- (void)updateSelectionInViewAnimated:(BOOL)animated saveSelection:(BOOL)selection completionBlock:(id)block
{
  WeakRetained = objc_loadWeakRetained(&self->_gmtView);
  [WeakRetained selectHourOffset:0.0];
}

- (void)_saveReferenceTimezoneLocation
{
  v3 = +[NSTimeZone localTimeZone];
  name = [v3 name];
  storage = [(NTKAlaskanGMTStyleController *)self storage];
  [storage setGmtSelectedTimezone:name];

  storage2 = [(NTKAlaskanGMTStyleController *)self storage];
  [storage2 setGmtOffsetHours:&off_3A938];

  storage3 = [(NTKAlaskanGMTStyleController *)self storage];
  [storage3 setGmtSelectedCityIdentifier:0];
}

- (float)hourOffsetForTimezone:(id)timezone
{
  timezoneCopy = timezone;
  v4 = +[NSDate date];
  v5 = +[NSTimeZone localTimeZone];
  v6 = [v5 secondsFromGMTForDate:v4];
  v7 = [timezoneCopy secondsFromGMTForDate:v4];

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
  faceView = [(NTKAlaskanGMTStyleController *)self faceView];
  currentDisplayDate = [faceView currentDisplayDate];
  v4 = currentDisplayDate;
  if (currentDisplayDate)
  {
    v5 = currentDisplayDate;
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
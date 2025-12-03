@interface UGCSuggestionViewProvider
- (BOOL)_isFavorite;
- (BOOL)_isNearbyLocation;
- (BOOL)_isPinned;
- (MUARPSuggestionViewModel)suggestionViewModelForWebPlacecard;
- (UGCSuggestionViewProvider)initWithMapItem:(id)item;
- (UGCSuggestionViewProviderDelegate)delegate;
- (UIView)suggestionView;
- (int64_t)_bestContentType;
- (void)_checkForVisitAndPhotosIfNeeded;
- (void)_didTapSuggestionViewWithOverallState:(int64_t)state;
- (void)_loadSuggestionViewIfNeeded;
- (void)_reevaluateSuggestion;
- (void)_setVisitStartDate:(id)date visitEndDate:(id)endDate hasNearbyPhotos:(BOOL)photos;
- (void)_unloadSuggestionView;
- (void)setSubmissionStatus:(id)status;
@end

@implementation UGCSuggestionViewProvider

- (UGCSuggestionViewProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_didTapSuggestionViewWithOverallState:(int64_t)state
{
  contentType = self->_contentType;
  if ((contentType - 2) >= 4)
  {
    if (contentType != 1)
    {
      return;
    }

    delegate = [(UGCSuggestionViewProvider *)self delegate];
    [delegate suggestionViewProviderDidSelectAddPhotos:self];
  }

  else
  {
    delegate = [(UGCSuggestionViewProvider *)self delegate];
    [delegate suggestionViewProviderDidSelectRateThisPlace:self overallState:state];
  }
}

- (BOOL)_isNearbyLocation
{
  v3 = +[MKLocationManager sharedLocationManager];
  if ([v3 isAuthorizedForPreciseLocation])
  {
    lastLocation = [v3 lastLocation];
    if (lastLocation)
    {
      [(MKMapItem *)self->_mapItem _coordinate];
      v6 = 0;
      if (fabs(v7) <= 180.0 && v5 >= -90.0 && v5 <= 90.0)
      {
        v8 = [CLLocation alloc];
        [(MKMapItem *)self->_mapItem _coordinate];
        v10 = v9;
        [(MKMapItem *)self->_mapItem _coordinate];
        v11 = [v8 initWithLatitude:v10 longitude:?];
        GEOConfigGetDouble();
        v13 = v12;
        [lastLocation distanceFromLocation:v11];
        v6 = v14 < v13;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isFavorite
{
  v3 = +[ShortcutManager sharedManager];
  meCard = [v3 meCard];

  v5 = [meCard _maps_shortcutIncludingHiddenForMapItem:self->_mapItem];
  LOBYTE(self) = v5 != 0;

  return self;
}

- (BOOL)_isPinned
{
  selfCopy = self;
  delegate = [(UGCSuggestionViewProvider *)self delegate];
  LOBYTE(selfCopy) = [delegate suggestionViewProviderIsPlacePinned:selfCopy];

  return selfCopy;
}

- (void)_setVisitStartDate:(id)date visitEndDate:(id)endDate hasNearbyPhotos:(BOOL)photos
{
  photosCopy = photos;
  dateCopy = date;
  endDateCopy = endDate;
  if (self->_isCheckingForVisitAndPhotos && !self->_didCheckForVisitAndPhotos)
  {
    v11 = sub_1007996E8();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (dateCopy | endDateCopy)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = v12;
      if (photosCopy)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v15 = v14;
      mapItem = self->_mapItem;
      v17 = 138412802;
      v18 = v13;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = mapItem;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Completed placecard suggestion analysis: has visit (%@), has nearby photos (%@), map item: %@", &v17, 0x20u);
    }

    *&self->_isCheckingForVisitAndPhotos = 256;
    objc_storeStrong(&self->_visitStartDate, date);
    objc_storeStrong(&self->_visitEndDate, endDate);
    self->_hasNearbyPhotos = photosCopy;
    [(UGCSuggestionViewProvider *)self _reevaluateSuggestion];
  }
}

- (void)_checkForVisitAndPhotosIfNeeded
{
  if (!self->_isCheckingForVisitAndPhotos && !self->_didCheckForVisitAndPhotos)
  {
    v3 = sub_1007996E8();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      mapItem = self->_mapItem;
      *buf = 138412290;
      v21 = mapItem;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Checking for visit and photos at map item: %@", buf, 0xCu);
    }

    self->_isCheckingForVisitAndPhotos = 1;
    objc_initWeak(buf, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1007896C0;
    v18[3] = &unk_101628E30;
    objc_copyWeak(&v19, buf);
    v5 = objc_retainBlock(v18);
    v6 = self->_mapItem;
    _canAddPhotos = [(UGCSuggestionViewProvider *)self _canAddPhotos];
    UInteger = GEOConfigGetUInteger();
    v9 = MapsSuggestionsResourceDepotForMapsProcess();
    oneUser = [v9 oneUser];
    _geoMapItem = [(MKMapItem *)v6 _geoMapItem];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1007897A8;
    v14[3] = &unk_101628E80;
    v12 = v5;
    v16 = v12;
    v17 = _canAddPhotos;
    v13 = v6;
    v15 = v13;
    [oneUser mostRecentVisitWithinDistance:_geoMapItem ofMapItem:v14 handler:UInteger];

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }
}

- (int64_t)_bestContentType
{
  if ([(UGCSuggestionViewProvider *)self _isLoadingSubmission]|| [(UGCSuggestionViewProvider *)self _hasSubmission]|| [(UGCSuggestionViewProvider *)self _isCheckingForVisitAndPhotos])
  {
    return 0;
  }

  if ([(UGCSuggestionViewProvider *)self _canAddPhotos]&& [(UGCSuggestionViewProvider *)self _hasNearbyPhotos])
  {
    return 1;
  }

  if (![(UGCSuggestionViewProvider *)self _canRate])
  {
    return 0;
  }

  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    if ([(UGCSuggestionViewProvider *)self _isPinned])
    {
      return 3;
    }
  }

  else if ([(UGCSuggestionViewProvider *)self _isFavorite])
  {
    return 2;
  }

  if ([(UGCSuggestionViewProvider *)self _hasVisited])
  {
    return 4;
  }

  if (![(UGCSuggestionViewProvider *)self _isNearbyLocation])
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

- (void)_reevaluateSuggestion
{
  if (![(UGCSuggestionViewProvider *)self _canAddPhotos]&& ![(UGCSuggestionViewProvider *)self _canRate])
  {
    delegate = sub_1007996E8();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_INFO))
    {
      mapItem = self->_mapItem;
      v8 = 138412290;
      v9[0] = mapItem;
      _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_INFO, "Skipping generation of placecard suggestion for map item: %@", &v8, 0xCu);
    }

    goto LABEL_9;
  }

  [(UGCSuggestionViewProvider *)self _checkForVisitAndPhotosIfNeeded];
  _bestContentType = [(UGCSuggestionViewProvider *)self _bestContentType];
  v4 = sub_1007996E8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = self->_mapItem;
    v8 = 67109378;
    LODWORD(v9[0]) = _bestContentType;
    WORD2(v9[0]) = 2112;
    *(v9 + 6) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Determined best placecard suggestion as %d for map item: %@", &v8, 0x12u);
  }

  if (_bestContentType != self->_contentType)
  {
    [(UGCSuggestionViewProvider *)self _unloadSuggestionView];
    self->_contentType = _bestContentType;
    [(UGCSuggestionViewProvider *)self _loadSuggestionViewIfNeeded];
    delegate = [(UGCSuggestionViewProvider *)self delegate];
    [delegate suggestionViewProviderDidUpdateView:self];
LABEL_9:
  }
}

- (MUARPSuggestionViewModel)suggestionViewModelForWebPlacecard
{
  [(UGCSuggestionViewProvider *)self _loadSuggestionViewIfNeeded];
  viewModel = [(UGCSuggestionView *)self->_suggestionView viewModel];
  contentType = [viewModel contentType];

  v5 = &stru_1016631F0;
  if (contentType > 2)
  {
    if (contentType == 3)
    {
      v12 = +[NSBundle mainBundle];
      v37 = [v12 localizedStringForKey:@"[UGC Web Placecard] Rate This Place" value:@"localized string not found" table:0];

      v7 = +[NSBundle mainBundle];
      v8 = v7;
      v9 = @"[UGC Web Placecard] It’s pinned.";
      goto LABEL_13;
    }

    if (contentType != 4)
    {
      v36 = &stru_1016631F0;
      v37 = &stru_1016631F0;
      if (contentType == 5)
      {
        v10 = +[NSBundle mainBundle];
        v37 = [v10 localizedStringForKey:@"[UGC Web Placecard] Rate This Place" value:@"localized string not found" table:0];

        v7 = +[NSBundle mainBundle];
        v8 = v7;
        v9 = @"[UGC Web Placecard] You’re nearby";
        goto LABEL_13;
      }

LABEL_15:
      v35 = [MUARPSuggestionViewModel alloc];
      viewModel2 = [(UGCSuggestionView *)self->_suggestionView viewModel];
      v15 = [viewModel2 contentType] - 2 < 4;
      viewModel3 = [(UGCSuggestionView *)self->_suggestionView viewModel];
      v17 = [viewModel3 contentType] == 1;
      _canAddPhotos = [(UGCSuggestionViewProvider *)self _canAddPhotos];
      _hasNearbyPhotos = [(UGCSuggestionViewProvider *)self _hasNearbyPhotos];
      _canRate = [(UGCSuggestionViewProvider *)self _canRate];
      _isPinned = [(UGCSuggestionViewProvider *)self _isPinned];
      _hasVisited = [(UGCSuggestionViewProvider *)self _hasVisited];
      BYTE3(v34) = [(UGCSuggestionViewProvider *)self _isNearbyLocation];
      BYTE2(v34) = _hasVisited;
      BYTE1(v34) = _isPinned;
      LOBYTE(v34) = _canRate;
      v5 = v36;
      v23 = v37;
      v11 = [v35 initWithTitle:v37 subtitle:v36 isRatingSuggestion:v15 isPhotoSuggestion:v17 canAddPhotos:_canAddPhotos hasNearbyPhotos:_hasNearbyPhotos canRate:v34 isPinned:? hasVisited:? isNearbyLocation:?];

      goto LABEL_16;
    }

    viewModel4 = [(UGCSuggestionView *)self->_suggestionView viewModel];
    visitDate = [viewModel4 visitDate];

    if (visitDate)
    {
      v8 = objc_alloc_init(NSRelativeDateTimeFormatter);
      [v8 setDateTimeStyle:1];
      [v8 setUnitsStyle:0];
      [v8 setFormattingContext:1];
      viewModel5 = [(UGCSuggestionView *)self->_suggestionView viewModel];
      visitDate2 = [viewModel5 visitDate];
      v29 = +[NSDate date];
      v30 = [v8 localizedStringForDate:visitDate2 relativeToDate:v29];

      v31 = +[NSBundle mainBundle];
      v37 = [v31 localizedStringForKey:@"[UGC Web Placecard] Rate This Place" value:@"localized string not found" table:0];

      v32 = +[NSBundle mainBundle];
      v33 = [v32 localizedStringForKey:@"[UGC Web Placecard] Visited" value:@"localized string not found" table:0];
      v36 = [NSString stringWithFormat:v33, v30];

      goto LABEL_14;
    }

    v11 = 0;
    v5 = &stru_1016631F0;
  }

  else
  {
    if (contentType)
    {
      if (contentType == 1)
      {
        v13 = +[NSBundle mainBundle];
        v37 = [v13 localizedStringForKey:@"[UGC Web Placecard] Add Your Photos to Maps" value:@"localized string not found" table:0];

        v7 = +[NSBundle mainBundle];
        v8 = v7;
        v9 = @"[UGC Web Placecard] You took photos here";
        goto LABEL_13;
      }

      v36 = &stru_1016631F0;
      v37 = &stru_1016631F0;
      if (contentType == 2)
      {
        v6 = +[NSBundle mainBundle];
        v37 = [v6 localizedStringForKey:@"[UGC Web Placecard] Rate This Place" value:@"localized string not found" table:0];

        v7 = +[NSBundle mainBundle];
        v8 = v7;
        v9 = @"[UGC Web Placecard] In your Favorites";
LABEL_13:
        v36 = [v7 localizedStringForKey:v9 value:@"localized string not found" table:0];
LABEL_14:

        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v11 = 0;
  }

  v23 = &stru_1016631F0;
LABEL_16:

  return v11;
}

- (UIView)suggestionView
{
  [(UGCSuggestionViewProvider *)self _loadSuggestionViewIfNeeded];
  suggestionView = self->_suggestionView;

  return suggestionView;
}

- (void)_loadSuggestionViewIfNeeded
{
  if (!self->_suggestionView && self->_contentType)
  {
    v6 = objc_alloc_init(UGCSuggestionViewModel);
    [(UGCSuggestionViewModel *)v6 setContentType:self->_contentType];
    visitEndDate = self->_visitEndDate;
    if (!visitEndDate)
    {
      visitEndDate = self->_visitStartDate;
    }

    [(UGCSuggestionViewModel *)v6 setVisitDate:visitEndDate];
    v4 = [[UGCSuggestionView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    suggestionView = self->_suggestionView;
    self->_suggestionView = v4;

    [(UGCSuggestionView *)self->_suggestionView setViewModel:v6];
    [(UGCSuggestionView *)self->_suggestionView setDelegate:self];
  }
}

- (void)_unloadSuggestionView
{
  suggestionView = self->_suggestionView;
  self->_suggestionView = 0;
}

- (void)setSubmissionStatus:(id)status
{
  statusCopy = status;
  v6 = statusCopy;
  if (self->_submissionStatus != statusCopy)
  {
    v8 = statusCopy;
    v7 = [(MUPlaceCallToActionAppearance *)statusCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_submissionStatus, status);
      [(UGCSuggestionViewProvider *)self _reevaluateSuggestion];
      v6 = v8;
    }
  }
}

- (UGCSuggestionViewProvider)initWithMapItem:(id)item
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = UGCSuggestionViewProvider;
  v6 = [(UGCSuggestionViewProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
    v8 = +[MUPlaceCallToActionAppearance userRecommendedLoadingAppearance];
    submissionStatus = v7->_submissionStatus;
    v7->_submissionStatus = v8;
  }

  return v7;
}

@end
@interface MapsCustomRouteCardView
- (MapsCustomRouteCardView)initWithCoder:(id)coder;
- (MapsCustomRouteCardView)initWithFrame:(CGRect)frame;
- (MapsCustomRouteCardViewDelegate)delegate;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
- (void)_commonInit;
- (void)_pressedNav;
- (void)_pressedOfflineDownloadButton;
- (void)_pressedRoutePlanning;
- (void)_pressedSaveToLibrary;
- (void)_pressedStepping;
- (void)_unitsDidChange;
- (void)_updateDirectionsButtonWithSuggestedMode:(unint64_t)mode;
- (void)_updateDisclaimerLabel;
- (void)_updateGraphView;
- (void)_updateOfflineButtonIfNecessary;
- (void)_updateOfflineSubscription;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setButtonEnabled:(BOOL)enabled;
- (void)setRoute:(id)route;
- (void)updateButtons;
- (void)valueChangedForGEOConfigKey:(id)key;
@end

@implementation MapsCustomRouteCardView

- (MapsCustomRouteCardViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  viewCopy = view;
  itemCopy = item;
  actionCopy = action;
  link = [itemCopy link];
  if (link && ![itemCopy contentType])
  {
    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100D21434;
    v14[3] = &unk_101660418;
    objc_copyWeak(&v16, &location);
    v15 = link;
    v12 = [UIAction actionWithHandler:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = actionCopy;
  }

  return v12;
}

- (void)valueChangedForGEOConfigKey:(id)key
{
  if (key.var0 == 745 && key.var1 == &unk_101644E90)
  {
    [(MapsCustomRouteCardView *)self updateButtons];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_1019354F8 == context)
  {
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100D215CC;
    block[3] = &unk_101661B98;
    objc_copyWeak(&v8, &location);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MapsCustomRouteCardView;
    [(MapsCustomRouteCardView *)&v6 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)_pressedOfflineDownloadButton
{
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "pressed offline download button", v7, 2u);
  }

  offlineSubscription = self->_offlineSubscription;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (offlineSubscription)
  {
    [WeakRetained pressedOfflineDataManagement];
  }

  else
  {
    [WeakRetained pressedOfflineDownload];
  }
}

- (void)_updateOfflineButtonIfNecessary
{
  v3 = self->_offlineSubscription;
  if (!GEOSupportsOfflineMaps())
  {
    goto LABEL_4;
  }

  if (!v3)
  {
    goto LABEL_9;
  }

  state = [(MapDataSubscriptionInfo *)v3 state];
  loadState = [state loadState];

  if (loadState)
  {
LABEL_4:
    v6 = 1;
    goto LABEL_10;
  }

  state2 = [(MapDataSubscriptionInfo *)v3 state];
  downloadState = [state2 downloadState];

  if (downloadState <= 1)
  {
    if (downloadState)
    {
      if (downloadState != 1)
      {
        goto LABEL_4;
      }

LABEL_32:
      v6 = 3;
      goto LABEL_10;
    }

LABEL_9:
    v6 = 2;
    goto LABEL_10;
  }

  if (downloadState != 2)
  {
    if (downloadState != 5)
    {
      goto LABEL_4;
    }

    goto LABEL_32;
  }

  state3 = [(MapDataSubscriptionInfo *)v3 state];
  downloadProgress = [state3 downloadProgress];
  isIndeterminate = [downloadProgress isIndeterminate];

  if (isIndeterminate)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

LABEL_10:

  if (v6 == self->_offlineDownloadButtonMode)
  {
    goto LABEL_24;
  }

  self->_offlineDownloadButtonMode = v6;
  if ((v6 - 2) >= 2)
  {
    if (v6 == 4)
    {
      offlineDownloadButton = self->_offlineDownloadButton;
      self->_offlineDownloadButton = 0;

      if (!self->_offlineDownloadProgressButton)
      {
        v21 = +[UIButtonConfiguration _maps_secondaryCardFooterActionButtonConfiguration];
        [v21 setTitleTextAttributesTransformer:&stru_101651860];
        [v21 contentInsets];
        [v21 setContentInsets:v22 + -4.0];
        objc_initWeak(&location, self);
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_100D21C78;
        v40[3] = &unk_101661900;
        objc_copyWeak(&v41, &location);
        v23 = [UIAction actionWithHandler:v40];
        v24 = [MapsProgressBarButton buttonWithConfiguration:v21 primaryAction:v23];
        offlineDownloadProgressButton = self->_offlineDownloadProgressButton;
        self->_offlineDownloadProgressButton = v24;

        [(MapsProgressBarButton *)self->_offlineDownloadProgressButton setProgressStyle:1];
        [(MapsProgressBarButton *)self->_offlineDownloadProgressButton setFillStyle:2];
        [(MapsProgressBarButton *)self->_offlineDownloadProgressButton setAccessibilityIdentifier:@"OfflineDownloadButton"];
        objc_destroyWeak(&v41);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      v26 = self->_offlineDownloadButton;
      self->_offlineDownloadButton = 0;

      v27 = self->_offlineDownloadProgressButton;
      self->_offlineDownloadProgressButton = 0;
    }

    goto LABEL_23;
  }

  v9 = self->_offlineDownloadProgressButton;
  self->_offlineDownloadProgressButton = 0;

  if (!self->_offlineDownloadButton)
  {
    objc_initWeak(&location, self);
    v10 = +[UIButtonConfiguration _maps_secondaryCardFooterActionButtonConfiguration];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100D21C34;
    v42[3] = &unk_101661900;
    objc_copyWeak(&v43, &location);
    v11 = [UIAction actionWithHandler:v42];
    v12 = [UIButton buttonWithConfiguration:v10 primaryAction:v11];
    v13 = self->_offlineDownloadButton;
    self->_offlineDownloadButton = v12;

    [(UIButton *)self->_offlineDownloadButton setAccessibilityIdentifier:@"OfflineDownloadButton"];
    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
  }

  offlineDownloadButtonMode = self->_offlineDownloadButtonMode;
  if (offlineDownloadButtonMode == 2)
  {
    v28 = self->_offlineDownloadButton;
    v29 = +[NSBundle mainBundle];
    v30 = [v29 localizedStringForKey:@"ROUTE_CREATION_OFFLINE_DOWNLOAD_MAP" value:@"localized string not found" table:@"Offline"];
    [(UIButton *)v28 setTitle:v30 forState:0];

    v18 = self->_offlineDownloadButton;
    v19 = 1;
    goto LABEL_22;
  }

  if (offlineDownloadButtonMode == 3)
  {
    v15 = self->_offlineDownloadButton;
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"ROUTE_CREATION_OFFLINE_DOWNLOAD_WAITING" value:@"localized string not found" table:@"Offline"];
    [(UIButton *)v15 setTitle:v17 forState:0];

    v18 = self->_offlineDownloadButton;
    v19 = 0;
LABEL_22:
    [(UIButton *)v18 setEnabled:v19];
  }

LABEL_23:
  [(MapsCustomRouteCardView *)self updateButtons];
  v6 = self->_offlineDownloadButtonMode;
LABEL_24:
  if (v6 == 4)
  {
    state4 = [(MapDataSubscriptionInfo *)self->_offlineSubscription state];
    downloadProgress2 = [state4 downloadProgress];

    [(MapsProgressBarButton *)self->_offlineDownloadProgressButton setProgressionHidden:0];
    [downloadProgress2 fractionCompleted];
    [(MapsProgressBarButton *)self->_offlineDownloadProgressButton setProgress:?];
    byteCompletedCount = [downloadProgress2 byteCompletedCount];
    if (byteCompletedCount)
    {
      byteCompletedCount2 = [downloadProgress2 byteCompletedCount];
      longLongValue = [byteCompletedCount2 longLongValue];
    }

    else
    {
      longLongValue = [downloadProgress2 completedUnitCount];
    }

    v36 = [MKRoundingByteCountFormatter stringFromByteCountWithRoundingTo1MB:longLongValue];
    [(MapsProgressBarButton *)self->_offlineDownloadProgressButton setTitle:v36 forState:0];
  }
}

- (void)_updateOfflineSubscription
{
  route = self->_route;
  if (route)
  {
    boundingMapRegion = [(GEOComposedRoute *)route boundingMapRegion];
    v5 = [GEOMapRegion _maps_offlineCoverageRegionForRouteBounds:boundingMapRegion];

    v6 = +[MapsOfflineUIHelper sharedHelper];
    v7 = [v6 subscriptionInfoForRegion:v5];
  }

  else
  {
    v7 = 0;
  }

  offlineSubscription = self->_offlineSubscription;
  if (v7 != offlineSubscription)
  {
    if (offlineSubscription)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = [&off_1016ED940 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        do
        {
          v12 = 0;
          do
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(&off_1016ED940);
            }

            [(MapDataSubscriptionInfo *)self->_offlineSubscription removeObserver:self forKeyPath:*(*(&v21 + 1) + 8 * v12) context:off_1019354F8];
            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [&off_1016ED940 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v10);
      }
    }

    objc_storeStrong(&self->_offlineSubscription, v7);
    if (self->_offlineSubscription)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v13 = [&off_1016ED958 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v18;
        do
        {
          v16 = 0;
          do
          {
            if (*v18 != v15)
            {
              objc_enumerationMutation(&off_1016ED958);
            }

            [(MapDataSubscriptionInfo *)self->_offlineSubscription addObserver:self forKeyPath:*(*(&v17 + 1) + 8 * v16) options:0 context:off_1019354F8];
            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [&off_1016ED958 countByEnumeratingWithState:&v17 objects:v25 count:16];
        }

        while (v14);
      }
    }
  }

  [(MapsCustomRouteCardView *)self _updateOfflineButtonIfNecessary];
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = MapsCustomRouteCardView;
  [(MapsCustomRouteCardView *)&v9 layoutSubviews];
  renderedGraphWidth = self->_renderedGraphWidth;
  if (!renderedGraphWidth || ([(NSNumber *)renderedGraphWidth cgFloatValue], v5 = v4, [(MapsCustomRouteCardView *)self frame], vabdd_f64(v5, CGRectGetWidth(v10)) >= 33.0))
  {
    [(MapsCustomRouteCardView *)self _updateGraphView];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 didUpdateLayout];
    }
  }
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  if (self->_route != routeCopy)
  {
    objc_storeStrong(&self->_route, route);
    [(GEOComposedRoute *)routeCopy distance];
    v36[0] = NSFontAttributeName;
    v6 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle2 weight:UIFontWeightSemibold];
    v37[0] = v6;
    v36[1] = NSForegroundColorAttributeName;
    v7 = +[UIColor labelColor];
    v37[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
    v9 = sub_100C86B78(v8);
    [(UILabel *)self->_distanceLabel setAttributedText:v9];

    previewDurationString = [(GEOComposedRoute *)routeCopy previewDurationString];
    [(GEOComposedRoute *)routeCopy travelAndChargingDuration];
    v12 = v11;
    elevationProfile = [(GEOComposedRoute *)routeCopy elevationProfile];
    v34[0] = NSFontAttributeName;
    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v34[1] = NSForegroundColorAttributeName;
    v35[0] = v14;
    v15 = +[UIColor secondaryLabelColor];
    v35[1] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
    v17 = sub_100C86368(previewDurationString, elevationProfile, v16, v12);
    [(MapsThemeMultiPartLabel *)self->_descriptionLabel setMultiPartString:v17];

    [(MapsCustomRouteCardView *)self _updateGraphView];
    [(MapsCustomRouteCardView *)self _updateDisclaimerLabel];
    objc_initWeak(&location, self);
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_100D22474;
    v30 = &unk_101651820;
    objc_copyWeak(&v32, &location);
    v18 = routeCopy;
    v31 = v18;
    v19 = objc_retainBlock(&v27);
    v20 = [MKLocationManager sharedLocationManager:v27];
    lastLocation = [v20 lastLocation];
    (v19[2])(v19, lastLocation, 0);

    v22 = +[MKLocationManager sharedLocationManager];
    v23 = [v22 singleLocationUpdateWithHandler:v19];

    [v23 start];
    [(MapsCustomRouteCardView *)self _updateOfflineSubscription];
    v24 = [[GEOComposedWaypointToRoute alloc] initWithRoute:v18];
    storageID = [(GEOComposedRoute *)v18 storageID];
    v26 = [HistoryEntryRecentsItem saveCustomRoute:v18 asWaypoint:v24 withOriginalHistoryIdentifier:storageID];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }
}

- (void)setButtonEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = enabledCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting buttons enabled %d", v6, 8u);
  }

  [(UIButton *)self->_saveToLibraryButton setEnabled:enabledCopy];
  [(UIButton *)self->_directionsButton setEnabled:enabledCopy];
}

- (void)updateButtons
{
  v3 = +[NSMutableArray array];
  if (self->_route)
  {
    objc_initWeak(&location, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100D2299C;
    v18[3] = &unk_101661340;
    objc_copyWeak(&v20, &location);
    v4 = v3;
    v19 = v4;
    v5 = objc_retainBlock(v18);
    BOOL = GEOConfigGetBOOL();
    route = self->_route;
    if (BOOL)
    {
      storageID = [(GEOComposedRoute *)route storageID];
      v9 = storageID == 0;

      if (v9)
      {
        (v5[2])(v5);
      }

      else
      {
        v10 = self->_offlineDownloadButtonMode - 2;
        if (v10 <= 2)
        {
          [v4 addObject:*(&self->super.super.super.isa + *off_101651880[v10])];
        }
      }

      [v4 addObject:self->_directionsButton];
      [(MultilineStackView *)self->_buttonStackView setArrangedSubviews:v4];
      v17 = sub_1007989A4();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v23 = v4;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Setting buttons list to %{public}@", buf, 0xCu);
      }
    }

    else
    {
      storageID2 = [(GEOComposedRoute *)route storageID];
      v16 = storageID2 == 0;

      if (v16)
      {
        (v5[2])(v5);
        [(MultilineStackView *)self->_buttonStackView setArrangedSubviews:v4];
      }

      else
      {
        [(MultilineStackView *)self->_buttonStackView setArrangedSubviews:&__NSArray0__struct];
      }
    }

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = sub_10006D178();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [NSString stringWithFormat:@"A route is required before we can show buttons in MapsCustomRouteCardView."];
      *buf = 136316162;
      v23 = "[MapsCustomRouteCardView updateButtons]";
      v24 = 2080;
      v25 = "MapsCustomRouteCardView.m";
      v26 = 1024;
      v27 = 432;
      v28 = 2080;
      v29 = "_route != nil";
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
    }

    if (sub_100E03634())
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v23 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

    [(MultilineStackView *)self->_buttonStackView setArrangedSubviews:&__NSArray0__struct];
  }
}

- (void)_updateDirectionsButtonWithSuggestedMode:(unint64_t)mode
{
  v5 = +[UIButtonConfiguration _maps_primaryCardFooterActionButtonConfiguration];
  if (!mode)
  {
LABEL_12:
    v27 = sub_1007989A4();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v28 = "Hiding stepping button because it is not supported";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, v28, buf, 2u);
    goto LABEL_20;
  }

  if (mode != 1)
  {
    if (mode == 4)
    {
      if (GEOConfigGetBOOL())
      {
        directionsButton = self->_directionsButton;
        v7 = +[NSBundle mainBundle];
        v8 = [v7 localizedStringForKey:@"[Route Creation] Directions" value:@"localized string not found" table:0];
        [(UIButton *)directionsButton setTitle:v8 forState:0];

        [(UIButton *)self->_directionsButton removeTarget:self action:0 forControlEvents:64];
        v9 = self->_directionsButton;
        v10 = "_pressedRoutePlanning";
LABEL_11:
        [(UIButton *)v9 addTarget:self action:v10 forControlEvents:64];
        [(MultilineStackView *)self->_buttonStackView addArrangedSubview:self->_directionsButton];
        goto LABEL_21;
      }

      v27 = sub_1007989A4();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v28 = "Hiding route planning button because it is not supported";
        goto LABEL_19;
      }

LABEL_20:

      [(MultilineStackView *)self->_buttonStackView removeArrangedSubview:self->_directionsButton];
      goto LABEL_21;
    }

    if (GEOConfigGetBOOL())
    {
      v24 = self->_directionsButton;
      v25 = +[NSBundle mainBundle];
      v26 = [v25 localizedStringForKey:@"[Route Creation] Directions" value:@"localized string not found" table:0];
      [(UIButton *)v24 setTitle:v26 forState:0];

      [(UIButton *)self->_directionsButton removeTarget:self action:0 forControlEvents:64];
      v9 = self->_directionsButton;
      v10 = "_pressedStepping";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v11 = +[GEOPlatform sharedPlatform];
  if (![v11 supportsNavigation])
  {

    goto LABEL_15;
  }

  BOOL = GEOConfigGetBOOL();

  if ((BOOL & 1) == 0)
  {
LABEL_15:
    v27 = sub_1007989A4();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v28 = "Hiding GO button because it is not supported";
    goto LABEL_19;
  }

  v13 = +[UIColor systemGreenColor];
  background = [v5 background];
  [background setBackgroundColor:v13];

  v15 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle3 weight:UIFontWeightBold];
  v16 = [UIFont _maps_cappedFont:v15 withMaxPoint:34.0];

  fontDescriptor = [v16 fontDescriptor];
  v18 = [fontDescriptor fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
  v19 = [UIFont fontWithDescriptor:v18 size:0.0];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100D22F08;
  v29[3] = &unk_101652B60;
  v30 = v19;
  v20 = v19;
  [v5 setTitleTextAttributesTransformer:v29];
  v21 = self->_directionsButton;
  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"[Route Creation] GO" value:@"localized string not found" table:0];
  [(UIButton *)v21 setTitle:v23 forState:0];

  [(UIButton *)self->_directionsButton removeTarget:self action:0 forControlEvents:64];
  [(UIButton *)self->_directionsButton addTarget:self action:"_pressedNav" forControlEvents:64];
  [(MultilineStackView *)self->_buttonStackView addArrangedSubview:self->_directionsButton];

LABEL_21:
  [(UIButton *)self->_directionsButton setConfiguration:v5];
  [(MultilineStackView *)self->_buttonStackView invalidateLayout];
}

- (void)_updateDisclaimerLabel
{
  if ([(GEOComposedRoute *)self->_route source]== 2)
  {
    disclaimerText = [(GEOComposedRoute *)self->_route disclaimerText];
    v4 = [disclaimerText length];

    if (v4)
    {
      [(NSLayoutConstraint *)self->_disclaimerLabelBottomConstraint setActive:1];
      [(UITextView *)self->_disclaimerLabel setAlpha:1.0];
      disclaimerText2 = [(GEOComposedRoute *)self->_route disclaimerText];
      disclaimerURL = [(GEOComposedRoute *)self->_route disclaimerURL];
      v7 = [disclaimerURL url];
      if (v7)
      {
        v8 = disclaimerText2;
        disclaimerURL2 = [(GEOComposedRoute *)self->_route disclaimerURL];
        displayTitle = [disclaimerURL2 displayTitle];
        stringValue = [displayTitle stringValue];
        if (stringValue)
        {
          disclaimerURL3 = [(GEOComposedRoute *)self->_route disclaimerURL];
          displayTitle2 = [disclaimerURL3 displayTitle];
          stringValue2 = [displayTitle2 stringValue];
        }

        else
        {
          stringValue2 = 0;
        }

        disclaimerText2 = v8;
      }

      else
      {
        stringValue2 = 0;
      }

      v36[0] = NSFontAttributeName;
      v15 = [UIFont _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightMedium];
      v37[0] = v15;
      v36[1] = NSForegroundColorAttributeName;
      v16 = +[UIColor secondaryLabelColor];
      v37[1] = v16;
      v17 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];

      storageID = [(GEOComposedRoute *)self->_route storageID];
      if (storageID)
      {
      }

      else if ([stringValue2 length])
      {
        v20 = +[NSBundle mainBundle];
        [v20 localizedStringForKey:@"[Curated route viewing] Safety disclaimer concatination" value:@"localized string not found" table:0];
        v21 = v32 = disclaimerText2;
        v31 = [NSString stringWithFormat:v21, v32, stringValue2];

        v19 = [[NSMutableAttributedString alloc] initWithString:v31 attributes:v17];
        v22 = [v31 rangeOfString:stringValue2];
        v29 = v23;
        v30 = v22;
        v34[0] = NSForegroundColorAttributeName;
        v24 = +[UIColor systemBlueColor];
        v35[0] = v24;
        v34[1] = NSFontAttributeName;
        v25 = [UIFont _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightSemibold];
        v35[1] = v25;
        v34[2] = NSLinkAttributeName;
        disclaimerURL4 = [(GEOComposedRoute *)self->_route disclaimerURL];
        v27 = [disclaimerURL4 url];
        v35[2] = v27;
        v28 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];

        disclaimerText2 = v32;
        [v19 setAttributes:v28 range:{v30, v29}];

        goto LABEL_17;
      }

      v19 = [[NSMutableAttributedString alloc] initWithString:disclaimerText2 attributes:v17];
LABEL_17:
      [(UITextView *)self->_disclaimerLabel setAttributedText:v19];

      return;
    }
  }

  [(NSLayoutConstraint *)self->_disclaimerLabelBottomConstraint setActive:0];
  disclaimerLabel = self->_disclaimerLabel;

  [(UITextView *)disclaimerLabel setAlpha:0.0];
}

- (void)_updateGraphView
{
  view = [(UIViewController *)self->_graphViewController view];
  [view removeFromSuperview];

  graphViewController = self->_graphViewController;
  self->_graphViewController = 0;

  [(MapsCustomRouteCardView *)self frame];
  v5 = CGRectGetWidth(v54) + -32.0;
  if (v5 >= 2.22044605e-16)
  {
    v6 = [NSNumber numberWithDouble:v5];
    renderedGraphWidth = self->_renderedGraphWidth;
    self->_renderedGraphWidth = v6;

    v8 = +[_TtC4Maps23MapsElevationChartStyle navigationLineStyle];
    elevationProfile = [(GEOComposedRoute *)self->_route elevationProfile];
    isMetric = self->_isMetric;
    traitCollection = [(MapsCustomRouteCardView *)self traitCollection];
    v12 = [_TtC4Maps32MapsElevationGraphViewController makeHostingControllerFor:elevationProfile width:isMetric isMetric:traitCollection traitCollection:0 shouldHighlight:v8 chartStyle:self->_zeroMeters currentPosition:v5];
    v13 = self->_graphViewController;
    self->_graphViewController = v12;

    v14 = self->_graphViewController;
    if (v14)
    {
      v44 = v8;
      view2 = [(UIViewController *)v14 view];
      [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
      [view2 setUserInteractionEnabled:0];
      v16 = +[UIColor clearColor];
      [view2 setBackgroundColor:v16];

      [(UIView *)self->_summaryContainer addSubview:view2];
      elevationProfile2 = [(GEOComposedRoute *)self->_route elevationProfile];
      if ([elevationProfile2 isValid])
      {
        v18 = -8.0;
      }

      else
      {
        v18 = -3.0;
      }

      elevationProfile3 = [(GEOComposedRoute *)self->_route elevationProfile];
      v20 = 0.0;
      if ([elevationProfile3 isValid])
      {
        v21 = 82.0;
      }

      else
      {
        v21 = 0.0;
      }

      elevationProfile4 = [(GEOComposedRoute *)self->_route elevationProfile];
      if ([elevationProfile4 isValid])
      {
        v20 = 10.0;
      }

      leadingAnchor = [view2 leadingAnchor];
      leadingAnchor2 = [(UIView *)self->_summaryContainer leadingAnchor];
      v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v47[0] = v41;
      trailingAnchor = [view2 trailingAnchor];
      trailingAnchor2 = [(UIView *)self->_summaryContainer trailingAnchor];
      v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v47[1] = v24;
      heightAnchor = [view2 heightAnchor];
      v26 = [heightAnchor constraintEqualToConstant:v21];
      v47[2] = v26;
      topAnchor = [view2 topAnchor];
      bottomAnchor = [(MapsThemeMultiPartLabel *)self->_descriptionLabel bottomAnchor];
      v29 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:v20];
      v47[3] = v29;
      v30 = [NSArray arrayWithObjects:v47 count:4];
      [NSLayoutConstraint activateConstraints:v30];

      if (-[GEOComposedRoute source](self->_route, "source") == 2 && (-[GEOComposedRoute disclaimerText](self->_route, "disclaimerText"), v31 = objc_claimAutoreleasedReturnValue(), v32 = [v31 length], v31, v32))
      {
        bottomAnchor2 = [view2 bottomAnchor];
        topAnchor2 = [(UITextView *)self->_disclaimerLabel topAnchor];
        v35 = [bottomAnchor2 constraintEqualToAnchor:topAnchor2];
        v45 = v35;
        v36 = &v45;
      }

      else
      {
        bottomAnchor2 = [view2 bottomAnchor];
        topAnchor2 = [(UIView *)self->_summaryContainer bottomAnchor];
        v35 = [bottomAnchor2 constraintEqualToAnchor:topAnchor2 constant:v18];
        v46 = v35;
        v36 = &v46;
      }

      v37 = [NSArray arrayWithObjects:v36 count:1];
      [NSLayoutConstraint activateConstraints:v37];

      v8 = v44;
    }

    else
    {
      v38 = sub_10006D178();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v49 = "[MapsCustomRouteCardView _updateGraphView]";
        v50 = 2080;
        v51 = "MapsCustomRouteCardView.m";
        v52 = 1024;
        v53 = 291;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
      }

      if (!sub_100E03634())
      {
        goto LABEL_17;
      }

      view2 = sub_10006D178();
      if (os_log_type_enabled(view2, OS_LOG_TYPE_ERROR))
      {
        v39 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v49 = v39;
        _os_log_impl(&_mh_execute_header, view2, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }

LABEL_17:
  }
}

- (void)_unitsDidChange
{
  v3 = +[NSLocale currentLocale];
  self->_isMetric = [v3 _navigation_distanceUsesMetricSystem];

  [(MapsCustomRouteCardView *)self _updateGraphView];
}

- (void)_pressedSaveToLibrary
{
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "pressed save to library", v5, 2u);
  }

  delegate = [(MapsCustomRouteCardView *)self delegate];
  [delegate pressedSaveToLibrary];
}

- (void)_pressedRoutePlanning
{
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "pressed route planning", buf, 2u);
  }

  [(UIButton *)self->_directionsButton setEnabled:0];
  v4 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D23B68;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v4, &_dispatch_main_q, block);
  delegate = [(MapsCustomRouteCardView *)self delegate];
  [delegate pressedRoutePlanning];
}

- (void)_pressedStepping
{
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "pressed stepping", v5, 2u);
  }

  delegate = [(MapsCustomRouteCardView *)self delegate];
  [delegate pressedStepping];
}

- (void)_pressedNav
{
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "pressed go", v5, 2u);
  }

  delegate = [(MapsCustomRouteCardView *)self delegate];
  [delegate pressedNavigation];
}

- (void)dealloc
{
  if (self->_offlineSubscription)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [&off_1016ED928 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(&off_1016ED928);
          }

          [(MapDataSubscriptionInfo *)self->_offlineSubscription addObserver:self forKeyPath:*(*(&v8 + 1) + 8 * v6) options:0 context:off_1019354F8];
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [&off_1016ED928 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }

  GEOConfigRemoveDelegateListenerForAllKeys();
  v7.receiver = self;
  v7.super_class = MapsCustomRouteCardView;
  [(MapsCustomRouteCardView *)&v7 dealloc];
}

- (void)_commonInit
{
  v3 = +[NSLocale currentLocale];
  self->_isMetric = [v3 _navigation_distanceUsesMetricSystem];

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = MNLocaleDidChangeNotification();
  [v4 addObserver:self selector:"_unitsDidChange" name:v5 object:0];

  v6 = [NSMeasurement alloc];
  v7 = +[NSUnitLength meters];
  v8 = [v6 initWithDoubleValue:v7 unit:0.0];
  zeroMeters = self->_zeroMeters;
  self->_zeroMeters = v8;

  v10 = objc_opt_new();
  summaryContainer = self->_summaryContainer;
  self->_summaryContainer = v10;

  [(UIView *)self->_summaryContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [UIColor colorWithDynamicProvider:&stru_1016517B8];
  [(UIView *)self->_summaryContainer setBackgroundColor:v12];

  [(UIView *)self->_summaryContainer _setContinuousCornerRadius:12.0];
  v13 = objc_opt_new();
  distanceLabel = self->_distanceLabel;
  self->_distanceLabel = v13;

  [(UILabel *)self->_distanceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = objc_opt_new();
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v15;

  [(MapsThemeMultiPartLabel *)self->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MapsThemeMultiPartLabel *)self->_descriptionLabel setNumberOfLines:1];
  v17 = objc_opt_new();
  disclaimerLabel = self->_disclaimerLabel;
  self->_disclaimerLabel = v17;

  [(UITextView *)self->_disclaimerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)self->_disclaimerLabel setEditable:0];
  [(UITextView *)self->_disclaimerLabel setScrollEnabled:0];
  v19 = +[UIColor clearColor];
  [(UITextView *)self->_disclaimerLabel setBackgroundColor:v19];

  [(UITextView *)self->_disclaimerLabel setDelegate:self];
  v20 = 2;
  v21 = [[MultilineStackView alloc] initWithHorizontalArrangement:3 verticalArrangement:2];
  buttonStackView = self->_buttonStackView;
  self->_buttonStackView = v21;

  [(MultilineStackView *)self->_buttonStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  kMUPlaceHorizontalStackSpacing();
  [(MultilineStackView *)self->_buttonStackView setInterItemHorizontalPadding:?];
  kMUPlaceHorizontalStackSpacing();
  [(MultilineStackView *)self->_buttonStackView setInterItemVerticalPadding:?];
  LODWORD(v23) = 1148846080;
  [(MultilineStackView *)self->_buttonStackView setContentHuggingPriority:1 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [(MultilineStackView *)self->_buttonStackView setContentCompressionResistancePriority:1 forAxis:v24];
  [(MultilineStackView *)self->_buttonStackView setAccessibilityIdentifier:@"ButtonStackView"];
  [(MultilineStackView *)self->_buttonStackView setRowHeightBlock:&stru_1016517F8];
  origin = [(GEOComposedRoute *)self->_route origin];
  if ([origin isCurrentLocation])
  {
    v26 = +[GEOCountryConfiguration sharedConfiguration];
    if ([v26 currentCountrySupportsNavigation])
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }
  }

  v27 = +[UIButtonConfiguration _maps_primaryCardFooterActionButtonConfiguration];
  v28 = [UIButton buttonWithConfiguration:v27 primaryAction:0];
  directionsButton = self->_directionsButton;
  self->_directionsButton = v28;

  [(UIButton *)self->_directionsButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v30) = 1148846080;
  [(UIButton *)self->_directionsButton setContentCompressionResistancePriority:1 forAxis:v30];
  [(UIButton *)self->_directionsButton setAccessibilityIdentifier:@"DirectionsButton"];
  v31 = +[UIButtonConfiguration _maps_secondaryCardFooterActionButtonConfiguration];
  v32 = [UIButton buttonWithConfiguration:v31 primaryAction:0];
  saveToLibraryButton = self->_saveToLibraryButton;
  self->_saveToLibraryButton = v32;

  [(UIButton *)self->_saveToLibraryButton addTarget:self action:"_pressedSaveToLibrary" forControlEvents:64];
  [(MapsCustomRouteCardView *)self _updateDirectionsButtonWithSuggestedMode:v20];
  [(UIView *)self->_summaryContainer addSubview:self->_distanceLabel];
  [(UIView *)self->_summaryContainer addSubview:self->_descriptionLabel];
  [(UIView *)self->_summaryContainer addSubview:self->_disclaimerLabel];
  [(MapsCustomRouteCardView *)self addSubview:self->_summaryContainer];
  [(MapsCustomRouteCardView *)self addSubview:self->_buttonStackView];
  topAnchor = [(UIView *)self->_summaryContainer topAnchor];
  topAnchor2 = [(MapsCustomRouteCardView *)self topAnchor];
  v82 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v85[0] = v82;
  leadingAnchor = [(UIView *)self->_summaryContainer leadingAnchor];
  leadingAnchor2 = [(MapsCustomRouteCardView *)self leadingAnchor];
  v79 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v85[1] = v79;
  trailingAnchor = [(UIView *)self->_summaryContainer trailingAnchor];
  trailingAnchor2 = [(MapsCustomRouteCardView *)self trailingAnchor];
  v76 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v85[2] = v76;
  leadingAnchor3 = [(UILabel *)self->_distanceLabel leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_summaryContainer leadingAnchor];
  v73 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:14.0];
  v85[3] = v73;
  trailingAnchor3 = [(UILabel *)self->_distanceLabel trailingAnchor];
  trailingAnchor4 = [(UIView *)self->_summaryContainer trailingAnchor];
  v70 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-14.0];
  v85[4] = v70;
  topAnchor3 = [(UILabel *)self->_distanceLabel topAnchor];
  topAnchor4 = [(UIView *)self->_summaryContainer topAnchor];
  v67 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:12.0];
  v85[5] = v67;
  leadingAnchor5 = [(MapsThemeMultiPartLabel *)self->_descriptionLabel leadingAnchor];
  leadingAnchor6 = [(UILabel *)self->_distanceLabel leadingAnchor];
  v64 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v85[6] = v64;
  trailingAnchor5 = [(MapsThemeMultiPartLabel *)self->_descriptionLabel trailingAnchor];
  trailingAnchor6 = [(UILabel *)self->_distanceLabel trailingAnchor];
  v61 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v85[7] = v61;
  topAnchor5 = [(MapsThemeMultiPartLabel *)self->_descriptionLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_distanceLabel bottomAnchor];
  v58 = [topAnchor5 constraintEqualToAnchor:bottomAnchor constant:-7.0];
  v85[8] = v58;
  leadingAnchor7 = [(UITextView *)self->_disclaimerLabel leadingAnchor];
  leadingAnchor8 = [(UIView *)self->_summaryContainer leadingAnchor];
  v55 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:8.0];
  v85[9] = v55;
  trailingAnchor7 = [(UITextView *)self->_disclaimerLabel trailingAnchor];
  trailingAnchor8 = [(UIView *)self->_summaryContainer trailingAnchor];
  v52 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-10.0];
  v85[10] = v52;
  leadingAnchor9 = [(MultilineStackView *)self->_buttonStackView leadingAnchor];
  leadingAnchor10 = [(MapsCustomRouteCardView *)self leadingAnchor];
  v49 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:16.0];
  v85[11] = v49;
  trailingAnchor9 = [(MultilineStackView *)self->_buttonStackView trailingAnchor];
  trailingAnchor10 = [(MapsCustomRouteCardView *)self trailingAnchor];
  v35 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:-16.0];
  v85[12] = v35;
  topAnchor6 = [(MultilineStackView *)self->_buttonStackView topAnchor];
  bottomAnchor2 = [(UIView *)self->_summaryContainer bottomAnchor];
  v38 = [topAnchor6 constraintEqualToAnchor:bottomAnchor2 constant:16.0];
  v85[13] = v38;
  bottomAnchor3 = [(MultilineStackView *)self->_buttonStackView bottomAnchor];
  bottomAnchor4 = [(MapsCustomRouteCardView *)self bottomAnchor];
  v41 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v85[14] = v41;
  v42 = [NSArray arrayWithObjects:v85 count:15];
  [NSLayoutConstraint activateConstraints:v42];

  bottomAnchor5 = [(UITextView *)self->_disclaimerLabel bottomAnchor];
  bottomAnchor6 = [(UIView *)self->_summaryContainer bottomAnchor];
  v45 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  disclaimerLabelBottomConstraint = self->_disclaimerLabelBottomConstraint;
  self->_disclaimerLabelBottomConstraint = v45;

  v47 = +[NSNotificationCenter defaultCenter];
  [v47 addObserver:self selector:"_updateOfflineSubscription" name:@"OfflineMapsSubscriptionsDidChangeNotification" object:0];

  _GEOConfigAddDelegateListenerForKey();
}

- (MapsCustomRouteCardView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MapsCustomRouteCardView;
  v3 = [(MapsCustomRouteCardView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MapsCustomRouteCardView *)v3 _commonInit];
  }

  return v4;
}

- (MapsCustomRouteCardView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MapsCustomRouteCardView;
  v3 = [(MapsCustomRouteCardView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(MapsCustomRouteCardView *)v3 _commonInit];
  }

  return v4;
}

@end
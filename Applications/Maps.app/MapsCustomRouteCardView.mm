@interface MapsCustomRouteCardView
- (MapsCustomRouteCardView)initWithCoder:(id)a3;
- (MapsCustomRouteCardView)initWithFrame:(CGRect)a3;
- (MapsCustomRouteCardViewDelegate)delegate;
- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5;
- (void)_commonInit;
- (void)_pressedNav;
- (void)_pressedOfflineDownloadButton;
- (void)_pressedRoutePlanning;
- (void)_pressedSaveToLibrary;
- (void)_pressedStepping;
- (void)_unitsDidChange;
- (void)_updateDirectionsButtonWithSuggestedMode:(unint64_t)a3;
- (void)_updateDisclaimerLabel;
- (void)_updateGraphView;
- (void)_updateOfflineButtonIfNecessary;
- (void)_updateOfflineSubscription;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setButtonEnabled:(BOOL)a3;
- (void)setRoute:(id)a3;
- (void)updateButtons;
- (void)valueChangedForGEOConfigKey:(id)a3;
@end

@implementation MapsCustomRouteCardView

- (MapsCustomRouteCardViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 link];
  if (v11 && ![v9 contentType])
  {
    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100D21434;
    v14[3] = &unk_101660418;
    objc_copyWeak(&v16, &location);
    v15 = v11;
    v12 = [UIAction actionWithHandler:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = v10;
  }

  return v12;
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  if (a3.var0 == 745 && a3.var1 == &unk_101644E90)
  {
    [(MapsCustomRouteCardView *)self updateButtons];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_1019354F8 == a6)
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
    [(MapsCustomRouteCardView *)&v6 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
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

  v4 = [(MapDataSubscriptionInfo *)v3 state];
  v5 = [v4 loadState];

  if (v5)
  {
LABEL_4:
    v6 = 1;
    goto LABEL_10;
  }

  v7 = [(MapDataSubscriptionInfo *)v3 state];
  v8 = [v7 downloadState];

  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
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

  if (v8 != 2)
  {
    if (v8 != 5)
    {
      goto LABEL_4;
    }

    goto LABEL_32;
  }

  v37 = [(MapDataSubscriptionInfo *)v3 state];
  v38 = [v37 downloadProgress];
  v39 = [v38 isIndeterminate];

  if (v39)
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
    v31 = [(MapDataSubscriptionInfo *)self->_offlineSubscription state];
    v32 = [v31 downloadProgress];

    [(MapsProgressBarButton *)self->_offlineDownloadProgressButton setProgressionHidden:0];
    [v32 fractionCompleted];
    [(MapsProgressBarButton *)self->_offlineDownloadProgressButton setProgress:?];
    v33 = [v32 byteCompletedCount];
    if (v33)
    {
      v34 = [v32 byteCompletedCount];
      v35 = [v34 longLongValue];
    }

    else
    {
      v35 = [v32 completedUnitCount];
    }

    v36 = [MKRoundingByteCountFormatter stringFromByteCountWithRoundingTo1MB:v35];
    [(MapsProgressBarButton *)self->_offlineDownloadProgressButton setTitle:v36 forState:0];
  }
}

- (void)_updateOfflineSubscription
{
  route = self->_route;
  if (route)
  {
    v4 = [(GEOComposedRoute *)route boundingMapRegion];
    v5 = [GEOMapRegion _maps_offlineCoverageRegionForRouteBounds:v4];

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

- (void)setRoute:(id)a3
{
  v5 = a3;
  if (self->_route != v5)
  {
    objc_storeStrong(&self->_route, a3);
    [(GEOComposedRoute *)v5 distance];
    v36[0] = NSFontAttributeName;
    v6 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle2 weight:UIFontWeightSemibold];
    v37[0] = v6;
    v36[1] = NSForegroundColorAttributeName;
    v7 = +[UIColor labelColor];
    v37[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
    v9 = sub_100C86B78(v8);
    [(UILabel *)self->_distanceLabel setAttributedText:v9];

    v10 = [(GEOComposedRoute *)v5 previewDurationString];
    [(GEOComposedRoute *)v5 travelAndChargingDuration];
    v12 = v11;
    v13 = [(GEOComposedRoute *)v5 elevationProfile];
    v34[0] = NSFontAttributeName;
    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v34[1] = NSForegroundColorAttributeName;
    v35[0] = v14;
    v15 = +[UIColor secondaryLabelColor];
    v35[1] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
    v17 = sub_100C86368(v10, v13, v16, v12);
    [(MapsThemeMultiPartLabel *)self->_descriptionLabel setMultiPartString:v17];

    [(MapsCustomRouteCardView *)self _updateGraphView];
    [(MapsCustomRouteCardView *)self _updateDisclaimerLabel];
    objc_initWeak(&location, self);
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_100D22474;
    v30 = &unk_101651820;
    objc_copyWeak(&v32, &location);
    v18 = v5;
    v31 = v18;
    v19 = objc_retainBlock(&v27);
    v20 = [MKLocationManager sharedLocationManager:v27];
    v21 = [v20 lastLocation];
    (v19[2])(v19, v21, 0);

    v22 = +[MKLocationManager sharedLocationManager];
    v23 = [v22 singleLocationUpdateWithHandler:v19];

    [v23 start];
    [(MapsCustomRouteCardView *)self _updateOfflineSubscription];
    v24 = [[GEOComposedWaypointToRoute alloc] initWithRoute:v18];
    v25 = [(GEOComposedRoute *)v18 storageID];
    v26 = [HistoryEntryRecentsItem saveCustomRoute:v18 asWaypoint:v24 withOriginalHistoryIdentifier:v25];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }
}

- (void)setButtonEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Setting buttons enabled %d", v6, 8u);
  }

  [(UIButton *)self->_saveToLibraryButton setEnabled:v3];
  [(UIButton *)self->_directionsButton setEnabled:v3];
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
      v8 = [(GEOComposedRoute *)route storageID];
      v9 = v8 == 0;

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
      v15 = [(GEOComposedRoute *)route storageID];
      v16 = v15 == 0;

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

- (void)_updateDirectionsButtonWithSuggestedMode:(unint64_t)a3
{
  v5 = +[UIButtonConfiguration _maps_primaryCardFooterActionButtonConfiguration];
  if (!a3)
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

  if (a3 != 1)
  {
    if (a3 == 4)
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
  v14 = [v5 background];
  [v14 setBackgroundColor:v13];

  v15 = [UIFont _preferredFontForTextStyle:UIFontTextStyleTitle3 weight:UIFontWeightBold];
  v16 = [UIFont _maps_cappedFont:v15 withMaxPoint:34.0];

  v17 = [v16 fontDescriptor];
  v18 = [v17 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
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
    v3 = [(GEOComposedRoute *)self->_route disclaimerText];
    v4 = [v3 length];

    if (v4)
    {
      [(NSLayoutConstraint *)self->_disclaimerLabelBottomConstraint setActive:1];
      [(UITextView *)self->_disclaimerLabel setAlpha:1.0];
      v5 = [(GEOComposedRoute *)self->_route disclaimerText];
      v6 = [(GEOComposedRoute *)self->_route disclaimerURL];
      v7 = [v6 url];
      if (v7)
      {
        v8 = v5;
        v9 = [(GEOComposedRoute *)self->_route disclaimerURL];
        v10 = [v9 displayTitle];
        v11 = [v10 stringValue];
        if (v11)
        {
          v12 = [(GEOComposedRoute *)self->_route disclaimerURL];
          v13 = [v12 displayTitle];
          v33 = [v13 stringValue];
        }

        else
        {
          v33 = 0;
        }

        v5 = v8;
      }

      else
      {
        v33 = 0;
      }

      v36[0] = NSFontAttributeName;
      v15 = [UIFont _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightMedium];
      v37[0] = v15;
      v36[1] = NSForegroundColorAttributeName;
      v16 = +[UIColor secondaryLabelColor];
      v37[1] = v16;
      v17 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];

      v18 = [(GEOComposedRoute *)self->_route storageID];
      if (v18)
      {
      }

      else if ([v33 length])
      {
        v20 = +[NSBundle mainBundle];
        [v20 localizedStringForKey:@"[Curated route viewing] Safety disclaimer concatination" value:@"localized string not found" table:0];
        v21 = v32 = v5;
        v31 = [NSString stringWithFormat:v21, v32, v33];

        v19 = [[NSMutableAttributedString alloc] initWithString:v31 attributes:v17];
        v22 = [v31 rangeOfString:v33];
        v29 = v23;
        v30 = v22;
        v34[0] = NSForegroundColorAttributeName;
        v24 = +[UIColor systemBlueColor];
        v35[0] = v24;
        v34[1] = NSFontAttributeName;
        v25 = [UIFont _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightSemibold];
        v35[1] = v25;
        v34[2] = NSLinkAttributeName;
        v26 = [(GEOComposedRoute *)self->_route disclaimerURL];
        v27 = [v26 url];
        v35[2] = v27;
        v28 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];

        v5 = v32;
        [v19 setAttributes:v28 range:{v30, v29}];

        goto LABEL_17;
      }

      v19 = [[NSMutableAttributedString alloc] initWithString:v5 attributes:v17];
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
  v3 = [(UIViewController *)self->_graphViewController view];
  [v3 removeFromSuperview];

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
    v9 = [(GEOComposedRoute *)self->_route elevationProfile];
    isMetric = self->_isMetric;
    v11 = [(MapsCustomRouteCardView *)self traitCollection];
    v12 = [_TtC4Maps32MapsElevationGraphViewController makeHostingControllerFor:v9 width:isMetric isMetric:v11 traitCollection:0 shouldHighlight:v8 chartStyle:self->_zeroMeters currentPosition:v5];
    v13 = self->_graphViewController;
    self->_graphViewController = v12;

    v14 = self->_graphViewController;
    if (v14)
    {
      v44 = v8;
      v15 = [(UIViewController *)v14 view];
      [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v15 setUserInteractionEnabled:0];
      v16 = +[UIColor clearColor];
      [v15 setBackgroundColor:v16];

      [(UIView *)self->_summaryContainer addSubview:v15];
      v17 = [(GEOComposedRoute *)self->_route elevationProfile];
      if ([v17 isValid])
      {
        v18 = -8.0;
      }

      else
      {
        v18 = -3.0;
      }

      v19 = [(GEOComposedRoute *)self->_route elevationProfile];
      v20 = 0.0;
      if ([v19 isValid])
      {
        v21 = 82.0;
      }

      else
      {
        v21 = 0.0;
      }

      v22 = [(GEOComposedRoute *)self->_route elevationProfile];
      if ([v22 isValid])
      {
        v20 = 10.0;
      }

      v43 = [v15 leadingAnchor];
      v42 = [(UIView *)self->_summaryContainer leadingAnchor];
      v41 = [v43 constraintEqualToAnchor:v42];
      v47[0] = v41;
      v40 = [v15 trailingAnchor];
      v23 = [(UIView *)self->_summaryContainer trailingAnchor];
      v24 = [v40 constraintEqualToAnchor:v23];
      v47[1] = v24;
      v25 = [v15 heightAnchor];
      v26 = [v25 constraintEqualToConstant:v21];
      v47[2] = v26;
      v27 = [v15 topAnchor];
      v28 = [(MapsThemeMultiPartLabel *)self->_descriptionLabel bottomAnchor];
      v29 = [v27 constraintEqualToAnchor:v28 constant:v20];
      v47[3] = v29;
      v30 = [NSArray arrayWithObjects:v47 count:4];
      [NSLayoutConstraint activateConstraints:v30];

      if (-[GEOComposedRoute source](self->_route, "source") == 2 && (-[GEOComposedRoute disclaimerText](self->_route, "disclaimerText"), v31 = objc_claimAutoreleasedReturnValue(), v32 = [v31 length], v31, v32))
      {
        v33 = [v15 bottomAnchor];
        v34 = [(UITextView *)self->_disclaimerLabel topAnchor];
        v35 = [v33 constraintEqualToAnchor:v34];
        v45 = v35;
        v36 = &v45;
      }

      else
      {
        v33 = [v15 bottomAnchor];
        v34 = [(UIView *)self->_summaryContainer bottomAnchor];
        v35 = [v33 constraintEqualToAnchor:v34 constant:v18];
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

      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v39 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v49 = v39;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
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

  v4 = [(MapsCustomRouteCardView *)self delegate];
  [v4 pressedSaveToLibrary];
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
  v5 = [(MapsCustomRouteCardView *)self delegate];
  [v5 pressedRoutePlanning];
}

- (void)_pressedStepping
{
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "pressed stepping", v5, 2u);
  }

  v4 = [(MapsCustomRouteCardView *)self delegate];
  [v4 pressedStepping];
}

- (void)_pressedNav
{
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "pressed go", v5, 2u);
  }

  v4 = [(MapsCustomRouteCardView *)self delegate];
  [v4 pressedNavigation];
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
  v25 = [(GEOComposedRoute *)self->_route origin];
  if ([v25 isCurrentLocation])
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
  v84 = [(UIView *)self->_summaryContainer topAnchor];
  v83 = [(MapsCustomRouteCardView *)self topAnchor];
  v82 = [v84 constraintEqualToAnchor:v83];
  v85[0] = v82;
  v81 = [(UIView *)self->_summaryContainer leadingAnchor];
  v80 = [(MapsCustomRouteCardView *)self leadingAnchor];
  v79 = [v81 constraintEqualToAnchor:v80 constant:16.0];
  v85[1] = v79;
  v78 = [(UIView *)self->_summaryContainer trailingAnchor];
  v77 = [(MapsCustomRouteCardView *)self trailingAnchor];
  v76 = [v78 constraintEqualToAnchor:v77 constant:-16.0];
  v85[2] = v76;
  v75 = [(UILabel *)self->_distanceLabel leadingAnchor];
  v74 = [(UIView *)self->_summaryContainer leadingAnchor];
  v73 = [v75 constraintEqualToAnchor:v74 constant:14.0];
  v85[3] = v73;
  v72 = [(UILabel *)self->_distanceLabel trailingAnchor];
  v71 = [(UIView *)self->_summaryContainer trailingAnchor];
  v70 = [v72 constraintEqualToAnchor:v71 constant:-14.0];
  v85[4] = v70;
  v69 = [(UILabel *)self->_distanceLabel topAnchor];
  v68 = [(UIView *)self->_summaryContainer topAnchor];
  v67 = [v69 constraintEqualToAnchor:v68 constant:12.0];
  v85[5] = v67;
  v66 = [(MapsThemeMultiPartLabel *)self->_descriptionLabel leadingAnchor];
  v65 = [(UILabel *)self->_distanceLabel leadingAnchor];
  v64 = [v66 constraintEqualToAnchor:v65];
  v85[6] = v64;
  v63 = [(MapsThemeMultiPartLabel *)self->_descriptionLabel trailingAnchor];
  v62 = [(UILabel *)self->_distanceLabel trailingAnchor];
  v61 = [v63 constraintEqualToAnchor:v62];
  v85[7] = v61;
  v60 = [(MapsThemeMultiPartLabel *)self->_descriptionLabel topAnchor];
  v59 = [(UILabel *)self->_distanceLabel bottomAnchor];
  v58 = [v60 constraintEqualToAnchor:v59 constant:-7.0];
  v85[8] = v58;
  v57 = [(UITextView *)self->_disclaimerLabel leadingAnchor];
  v56 = [(UIView *)self->_summaryContainer leadingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56 constant:8.0];
  v85[9] = v55;
  v54 = [(UITextView *)self->_disclaimerLabel trailingAnchor];
  v53 = [(UIView *)self->_summaryContainer trailingAnchor];
  v52 = [v54 constraintEqualToAnchor:v53 constant:-10.0];
  v85[10] = v52;
  v51 = [(MultilineStackView *)self->_buttonStackView leadingAnchor];
  v50 = [(MapsCustomRouteCardView *)self leadingAnchor];
  v49 = [v51 constraintEqualToAnchor:v50 constant:16.0];
  v85[11] = v49;
  v48 = [(MultilineStackView *)self->_buttonStackView trailingAnchor];
  v34 = [(MapsCustomRouteCardView *)self trailingAnchor];
  v35 = [v48 constraintEqualToAnchor:v34 constant:-16.0];
  v85[12] = v35;
  v36 = [(MultilineStackView *)self->_buttonStackView topAnchor];
  v37 = [(UIView *)self->_summaryContainer bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:16.0];
  v85[13] = v38;
  v39 = [(MultilineStackView *)self->_buttonStackView bottomAnchor];
  v40 = [(MapsCustomRouteCardView *)self bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];
  v85[14] = v41;
  v42 = [NSArray arrayWithObjects:v85 count:15];
  [NSLayoutConstraint activateConstraints:v42];

  v43 = [(UITextView *)self->_disclaimerLabel bottomAnchor];
  v44 = [(UIView *)self->_summaryContainer bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];
  disclaimerLabelBottomConstraint = self->_disclaimerLabelBottomConstraint;
  self->_disclaimerLabelBottomConstraint = v45;

  v47 = +[NSNotificationCenter defaultCenter];
  [v47 addObserver:self selector:"_updateOfflineSubscription" name:@"OfflineMapsSubscriptionsDidChangeNotification" object:0];

  _GEOConfigAddDelegateListenerForKey();
}

- (MapsCustomRouteCardView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MapsCustomRouteCardView;
  v3 = [(MapsCustomRouteCardView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MapsCustomRouteCardView *)v3 _commonInit];
  }

  return v4;
}

- (MapsCustomRouteCardView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MapsCustomRouteCardView;
  v3 = [(MapsCustomRouteCardView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(MapsCustomRouteCardView *)v3 _commonInit];
  }

  return v4;
}

@end
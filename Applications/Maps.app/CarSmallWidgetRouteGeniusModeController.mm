@interface CarSmallWidgetRouteGeniusModeController
- (BOOL)_isHomeOrWorkSuggestion:(id)suggestion;
- (CarSmallWidgetRouteGeniusModeController)initWithSuggestion:(id)suggestion;
- (ChromeViewController)chromeViewController;
- (id)_car_smallWidgetName;
- (id)_etaStringFromRoute:(id)route;
- (void)_setupRouteGeniusCardIfNeeded;
- (void)_updateRouteGeniusCardContents;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)dealloc;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)setCurrentSuggestion:(id)suggestion;
@end

@implementation CarSmallWidgetRouteGeniusModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)setCurrentSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v6 = sub_100C0B3F8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 134349314;
    selfCopy = self;
    v10 = 2112;
    v11 = suggestionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}p] Got new RG suggestion: %@", &v8, 0x16u);
  }

  objc_storeStrong(&self->_currentSuggestion, suggestion);
  if (self->_currentSuggestion)
  {
    [(CarSmallWidgetRouteGeniusModeController *)self _updateRouteGeniusCardContents];
  }

  else
  {
    v7 = +[CarChromeModeCoordinator sharedInstance];
    [v7 endRouteGenius];
  }
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v5 = [CarRouteGeniusService sharedService:controller];
  [v5 unregisterObserver:self];

  v7 = +[CarDisplayController sharedInstance];
  routeGeniusManager = [v7 routeGeniusManager];
  [routeGeniusManager deactivateForAllChromes];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100C0B584;
  v4[3] = &unk_101661B18;
  v4[4] = self;
  [animation addPreparation:v4];
}

- (id)_car_smallWidgetName
{
  entry = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
  geoMapItem = [entry geoMapItem];
  name = [geoMapItem name];

  LOBYTE(entry) = [(CarSmallWidgetRouteGeniusModeController *)self _isHomeOrWorkSuggestion:self->_currentSuggestion];
  entry2 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
  v7 = entry2;
  if ((entry & 1) != 0 || !name)
  {
    title = [entry2 title];
  }

  else
  {
    geoMapItem2 = [entry2 geoMapItem];
    title = [geoMapItem2 name];
  }

  return title;
}

- (BOOL)_isHomeOrWorkSuggestion:(id)suggestion
{
  entry = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
  type = [entry type];

  return (type < 7) & (0x46u >> type);
}

- (id)_etaStringFromRoute:(id)route
{
  routeCopy = route;
  route = [routeCopy route];
  v7 = [GuidanceETA alloc];
  [routeCopy etaInSeconds];
  v9 = v8;

  [route distance];
  v11 = v10;
  isEVRoute = [route isEVRoute];
  if (isEVRoute)
  {
    lastEVStep = [route lastEVStep];
    evInfo = [lastEVStep evInfo];
    v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [evInfo remainingBatteryPercentage]);
  }

  else
  {
    v13 = 0;
  }

  destination = [route destination];
  timezone = [destination timezone];
  v16 = -[GuidanceETA initWithRemainingTime:remainingDistance:arrivalBatteryCharge:destinationTimeZone:transportType:](v7, "initWithRemainingTime:remainingDistance:arrivalBatteryCharge:destinationTimeZone:transportType:", v13, timezone, [route transportType], v9, v11);

  if (isEVRoute)
  {
  }

  arrivalAMPMTimeString = [(GuidanceETA *)v16 arrivalAMPMTimeString];

  return arrivalAMPMTimeString;
}

- (void)_updateRouteGeniusCardContents
{
  [(CarSmallWidgetRouteGeniusModeController *)self _setupRouteGeniusCardIfNeeded];
  entry = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
  v6 = +[MapsUIImageCache sharedCarCache];
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_100C0BF30;
  v61[3] = &unk_1016519B0;
  v61[4] = self;
  [v6 getImageForCarSmallWidget:entry completion:v61];

  [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion etaInSeconds];
  LODWORD(v2) = vcvtpd_u64_f64(v7 * 0.0166666667);
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"CarPlay Widget [Delimiter]" value:@"localized string not found" table:0];

  v10 = [NSString _navigation_stringWithMinutes:v2 andAbbreviationType:1];
  if (v2)
  {
    if (MapsFeature_IsEnabled_LocationIntelligenceMaps() && self->_currentSuggestion)
    {
      _car_smallWidgetName = [(CarSmallWidgetRouteGeniusModeController *)self _car_smallWidgetName];
      titleLabel = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
      [titleLabel setText:_car_smallWidgetName];

      _car_smallWidgetName2 = [(CarSmallWidgetRouteGeniusModeController *)self _etaStringFromRoute:self->_currentSuggestion];
      v58 = 0;
      if (_car_smallWidgetName2 && v10)
      {
        v14 = +[NSBundle mainBundle];
        v15 = [v14 localizedStringForKey:@"[CarPlay Widget] Route Genius Description" value:@"localized string not found" table:0];

        v60 = 0;
        v16 = [NSString localizedStringWithValidatedFormat:v15 validFormatSpecifiers:@"%@ %@ %@" error:&v60, _car_smallWidgetName2, v9, v10];
        v17 = v60;
        v58 = v16;
        if (![v16 length] || v17)
        {
          [NSString localizedStringWithFormat:@"%@", v10];
          v19 = v18 = v9;

          v58 = v19;
          v9 = v18;
        }
      }

      v57 = v9;
      subtitleLabel = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
      v21 = v58;
      [subtitleLabel setText:v58];

      route = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion route];
      mutableData = [route mutableData];
      routeOverviewDescriptionStrings = [mutableData routeOverviewDescriptionStrings];

      if ([routeOverviewDescriptionStrings count] && MapsFeature_IsEnabled_LocationIntelligenceMaps())
      {
        if (qword_10195EB58 != -1)
        {
          dispatch_once(&qword_10195EB58, &stru_10164DB30);
        }

        v55 = v10;
        v56 = entry;
        v25 = qword_10195EB50;
        descriptionLabel = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
        [descriptionLabel frame];
        v27 = v26;
        v28 = routeOverviewDescriptionStrings;
        v29 = v25;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        obj = v28;
        v30 = [obj countByEnumeratingWithState:&v62 objects:buf count:16];
        v54 = routeOverviewDescriptionStrings;
        if (v30)
        {
          v31 = v30;
          v32 = 0;
          v33 = *v63;
LABEL_16:
          v34 = 0;
          v35 = v32;
          while (1)
          {
            if (*v63 != v33)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v62 + 1) + 8 * v34);
            v37 = [NSAttributedString alloc];
            stringWithDefaultOptions = [v36 stringWithDefaultOptions];
            v32 = [v37 initWithString:stringWithDefaultOptions attributes:v29];

            [v32 boundingRectWithSize:1 options:0 context:{1.79769313e308, 1.79769313e308}];
            if (v39 < v27)
            {
              break;
            }

            v34 = v34 + 1;
            v35 = v32;
            if (v31 == v34)
            {
              v31 = [obj countByEnumeratingWithState:&v62 objects:buf count:16];
              if (v31)
              {
                goto LABEL_16;
              }

              break;
            }
          }
        }

        else
        {
          v32 = 0;
        }

        descriptionLabel2 = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
        [descriptionLabel2 setAttributedText:v32];

        v10 = v55;
        entry = v56;
        v21 = v58;
        routeOverviewDescriptionStrings = v54;
      }

      v9 = v57;
    }

    else
    {
      titleLabel2 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
      [titleLabel2 setText:v10];

      _car_smallWidgetName2 = [(CarSmallWidgetRouteGeniusModeController *)self _car_smallWidgetName];
      subtitleLabel2 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
      [subtitleLabel2 setText:_car_smallWidgetName2];
    }
  }

  else
  {
    v42 = v9;
    _car_smallWidgetName3 = [(CarSmallWidgetRouteGeniusModeController *)self _car_smallWidgetName];
    titleLabel3 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    [titleLabel3 setText:_car_smallWidgetName3];

    v45 = [(CarSmallWidgetRouteGeniusModeController *)self _isHomeOrWorkSuggestion:self->_currentSuggestion];
    if (v45)
    {
      shortAddress = &stru_1016631F0;
    }

    else
    {
      titleLabel3 = [(MapsSuggestionsRouteGeniusEntry *)self->_currentSuggestion entry];
      geoMapItem = [titleLabel3 geoMapItem];
      shortAddress = [geoMapItem shortAddress];
    }

    subtitleLabel3 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
    [subtitleLabel3 setText:shortAddress];

    if ((v45 & 1) == 0)
    {
    }

    _car_smallWidgetName2 = sub_100C0B3F8();
    if (os_log_type_enabled(_car_smallWidgetName2, OS_LOG_TYPE_INFO))
    {
      titleLabel4 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
      text = [titleLabel4 text];
      subtitleLabel4 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
      text2 = [subtitleLabel4 text];
      *buf = 134349570;
      selfCopy = self;
      v68 = 2112;
      v69 = text;
      v70 = 2112;
      v71 = text2;
      _os_log_impl(&_mh_execute_header, _car_smallWidgetName2, OS_LOG_TYPE_INFO, "[%{public}p] Updated titlte: %@, subtitle: %@", buf, 0x20u);
    }

    v9 = v42;
  }
}

- (void)_setupRouteGeniusCardIfNeeded
{
  imageView = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
  if (imageView)
  {
    v4 = imageView;
    titleLabel = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    if (titleLabel)
    {
      v6 = titleLabel;
      subtitleLabel = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];

      if (subtitleLabel)
      {
        return;
      }
    }

    else
    {
    }
  }

  view = [(CarSmallWidgetRouteGeniusModeController *)self view];
  [view setAccessibilityIdentifier:@"CarSmallWidgetRouteGeniusView"];

  v9 = [UIImageView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v13 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CarSmallWidgetRouteGeniusModeController *)self setImageView:v13];

  imageView2 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
  [imageView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  imageView3 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
  [imageView3 setAccessibilityIdentifier:@"ImageView"];

  view2 = [(CarSmallWidgetRouteGeniusModeController *)self view];
  imageView4 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
  [view2 addSubview:imageView4];

  v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CarSmallWidgetRouteGeniusModeController *)self setTitleLabel:v18];

  titleLabel2 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
  [titleLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v20 = +[UIColor labelColor];
  titleLabel3 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
  [titleLabel3 setTextColor:v20];

  v22 = [UIFont _preferredFontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightSemibold];
  titleLabel4 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
  [titleLabel4 setFont:v22];

  titleLabel5 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
  [titleLabel5 setAdjustsFontForContentSizeCategory:1];

  titleLabel6 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
  [titleLabel6 setAccessibilityIdentifier:@"TitleLabel"];

  view3 = [(CarSmallWidgetRouteGeniusModeController *)self view];
  titleLabel7 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
  [view3 addSubview:titleLabel7];

  v28 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CarSmallWidgetRouteGeniusModeController *)self setSubtitleLabel:v28];

  subtitleLabel2 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
  [subtitleLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v30 = [UIFont _preferredFontForTextStyle:UIFontTextStyleCaption1 weight:UIFontWeightRegular];
  subtitleLabel3 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
  [subtitleLabel3 setFont:v30];

  v32 = +[UIColor labelColor];
  subtitleLabel4 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
  [subtitleLabel4 setTextColor:v32];

  subtitleLabel5 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
  [subtitleLabel5 setAdjustsFontForContentSizeCategory:1];

  subtitleLabel6 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
  [subtitleLabel6 setAccessibilityIdentifier:@"SubtitleLabel"];

  view4 = [(CarSmallWidgetRouteGeniusModeController *)self view];
  subtitleLabel7 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
  [view4 addSubview:subtitleLabel7];

  IsEnabled_LocationIntelligenceMaps = MapsFeature_IsEnabled_LocationIntelligenceMaps();
  if (IsEnabled_LocationIntelligenceMaps)
  {
    v38 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(CarSmallWidgetRouteGeniusModeController *)self setDescriptionLabel:v38];

    descriptionLabel = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
    [descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    v40 = [UIFont _preferredFontForTextStyle:UIFontTextStyleCaption1 variant:256];
    descriptionLabel2 = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
    [descriptionLabel2 setFont:v40];

    descriptionLabel3 = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
    [descriptionLabel3 setAdjustsFontForContentSizeCategory:1];

    descriptionLabel4 = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
    [descriptionLabel4 setAccessibilityIdentifier:@"DescriptionLabel"];

    view5 = [(CarSmallWidgetRouteGeniusModeController *)self view];
    descriptionLabel5 = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
    [view5 addSubview:descriptionLabel5];

    v46 = +[UIColor secondaryLabelColor];
    descriptionLabel6 = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
    [descriptionLabel6 setTextColor:v46];
  }

  v48 = objc_alloc_init(UILayoutGuide);
  view6 = [(CarSmallWidgetRouteGeniusModeController *)self view];
  [view6 addLayoutGuide:v48];

  v183 = +[NSMutableArray array];
  leadingAnchor = [v48 leadingAnchor];
  view7 = [(CarSmallWidgetRouteGeniusModeController *)self view];
  safeAreaLayoutGuide = [view7 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v158 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v189[0] = v158;
  topAnchor = [v48 topAnchor];
  view8 = [(CarSmallWidgetRouteGeniusModeController *)self view];
  safeAreaLayoutGuide2 = [view8 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide2 topAnchor];
  v145 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v189[1] = v145;
  view9 = [(CarSmallWidgetRouteGeniusModeController *)self view];
  safeAreaLayoutGuide3 = [view9 safeAreaLayoutGuide];
  trailingAnchor = [safeAreaLayoutGuide3 trailingAnchor];
  trailingAnchor2 = [v48 trailingAnchor];
  v135 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v189[2] = v135;
  view10 = [(CarSmallWidgetRouteGeniusModeController *)self view];
  safeAreaLayoutGuide4 = [view10 safeAreaLayoutGuide];
  bottomAnchor = [safeAreaLayoutGuide4 bottomAnchor];
  bottomAnchor2 = [v48 bottomAnchor];
  v125 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
  v189[3] = v125;
  heightAnchor = [v48 heightAnchor];
  v51 = [heightAnchor constraintEqualToConstant:65.0];
  v189[4] = v51;
  centerYAnchor = [v48 centerYAnchor];
  view11 = [(CarSmallWidgetRouteGeniusModeController *)self view];
  safeAreaLayoutGuide5 = [view11 safeAreaLayoutGuide];
  centerYAnchor2 = [safeAreaLayoutGuide5 centerYAnchor];
  v56 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v189[5] = v56;
  v57 = [NSArray arrayWithObjects:v189 count:6];
  [v183 addObjectsFromArray:v57];

  imageView5 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
  leadingAnchor3 = [imageView5 leadingAnchor];
  v182 = v48;
  leadingAnchor4 = [v48 leadingAnchor];
  v178 = leadingAnchor4;
  if (IsEnabled_LocationIntelligenceMaps)
  {
    v169 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:8.0];
    v188[0] = v169;
    imageView6 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
    widthAnchor = [imageView6 widthAnchor];
    v60 = [widthAnchor constraintEqualToConstant:self->_imageWidth];
    v188[1] = v60;
    imageView7 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
    heightAnchor2 = [imageView7 heightAnchor];
    v63 = [heightAnchor2 constraintEqualToConstant:self->_imageWidth];
    v188[2] = v63;
    imageView8 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
    centerYAnchor3 = [imageView8 centerYAnchor];
    centerYAnchor4 = [v182 centerYAnchor];
    [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v67 = v155 = leadingAnchor3;
    v188[3] = v67;
    v68 = [NSArray arrayWithObjects:v188 count:4];
    [v183 addObjectsFromArray:v68];

    titleLabel8 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    topAnchor3 = [titleLabel8 topAnchor];
    topAnchor4 = [v182 topAnchor];
    v165 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:6.0];
    v187[0] = v165;
    titleLabel9 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    leadingAnchor5 = [titleLabel9 leadingAnchor];
    imageView9 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
    trailingAnchor3 = [imageView9 trailingAnchor];
    v72 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:6.0];
    v187[1] = v72;
    trailingAnchor4 = [v182 trailingAnchor];
    titleLabel10 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    trailingAnchor5 = [titleLabel10 trailingAnchor];
    v76 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:6.0];
    v187[2] = v76;
    v77 = [NSArray arrayWithObjects:v187 count:3];
    [v183 addObjectsFromArray:v77];

    subtitleLabel8 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
    leadingAnchor6 = [subtitleLabel8 leadingAnchor];
    titleLabel11 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    leadingAnchor7 = [titleLabel11 leadingAnchor];
    v161 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v186[0] = v161;
    subtitleLabel9 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
    trailingAnchor6 = [subtitleLabel9 trailingAnchor];
    titleLabel12 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    trailingAnchor7 = [titleLabel12 trailingAnchor];
    v80 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    v186[1] = v80;
    subtitleLabel10 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
    topAnchor5 = [subtitleLabel10 topAnchor];
    titleLabel13 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    bottomAnchor3 = [titleLabel13 bottomAnchor];
    v85 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:2.0];
    v186[2] = v85;
    v86 = [NSArray arrayWithObjects:v186 count:3];
    [v183 addObjectsFromArray:v86];

    descriptionLabel7 = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
    leadingAnchor8 = [descriptionLabel7 leadingAnchor];
    titleLabel14 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    leadingAnchor9 = [titleLabel14 leadingAnchor];
    v91 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
    v185[0] = v91;
    descriptionLabel8 = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
    trailingAnchor8 = [descriptionLabel8 trailingAnchor];
    titleLabel15 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    trailingAnchor9 = [titleLabel15 trailingAnchor];
    widthAnchor2 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
    v185[1] = widthAnchor2;
    descriptionLabel9 = [(CarSmallWidgetRouteGeniusModeController *)self descriptionLabel];
    topAnchor6 = [descriptionLabel9 topAnchor];
    selfCopy = self;
    v98 = topAnchor6;
    subtitleLabel11 = [(CarSmallWidgetRouteGeniusModeController *)selfCopy subtitleLabel];
    bottomAnchor4 = [subtitleLabel11 bottomAnchor];
    v153 = [v98 constraintEqualToAnchor:2.0 constant:?];
    v185[2] = v153;
    v150 = [NSArray arrayWithObjects:v185 count:3];
    [v183 addObjectsFromArray:?];
  }

  else
  {
    v140 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:13.0];
    v184[0] = v140;
    imageView10 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
    centerYAnchor5 = [imageView10 centerYAnchor];
    centerYAnchor6 = [v48 centerYAnchor];
    v128 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v184[1] = v128;
    imageView11 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
    widthAnchor2 = [imageView11 widthAnchor];
    descriptionLabel9 = [widthAnchor2 constraintEqualToConstant:40.0];
    v184[2] = descriptionLabel9;
    imageView12 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
    heightAnchor3 = [imageView12 heightAnchor];
    bottomAnchor4 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
    [bottomAnchor4 widthAnchor];
    v153 = subtitleLabel11 = heightAnchor3;
    v150 = [heightAnchor3 constraintEqualToAnchor:?];
    v184[3] = v150;
    titleLabel16 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    firstBaselineAnchor = [titleLabel16 firstBaselineAnchor];
    topAnchor7 = [v182 topAnchor];
    v134 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor7 constant:30.0];
    v184[4] = v134;
    titleLabel17 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    leadingAnchor10 = [titleLabel17 leadingAnchor];
    imageView13 = [(CarSmallWidgetRouteGeniusModeController *)self imageView];
    trailingAnchor10 = [imageView13 trailingAnchor];
    v121 = [leadingAnchor10 constraintEqualToAnchor:trailingAnchor10 constant:8.0];
    v184[5] = v121;
    trailingAnchor11 = [v182 trailingAnchor];
    titleLabel18 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    trailingAnchor12 = [titleLabel18 trailingAnchor];
    v117 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12 constant:8.0];
    v184[6] = v117;
    subtitleLabel12 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
    firstBaselineAnchor2 = [subtitleLabel12 firstBaselineAnchor];
    titleLabel19 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    lastBaselineAnchor = [titleLabel19 lastBaselineAnchor];
    v112 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:17.0];
    v184[7] = v112;
    subtitleLabel13 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
    leadingAnchor11 = [subtitleLabel13 leadingAnchor];
    titleLabel20 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    leadingAnchor12 = [titleLabel20 leadingAnchor];
    v102 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    v184[8] = v102;
    subtitleLabel14 = [(CarSmallWidgetRouteGeniusModeController *)self subtitleLabel];
    trailingAnchor13 = [subtitleLabel14 trailingAnchor];
    titleLabel21 = [(CarSmallWidgetRouteGeniusModeController *)self titleLabel];
    trailingAnchor14 = [titleLabel21 trailingAnchor];
    [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14];
    v108 = v107 = leadingAnchor3;
    v184[9] = v108;
    v109 = [NSArray arrayWithObjects:v184 count:10];
    [v183 addObjectsFromArray:v109];

    titleLabel15 = v128;
    leadingAnchor8 = v107;
    leadingAnchor9 = v140;

    v98 = imageView12;
    titleLabel14 = v178;

    trailingAnchor8 = centerYAnchor6;
    trailingAnchor9 = imageView11;

    descriptionLabel8 = centerYAnchor5;
    v91 = imageView10;

    descriptionLabel7 = imageView5;
  }

  [NSLayoutConstraint activateConstraints:v183];
}

- (void)dealloc
{
  v3 = sub_100C0B3F8();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Deallocating", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CarSmallWidgetRouteGeniusModeController;
  [(CarSmallWidgetRouteGeniusModeController *)&v4 dealloc];
}

- (CarSmallWidgetRouteGeniusModeController)initWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v10.receiver = self;
  v10.super_class = CarSmallWidgetRouteGeniusModeController;
  v6 = [(CarSmallWidgetRouteGeniusModeController *)&v10 initWithNibName:0 bundle:0];
  if (v6)
  {
    v7 = sub_100C0B3F8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    objc_storeStrong(&v6->_currentSuggestion, suggestion);
    v8 = +[CarRouteGeniusService sharedService];
    [v8 registerObserver:v6];

    v6->_imageWidth = 35.0;
  }

  return v6;
}

@end
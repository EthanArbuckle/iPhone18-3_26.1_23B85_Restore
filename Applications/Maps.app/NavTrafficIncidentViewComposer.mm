@interface NavTrafficIncidentViewComposer
+ (id)imageForMNTrafficIncidentAlert:(id)alert view:(id)view;
+ (void)configureDetailsView:(id)view withGEORouteIncident:(id)incident;
+ (void)configureDetailsView:(id)view withTrafficIncidentAlert:(id)alert;
+ (void)configureDetailsView:(id)view withTrafficIncidentFeature:(id)feature;
+ (void)configureHeaderView:(id)view withTrafficIncidentAlert:(id)alert;
+ (void)configureHeaderView:(id)view withTrafficIncidentFeature:(id)feature;
@end

@implementation NavTrafficIncidentViewComposer

+ (void)configureDetailsView:(id)view withGEORouteIncident:(id)incident
{
  viewCopy = view;
  incidentCopy = incident;
  v6 = incidentCopy;
  if (incidentCopy)
  {
    info = [incidentCopy info];
    [viewCopy setPrimaryLabelText:info];

    if (qword_10195DCD8 != -1)
    {
      dispatch_once(&qword_10195DCD8, &stru_10162E100);
    }

    v8 = [[NSDate alloc] initWithTimeIntervalSince1970:{objc_msgSend(v6, "updateTime") * 0.001}];
    v9 = [qword_10195DCD0 lastUpdatedUIStringForDate:v8];
    [viewCopy setSecondaryLabelText:v9];
  }

  else
  {
    [viewCopy setPrimaryLabelText:0];
    [viewCopy setSecondaryLabelText:0];
  }
}

+ (void)configureDetailsView:(id)view withTrafficIncidentFeature:(id)feature
{
  viewCopy = view;
  featureCopy = feature;
  info = [featureCopy info];
  [viewCopy setPrimaryLabelText:info];

  lastUpdatedDate = [featureCopy lastUpdatedDate];

  if (lastUpdatedDate)
  {
    if (qword_10195DCC8 != -1)
    {
      dispatch_once(&qword_10195DCC8, &stru_10162E0E0);
    }

    v8 = qword_10195DCC0;
    lastUpdatedDate2 = [featureCopy lastUpdatedDate];
    v10 = [v8 lastUpdatedUIStringForDate:lastUpdatedDate2];
    [viewCopy setSecondaryLabelText:v10];
  }

  else
  {
    [viewCopy setSecondaryLabelText:0];
  }
}

+ (void)configureDetailsView:(id)view withTrafficIncidentAlert:(id)alert
{
  viewCopy = view;
  alertCopy = alert;
  bannerDescription = [alertCopy bannerDescription];
  v8 = [bannerDescription length];

  if (v8)
  {
    bannerDescription2 = [alertCopy bannerDescription];
    [viewCopy setPrimaryLabelText:bannerDescription2];
  }

  else
  {
    incident = [alertCopy incident];

    if (!incident)
    {
      goto LABEL_6;
    }

    bannerDescription2 = [alertCopy incident];
    [self configureDetailsView:viewCopy withGEORouteIncident:bannerDescription2];
  }

LABEL_6:
}

+ (void)configureHeaderView:(id)view withTrafficIncidentFeature:(id)feature
{
  viewCopy = view;
  featureCopy = feature;
  if ([featureCopy isRestrictionIncident])
  {
    restrictionTitle = [featureCopy restrictionTitle];
    primaryLabel = [viewCopy primaryLabel];
    [primaryLabel setText:restrictionTitle];

    restrictionCombinedDetails = [featureCopy restrictionCombinedDetails];
LABEL_5:
    secondaryLabel2 = restrictionCombinedDetails;
    secondaryLabel = [viewCopy secondaryLabel];
    [secondaryLabel setText:secondaryLabel2];

    goto LABEL_6;
  }

  title = [featureCopy title];
  primaryLabel2 = [viewCopy primaryLabel];
  [primaryLabel2 setText:title];

  subtitle = [featureCopy subtitle];
  v12 = [subtitle length];

  if (v12)
  {
    restrictionCombinedDetails = [featureCopy subtitle];
    goto LABEL_5;
  }

  secondaryLabel2 = [viewCopy secondaryLabel];
  [secondaryLabel2 setText:0];
LABEL_6:

  artwork = [featureCopy artwork];

  if (artwork)
  {
    artwork2 = [featureCopy artwork];
    traitCollection = [viewCopy traitCollection];
    v18 = ImageForArtwork();
    [viewCopy setImageSource:v18];
  }

  else
  {
    v19 = viewCopy;
    window = [v19 window];
    screen = [window screen];
    if (screen)
    {
      window2 = [v19 window];
      screen2 = [window2 screen];
      [screen2 nativeScale];
      v25 = v24;
    }

    else
    {
      window2 = +[UIScreen mainScreen];
      [window2 nativeScale];
      v25 = v26;
    }

    artwork2 = sub_10095510C(featureCopy, 4, v25);
    [v19 setImageSource:artwork2];
  }

  [viewCopy setShowDismissButton:1];
}

+ (void)configureHeaderView:(id)view withTrafficIncidentAlert:(id)alert
{
  viewCopy = view;
  alertCopy = alert;
  alertTitles = [alertCopy alertTitles];
  firstObject = [alertTitles firstObject];
  primaryLabel = [viewCopy primaryLabel];
  [primaryLabel setText:firstObject];

  alertDescriptions = [alertCopy alertDescriptions];
  v10 = [alertDescriptions count];

  if (v10)
  {
    alertDescriptions2 = [alertCopy alertDescriptions];
    firstObject2 = [alertDescriptions2 firstObject];
    secondaryLabel = [viewCopy secondaryLabel];
    [secondaryLabel setText:firstObject2];
  }

  else
  {
    alertDescriptions2 = [viewCopy secondaryLabel];
    [alertDescriptions2 setText:0];
  }

  v14 = [NavTrafficIncidentViewComposer imageForMNTrafficIncidentAlert:alertCopy view:viewCopy];
  [viewCopy setImageSource:v14];

  [viewCopy setShowDismissButton:{objc_msgSend(alertCopy, "includeDismissButton")}];
  defaultButtonInfo = [alertCopy defaultButtonInfo];
  if (defaultButtonInfo)
  {
    v16 = 1;
  }

  else
  {
    [alertCopy alertDisplayDuration];
    v16 = v17 == 0.0;
  }

  dismissButton = [viewCopy dismissButton];
  [dismissButton setProgressionHidden:v16];

  [alertCopy alertDisplayDuration];
  v20 = v19;
  dismissButton2 = [viewCopy dismissButton];
  [dismissButton2 setAnimationDuration:v20];
}

+ (id)imageForMNTrafficIncidentAlert:(id)alert view:(id)view
{
  alertCopy = alert;
  viewCopy = view;
  artwork = [alertCopy artwork];

  if (artwork)
  {
    v9 = sub_1008EB5E0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      artwork2 = [alertCopy artwork];
      v41 = 134349314;
      selfCopy4 = self;
      v43 = 2112;
      v44 = artwork2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}p] Initializing using artwork %@", &v41, 0x16u);
    }

    artwork3 = [alertCopy artwork];
    traitCollection = [viewCopy traitCollection];
    v13 = ImageForArtwork();
    goto LABEL_5;
  }

  incident = [alertCopy incident];

  if (incident)
  {
    v16 = sub_1008EB5E0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      incident2 = [alertCopy incident];
      v41 = 134349314;
      selfCopy4 = self;
      v43 = 2112;
      v44 = incident2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[%{public}p] Initializing using incident type %@", &v41, 0x16u);
    }

    artwork3 = [alertCopy incident];
    v18 = viewCopy;
    window = [v18 window];
    screen = [window screen];
    if (screen)
    {
      window2 = [v18 window];
      screen2 = [window2 screen];
      [screen2 nativeScale];
      v24 = v23;
    }

    else
    {
      window2 = +[UIScreen mainScreen];
      [window2 nativeScale];
      v24 = v35;
    }

    v14 = sub_100955280(artwork3, v24);
    goto LABEL_20;
  }

  originalRoute = [alertCopy originalRoute];
  if ([originalRoute isEVRoute])
  {
    alertType = [alertCopy alertType];

    if (alertType != 6)
    {
      v27 = sub_1008EB5E0();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v41 = 134349056;
        selfCopy4 = self;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[%{public}p] Initializing using VKTrafficIncidentTypeBatteryReroute", &v41, 0xCu);
      }

      v28 = viewCopy;
      window3 = [v28 window];
      screen3 = [window3 screen];
      if (screen3)
      {
        window4 = [v28 window];
        screen4 = [window4 screen];
        [screen4 nativeScale];
        v34 = v33;
      }

      else
      {
        window4 = +[UIScreen mainScreen];
        [window4 nativeScale];
        v34 = v38;
      }

      artwork4 = [alertCopy artwork];
      artwork3 = [artwork4 icon];

      traitCollection = [artwork3 styleAttributes];
      if (traitCollection)
      {
        v40 = [[GEOFeatureStyleAttributes alloc] initWithGEOStyleAttributes:traitCollection];
        v14 = [MKIconManager imageForStyle:v40 size:4 forScale:0 format:v34];

        if (v14)
        {
          goto LABEL_6;
        }
      }

      v13 = sub_100955208(0xCuLL, 4);
LABEL_5:
      v14 = v13;
LABEL_6:

LABEL_20:
      goto LABEL_21;
    }
  }

  else
  {
  }

  v37 = sub_1008EB5E0();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v41 = 134349312;
    selfCopy4 = self;
    v43 = 2048;
    v44 = alertCopy;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "[%{public}p] No GEORouteIncident to configure header for MNTrafficIncidentAlert %p", &v41, 0x16u);
  }

  v14 = [UIImage imageNamed:@"alert-big"];
LABEL_21:

  return v14;
}

@end
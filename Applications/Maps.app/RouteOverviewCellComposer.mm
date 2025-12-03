@interface RouteOverviewCellComposer
+ (void)configureCell:(id)cell forRideBookingRideOption:(id)option;
+ (void)configureCell:(id)cell forRoute:(id)route isMac:(BOOL)mac automaticSharingContacts:(id)contacts dataCoordinator:(id)coordinator;
@end

@implementation RouteOverviewCellComposer

+ (void)configureCell:(id)cell forRideBookingRideOption:(id)option
{
  cellCopy = cell;
  optionCopy = option;
  name = [optionCopy name];
  primaryLabel = [cellCopy primaryLabel];
  [primaryLabel setText:name];

  name2 = [optionCopy name];
  primaryLabel2 = [cellCopy primaryLabel];
  [primaryLabel2 setAccessibilityLabel:name2];

  name3 = [optionCopy name];
  primaryLabel3 = [cellCopy primaryLabel];
  [primaryLabel3 setAccessibilityIdentifier:name3];

  detailedDescription = [optionCopy detailedDescription];
  secondaryLabel = [cellCopy secondaryLabel];
  [secondaryLabel setText:detailedDescription];

  detailedDescription2 = [optionCopy detailedDescription];
  secondaryLabel2 = [cellCopy secondaryLabel];
  [secondaryLabel2 setAccessibilityLabel:detailedDescription2];

  detailedDescription3 = [optionCopy detailedDescription];
  secondaryLabel3 = [cellCopy secondaryLabel];
  [secondaryLabel3 setAccessibilityIdentifier:detailedDescription3];

  v18 = +[RouteOverviewCell tertiaryLabelBoldFont];
  v19 = +[UIColor labelColor];
  tertiaryLabel = [cellCopy tertiaryLabel];
  [tertiaryLabel setTextColor:v19];

  tertiaryLabel2 = [cellCopy tertiaryLabel];
  [tertiaryLabel2 setFont:v18];

  v22 = [NSAttributedString alloc];
  priceRange = [optionCopy priceRange];
  v24 = [v22 initWithString:priceRange];

  specialPricingBadge = [optionCopy specialPricingBadge];
  v26 = [v24 _maps_attributedStringByAppendingRidesharingSpecialPricingBadge:specialPricingBadge representativeContentFont:v18];
  tertiaryLabel3 = [cellCopy tertiaryLabel];
  [tertiaryLabel3 setAttributedText:v26];

  tertiaryLabel4 = [cellCopy tertiaryLabel];
  attributedText = [tertiaryLabel4 attributedText];
  string = [attributedText string];
  tertiaryLabel5 = [cellCopy tertiaryLabel];
  [tertiaryLabel5 setAccessibilityLabel:string];

  tertiaryLabel6 = [cellCopy tertiaryLabel];
  attributedText2 = [tertiaryLabel6 attributedText];
  string2 = [attributedText2 string];
  tertiaryLabel7 = [cellCopy tertiaryLabel];
  [tertiaryLabel7 setAccessibilityIdentifier:string2];

  iconImage = [optionCopy iconImage];
  [cellCopy setPrimaryLabelCompanionImage:iconImage];

  [cellCopy setButtonVisibility:2];
  selectionCommandTitle = [optionCopy selectionCommandTitle];

  [cellCopy setBookButtonTitle:selectionCommandTitle];
  elevationGraphView = [cellCopy elevationGraphView];
  [elevationGraphView setElevationProfile:0 routeLength:0.0];

  [cellCopy setTertiaryLabelVisible:1];
  [cellCopy setArtworkListVisible:0];
  [cellCopy setDetailsButtonVisible:0];
  [cellCopy setElevationGraphViewVisible:0];
  [cellCopy setAdvisoriesViewVisible:0];
  minimumHeightConstraint = [cellCopy minimumHeightConstraint];
  [minimumHeightConstraint constant];
  v41 = v40;
  +[RouteOverviewCell minimumRidesharingHeight];
  v43 = vabdd_f64(v41, v42);

  if (v43 > 2.22044605e-16)
  {
    +[RouteOverviewCell minimumRidesharingHeight];
    v45 = v44;
    minimumHeightConstraint2 = [cellCopy minimumHeightConstraint];
    [minimumHeightConstraint2 setConstant:v45];
  }

  [cellCopy setGoButtonProgressVisible:0];
  [cellCopy setGoButtonProgress:0.0];
}

+ (void)configureCell:(id)cell forRoute:(id)route isMac:(BOOL)mac automaticSharingContacts:(id)contacts dataCoordinator:(id)coordinator
{
  cellCopy = cell;
  routeCopy = route;
  contactsCopy = contacts;
  coordinatorCopy = coordinator;
  v14 = +[RouteOverviewCell primaryLabelFontProvider];
  v15 = v14[2]();
  v16 = [RouteOverviewStringProvider primaryTextForRoute:routeCopy font:v15];
  primaryLabel = [cellCopy primaryLabel];
  [primaryLabel setAttributedText:v16];

  primaryLabel2 = [cellCopy primaryLabel];
  attributedText = [primaryLabel2 attributedText];
  string = [attributedText string];
  primaryLabel3 = [cellCopy primaryLabel];
  [primaryLabel3 setAccessibilityIdentifier:string];

  v22 = +[RouteOverviewCell secondaryLabelFontProvider];
  v23 = v22[2]();
  v24 = [RouteOverviewStringProvider secondaryMultiPartTextForRoute:routeCopy font:v23];

  secondaryLabel = [cellCopy secondaryLabel];
  [secondaryLabel setMultiPartString:v24];

  attributedString = [v24 attributedString];
  string2 = [attributedString string];
  secondaryLabel2 = [cellCopy secondaryLabel];
  [secondaryLabel2 setAccessibilityLabel:string2];

  attributedString2 = [v24 attributedString];
  string3 = [attributedString2 string];
  secondaryLabel3 = [cellCopy secondaryLabel];
  [secondaryLabel3 setAccessibilityIdentifier:string3];

  planningDescriptionString = [routeCopy planningDescriptionString];
  if (!planningDescriptionString || [routeCopy transportType] == 1)
  {

LABEL_4:
    [cellCopy setRouteDescritptionLabelVisible:0];
    goto LABEL_5;
  }

  isWalkingOnlyTransitRoute = [routeCopy isWalkingOnlyTransitRoute];

  if (isWalkingOnlyTransitRoute)
  {
    goto LABEL_4;
  }

  [cellCopy setRouteDescritptionLabelVisible:1];
  v61 = +[RouteOverviewCell secondaryLabelFontProvider];
  v62 = v61[2]();
  v63 = [RouteOverviewStringProvider routeDescriptionTextForRoute:routeCopy font:v62];

  routeDescriptionLabel = [cellCopy routeDescriptionLabel];
  [routeDescriptionLabel setMultiPartString:v63];

LABEL_5:
  [cellCopy setTertiaryLabelVisible:0];
  v33 = [RouteOverviewStringProvider artworkDataForRoute:routeCopy];
  v34 = [v33 count];
  if (v34)
  {
    artworkList = [cellCopy artworkList];
    [artworkList setArtworkData:v33];
  }

  [cellCopy setArtworkListVisible:v34 != 0];
  elevationProfile = [routeCopy elevationProfile];
  elevationGraphView = [cellCopy elevationGraphView];
  [routeCopy distance];
  [elevationGraphView setElevationProfile:elevationProfile routeLength:?];

  [cellCopy setElevationGraphViewVisible:elevationProfile != 0];
  advisories = [routeCopy advisories];
  v39 = [RouteAdvisoryViewModel viewModelsForAdvisories:advisories];

  v73 = coordinatorCopy;
  v74 = contactsCopy;
  if ([contactsCopy count] && MSPSharedTripSharingAvailable())
  {
    v71 = v33;
    v72 = v24;
    v40 = [v39 mutableCopy];
    v78 = 0;
    v79 = 0;
    v41 = [RouteAdvisoryViewModel advisoryTextForAutomaticSharingContacts:contactsCopy buttonRange:&v78];
    v42 = +[GEOFeatureStyleAttributes shareETAAdvisoryStyleAttributes];
    traitCollection = [cellCopy traitCollection];
    [traitCollection displayScale];
    v44 = [MKIconManager imageForStyle:v42 size:0 forScale:0 format:?];

    v45 = v40;
    objc_initWeak(&location, cellCopy);
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_100889084;
    v75[3] = &unk_101661B98;
    objc_copyWeak(&v76, &location);
    v46 = [RouteAdvisoryViewModel viewModelWithText:v41 buttonRange:v78 image:v79 handler:v44, v75];
    [v40 addObject:v46];

    v47 = [v40 copy];
    v24 = v72;
    v48 = v47;

    objc_destroyWeak(&v76);
    objc_destroyWeak(&location);

    v39 = v48;
    v33 = v71;
  }

  advisoriesView = [cellCopy advisoriesView];
  _maps_mapsSceneDelegate = [cellCopy _maps_mapsSceneDelegate];
  appCoordinator = [_maps_mapsSceneDelegate appCoordinator];
  baseActionCoordinator = [appCoordinator baseActionCoordinator];
  [advisoriesView setAdvisories:v39 coordinator:baseActionCoordinator];

  advisoriesView2 = [cellCopy advisoriesView];
  [cellCopy setAdvisoriesViewVisible:{objc_msgSend(advisoriesView2, "isVisible")}];

  [cellCopy setPrimaryLabelCompanionImage:0];
  origin = [routeCopy origin];
  if ([origin isCurrentLocation])
  {
    v55 = +[GEOCountryConfiguration sharedConfiguration];
    v56 = v73;
    if ([v55 currentCountrySupportsNavigation])
    {
      timing = [v73 timing];
      if ([timing isDepartNow])
      {
        v58 = 1;
      }

      else
      {
        v58 = 3;
      }

      [cellCopy setButtonVisibility:v58];
    }

    else
    {
      [cellCopy setButtonVisibility:3];
    }

    v59 = v74;
  }

  else
  {
    [cellCopy setButtonVisibility:3];
    v56 = v73;
    v59 = v74;
  }

  +[RouteOverviewCell minimumHeight];
  v66 = v65;
  minimumHeightConstraint = [cellCopy minimumHeightConstraint];
  [minimumHeightConstraint constant];
  v69 = v68;

  if (v69 != v66)
  {
    minimumHeightConstraint2 = [cellCopy minimumHeightConstraint];
    [minimumHeightConstraint2 setConstant:v66];
  }

  [cellCopy setGoButtonProgressVisible:0];
  [cellCopy setGoButtonProgress:0.0];
  [cellCopy layoutIfNeeded];
}

@end
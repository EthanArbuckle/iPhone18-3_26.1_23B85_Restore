@interface RouteOverviewCellComposer
+ (void)configureCell:(id)a3 forRideBookingRideOption:(id)a4;
+ (void)configureCell:(id)a3 forRoute:(id)a4 isMac:(BOOL)a5 automaticSharingContacts:(id)a6 dataCoordinator:(id)a7;
@end

@implementation RouteOverviewCellComposer

+ (void)configureCell:(id)a3 forRideBookingRideOption:(id)a4
{
  v47 = a3;
  v5 = a4;
  v6 = [v5 name];
  v7 = [v47 primaryLabel];
  [v7 setText:v6];

  v8 = [v5 name];
  v9 = [v47 primaryLabel];
  [v9 setAccessibilityLabel:v8];

  v10 = [v5 name];
  v11 = [v47 primaryLabel];
  [v11 setAccessibilityIdentifier:v10];

  v12 = [v5 detailedDescription];
  v13 = [v47 secondaryLabel];
  [v13 setText:v12];

  v14 = [v5 detailedDescription];
  v15 = [v47 secondaryLabel];
  [v15 setAccessibilityLabel:v14];

  v16 = [v5 detailedDescription];
  v17 = [v47 secondaryLabel];
  [v17 setAccessibilityIdentifier:v16];

  v18 = +[RouteOverviewCell tertiaryLabelBoldFont];
  v19 = +[UIColor labelColor];
  v20 = [v47 tertiaryLabel];
  [v20 setTextColor:v19];

  v21 = [v47 tertiaryLabel];
  [v21 setFont:v18];

  v22 = [NSAttributedString alloc];
  v23 = [v5 priceRange];
  v24 = [v22 initWithString:v23];

  v25 = [v5 specialPricingBadge];
  v26 = [v24 _maps_attributedStringByAppendingRidesharingSpecialPricingBadge:v25 representativeContentFont:v18];
  v27 = [v47 tertiaryLabel];
  [v27 setAttributedText:v26];

  v28 = [v47 tertiaryLabel];
  v29 = [v28 attributedText];
  v30 = [v29 string];
  v31 = [v47 tertiaryLabel];
  [v31 setAccessibilityLabel:v30];

  v32 = [v47 tertiaryLabel];
  v33 = [v32 attributedText];
  v34 = [v33 string];
  v35 = [v47 tertiaryLabel];
  [v35 setAccessibilityIdentifier:v34];

  v36 = [v5 iconImage];
  [v47 setPrimaryLabelCompanionImage:v36];

  [v47 setButtonVisibility:2];
  v37 = [v5 selectionCommandTitle];

  [v47 setBookButtonTitle:v37];
  v38 = [v47 elevationGraphView];
  [v38 setElevationProfile:0 routeLength:0.0];

  [v47 setTertiaryLabelVisible:1];
  [v47 setArtworkListVisible:0];
  [v47 setDetailsButtonVisible:0];
  [v47 setElevationGraphViewVisible:0];
  [v47 setAdvisoriesViewVisible:0];
  v39 = [v47 minimumHeightConstraint];
  [v39 constant];
  v41 = v40;
  +[RouteOverviewCell minimumRidesharingHeight];
  v43 = vabdd_f64(v41, v42);

  if (v43 > 2.22044605e-16)
  {
    +[RouteOverviewCell minimumRidesharingHeight];
    v45 = v44;
    v46 = [v47 minimumHeightConstraint];
    [v46 setConstant:v45];
  }

  [v47 setGoButtonProgressVisible:0];
  [v47 setGoButtonProgress:0.0];
}

+ (void)configureCell:(id)a3 forRoute:(id)a4 isMac:(BOOL)a5 automaticSharingContacts:(id)a6 dataCoordinator:(id)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a7;
  v14 = +[RouteOverviewCell primaryLabelFontProvider];
  v15 = v14[2]();
  v16 = [RouteOverviewStringProvider primaryTextForRoute:v11 font:v15];
  v17 = [v10 primaryLabel];
  [v17 setAttributedText:v16];

  v18 = [v10 primaryLabel];
  v19 = [v18 attributedText];
  v20 = [v19 string];
  v21 = [v10 primaryLabel];
  [v21 setAccessibilityIdentifier:v20];

  v22 = +[RouteOverviewCell secondaryLabelFontProvider];
  v23 = v22[2]();
  v24 = [RouteOverviewStringProvider secondaryMultiPartTextForRoute:v11 font:v23];

  v25 = [v10 secondaryLabel];
  [v25 setMultiPartString:v24];

  v26 = [v24 attributedString];
  v27 = [v26 string];
  v28 = [v10 secondaryLabel];
  [v28 setAccessibilityLabel:v27];

  v29 = [v24 attributedString];
  v30 = [v29 string];
  v31 = [v10 secondaryLabel];
  [v31 setAccessibilityIdentifier:v30];

  v32 = [v11 planningDescriptionString];
  if (!v32 || [v11 transportType] == 1)
  {

LABEL_4:
    [v10 setRouteDescritptionLabelVisible:0];
    goto LABEL_5;
  }

  v60 = [v11 isWalkingOnlyTransitRoute];

  if (v60)
  {
    goto LABEL_4;
  }

  [v10 setRouteDescritptionLabelVisible:1];
  v61 = +[RouteOverviewCell secondaryLabelFontProvider];
  v62 = v61[2]();
  v63 = [RouteOverviewStringProvider routeDescriptionTextForRoute:v11 font:v62];

  v64 = [v10 routeDescriptionLabel];
  [v64 setMultiPartString:v63];

LABEL_5:
  [v10 setTertiaryLabelVisible:0];
  v33 = [RouteOverviewStringProvider artworkDataForRoute:v11];
  v34 = [v33 count];
  if (v34)
  {
    v35 = [v10 artworkList];
    [v35 setArtworkData:v33];
  }

  [v10 setArtworkListVisible:v34 != 0];
  v36 = [v11 elevationProfile];
  v37 = [v10 elevationGraphView];
  [v11 distance];
  [v37 setElevationProfile:v36 routeLength:?];

  [v10 setElevationGraphViewVisible:v36 != 0];
  v38 = [v11 advisories];
  v39 = [RouteAdvisoryViewModel viewModelsForAdvisories:v38];

  v73 = v13;
  v74 = v12;
  if ([v12 count] && MSPSharedTripSharingAvailable())
  {
    v71 = v33;
    v72 = v24;
    v40 = [v39 mutableCopy];
    v78 = 0;
    v79 = 0;
    v41 = [RouteAdvisoryViewModel advisoryTextForAutomaticSharingContacts:v12 buttonRange:&v78];
    v42 = +[GEOFeatureStyleAttributes shareETAAdvisoryStyleAttributes];
    v43 = [v10 traitCollection];
    [v43 displayScale];
    v44 = [MKIconManager imageForStyle:v42 size:0 forScale:0 format:?];

    v45 = v40;
    objc_initWeak(&location, v10);
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

  v49 = [v10 advisoriesView];
  v50 = [v10 _maps_mapsSceneDelegate];
  v51 = [v50 appCoordinator];
  v52 = [v51 baseActionCoordinator];
  [v49 setAdvisories:v39 coordinator:v52];

  v53 = [v10 advisoriesView];
  [v10 setAdvisoriesViewVisible:{objc_msgSend(v53, "isVisible")}];

  [v10 setPrimaryLabelCompanionImage:0];
  v54 = [v11 origin];
  if ([v54 isCurrentLocation])
  {
    v55 = +[GEOCountryConfiguration sharedConfiguration];
    v56 = v73;
    if ([v55 currentCountrySupportsNavigation])
    {
      v57 = [v73 timing];
      if ([v57 isDepartNow])
      {
        v58 = 1;
      }

      else
      {
        v58 = 3;
      }

      [v10 setButtonVisibility:v58];
    }

    else
    {
      [v10 setButtonVisibility:3];
    }

    v59 = v74;
  }

  else
  {
    [v10 setButtonVisibility:3];
    v56 = v73;
    v59 = v74;
  }

  +[RouteOverviewCell minimumHeight];
  v66 = v65;
  v67 = [v10 minimumHeightConstraint];
  [v67 constant];
  v69 = v68;

  if (v69 != v66)
  {
    v70 = [v10 minimumHeightConstraint];
    [v70 setConstant:v66];
  }

  [v10 setGoButtonProgressVisible:0];
  [v10 setGoButtonProgress:0.0];
  [v10 layoutIfNeeded];
}

@end
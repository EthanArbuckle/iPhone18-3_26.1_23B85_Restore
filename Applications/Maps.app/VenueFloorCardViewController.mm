@interface VenueFloorCardViewController
- (VenueFloorCardViewController)initWithVenuesManager:(id)manager;
- (VenuesManager)venuesManager;
- (double)heightForLabel:(id)label;
- (double)heightForLayout:(unint64_t)layout;
- (id)keyCommands;
- (id)nameForFloorWithOrdinal:(signed __int16)ordinal inBuilding:(id)building;
- (id)nameForFloorWithOrdinal:(signed __int16)ordinal inBuildings:(id)buildings;
- (void)handleCloseButtonTap;
- (void)updateContents;
- (void)viewDidLoad;
@end

@implementation VenueFloorCardViewController

- (VenuesManager)venuesManager
{
  WeakRetained = objc_loadWeakRetained(&self->_venuesManager);

  return WeakRetained;
}

- (void)updateContents
{
  venuesManager = [(VenueFloorCardViewController *)self venuesManager];
  venueWithFocus = [venuesManager venueWithFocus];

  venuesManager2 = [(VenueFloorCardViewController *)self venuesManager];
  v6 = [venuesManager2 displayedFloorOrdinalForBuildingsInVenue:venueWithFocus];

  name = [venueWithFocus name];
  venueNameLabel = [(VenueFloorCardViewController *)self venueNameLabel];
  [venueNameLabel setText:name];

  venuesManager3 = [(VenueFloorCardViewController *)self venuesManager];
  venueBuildingWithFocus = [venuesManager3 venueBuildingWithFocus];
  v11 = [(VenueFloorCardViewController *)self nameForFloorWithOrdinal:v6 inBuilding:venueBuildingWithFocus];
  v12 = v11;
  if (!v11)
  {
    buildings = [venueWithFocus buildings];
    v12 = [(VenueFloorCardViewController *)self nameForFloorWithOrdinal:v6 inBuildings:buildings];
  }

  floorNameLabel = [(VenueFloorCardViewController *)self floorNameLabel];
  [floorNameLabel setText:v12];

  if (!v11)
  {
  }

  venuesManager4 = [(VenueFloorCardViewController *)self venuesManager];
  userLocationFloorOrdinal = [venuesManager4 userLocationFloorOrdinal];

  if (userLocationFloorOrdinal)
  {
    v16 = [userLocationFloorOrdinal shortValue] == v6;
  }

  else
  {
    v16 = 0;
  }

  [(VenueFloorCardViewController *)self setIsUserLocation:v16];
  floorNameLabel2 = [(VenueFloorCardViewController *)self floorNameLabel];
  [floorNameLabel2 updateTheme];
}

- (double)heightForLabel:(id)label
{
  labelCopy = label;
  font = [labelCopy font];
  [font ascender];
  v6 = v5;
  font2 = [labelCopy font];

  [font2 descender];
  v9 = v6 - v8;

  return v9;
}

- (id)nameForFloorWithOrdinal:(signed __int16)ordinal inBuildings:(id)buildings
{
  ordinalCopy = ordinal;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  buildingsCopy = buildings;
  v7 = [buildingsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(buildingsCopy);
        }

        v11 = [(VenueFloorCardViewController *)self nameForFloorWithOrdinal:ordinalCopy inBuilding:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          v12 = v11;
          goto LABEL_11;
        }
      }

      v8 = [buildingsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)nameForFloorWithOrdinal:(signed __int16)ordinal inBuilding:(id)building
{
  ordinalCopy = ordinal;
  floorNames = [building floorNames];
  v6 = [NSNumber numberWithShort:ordinalCopy];
  v7 = [floorNames objectForKeyedSubscript:v6];

  return v7;
}

- (double)heightForLayout:(unint64_t)layout
{
  v3 = -1.0;
  if (layout == 5)
  {
    venueNameLabel = [(VenueFloorCardViewController *)self venueNameLabel];
    [(VenueFloorCardViewController *)self heightForLabel:venueNameLabel];
    v7 = v6;
    floorNameLabel = [(VenueFloorCardViewController *)self floorNameLabel];
    [(VenueFloorCardViewController *)self heightForLabel:floorNameLabel];
    v10 = v9;
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController bottomSafeOffset];
    v3 = v7 + 36.0 + v10 + v12;
  }

  return v3;
}

- (void)viewDidLoad
{
  v36.receiver = self;
  v36.super_class = VenueFloorCardViewController;
  [(ContaineeViewController *)&v36 viewDidLoad];
  headerView = [(ContaineeViewController *)self headerView];
  v2 = objc_opt_new();
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = +[UIColor clearColor];
  [v2 setBackgroundColor:v3];

  [DynamicTypeWizard autorefreshLabel:v2 withFontProvider:&stru_10165DA48];
  objc_initWeak(&location, self);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100BF6460;
  v33[3] = &unk_101660218;
  objc_copyWeak(&v34, &location);
  [v2 setTextColorProvider:v33];
  [v2 setAdjustsFontSizeToFitWidth:1];
  [v2 setMinimumScaleFactor:0.5];
  [(VenueFloorCardViewController *)self setFloorNameLabel:v2];
  [headerView addSubview:v2];
  v4 = objc_opt_new();
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIColor clearColor];
  [v4 setBackgroundColor:v5];

  [DynamicTypeWizard autorefreshLabel:v4 withFontProvider:&stru_10165D908];
  v6 = +[UIColor secondaryLabelColor];
  [v4 setTextColor:v6];

  [v4 setAdjustsFontSizeToFitWidth:1];
  [v4 setMinimumScaleFactor:0.5];
  [(VenueFloorCardViewController *)self setVenueNameLabel:v4];
  [headerView addSubview:v4];
  topAnchor = [v2 topAnchor];
  topAnchor2 = [headerView topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:17.0];
  v37[0] = v28;
  leadingAnchor = [v2 leadingAnchor];
  leadingAnchor2 = [headerView leadingAnchor];
  v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  v37[1] = v25;
  trailingAnchor = [v2 trailingAnchor];
  trailingAnchor2 = [headerView trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
  v37[2] = v22;
  topAnchor3 = [v4 topAnchor];
  bottomAnchor = [v2 bottomAnchor];
  v19 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:2.0];
  v37[3] = v19;
  leadingAnchor3 = [v4 leadingAnchor];
  leadingAnchor4 = [headerView leadingAnchor];
  v7 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:20.0];
  v37[4] = v7;
  trailingAnchor3 = [v4 trailingAnchor];
  trailingAnchor4 = [headerView trailingAnchor];
  v10 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-20.0];
  v37[5] = v10;
  bottomAnchor2 = [v4 bottomAnchor];
  bottomAnchor3 = [headerView bottomAnchor];
  v13 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3 constant:-17.0];
  v37[6] = v13;
  v14 = [NSArray arrayWithObjects:v37 count:7];
  [NSLayoutConstraint activateConstraints:v14];

  view = [(VenueFloorCardViewController *)self view];
  [view setNeedsLayout];

  view2 = [(VenueFloorCardViewController *)self view];
  [view2 layoutIfNeeded];

  [(VenueFloorCardViewController *)self updateContents];
  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

- (id)keyCommands
{
  v2 = [UIKeyCommand keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"handleCloseButtonTap"];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)handleCloseButtonTap
{
  venuesManager = [(VenueFloorCardViewController *)self venuesManager];
  venueFloorViewController = [venuesManager venueFloorViewController];
  [venueFloorViewController setOpen:0];
}

- (VenueFloorCardViewController)initWithVenuesManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = VenueFloorCardViewController;
  v5 = [(VenueFloorCardViewController *)&v11 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_venuesManager, managerCopy);
    cardPresentationController = [(ContaineeViewController *)v6 cardPresentationController];
    [cardPresentationController setPresentedModally:1];

    cardPresentationController2 = [(ContaineeViewController *)v6 cardPresentationController];
    [cardPresentationController2 setAllowsSwipeToDismiss:0];

    cardPresentationController3 = [(ContaineeViewController *)v6 cardPresentationController];
    [cardPresentationController3 setShouldHidePreviousCards:1];
  }

  return v6;
}

@end
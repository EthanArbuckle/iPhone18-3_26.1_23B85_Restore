@interface CarSharedTripDetailCardViewController
- (BOOL)_updateWithTrip:(id)a3;
- (CarSharedTripDetailCardViewController)initWithSharedTrip:(id)a3 delegate:(id)a4;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (void)_directionsButtonPressed:(id)a3;
- (void)_refreshSubscriptionToken;
- (void)_setupConstraints;
- (void)_updateAccessibilityContent;
- (void)_updateContent;
- (void)_updateDirectionsButtonVisibility;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)sharedTripService:(id)a3 didUpdateClosedTrip:(id)a4;
- (void)sharedTripService:(id)a3 didUpdateDestinationForSharedTrip:(id)a4;
- (void)sharedTripService:(id)a3 didUpdateETAForSharedTrip:(id)a4;
- (void)sharedTripService:(id)a3 didUpdateReachedDestinationForSharedTrip:(id)a4;
- (void)sharedTripService:(id)a3 didUpdateRouteForSharedTrip:(id)a4;
- (void)sharedTripServiceDidUpdateReceivingAvailability:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CarSharedTripDetailCardViewController

- (BOOL)_updateWithTrip:(id)a3
{
  v4 = a3;
  v5 = [v4 groupIdentifier];
  v6 = [(GEOSharedNavState *)self->_sharedTrip groupIdentifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    [(GEOSharedNavState *)self->_sharedTrip mergeFrom:v4];
  }

  return v7;
}

- (void)sharedTripService:(id)a3 didUpdateRouteForSharedTrip:(id)a4
{
  if ([(CarSharedTripDetailCardViewController *)self _updateWithTrip:a4])
  {

    [(CarSharedTripDetailCardViewController *)self _updateContent];
  }
}

- (void)sharedTripService:(id)a3 didUpdateReachedDestinationForSharedTrip:(id)a4
{
  if ([(CarSharedTripDetailCardViewController *)self _updateWithTrip:a4])
  {

    [(CarSharedTripDetailCardViewController *)self _updateContent];
  }
}

- (void)sharedTripService:(id)a3 didUpdateClosedTrip:(id)a4
{
  if ([(CarSharedTripDetailCardViewController *)self _updateWithTrip:a4])
  {

    [(CarSharedTripDetailCardViewController *)self _updateContent];
  }
}

- (void)sharedTripService:(id)a3 didUpdateETAForSharedTrip:(id)a4
{
  if ([(CarSharedTripDetailCardViewController *)self _updateWithTrip:a4])
  {

    [(CarSharedTripDetailCardViewController *)self _updateContent];
  }
}

- (void)sharedTripService:(id)a3 didUpdateDestinationForSharedTrip:(id)a4
{
  if ([(CarSharedTripDetailCardViewController *)self _updateWithTrip:a4])
  {

    [(CarSharedTripDetailCardViewController *)self _updateContent];
  }
}

- (void)sharedTripServiceDidUpdateReceivingAvailability:(id)a3
{
  [a3 receivedTrips];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 groupIdentifier];
        v11 = [(CarSharedTripDetailCardViewController *)self sharedTrip];
        v12 = [v11 groupIdentifier];
        v13 = [v10 isEqualToString:v12];

        if (v13)
        {
          if ([(CarSharedTripDetailCardViewController *)self _updateWithTrip:v9])
          {
            [(CarSharedTripDetailCardViewController *)self _updateContent];
          }

          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (void)_directionsButtonPressed:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sharedTripDetailCard:self didSelectAction:0];
}

- (void)_refreshSubscriptionToken
{
  v9 = [(CarSharedTripDetailCardViewController *)self _maps_uiScene];
  v3 = [(CarSharedTripDetailCardViewController *)self sharedTrip];
  if (v3 && self->_isVisible)
  {

    if (v9)
    {
      v4 = [SharedTripSceneAwareSubscription alloc];
      v5 = [(CarSharedTripDetailCardViewController *)self sharedTrip];
      v6 = [v5 groupIdentifier];
      v7 = [(SharedTripSceneAwareSubscription *)v4 initWithTripIdentifier:v6 scene:v9];
      subscriptionToken = self->_subscriptionToken;
      self->_subscriptionToken = v7;

      goto LABEL_7;
    }
  }

  else
  {
  }

  v5 = self->_subscriptionToken;
  self->_subscriptionToken = 0;
LABEL_7:
}

- (NSArray)focusOrderSubItems
{
  if ([(CarSharedTripDetailCardViewController *)self isViewLoaded])
  {
    if ([(CarCardRoundedButton *)self->_directionsButton isHidden])
    {
      stopUpdatesButton = self->_stopUpdatesButton;
      p_stopUpdatesButton = &stopUpdatesButton;
      v4 = 1;
    }

    else
    {
      v6 = self->_stopUpdatesButton;
      directionsButton = self->_directionsButton;
      v9 = v6;
      p_stopUpdatesButton = &directionsButton;
      v4 = 2;
    }

    v5 = [NSArray arrayWithObjects:p_stopUpdatesButton count:v4, directionsButton, v9, stopUpdatesButton];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (NSArray)preferredFocusEnvironments
{
  if ([(CarSharedTripDetailCardViewController *)self isViewLoaded])
  {
    if ([(CarCardRoundedButton *)self->_directionsButton isHidden])
    {
      stopUpdatesButton = self->_stopUpdatesButton;
      p_stopUpdatesButton = &stopUpdatesButton;
      v4 = 1;
    }

    else
    {
      v6 = self->_stopUpdatesButton;
      directionsButton = self->_directionsButton;
      v9 = v6;
      p_stopUpdatesButton = &directionsButton;
      v4 = 2;
    }

    v5 = [NSArray arrayWithObjects:p_stopUpdatesButton count:v4, directionsButton, v9, stopUpdatesButton];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  return v5;
}

- (void)_updateAccessibilityContent
{
  v14 = +[NSMutableArray array];
  v3 = [(CarCardRoundedButton *)self->_directionsButton titleLabel];
  v4 = [v3 text];

  if (v4)
  {
    v5 = [(CarCardRoundedButton *)self->_directionsButton titleLabel];
    v6 = [v5 text];
    [v14 addObject:v6];
  }

  v7 = [(UILabel *)self->_etaLabel text];

  if (v7)
  {
    v8 = [(UILabel *)self->_etaLabel text];
    [v14 addObject:v8];
  }

  v9 = [(UILabel *)self->_handleLabel text];

  if (v9)
  {
    v10 = [(UILabel *)self->_handleLabel text];
    [v14 addObject:v10];
  }

  v11 = [(UILabel *)self->_destinationLabel text];

  if (v11)
  {
    v12 = [(UILabel *)self->_destinationLabel text];
    [v14 addObject:v12];
  }

  v13 = [v14 copy];
  [(CarCardRoundedButton *)self->_directionsButton setAccessibilityUserInputLabels:v13];
}

- (void)_updateContent
{
  v3 = [(GEOSharedNavState *)self->_sharedTrip etaInfo];
  [v3 etaTimestamp];
  v17 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

  v4 = +[NSTimeZone localTimeZone];
  v5 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:v17 inTimeZone:v4 canIncludeDate:0];

  v6 = [(GEOSharedNavState *)self->_sharedTrip routeInfo];
  v7 = [v6 chargingStations];
  v8 = [v7 count];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"CarPlay_SharedTrip_Detail_ETA" value:@"localized string not found" table:0];

  v11 = [NSString localizedStringWithFormat:v10, v8, v5];
  [(UILabel *)self->_etaLabel setText:v11];

  v12 = [(GEOSharedNavState *)self->_sharedTrip senderInfo];
  if ([v12 hasLocalContactIdentifier])
  {
    [(UILabel *)self->_handleLabel setText:&stru_1016631F0];
  }

  else
  {
    v13 = [(GEOSharedNavState *)self->_sharedTrip senderInfo];
    v14 = [v13 fromIdentifier];
    [(UILabel *)self->_handleLabel setText:v14];
  }

  v15 = [(GEOSharedNavState *)self->_sharedTrip destinationWaypointMapItem];
  v16 = navDisplayAddressForMapItem();
  [(UILabel *)self->_destinationLabel setText:v16];

  [(CarSharedTripDetailCardViewController *)self _updateAccessibilityContent];
}

- (void)_updateDirectionsButtonVisibility
{
  v3 = [(CarSharedTripDetailCardViewController *)self sharedTrip];
  v12 = [v3 destinationWaypointMapItem];

  v4 = [CLLocation alloc];
  [v12 coordinate];
  v6 = v5;
  [v12 coordinate];
  v7 = [v4 initWithLatitude:v6 longitude:?];
  v8 = +[MKLocationManager sharedLocationManager];
  v9 = [v8 lastLocation];
  [v9 distanceFromLocation:v7];
  v11 = v10;

  if (v11 <= 500.0 != [(CarCardRoundedButton *)self->_directionsButton isHidden])
  {
    [(CarCardRoundedButton *)self->_directionsButton setHidden:v11 <= 500.0];
    [(CarSharedTripDetailCardViewController *)self setNeedsFocusUpdate];
  }
}

- (void)_setupConstraints
{
  v3 = [(CarSharedTripDetailCardViewController *)self view];
  v4 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(UILayoutGuide);
  textLayoutGuide = self->_textLayoutGuide;
  self->_textLayoutGuide = v5;

  v7 = [(CarSharedTripDetailCardViewController *)self view];
  [v7 addLayoutGuide:self->_textLayoutGuide];

  v8 = [(UILabel *)self->_handleLabel topAnchor];
  v9 = [v3 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v4 addObject:v10];

  v11 = [(UILabel *)self->_handleLabel leadingAnchor];
  v12 = [v3 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:10.0];
  [v4 addObject:v13];

  v14 = [v3 trailingAnchor];
  v15 = [(UILabel *)self->_handleLabel trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:10.0];
  [v4 addObject:v16];

  v17 = [(UILabel *)self->_etaLabel topAnchor];
  v18 = [(UILabel *)self->_handleLabel bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  [v4 addObject:v19];

  v20 = [(UILabel *)self->_etaLabel leadingAnchor];
  v21 = [v3 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:10.0];
  [v4 addObject:v22];

  v23 = [v3 trailingAnchor];
  v24 = [(UILabel *)self->_etaLabel trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:10.0];
  [v4 addObject:v25];

  v26 = [(UILayoutGuide *)self->_textLayoutGuide topAnchor];
  v27 = [(UILabel *)self->_etaLabel bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:10.0];
  [v4 addObject:v28];

  v29 = [(UILayoutGuide *)self->_textLayoutGuide leadingAnchor];
  v30 = [v3 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:10.0];
  [v4 addObject:v31];

  v32 = [v3 trailingAnchor];
  v33 = [(UILayoutGuide *)self->_textLayoutGuide trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:10.0];
  [v4 addObject:v34];

  v35 = [(UILabel *)self->_destinationLabel centerYAnchor];
  v36 = [(UILayoutGuide *)self->_textLayoutGuide centerYAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  [v4 addObject:v37];

  v38 = [(UILabel *)self->_destinationLabel leadingAnchor];
  v39 = [(UILayoutGuide *)self->_textLayoutGuide leadingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  [v4 addObject:v40];

  v41 = [(UILayoutGuide *)self->_textLayoutGuide trailingAnchor];
  v42 = [(UILabel *)self->_destinationLabel trailingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];
  [v4 addObject:v43];

  v44 = [(UIStackView *)self->_stackView topAnchor];
  v45 = [(UILayoutGuide *)self->_textLayoutGuide bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:4.0];
  [v4 addObject:v46];

  v47 = [(UIStackView *)self->_stackView leadingAnchor];
  v48 = [(UILayoutGuide *)self->_textLayoutGuide leadingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];
  [v4 addObject:v49];

  v50 = [(UILayoutGuide *)self->_textLayoutGuide trailingAnchor];
  v51 = [(UIStackView *)self->_stackView trailingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];
  [v4 addObject:v52];

  v53 = [v3 bottomAnchor];
  v54 = [(UIStackView *)self->_stackView bottomAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:10.0];
  [v4 addObject:v55];

  v56 = [(CarCardRoundedButton *)self->_stopUpdatesButton heightAnchor];
  stopUpdatesButton = self->_stopUpdatesButton;
  if (stopUpdatesButton)
  {
    [(CarCardRoundedButton *)stopUpdatesButton buttonMetrics];
    v58 = v65;
  }

  else
  {
    v65 = 0.0;
    v63 = 0u;
    v64 = 0u;
    v58 = 0.0;
  }

  v59 = [v56 constraintEqualToConstant:{v58, v63, v64, *&v65}];
  [v4 addObject:v59];

  v60 = [(UILabel *)self->_destinationLabel heightAnchor];
  v61 = [(UILayoutGuide *)self->_textLayoutGuide heightAnchor];
  v62 = [v60 constraintLessThanOrEqualToAnchor:v61];
  [v4 addObject:v62];

  [NSLayoutConstraint activateConstraints:v4];
}

- (void)didMoveToParentViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = CarSharedTripDetailCardViewController;
  [(CarSharedTripDetailCardViewController *)&v4 didMoveToParentViewController:a3];
  [(CarSharedTripDetailCardViewController *)self _refreshSubscriptionToken];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CarSharedTripDetailCardViewController;
  [(CarSharedTripDetailCardViewController *)&v5 viewDidDisappear:a3];
  self->_isVisible = 0;
  subscriptionToken = self->_subscriptionToken;
  self->_subscriptionToken = 0;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CarSharedTripDetailCardViewController;
  [(CarSharedTripDetailCardViewController *)&v4 viewWillAppear:a3];
  self->_isVisible = 1;
  [(CarSharedTripDetailCardViewController *)self _refreshSubscriptionToken];
}

- (void)viewDidLoad
{
  v55.receiver = self;
  v55.super_class = CarSharedTripDetailCardViewController;
  [(CarSharedTripDetailCardViewController *)&v55 viewDidLoad];
  v3 = [(CarSharedTripDetailCardViewController *)self view];
  [v3 setAccessibilityIdentifier:@"CarSharedTripDetailCard"];

  v4 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  handleLabel = self->_handleLabel;
  self->_handleLabel = v8;

  [(UILabel *)self->_handleLabel setAccessibilityIdentifier:@"HandleLabel"];
  [(UILabel *)self->_handleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [UIFont systemFontOfSize:12.0];
  [(UILabel *)self->_handleLabel setFont:v10];

  v11 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_handleLabel setTextColor:v11];

  [(UILabel *)self->_handleLabel setNumberOfLines:1];
  [(UILabel *)self->_handleLabel setLineBreakMode:5];
  LODWORD(v12) = 1148846080;
  [(UILabel *)self->_handleLabel setContentHuggingPriority:1 forAxis:v12];
  LODWORD(v13) = 1148846080;
  [(UILabel *)self->_handleLabel setContentCompressionResistancePriority:1 forAxis:v13];
  v14 = [(CarSharedTripDetailCardViewController *)self view];
  [v14 addSubview:self->_handleLabel];

  v15 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  etaLabel = self->_etaLabel;
  self->_etaLabel = v15;

  [(UILabel *)self->_etaLabel setAccessibilityIdentifier:@"ETALabel"];
  [(UILabel *)self->_etaLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [UIFont systemFontOfSize:12.0];
  [(UILabel *)self->_etaLabel setFont:v17];

  v18 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_etaLabel setTextColor:v18];

  [(UILabel *)self->_etaLabel setNumberOfLines:0];
  LODWORD(v19) = 1148846080;
  [(UILabel *)self->_etaLabel setContentHuggingPriority:1 forAxis:v19];
  LODWORD(v20) = 1148846080;
  [(UILabel *)self->_etaLabel setContentCompressionResistancePriority:1 forAxis:v20];
  v21 = [(CarSharedTripDetailCardViewController *)self view];
  [v21 addSubview:self->_etaLabel];

  v22 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  destinationLabel = self->_destinationLabel;
  self->_destinationLabel = v22;

  [(UILabel *)self->_destinationLabel setAccessibilityIdentifier:@"DestinationLabel"];
  [(UILabel *)self->_destinationLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [UIFont systemFontOfSize:12.0];
  [(UILabel *)self->_destinationLabel setFont:v24];

  v25 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_destinationLabel setTextColor:v25];

  [(UILabel *)self->_destinationLabel setNumberOfLines:5];
  [(UILabel *)self->_destinationLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_destinationLabel setMinimumScaleFactor:0.833333333];
  LODWORD(v26) = 1148846080;
  [(UILabel *)self->_destinationLabel setContentHuggingPriority:1 forAxis:v26];
  LODWORD(v27) = 1148829696;
  [(UILabel *)self->_destinationLabel setContentCompressionResistancePriority:1 forAxis:v27];
  v28 = [(CarSharedTripDetailCardViewController *)self view];
  [v28 addSubview:self->_destinationLabel];

  v29 = [[CarCardRoundedButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  directionsButton = self->_directionsButton;
  self->_directionsButton = v29;

  [(CarCardRoundedButton *)self->_directionsButton setAccessibilityIdentifier:@"DirectionsButton"];
  [(CarCardRoundedButton *)self->_directionsButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = self->_directionsButton;
  v32 = +[NSBundle mainBundle];
  v33 = [v32 localizedStringForKey:@"CarPlay_SharedTrip_Detail_Directions" value:@"localized string not found" table:0];
  [(CarCardRoundedButton *)v31 setTitle:v33 forState:0];

  [(CarCardRoundedButton *)self->_directionsButton addTarget:self action:"_directionsButtonPressed:" forControlEvents:64];
  v34 = [[CarCardRoundedButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  stopUpdatesButton = self->_stopUpdatesButton;
  self->_stopUpdatesButton = v34;

  [(CarCardRoundedButton *)self->_stopUpdatesButton setAccessibilityIdentifier:@"StopUpdatesButton"];
  [(CarCardRoundedButton *)self->_stopUpdatesButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v36 = +[UIColor whiteColor];
  [(CarFocusableButton *)self->_stopUpdatesButton setNonFocusedTintColor:v36];

  v37 = +[UIColor externalSystemRedColor];
  [(CarFocusableButton *)self->_stopUpdatesButton setNonFocusedBackgroundColor:v37];

  v38 = self->_stopUpdatesButton;
  v39 = +[NSBundle mainBundle];
  v40 = [v39 localizedStringForKey:@"CarPlay_SharedTrip_Detail_Stop_Update" value:@"localized string not found" table:0];
  [(CarCardRoundedButton *)v38 setTitle:v40 forState:0];

  v41 = [(CarCardRoundedButton *)self->_stopUpdatesButton titleLabel];
  v42 = self->_stopUpdatesButton;
  if (v42)
  {
    [(CarCardRoundedButton *)v42 buttonMetrics];
    v43 = *(&v52 + 1);
  }

  else
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    v43 = 0.0;
  }

  v44 = [UIFont systemFontOfSize:v43 weight:UIFontWeightSemibold, v52, v53, v54];
  [v41 setFont:v44];

  [(CarCardRoundedButton *)self->_stopUpdatesButton addTarget:self action:"_blockUpdatesButtonPressed:" forControlEvents:64];
  v45 = [UIStackView alloc];
  v46 = self->_stopUpdatesButton;
  v56[0] = self->_directionsButton;
  v56[1] = v46;
  v47 = [NSArray arrayWithObjects:v56 count:2];
  v48 = [v45 initWithArrangedSubviews:v47];
  stackView = self->_stackView;
  self->_stackView = v48;

  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView setAlignment:0];
  [(UIStackView *)self->_stackView setDistribution:1];
  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setSpacing:2.0];
  LODWORD(v50) = 1148846080;
  [(UIStackView *)self->_stackView setContentHuggingPriority:1 forAxis:v50];
  v51 = [(CarSharedTripDetailCardViewController *)self view];
  [v51 addSubview:self->_stackView];

  [(CarSharedTripDetailCardViewController *)self _setupConstraints];
  [(CarSharedTripDetailCardViewController *)self _updateDirectionsButtonVisibility];
  [(CarSharedTripDetailCardViewController *)self _updateContent];
}

- (CarSharedTripDetailCardViewController)initWithSharedTrip:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CarSharedTripDetailCardViewController;
  v9 = [(CarSharedTripDetailCardViewController *)&v13 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sharedTrip, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v11 = +[MKLocationManager sharedLocationManager];
    [v11 listenForLocationUpdates:v10];
  }

  return v10;
}

- (void)dealloc
{
  v3 = +[MKLocationManager sharedLocationManager];
  [v3 stopListeningForLocationUpdates:self];

  v4.receiver = self;
  v4.super_class = CarSharedTripDetailCardViewController;
  [(CarSharedTripDetailCardViewController *)&v4 dealloc];
}

@end
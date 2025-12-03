@interface CarSharedTripDetailCardViewController
- (BOOL)_updateWithTrip:(id)trip;
- (CarSharedTripDetailCardViewController)initWithSharedTrip:(id)trip delegate:(id)delegate;
- (NSArray)focusOrderSubItems;
- (NSArray)preferredFocusEnvironments;
- (void)_directionsButtonPressed:(id)pressed;
- (void)_refreshSubscriptionToken;
- (void)_setupConstraints;
- (void)_updateAccessibilityContent;
- (void)_updateContent;
- (void)_updateDirectionsButtonVisibility;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)sharedTripService:(id)service didUpdateClosedTrip:(id)trip;
- (void)sharedTripService:(id)service didUpdateDestinationForSharedTrip:(id)trip;
- (void)sharedTripService:(id)service didUpdateETAForSharedTrip:(id)trip;
- (void)sharedTripService:(id)service didUpdateReachedDestinationForSharedTrip:(id)trip;
- (void)sharedTripService:(id)service didUpdateRouteForSharedTrip:(id)trip;
- (void)sharedTripServiceDidUpdateReceivingAvailability:(id)availability;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CarSharedTripDetailCardViewController

- (BOOL)_updateWithTrip:(id)trip
{
  tripCopy = trip;
  groupIdentifier = [tripCopy groupIdentifier];
  groupIdentifier2 = [(GEOSharedNavState *)self->_sharedTrip groupIdentifier];
  v7 = [groupIdentifier isEqualToString:groupIdentifier2];

  if (v7)
  {
    [(GEOSharedNavState *)self->_sharedTrip mergeFrom:tripCopy];
  }

  return v7;
}

- (void)sharedTripService:(id)service didUpdateRouteForSharedTrip:(id)trip
{
  if ([(CarSharedTripDetailCardViewController *)self _updateWithTrip:trip])
  {

    [(CarSharedTripDetailCardViewController *)self _updateContent];
  }
}

- (void)sharedTripService:(id)service didUpdateReachedDestinationForSharedTrip:(id)trip
{
  if ([(CarSharedTripDetailCardViewController *)self _updateWithTrip:trip])
  {

    [(CarSharedTripDetailCardViewController *)self _updateContent];
  }
}

- (void)sharedTripService:(id)service didUpdateClosedTrip:(id)trip
{
  if ([(CarSharedTripDetailCardViewController *)self _updateWithTrip:trip])
  {

    [(CarSharedTripDetailCardViewController *)self _updateContent];
  }
}

- (void)sharedTripService:(id)service didUpdateETAForSharedTrip:(id)trip
{
  if ([(CarSharedTripDetailCardViewController *)self _updateWithTrip:trip])
  {

    [(CarSharedTripDetailCardViewController *)self _updateContent];
  }
}

- (void)sharedTripService:(id)service didUpdateDestinationForSharedTrip:(id)trip
{
  if ([(CarSharedTripDetailCardViewController *)self _updateWithTrip:trip])
  {

    [(CarSharedTripDetailCardViewController *)self _updateContent];
  }
}

- (void)sharedTripServiceDidUpdateReceivingAvailability:(id)availability
{
  [availability receivedTrips];
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
        groupIdentifier = [v9 groupIdentifier];
        sharedTrip = [(CarSharedTripDetailCardViewController *)self sharedTrip];
        groupIdentifier2 = [sharedTrip groupIdentifier];
        v13 = [groupIdentifier isEqualToString:groupIdentifier2];

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

- (void)_directionsButtonPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sharedTripDetailCard:self didSelectAction:0];
}

- (void)_refreshSubscriptionToken
{
  _maps_uiScene = [(CarSharedTripDetailCardViewController *)self _maps_uiScene];
  sharedTrip = [(CarSharedTripDetailCardViewController *)self sharedTrip];
  if (sharedTrip && self->_isVisible)
  {

    if (_maps_uiScene)
    {
      v4 = [SharedTripSceneAwareSubscription alloc];
      sharedTrip2 = [(CarSharedTripDetailCardViewController *)self sharedTrip];
      groupIdentifier = [sharedTrip2 groupIdentifier];
      v7 = [(SharedTripSceneAwareSubscription *)v4 initWithTripIdentifier:groupIdentifier scene:_maps_uiScene];
      subscriptionToken = self->_subscriptionToken;
      self->_subscriptionToken = v7;

      goto LABEL_7;
    }
  }

  else
  {
  }

  sharedTrip2 = self->_subscriptionToken;
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

    stopUpdatesButton = [NSArray arrayWithObjects:p_stopUpdatesButton count:v4, directionsButton, v9, stopUpdatesButton];
  }

  else
  {
    stopUpdatesButton = &__NSArray0__struct;
  }

  return stopUpdatesButton;
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

    stopUpdatesButton = [NSArray arrayWithObjects:p_stopUpdatesButton count:v4, directionsButton, v9, stopUpdatesButton];
  }

  else
  {
    stopUpdatesButton = &__NSArray0__struct;
  }

  return stopUpdatesButton;
}

- (void)_updateAccessibilityContent
{
  v14 = +[NSMutableArray array];
  titleLabel = [(CarCardRoundedButton *)self->_directionsButton titleLabel];
  text = [titleLabel text];

  if (text)
  {
    titleLabel2 = [(CarCardRoundedButton *)self->_directionsButton titleLabel];
    text2 = [titleLabel2 text];
    [v14 addObject:text2];
  }

  text3 = [(UILabel *)self->_etaLabel text];

  if (text3)
  {
    text4 = [(UILabel *)self->_etaLabel text];
    [v14 addObject:text4];
  }

  text5 = [(UILabel *)self->_handleLabel text];

  if (text5)
  {
    text6 = [(UILabel *)self->_handleLabel text];
    [v14 addObject:text6];
  }

  text7 = [(UILabel *)self->_destinationLabel text];

  if (text7)
  {
    text8 = [(UILabel *)self->_destinationLabel text];
    [v14 addObject:text8];
  }

  v13 = [v14 copy];
  [(CarCardRoundedButton *)self->_directionsButton setAccessibilityUserInputLabels:v13];
}

- (void)_updateContent
{
  etaInfo = [(GEOSharedNavState *)self->_sharedTrip etaInfo];
  [etaInfo etaTimestamp];
  v17 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

  v4 = +[NSTimeZone localTimeZone];
  v5 = [NSDateFormatter _navigation_localizedTimestampStringForDepartureArrivalDate:v17 inTimeZone:v4 canIncludeDate:0];

  routeInfo = [(GEOSharedNavState *)self->_sharedTrip routeInfo];
  chargingStations = [routeInfo chargingStations];
  v8 = [chargingStations count];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"CarPlay_SharedTrip_Detail_ETA" value:@"localized string not found" table:0];

  v11 = [NSString localizedStringWithFormat:v10, v8, v5];
  [(UILabel *)self->_etaLabel setText:v11];

  senderInfo = [(GEOSharedNavState *)self->_sharedTrip senderInfo];
  if ([senderInfo hasLocalContactIdentifier])
  {
    [(UILabel *)self->_handleLabel setText:&stru_1016631F0];
  }

  else
  {
    senderInfo2 = [(GEOSharedNavState *)self->_sharedTrip senderInfo];
    fromIdentifier = [senderInfo2 fromIdentifier];
    [(UILabel *)self->_handleLabel setText:fromIdentifier];
  }

  destinationWaypointMapItem = [(GEOSharedNavState *)self->_sharedTrip destinationWaypointMapItem];
  v16 = navDisplayAddressForMapItem();
  [(UILabel *)self->_destinationLabel setText:v16];

  [(CarSharedTripDetailCardViewController *)self _updateAccessibilityContent];
}

- (void)_updateDirectionsButtonVisibility
{
  sharedTrip = [(CarSharedTripDetailCardViewController *)self sharedTrip];
  destinationWaypointMapItem = [sharedTrip destinationWaypointMapItem];

  v4 = [CLLocation alloc];
  [destinationWaypointMapItem coordinate];
  v6 = v5;
  [destinationWaypointMapItem coordinate];
  v7 = [v4 initWithLatitude:v6 longitude:?];
  v8 = +[MKLocationManager sharedLocationManager];
  lastLocation = [v8 lastLocation];
  [lastLocation distanceFromLocation:v7];
  v11 = v10;

  if (v11 <= 500.0 != [(CarCardRoundedButton *)self->_directionsButton isHidden])
  {
    [(CarCardRoundedButton *)self->_directionsButton setHidden:v11 <= 500.0];
    [(CarSharedTripDetailCardViewController *)self setNeedsFocusUpdate];
  }
}

- (void)_setupConstraints
{
  view = [(CarSharedTripDetailCardViewController *)self view];
  v4 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(UILayoutGuide);
  textLayoutGuide = self->_textLayoutGuide;
  self->_textLayoutGuide = v5;

  view2 = [(CarSharedTripDetailCardViewController *)self view];
  [view2 addLayoutGuide:self->_textLayoutGuide];

  topAnchor = [(UILabel *)self->_handleLabel topAnchor];
  topAnchor2 = [view topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v4 addObject:v10];

  leadingAnchor = [(UILabel *)self->_handleLabel leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  [v4 addObject:v13];

  trailingAnchor = [view trailingAnchor];
  trailingAnchor2 = [(UILabel *)self->_handleLabel trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:10.0];
  [v4 addObject:v16];

  topAnchor3 = [(UILabel *)self->_etaLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_handleLabel bottomAnchor];
  v19 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  [v4 addObject:v19];

  leadingAnchor3 = [(UILabel *)self->_etaLabel leadingAnchor];
  leadingAnchor4 = [view leadingAnchor];
  v22 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:10.0];
  [v4 addObject:v22];

  trailingAnchor3 = [view trailingAnchor];
  trailingAnchor4 = [(UILabel *)self->_etaLabel trailingAnchor];
  v25 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:10.0];
  [v4 addObject:v25];

  topAnchor4 = [(UILayoutGuide *)self->_textLayoutGuide topAnchor];
  bottomAnchor2 = [(UILabel *)self->_etaLabel bottomAnchor];
  v28 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:10.0];
  [v4 addObject:v28];

  leadingAnchor5 = [(UILayoutGuide *)self->_textLayoutGuide leadingAnchor];
  leadingAnchor6 = [view leadingAnchor];
  v31 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:10.0];
  [v4 addObject:v31];

  trailingAnchor5 = [view trailingAnchor];
  trailingAnchor6 = [(UILayoutGuide *)self->_textLayoutGuide trailingAnchor];
  v34 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:10.0];
  [v4 addObject:v34];

  centerYAnchor = [(UILabel *)self->_destinationLabel centerYAnchor];
  centerYAnchor2 = [(UILayoutGuide *)self->_textLayoutGuide centerYAnchor];
  v37 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v4 addObject:v37];

  leadingAnchor7 = [(UILabel *)self->_destinationLabel leadingAnchor];
  leadingAnchor8 = [(UILayoutGuide *)self->_textLayoutGuide leadingAnchor];
  v40 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  [v4 addObject:v40];

  trailingAnchor7 = [(UILayoutGuide *)self->_textLayoutGuide trailingAnchor];
  trailingAnchor8 = [(UILabel *)self->_destinationLabel trailingAnchor];
  v43 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  [v4 addObject:v43];

  topAnchor5 = [(UIStackView *)self->_stackView topAnchor];
  bottomAnchor3 = [(UILayoutGuide *)self->_textLayoutGuide bottomAnchor];
  v46 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:4.0];
  [v4 addObject:v46];

  leadingAnchor9 = [(UIStackView *)self->_stackView leadingAnchor];
  leadingAnchor10 = [(UILayoutGuide *)self->_textLayoutGuide leadingAnchor];
  v49 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  [v4 addObject:v49];

  trailingAnchor9 = [(UILayoutGuide *)self->_textLayoutGuide trailingAnchor];
  trailingAnchor10 = [(UIStackView *)self->_stackView trailingAnchor];
  v52 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  [v4 addObject:v52];

  bottomAnchor4 = [view bottomAnchor];
  bottomAnchor5 = [(UIStackView *)self->_stackView bottomAnchor];
  v55 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:10.0];
  [v4 addObject:v55];

  heightAnchor = [(CarCardRoundedButton *)self->_stopUpdatesButton heightAnchor];
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

  v59 = [heightAnchor constraintEqualToConstant:{v58, v63, v64, *&v65}];
  [v4 addObject:v59];

  heightAnchor2 = [(UILabel *)self->_destinationLabel heightAnchor];
  heightAnchor3 = [(UILayoutGuide *)self->_textLayoutGuide heightAnchor];
  v62 = [heightAnchor2 constraintLessThanOrEqualToAnchor:heightAnchor3];
  [v4 addObject:v62];

  [NSLayoutConstraint activateConstraints:v4];
}

- (void)didMoveToParentViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = CarSharedTripDetailCardViewController;
  [(CarSharedTripDetailCardViewController *)&v4 didMoveToParentViewController:controller];
  [(CarSharedTripDetailCardViewController *)self _refreshSubscriptionToken];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CarSharedTripDetailCardViewController;
  [(CarSharedTripDetailCardViewController *)&v5 viewDidDisappear:disappear];
  self->_isVisible = 0;
  subscriptionToken = self->_subscriptionToken;
  self->_subscriptionToken = 0;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CarSharedTripDetailCardViewController;
  [(CarSharedTripDetailCardViewController *)&v4 viewWillAppear:appear];
  self->_isVisible = 1;
  [(CarSharedTripDetailCardViewController *)self _refreshSubscriptionToken];
}

- (void)viewDidLoad
{
  v55.receiver = self;
  v55.super_class = CarSharedTripDetailCardViewController;
  [(CarSharedTripDetailCardViewController *)&v55 viewDidLoad];
  view = [(CarSharedTripDetailCardViewController *)self view];
  [view setAccessibilityIdentifier:@"CarSharedTripDetailCard"];

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
  view2 = [(CarSharedTripDetailCardViewController *)self view];
  [view2 addSubview:self->_handleLabel];

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
  view3 = [(CarSharedTripDetailCardViewController *)self view];
  [view3 addSubview:self->_etaLabel];

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
  view4 = [(CarSharedTripDetailCardViewController *)self view];
  [view4 addSubview:self->_destinationLabel];

  height = [[CarCardRoundedButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  directionsButton = self->_directionsButton;
  self->_directionsButton = height;

  [(CarCardRoundedButton *)self->_directionsButton setAccessibilityIdentifier:@"DirectionsButton"];
  [(CarCardRoundedButton *)self->_directionsButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = self->_directionsButton;
  v32 = +[NSBundle mainBundle];
  v33 = [v32 localizedStringForKey:@"CarPlay_SharedTrip_Detail_Directions" value:@"localized string not found" table:0];
  [(CarCardRoundedButton *)v31 setTitle:v33 forState:0];

  [(CarCardRoundedButton *)self->_directionsButton addTarget:self action:"_directionsButtonPressed:" forControlEvents:64];
  height2 = [[CarCardRoundedButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  stopUpdatesButton = self->_stopUpdatesButton;
  self->_stopUpdatesButton = height2;

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

  titleLabel = [(CarCardRoundedButton *)self->_stopUpdatesButton titleLabel];
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
  [titleLabel setFont:v44];

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
  view5 = [(CarSharedTripDetailCardViewController *)self view];
  [view5 addSubview:self->_stackView];

  [(CarSharedTripDetailCardViewController *)self _setupConstraints];
  [(CarSharedTripDetailCardViewController *)self _updateDirectionsButtonVisibility];
  [(CarSharedTripDetailCardViewController *)self _updateContent];
}

- (CarSharedTripDetailCardViewController)initWithSharedTrip:(id)trip delegate:(id)delegate
{
  tripCopy = trip;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = CarSharedTripDetailCardViewController;
  v9 = [(CarSharedTripDetailCardViewController *)&v13 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sharedTrip, trip);
    objc_storeWeak(&v10->_delegate, delegateCopy);
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
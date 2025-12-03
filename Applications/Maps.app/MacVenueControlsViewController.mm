@interface MacVenueControlsViewController
- (BOOL)isHidden;
- (BOOL)lacksSearchResultsForFloorOrdinal:(id)ordinal;
- (BOOL)shouldBeHidden;
- (BrowseVenueViewControllerDelegate)browseViewControllerDelegate;
- (MacVenueControlsViewController)initWithVenueFloorViewDelegate:(id)delegate venueBrowseDelegate:(id)browseDelegate venuesManager:(id)manager;
- (VenueFloorViewControllerDelegate)floorViewControllerDelegate;
- (VenuesManager)venuesManager;
- (void)browseVenue:(id)venue;
- (void)didChangeConstraints;
- (void)didChangeFocusedVenue:(id)venue focusedBuilding:(id)building displayedFloorOrdinal:(signed __int16)ordinal;
- (void)didClose;
- (void)didFinishHiding;
- (void)didFinishShowing;
- (void)didOpen;
- (void)didStartHiding;
- (void)didStartShowing;
- (void)selectedFloorOrdinal:(id)ordinal;
- (void)setDisplayedFloorOrdinal:(signed __int16)ordinal;
- (void)setForceHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion;
- (void)setHidden:(BOOL)hidden;
- (void)setOpen:(BOOL)open animated:(BOOL)animated;
- (void)setVenue:(id)venue focusedBuilding:(id)building animated:(BOOL)animated forceUpdate:(BOOL)update;
- (void)toggleHidden;
- (void)updateBrowseVenueText;
- (void)updateDisplayedFloor;
- (void)updateHiddenAnimated:(BOOL)animated completion:(id)completion;
- (void)updateVenueAndBuildingsAnimated:(BOOL)animated forced:(BOOL)forced;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MacVenueControlsViewController

- (VenuesManager)venuesManager
{
  WeakRetained = objc_loadWeakRetained(&self->_venuesManager);

  return WeakRetained;
}

- (BrowseVenueViewControllerDelegate)browseViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_browseViewControllerDelegate);

  return WeakRetained;
}

- (VenueFloorViewControllerDelegate)floorViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_floorViewControllerDelegate);

  return WeakRetained;
}

- (void)didClose
{
  floorViewControllerDelegate = [(MacVenueControlsViewController *)self floorViewControllerDelegate];
  [floorViewControllerDelegate venueFloorViewControllerDidClose:self];
}

- (void)didOpen
{
  floorViewControllerDelegate = [(MacVenueControlsViewController *)self floorViewControllerDelegate];
  [floorViewControllerDelegate venueFloorViewControllerDidOpen:self];
}

- (void)didFinishShowing
{
  floorViewControllerDelegate = [(MacVenueControlsViewController *)self floorViewControllerDelegate];
  [floorViewControllerDelegate venueFloorViewControllerDidFinishShowing:self];
}

- (void)didStartShowing
{
  floorViewControllerDelegate = [(MacVenueControlsViewController *)self floorViewControllerDelegate];
  [floorViewControllerDelegate venueFloorViewControllerDidStartShowing:self];
}

- (void)didFinishHiding
{
  floorViewControllerDelegate = [(MacVenueControlsViewController *)self floorViewControllerDelegate];
  [floorViewControllerDelegate venueFloorViewControllerDidFinishHiding:self];
}

- (void)didStartHiding
{
  floorViewControllerDelegate = [(MacVenueControlsViewController *)self floorViewControllerDelegate];
  [floorViewControllerDelegate venueFloorViewControllerDidStartHiding:self];
}

- (void)didChangeConstraints
{
  floorViewControllerDelegate = [(MacVenueControlsViewController *)self floorViewControllerDelegate];
  [floorViewControllerDelegate venueFloorViewControllerDidChangeConstraints:self];
}

- (void)browseVenue:(id)venue
{
  browseViewControllerDelegate = [(MacVenueControlsViewController *)self browseViewControllerDelegate];
  [browseViewControllerDelegate viewControllerDidSelectBrowseVenue:0];
}

- (void)selectedFloorOrdinal:(id)ordinal
{
  ordinalCopy = ordinal;
  shortFloorNames = [(MacVenueControlsViewController *)self shortFloorNames];
  v7 = [shortFloorNames objectForKeyedSubscript:ordinalCopy];

  floorPicker = [(MacVenueControlsViewController *)self floorPicker];
  [floorPicker setTitle:v7 forState:0];
}

- (void)setDisplayedFloorOrdinal:(signed __int16)ordinal
{
  ordinalCopy = ordinal;
  v20 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(MacVenueControlsViewController *)self floorOrdinals];
  v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * v8);
        shortFloorNames = [(MacVenueControlsViewController *)self shortFloorNames];
        v11 = [shortFloorNames objectForKeyedSubscript:v9];

        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100C941A4;
        v21[3] = &unk_10164FD88;
        v21[4] = self;
        v21[5] = v9;
        v12 = v11;
        v22 = v12;
        v13 = [UIAction actionWithTitle:v12 image:0 identifier:v12 handler:v21];
        [v13 setState:{objc_msgSend(v9, "shortValue") == ordinalCopy}];
        if ([(MacVenueControlsViewController *)self lacksSearchResultsForFloorOrdinal:v9])
        {
          [v13 setAttributes:1];
        }

        [v20 addObject:v13];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  shortFloorNames2 = [(MacVenueControlsViewController *)self shortFloorNames];
  v15 = [NSNumber numberWithShort:ordinalCopy];
  v16 = [shortFloorNames2 objectForKeyedSubscript:v15];

  floorPicker = [(MacVenueControlsViewController *)self floorPicker];
  [floorPicker setTitle:v16 forState:0];

  v18 = [UIMenu menuWithTitle:&stru_1016631F0 children:v20];
  [(UIButton *)self->_floorPicker setMenu:v18];
}

- (void)updateBrowseVenueText
{
  venue = [(MacVenueControlsViewController *)self venue];
  shortName = [venue shortName];

  v4 = [shortName length];
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 localizedStringForKey:@"Browse [venue with name]" value:@"localized string not found" table:0];

    v8 = [NSString stringWithFormat:v7, shortName];
    v6 = v7;
  }

  else
  {
    v8 = [v5 localizedStringForKey:@"Browse [venue without name]" value:@"localized string not found" table:0];
  }

  [(UIButton *)self->_browseButton setTitle:v8 forState:0];
}

- (void)updateDisplayedFloor
{
  venue = [(MacVenueControlsViewController *)self venue];

  if (venue)
  {
    venuesManager = [(MacVenueControlsViewController *)self venuesManager];
    venue2 = [(MacVenueControlsViewController *)self venue];
    -[MacVenueControlsViewController setDisplayedFloorOrdinal:](self, "setDisplayedFloorOrdinal:", [venuesManager displayedFloorOrdinalForBuildingsInVenue:venue2]);
  }
}

- (void)setVenue:(id)venue focusedBuilding:(id)building animated:(BOOL)animated forceUpdate:(BOOL)update
{
  animatedCopy = animated;
  venueCopy = venue;
  buildings = [(VKVenueFeatureMarker *)venueCopy buildings];
  v12 = buildings;
  v13 = &__NSArray0__struct;
  if (buildings)
  {
    v13 = buildings;
  }

  v14 = v13;

  if (!update && self->_venue == venueCopy)
  {
    selfCopy4 = self;
    v34 = animatedCopy;
    v32 = 0;
    goto LABEL_21;
  }

  objc_storeStrong(&self->_venue, venue);
  [(MacVenueControlsViewController *)self updateBrowseVenueText];
  if ([(MacVenueControlsViewController *)self isHidden]|| ![(MacVenueControlsViewController *)self shouldBeHidden]|| !animatedCopy)
  {
    v39 = animatedCopy;
    v41 = venueCopy;
    v15 = objc_opt_new();
    v16 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v40 = v14;
    v17 = v14;
    v18 = [v17 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v46;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v46 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v45 + 1) + 8 * i);
          floorOrdinals = [v22 floorOrdinals];
          [v16 addObjectsFromArray:floorOrdinals];

          floorNames = [v22 floorNames];
          [v15 addEntriesFromDictionary:floorNames];
        }

        v19 = [v17 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v19);
    }

    allObjects = [v16 allObjects];
    v26 = [allObjects sortedArrayUsingSelector:"compare:"];
    reverseObjectEnumerator = [v26 reverseObjectEnumerator];
    allObjects2 = [reverseObjectEnumerator allObjects];

    if (!update)
    {
      floorOrdinals2 = [(MacVenueControlsViewController *)self floorOrdinals];
      if ([NSArray array:allObjects2 isEqualToArray:floorOrdinals2])
      {
        shortFloorNames = [(MacVenueControlsViewController *)self shortFloorNames];
        v31 = [NSDictionary dictionary:v15 isEqualToDictionary:shortFloorNames];

        if (v31)
        {
          [(MacVenueControlsViewController *)self updateHiddenAnimated:v39 completion:0];
          v14 = v40;
          venueCopy = v41;
LABEL_30:

          goto LABEL_31;
        }
      }

      else
      {
      }
    }

    objc_storeStrong(&self->_floorOrdinals, allObjects2);
    objc_storeStrong(&self->_shortFloorNames, v15);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100C948BC;
    v44[3] = &unk_101661B18;
    v44[4] = self;
    v35 = objc_retainBlock(v44);
    v36 = v35;
    if (v39)
    {
      if (![(MacVenueControlsViewController *)self isHidden])
      {
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_100C948C4;
        v42[3] = &unk_101661760;
        v43 = v36;
        [UIView _animateUsingDefaultTimingWithOptions:0 animations:v42 completion:0];

        goto LABEL_29;
      }

      v36[2](v36);
      selfCopy3 = self;
      v38 = 1;
    }

    else
    {
      (v35[2])(v35);
      selfCopy3 = self;
      v38 = 0;
    }

    [(MacVenueControlsViewController *)selfCopy3 updateHiddenAnimated:v38 completion:0];
LABEL_29:
    v14 = v40;
    venueCopy = v41;

    goto LABEL_30;
  }

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100C948A8;
  v49[3] = &unk_101661AE0;
  v49[4] = self;
  updateCopy = update;
  v32 = v49;
  selfCopy4 = self;
  v34 = 1;
LABEL_21:
  [(MacVenueControlsViewController *)selfCopy4 updateHiddenAnimated:v34 completion:v32];
LABEL_31:
}

- (void)updateVenueAndBuildingsAnimated:(BOOL)animated forced:(BOOL)forced
{
  forcedCopy = forced;
  animatedCopy = animated;
  venuesManager = [(MacVenueControlsViewController *)self venuesManager];
  venueWithFocus = [venuesManager venueWithFocus];
  venuesManager2 = [(MacVenueControlsViewController *)self venuesManager];
  venueBuildingWithFocus = [venuesManager2 venueBuildingWithFocus];
  [(MacVenueControlsViewController *)self setVenue:venueWithFocus focusedBuilding:venueBuildingWithFocus animated:animatedCopy forceUpdate:forcedCopy];
}

- (void)toggleHidden
{
  if ([(MacVenueControlsViewController *)self isVisible])
  {
    v3 = [(MacVenueControlsViewController *)self isHidden]^ 1;

    [(MacVenueControlsViewController *)self setHidden:v3];
  }
}

- (void)updateHiddenAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  shouldBeHidden = [(MacVenueControlsViewController *)self shouldBeHidden];
  if (shouldBeHidden == [(MacVenueControlsViewController *)self isHidden])
  {
    goto LABEL_8;
  }

  if (!animated)
  {
    if (!shouldBeHidden)
    {
      [(MacVenueControlsViewController *)self didStartShowing];
      [(MacVenueControlsViewController *)self setHidden:0];
      [(MacVenueControlsViewController *)self didFinishShowing];
      if (!completionCopy)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    [(MacVenueControlsViewController *)self didStartHiding];
    [(MacVenueControlsViewController *)self setHidden:1];
    [(MacVenueControlsViewController *)self setOpen:0 animated:0];
    [(MacVenueControlsViewController *)self didFinishHiding];
LABEL_8:
    if (!completionCopy)
    {
      goto LABEL_10;
    }

LABEL_9:
    completionCopy[2](completionCopy);
    goto LABEL_10;
  }

  if ((shouldBeHidden & 1) == 0)
  {
    view = [(MacVenueControlsViewController *)self view];
    [view setAlpha:0.0];

    [(MacVenueControlsViewController *)self setHidden:0];
    view2 = [(MacVenueControlsViewController *)self view];
    [view2 layoutIfNeeded];
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100C94B9C;
  v13[3] = &unk_101661AE0;
  v14 = shouldBeHidden;
  v13[4] = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100C94C60;
  v10[3] = &unk_10164FD60;
  v10[4] = self;
  v12 = shouldBeHidden;
  v11 = completionCopy;
  [UIView _animateUsingDefaultTimingWithOptions:0 animations:v13 completion:v10];

LABEL_10:
}

- (BOOL)shouldBeHidden
{
  if ([(MacVenueControlsViewController *)self forceHidden])
  {
    return 1;
  }

  venue = [(MacVenueControlsViewController *)self venue];
  if (venue)
  {
    floorOrdinals = [(MacVenueControlsViewController *)self floorOrdinals];
    v3 = [floorOrdinals count] < 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(MacVenueControlsViewController *)self setVisible:0];
  v5.receiver = self;
  v5.super_class = MacVenueControlsViewController;
  [(MacVenueControlsViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MacVenueControlsViewController;
  [(MacVenueControlsViewController *)&v4 viewWillAppear:appear];
  [(MacVenueControlsViewController *)self setVisible:1];
  [(MacVenueControlsViewController *)self toggleHidden];
  [(MacVenueControlsViewController *)self updateVenueAndBuildingsAnimated:0 forced:1];
}

- (void)didChangeFocusedVenue:(id)venue focusedBuilding:(id)building displayedFloorOrdinal:(signed __int16)ordinal
{
  ordinalCopy = ordinal;
  [(MacVenueControlsViewController *)self setVenue:venue focusedBuilding:building animated:1 forceUpdate:0];
  if (venue)
  {
    [(MacVenueControlsViewController *)self updateBrowseVenueText];

    [(MacVenueControlsViewController *)self setDisplayedFloorOrdinal:ordinalCopy];
  }
}

- (BOOL)lacksSearchResultsForFloorOrdinal:(id)ordinal
{
  if (!ordinal)
  {
    return 0;
  }

  ordinalCopy = ordinal;
  floorViewControllerDelegate = [(MacVenueControlsViewController *)self floorViewControllerDelegate];
  venue = [(MacVenueControlsViewController *)self venue];
  shortValue = [ordinalCopy shortValue];

  LOBYTE(ordinalCopy) = [floorViewControllerDelegate lacksSearchResultsInVenue:venue forFloorOrdinal:shortValue];
  return ordinalCopy;
}

- (void)setForceHidden:(BOOL)hidden animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  completionCopy = completion;
  v9 = completionCopy;
  if (self->_forceHidden == hiddenCopy)
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    v10 = completionCopy;
    (*(completionCopy + 2))(completionCopy);
  }

  else
  {
    self->_forceHidden = hiddenCopy;
    v10 = completionCopy;
    [(MacVenueControlsViewController *)self updateHiddenAnimated:animatedCopy completion:completionCopy];
  }

  v9 = v10;
LABEL_6:
}

- (BOOL)isHidden
{
  view = [(MacVenueControlsViewController *)self view];
  isHidden = [view isHidden];

  return isHidden;
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  view = [(MacVenueControlsViewController *)self view];
  isHidden = [view isHidden];

  if (isHidden != hiddenCopy)
  {
    view2 = [(MacVenueControlsViewController *)self view];
    [view2 setHidden:hiddenCopy];
  }
}

- (void)setOpen:(BOOL)open animated:(BOOL)animated
{
  if (self->_open != open)
  {
    openCopy = open;
    self->_open = open;
    [(MacVenueControlsViewController *)self toggleHidden];
    if (openCopy)
    {

      [(MacVenueControlsViewController *)self didOpen];
    }

    else
    {

      [(MacVenueControlsViewController *)self didClose];
    }
  }
}

- (void)viewDidLoad
{
  v67.receiver = self;
  v67.super_class = MacVenueControlsViewController;
  [(MacVenueControlsViewController *)&v67 viewDidLoad];
  view = [(MacVenueControlsViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [MapsTheme visualEffectViewAllowingBlur:1];
  effectView = self->_effectView;
  self->_effectView = v4;

  [(UIVisualEffectView *)self->_effectView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIVisualEffectView *)self->_effectView _setCornerRadius:1 continuous:15 maskedCorners:9.0];
  view2 = [(MacVenueControlsViewController *)self view];
  [view2 addSubview:self->_effectView];

  contentView = [(UIVisualEffectView *)self->_effectView contentView];
  v8 = +[UIFont system16];
  v9 = [UIColor colorNamed:@"VenueBrowseFloorPickerTextColor"];
  v10 = [UIButton buttonWithType:0];
  browseButton = self->_browseButton;
  self->_browseButton = v10;

  [(UIButton *)self->_browseButton setAccessibilityIdentifier:@"VenueBrowseButton"];
  [(UIButton *)self->_browseButton setTranslatesAutoresizingMaskIntoConstraints:0];
  titleLabel = [(UIButton *)self->_browseButton titleLabel];
  [titleLabel setFont:v8];

  [(UIButton *)self->_browseButton setContentEdgeInsets:5.0, 15.0, 5.0, 15.0];
  [(UIButton *)self->_browseButton setTitleColor:v9 forState:0];
  [(UIButton *)self->_browseButton addTarget:self action:"browseVenue:" forControlEvents:64];
  [contentView addSubview:self->_browseButton];
  v13 = objc_alloc_init(HairlineView);
  [(HairlineView *)v13 setVertical:1];
  [(HairlineView *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = v13;
  [contentView addSubview:v13];
  v15 = [MapsRightImageButton buttonWithType:0];
  floorPicker = self->_floorPicker;
  self->_floorPicker = v15;

  [(UIButton *)self->_floorPicker setAccessibilityIdentifier:@"FloorPickerButton"];
  [(UIButton *)self->_floorPicker setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_floorPicker setContentEdgeInsets:5.0, 15.0, 5.0, 15.0];
  v65 = v9;
  [(UIButton *)self->_floorPicker setTitleColor:v9 forState:0];
  titleLabel2 = [(UIButton *)self->_floorPicker titleLabel];
  v66 = v8;
  [titleLabel2 setFont:v8];

  v18 = self->_floorPicker;
  v19 = [UIImageSymbolConfiguration configurationWithFont:v8 scale:2];
  v20 = [UIImage systemImageNamed:@"chevron.up.chevron.down" withConfiguration:v19];
  [(UIButton *)v18 setImage:v20 forState:0];

  [(UIButton *)self->_floorPicker setTintColor:v9];
  [(UIButton *)self->_floorPicker setShowsMenuAsPrimaryAction:1];
  [contentView addSubview:self->_floorPicker];
  view3 = [(MacVenueControlsViewController *)self view];
  heightAnchor = [view3 heightAnchor];
  heightAnchor2 = [(UIVisualEffectView *)self->_effectView heightAnchor];
  v61 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v68[0] = v61;
  view4 = [(MacVenueControlsViewController *)self view];
  widthAnchor = [view4 widthAnchor];
  widthAnchor2 = [(UIVisualEffectView *)self->_effectView widthAnchor];
  v57 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v68[1] = v57;
  leadingAnchor = [(UIButton *)self->_browseButton leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v54 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v68[2] = v54;
  topAnchor = [(UIButton *)self->_browseButton topAnchor];
  topAnchor2 = [contentView topAnchor];
  v51 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v68[3] = v51;
  bottomAnchor = [(UIButton *)self->_browseButton bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v48 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v68[4] = v48;
  leadingAnchor3 = [(HairlineView *)v14 leadingAnchor];
  trailingAnchor = [(UIButton *)self->_browseButton trailingAnchor];
  v44 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor];
  v68[5] = v44;
  centerYAnchor = [(HairlineView *)v14 centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v40 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v68[6] = v40;
  topAnchor3 = [(HairlineView *)v14 topAnchor];
  topAnchor4 = [contentView topAnchor];
  v37 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:8.0];
  v68[7] = v37;
  v47 = v14;
  bottomAnchor3 = [(HairlineView *)v14 bottomAnchor];
  bottomAnchor4 = [contentView bottomAnchor];
  v34 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-8.0];
  v68[8] = v34;
  leadingAnchor4 = [(UIButton *)self->_floorPicker leadingAnchor];
  trailingAnchor2 = [(HairlineView *)v14 trailingAnchor];
  v31 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor2];
  v68[9] = v31;
  trailingAnchor3 = [(UIButton *)self->_floorPicker trailingAnchor];
  trailingAnchor4 = [contentView trailingAnchor];
  v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v68[10] = v22;
  topAnchor5 = [(UIButton *)self->_floorPicker topAnchor];
  v41 = contentView;
  topAnchor6 = [contentView topAnchor];
  v25 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v68[11] = v25;
  bottomAnchor5 = [(UIButton *)self->_floorPicker bottomAnchor];
  bottomAnchor6 = [v41 bottomAnchor];
  v28 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v68[12] = v28;
  v29 = [NSArray arrayWithObjects:v68 count:13];
  [NSLayoutConstraint activateConstraints:v29];

  [(MapsThemeViewController *)self updateTheme];
}

- (MacVenueControlsViewController)initWithVenueFloorViewDelegate:(id)delegate venueBrowseDelegate:(id)browseDelegate venuesManager:(id)manager
{
  delegateCopy = delegate;
  browseDelegateCopy = browseDelegate;
  managerCopy = manager;
  v16.receiver = self;
  v16.super_class = MacVenueControlsViewController;
  v11 = [(MacVenueControlsViewController *)&v16 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_floorViewControllerDelegate, delegateCopy);
    objc_storeWeak(&v12->_browseViewControllerDelegate, browseDelegateCopy);
    objc_storeWeak(&v12->_venuesManager, managerCopy);
    floorOrdinals = v12->_floorOrdinals;
    v12->_floorOrdinals = &__NSArray0__struct;

    shortFloorNames = v12->_shortFloorNames;
    v12->_shortFloorNames = &__NSDictionary0__struct;
  }

  return v12;
}

@end
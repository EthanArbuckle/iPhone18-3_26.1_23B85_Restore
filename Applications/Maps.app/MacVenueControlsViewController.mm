@interface MacVenueControlsViewController
- (BOOL)isHidden;
- (BOOL)lacksSearchResultsForFloorOrdinal:(id)a3;
- (BOOL)shouldBeHidden;
- (BrowseVenueViewControllerDelegate)browseViewControllerDelegate;
- (MacVenueControlsViewController)initWithVenueFloorViewDelegate:(id)a3 venueBrowseDelegate:(id)a4 venuesManager:(id)a5;
- (VenueFloorViewControllerDelegate)floorViewControllerDelegate;
- (VenuesManager)venuesManager;
- (void)browseVenue:(id)a3;
- (void)didChangeConstraints;
- (void)didChangeFocusedVenue:(id)a3 focusedBuilding:(id)a4 displayedFloorOrdinal:(signed __int16)a5;
- (void)didClose;
- (void)didFinishHiding;
- (void)didFinishShowing;
- (void)didOpen;
- (void)didStartHiding;
- (void)didStartShowing;
- (void)selectedFloorOrdinal:(id)a3;
- (void)setDisplayedFloorOrdinal:(signed __int16)a3;
- (void)setForceHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setHidden:(BOOL)a3;
- (void)setOpen:(BOOL)a3 animated:(BOOL)a4;
- (void)setVenue:(id)a3 focusedBuilding:(id)a4 animated:(BOOL)a5 forceUpdate:(BOOL)a6;
- (void)toggleHidden;
- (void)updateBrowseVenueText;
- (void)updateDisplayedFloor;
- (void)updateHiddenAnimated:(BOOL)a3 completion:(id)a4;
- (void)updateVenueAndBuildingsAnimated:(BOOL)a3 forced:(BOOL)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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
  v3 = [(MacVenueControlsViewController *)self floorViewControllerDelegate];
  [v3 venueFloorViewControllerDidClose:self];
}

- (void)didOpen
{
  v3 = [(MacVenueControlsViewController *)self floorViewControllerDelegate];
  [v3 venueFloorViewControllerDidOpen:self];
}

- (void)didFinishShowing
{
  v3 = [(MacVenueControlsViewController *)self floorViewControllerDelegate];
  [v3 venueFloorViewControllerDidFinishShowing:self];
}

- (void)didStartShowing
{
  v3 = [(MacVenueControlsViewController *)self floorViewControllerDelegate];
  [v3 venueFloorViewControllerDidStartShowing:self];
}

- (void)didFinishHiding
{
  v3 = [(MacVenueControlsViewController *)self floorViewControllerDelegate];
  [v3 venueFloorViewControllerDidFinishHiding:self];
}

- (void)didStartHiding
{
  v3 = [(MacVenueControlsViewController *)self floorViewControllerDelegate];
  [v3 venueFloorViewControllerDidStartHiding:self];
}

- (void)didChangeConstraints
{
  v3 = [(MacVenueControlsViewController *)self floorViewControllerDelegate];
  [v3 venueFloorViewControllerDidChangeConstraints:self];
}

- (void)browseVenue:(id)a3
{
  v3 = [(MacVenueControlsViewController *)self browseViewControllerDelegate];
  [v3 viewControllerDidSelectBrowseVenue:0];
}

- (void)selectedFloorOrdinal:(id)a3
{
  v4 = a3;
  v5 = [(MacVenueControlsViewController *)self shortFloorNames];
  v7 = [v5 objectForKeyedSubscript:v4];

  v6 = [(MacVenueControlsViewController *)self floorPicker];
  [v6 setTitle:v7 forState:0];
}

- (void)setDisplayedFloorOrdinal:(signed __int16)a3
{
  v3 = a3;
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
        v10 = [(MacVenueControlsViewController *)self shortFloorNames];
        v11 = [v10 objectForKeyedSubscript:v9];

        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100C941A4;
        v21[3] = &unk_10164FD88;
        v21[4] = self;
        v21[5] = v9;
        v12 = v11;
        v22 = v12;
        v13 = [UIAction actionWithTitle:v12 image:0 identifier:v12 handler:v21];
        [v13 setState:{objc_msgSend(v9, "shortValue") == v3}];
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

  v14 = [(MacVenueControlsViewController *)self shortFloorNames];
  v15 = [NSNumber numberWithShort:v3];
  v16 = [v14 objectForKeyedSubscript:v15];

  v17 = [(MacVenueControlsViewController *)self floorPicker];
  [v17 setTitle:v16 forState:0];

  v18 = [UIMenu menuWithTitle:&stru_1016631F0 children:v20];
  [(UIButton *)self->_floorPicker setMenu:v18];
}

- (void)updateBrowseVenueText
{
  v3 = [(MacVenueControlsViewController *)self venue];
  v9 = [v3 shortName];

  v4 = [v9 length];
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 localizedStringForKey:@"Browse [venue with name]" value:@"localized string not found" table:0];

    v8 = [NSString stringWithFormat:v7, v9];
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
  v3 = [(MacVenueControlsViewController *)self venue];

  if (v3)
  {
    v5 = [(MacVenueControlsViewController *)self venuesManager];
    v4 = [(MacVenueControlsViewController *)self venue];
    -[MacVenueControlsViewController setDisplayedFloorOrdinal:](self, "setDisplayedFloorOrdinal:", [v5 displayedFloorOrdinalForBuildingsInVenue:v4]);
  }
}

- (void)setVenue:(id)a3 focusedBuilding:(id)a4 animated:(BOOL)a5 forceUpdate:(BOOL)a6
{
  v7 = a5;
  v10 = a3;
  v11 = [(VKVenueFeatureMarker *)v10 buildings];
  v12 = v11;
  v13 = &__NSArray0__struct;
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  if (!a6 && self->_venue == v10)
  {
    v33 = self;
    v34 = v7;
    v32 = 0;
    goto LABEL_21;
  }

  objc_storeStrong(&self->_venue, a3);
  [(MacVenueControlsViewController *)self updateBrowseVenueText];
  if ([(MacVenueControlsViewController *)self isHidden]|| ![(MacVenueControlsViewController *)self shouldBeHidden]|| !v7)
  {
    v39 = v7;
    v41 = v10;
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
          v23 = [v22 floorOrdinals];
          [v16 addObjectsFromArray:v23];

          v24 = [v22 floorNames];
          [v15 addEntriesFromDictionary:v24];
        }

        v19 = [v17 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v19);
    }

    v25 = [v16 allObjects];
    v26 = [v25 sortedArrayUsingSelector:"compare:"];
    v27 = [v26 reverseObjectEnumerator];
    v28 = [v27 allObjects];

    if (!a6)
    {
      v29 = [(MacVenueControlsViewController *)self floorOrdinals];
      if ([NSArray array:v28 isEqualToArray:v29])
      {
        v30 = [(MacVenueControlsViewController *)self shortFloorNames];
        v31 = [NSDictionary dictionary:v15 isEqualToDictionary:v30];

        if (v31)
        {
          [(MacVenueControlsViewController *)self updateHiddenAnimated:v39 completion:0];
          v14 = v40;
          v10 = v41;
LABEL_30:

          goto LABEL_31;
        }
      }

      else
      {
      }
    }

    objc_storeStrong(&self->_floorOrdinals, v28);
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
      v37 = self;
      v38 = 1;
    }

    else
    {
      (v35[2])(v35);
      v37 = self;
      v38 = 0;
    }

    [(MacVenueControlsViewController *)v37 updateHiddenAnimated:v38 completion:0];
LABEL_29:
    v14 = v40;
    v10 = v41;

    goto LABEL_30;
  }

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100C948A8;
  v49[3] = &unk_101661AE0;
  v49[4] = self;
  v50 = a6;
  v32 = v49;
  v33 = self;
  v34 = 1;
LABEL_21:
  [(MacVenueControlsViewController *)v33 updateHiddenAnimated:v34 completion:v32];
LABEL_31:
}

- (void)updateVenueAndBuildingsAnimated:(BOOL)a3 forced:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v10 = [(MacVenueControlsViewController *)self venuesManager];
  v7 = [v10 venueWithFocus];
  v8 = [(MacVenueControlsViewController *)self venuesManager];
  v9 = [v8 venueBuildingWithFocus];
  [(MacVenueControlsViewController *)self setVenue:v7 focusedBuilding:v9 animated:v5 forceUpdate:v4];
}

- (void)toggleHidden
{
  if ([(MacVenueControlsViewController *)self isVisible])
  {
    v3 = [(MacVenueControlsViewController *)self isHidden]^ 1;

    [(MacVenueControlsViewController *)self setHidden:v3];
  }
}

- (void)updateHiddenAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(MacVenueControlsViewController *)self shouldBeHidden];
  if (v7 == [(MacVenueControlsViewController *)self isHidden])
  {
    goto LABEL_8;
  }

  if (!a3)
  {
    if (!v7)
    {
      [(MacVenueControlsViewController *)self didStartShowing];
      [(MacVenueControlsViewController *)self setHidden:0];
      [(MacVenueControlsViewController *)self didFinishShowing];
      if (!v6)
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
    if (!v6)
    {
      goto LABEL_10;
    }

LABEL_9:
    v6[2](v6);
    goto LABEL_10;
  }

  if ((v7 & 1) == 0)
  {
    v8 = [(MacVenueControlsViewController *)self view];
    [v8 setAlpha:0.0];

    [(MacVenueControlsViewController *)self setHidden:0];
    v9 = [(MacVenueControlsViewController *)self view];
    [v9 layoutIfNeeded];
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100C94B9C;
  v13[3] = &unk_101661AE0;
  v14 = v7;
  v13[4] = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100C94C60;
  v10[3] = &unk_10164FD60;
  v10[4] = self;
  v12 = v7;
  v11 = v6;
  [UIView _animateUsingDefaultTimingWithOptions:0 animations:v13 completion:v10];

LABEL_10:
}

- (BOOL)shouldBeHidden
{
  if ([(MacVenueControlsViewController *)self forceHidden])
  {
    return 1;
  }

  v4 = [(MacVenueControlsViewController *)self venue];
  if (v4)
  {
    v5 = [(MacVenueControlsViewController *)self floorOrdinals];
    v3 = [v5 count] < 2;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(MacVenueControlsViewController *)self setVisible:0];
  v5.receiver = self;
  v5.super_class = MacVenueControlsViewController;
  [(MacVenueControlsViewController *)&v5 viewDidDisappear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MacVenueControlsViewController;
  [(MacVenueControlsViewController *)&v4 viewWillAppear:a3];
  [(MacVenueControlsViewController *)self setVisible:1];
  [(MacVenueControlsViewController *)self toggleHidden];
  [(MacVenueControlsViewController *)self updateVenueAndBuildingsAnimated:0 forced:1];
}

- (void)didChangeFocusedVenue:(id)a3 focusedBuilding:(id)a4 displayedFloorOrdinal:(signed __int16)a5
{
  v5 = a5;
  [(MacVenueControlsViewController *)self setVenue:a3 focusedBuilding:a4 animated:1 forceUpdate:0];
  if (a3)
  {
    [(MacVenueControlsViewController *)self updateBrowseVenueText];

    [(MacVenueControlsViewController *)self setDisplayedFloorOrdinal:v5];
  }
}

- (BOOL)lacksSearchResultsForFloorOrdinal:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(MacVenueControlsViewController *)self floorViewControllerDelegate];
  v6 = [(MacVenueControlsViewController *)self venue];
  v7 = [v4 shortValue];

  LOBYTE(v4) = [v5 lacksSearchResultsInVenue:v6 forFloorOrdinal:v7];
  return v4;
}

- (void)setForceHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = v8;
  if (self->_forceHidden == v6)
  {
    if (!v8)
    {
      goto LABEL_6;
    }

    v10 = v8;
    (*(v8 + 2))(v8);
  }

  else
  {
    self->_forceHidden = v6;
    v10 = v8;
    [(MacVenueControlsViewController *)self updateHiddenAnimated:v5 completion:v8];
  }

  v9 = v10;
LABEL_6:
}

- (BOOL)isHidden
{
  v2 = [(MacVenueControlsViewController *)self view];
  v3 = [v2 isHidden];

  return v3;
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(MacVenueControlsViewController *)self view];
  v6 = [v5 isHidden];

  if (v6 != v3)
  {
    v7 = [(MacVenueControlsViewController *)self view];
    [v7 setHidden:v3];
  }
}

- (void)setOpen:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_open != a3)
  {
    v4 = a3;
    self->_open = a3;
    [(MacVenueControlsViewController *)self toggleHidden];
    if (v4)
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
  v3 = [(MacVenueControlsViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [MapsTheme visualEffectViewAllowingBlur:1];
  effectView = self->_effectView;
  self->_effectView = v4;

  [(UIVisualEffectView *)self->_effectView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIVisualEffectView *)self->_effectView _setCornerRadius:1 continuous:15 maskedCorners:9.0];
  v6 = [(MacVenueControlsViewController *)self view];
  [v6 addSubview:self->_effectView];

  v7 = [(UIVisualEffectView *)self->_effectView contentView];
  v8 = +[UIFont system16];
  v9 = [UIColor colorNamed:@"VenueBrowseFloorPickerTextColor"];
  v10 = [UIButton buttonWithType:0];
  browseButton = self->_browseButton;
  self->_browseButton = v10;

  [(UIButton *)self->_browseButton setAccessibilityIdentifier:@"VenueBrowseButton"];
  [(UIButton *)self->_browseButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [(UIButton *)self->_browseButton titleLabel];
  [v12 setFont:v8];

  [(UIButton *)self->_browseButton setContentEdgeInsets:5.0, 15.0, 5.0, 15.0];
  [(UIButton *)self->_browseButton setTitleColor:v9 forState:0];
  [(UIButton *)self->_browseButton addTarget:self action:"browseVenue:" forControlEvents:64];
  [v7 addSubview:self->_browseButton];
  v13 = objc_alloc_init(HairlineView);
  [(HairlineView *)v13 setVertical:1];
  [(HairlineView *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = v13;
  [v7 addSubview:v13];
  v15 = [MapsRightImageButton buttonWithType:0];
  floorPicker = self->_floorPicker;
  self->_floorPicker = v15;

  [(UIButton *)self->_floorPicker setAccessibilityIdentifier:@"FloorPickerButton"];
  [(UIButton *)self->_floorPicker setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_floorPicker setContentEdgeInsets:5.0, 15.0, 5.0, 15.0];
  v65 = v9;
  [(UIButton *)self->_floorPicker setTitleColor:v9 forState:0];
  v17 = [(UIButton *)self->_floorPicker titleLabel];
  v66 = v8;
  [v17 setFont:v8];

  v18 = self->_floorPicker;
  v19 = [UIImageSymbolConfiguration configurationWithFont:v8 scale:2];
  v20 = [UIImage systemImageNamed:@"chevron.up.chevron.down" withConfiguration:v19];
  [(UIButton *)v18 setImage:v20 forState:0];

  [(UIButton *)self->_floorPicker setTintColor:v9];
  [(UIButton *)self->_floorPicker setShowsMenuAsPrimaryAction:1];
  [v7 addSubview:self->_floorPicker];
  v64 = [(MacVenueControlsViewController *)self view];
  v63 = [v64 heightAnchor];
  v62 = [(UIVisualEffectView *)self->_effectView heightAnchor];
  v61 = [v63 constraintEqualToAnchor:v62];
  v68[0] = v61;
  v60 = [(MacVenueControlsViewController *)self view];
  v59 = [v60 widthAnchor];
  v58 = [(UIVisualEffectView *)self->_effectView widthAnchor];
  v57 = [v59 constraintEqualToAnchor:v58];
  v68[1] = v57;
  v56 = [(UIButton *)self->_browseButton leadingAnchor];
  v55 = [v7 leadingAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v68[2] = v54;
  v53 = [(UIButton *)self->_browseButton topAnchor];
  v52 = [v7 topAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v68[3] = v51;
  v50 = [(UIButton *)self->_browseButton bottomAnchor];
  v49 = [v7 bottomAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v68[4] = v48;
  v46 = [(HairlineView *)v14 leadingAnchor];
  v45 = [(UIButton *)self->_browseButton trailingAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v68[5] = v44;
  v43 = [(HairlineView *)v14 centerYAnchor];
  v42 = [v7 centerYAnchor];
  v40 = [v43 constraintEqualToAnchor:v42];
  v68[6] = v40;
  v39 = [(HairlineView *)v14 topAnchor];
  v38 = [v7 topAnchor];
  v37 = [v39 constraintEqualToAnchor:v38 constant:8.0];
  v68[7] = v37;
  v47 = v14;
  v36 = [(HairlineView *)v14 bottomAnchor];
  v35 = [v7 bottomAnchor];
  v34 = [v36 constraintEqualToAnchor:v35 constant:-8.0];
  v68[8] = v34;
  v33 = [(UIButton *)self->_floorPicker leadingAnchor];
  v32 = [(HairlineView *)v14 trailingAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v68[9] = v31;
  v30 = [(UIButton *)self->_floorPicker trailingAnchor];
  v21 = [v7 trailingAnchor];
  v22 = [v30 constraintEqualToAnchor:v21];
  v68[10] = v22;
  v23 = [(UIButton *)self->_floorPicker topAnchor];
  v41 = v7;
  v24 = [v7 topAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v68[11] = v25;
  v26 = [(UIButton *)self->_floorPicker bottomAnchor];
  v27 = [v41 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  v68[12] = v28;
  v29 = [NSArray arrayWithObjects:v68 count:13];
  [NSLayoutConstraint activateConstraints:v29];

  [(MapsThemeViewController *)self updateTheme];
}

- (MacVenueControlsViewController)initWithVenueFloorViewDelegate:(id)a3 venueBrowseDelegate:(id)a4 venuesManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = MacVenueControlsViewController;
  v11 = [(MacVenueControlsViewController *)&v16 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_floorViewControllerDelegate, v8);
    objc_storeWeak(&v12->_browseViewControllerDelegate, v9);
    objc_storeWeak(&v12->_venuesManager, v10);
    floorOrdinals = v12->_floorOrdinals;
    v12->_floorOrdinals = &__NSArray0__struct;

    shortFloorNames = v12->_shortFloorNames;
    v12->_shortFloorNames = &__NSDictionary0__struct;
  }

  return v12;
}

@end
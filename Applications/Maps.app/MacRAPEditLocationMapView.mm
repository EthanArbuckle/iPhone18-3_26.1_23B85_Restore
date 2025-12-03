@interface MacRAPEditLocationMapView
- (MacRAPEditLocationMapView)initWithMapRect:(id)rect viewMode:(int64_t)mode markerViewAttributes:(id)attributes;
- (id)mapActionForViewMode:(int64_t)mode;
- (void)setupDescriptionViewAndAdditionalConstraints;
- (void)setupMenuActions;
@end

@implementation MacRAPEditLocationMapView

- (void)setupDescriptionViewAndAdditionalConstraints
{
  descriptionView = [(RAPEditLocationMapView *)self descriptionView];
  leadingAnchor = [descriptionView leadingAnchor];
  mapView = [(RAPEditLocationMapView *)self mapView];
  leadingAnchor2 = [mapView leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:30.0];
  v19[0] = v14;
  descriptionView2 = [(RAPEditLocationMapView *)self descriptionView];
  trailingAnchor = [descriptionView2 trailingAnchor];
  mapView2 = [(RAPEditLocationMapView *)self mapView];
  trailingAnchor2 = [mapView2 trailingAnchor];
  v6 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-30.0];
  v19[1] = v6;
  descriptionView3 = [(RAPEditLocationMapView *)self descriptionView];
  bottomAnchor = [descriptionView3 bottomAnchor];
  mapView3 = [(RAPEditLocationMapView *)self mapView];
  bottomAnchor2 = [mapView3 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-15.0];
  v19[2] = v11;
  v12 = [NSArray arrayWithObjects:v19 count:3];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)setupMenuActions
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [&off_1016ED2F8 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(&off_1016ED2F8);
        }

        v8 = -[MacRAPEditLocationMapView mapActionForViewMode:](self, "mapActionForViewMode:", [*(*(&v12 + 1) + 8 * v7) unsignedIntValue]);
        [v3 addObject:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [&off_1016ED2F8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v3 copy];
  v10 = [UIMenu menuWithTitle:&stru_1016631F0 children:v9];
  mapModeButton = [(MacRAPEditLocationMapView *)self mapModeButton];
  [mapModeButton setMenu:v10];
}

- (id)mapActionForViewMode:(int64_t)mode
{
  if (mode <= 7 && ((0x8Du >> mode) & 1) != 0)
  {
    v5 = *(&off_101632510 + mode);
    v6 = *(&off_101632550 + mode);
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:v5 value:@"localized string not found" table:0];

    v9 = [UIImage systemImageNamed:v6];
    v10 = v9;
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      objc_initWeak(&location, self);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100A39340;
      v14[3] = &unk_101658B58;
      objc_copyWeak(v15, &location);
      v15[1] = mode;
      v12 = [UIAction actionWithTitle:v8 image:v10 identifier:0 handler:v14];
      [v12 setState:{-[RAPEditLocationMapView viewMode](self, "viewMode") == mode}];
      objc_destroyWeak(v15);
      objc_destroyWeak(&location);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0;
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (MacRAPEditLocationMapView)initWithMapRect:(id)rect viewMode:(int64_t)mode markerViewAttributes:(id)attributes
{
  v47.receiver = self;
  v47.super_class = MacRAPEditLocationMapView;
  v5 = [(RAPEditLocationMapView *)&v47 initWithMapRect:mode viewMode:attributes markerViewAttributes:rect.var0.var0, rect.var0.var1, rect.var1.var0, rect.var1.var1];
  v6 = v5;
  if (v5)
  {
    floatingControlsView = [(RAPEditLocationMapView *)v5 floatingControlsView];
    [floatingControlsView setHidden:1];

    descriptionView = [(RAPEditLocationMapView *)v6 descriptionView];
    layer = [descriptionView layer];
    [layer setCornerRadius:20.0];

    descriptionView2 = [(RAPEditLocationMapView *)v6 descriptionView];
    layer2 = [descriptionView2 layer];
    [layer2 setMasksToBounds:1];

    v12 = [MapsThemeButton buttonWithType:0];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [UIFont systemFontOfSize:20.0];
    v14 = [UIImageSymbolConfiguration configurationWithFont:v13 scale:2];
    v15 = [UIImage systemImageNamed:@"map.fill" withConfiguration:v14];
    [v12 setImage:v15 forState:0];

    v16 = +[UIColor systemGrayColor];
    [v12 setTintColor:v16];

    [v12 setShowsMenuAsPrimaryAction:1];
    [(MacRAPEditLocationMapView *)v6 setMapModeButton:v12];
    v17 = [[CardView alloc] initAllowingBlurredForButton:1 buttonBackgroundType:0];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v17 setLayoutStyle:6];
    contentView = [v17 contentView];
    [contentView addSubview:v12];

    mapView = [(RAPEditLocationMapView *)v6 mapView];
    [mapView addSubview:v17];

    topAnchor = [v12 topAnchor];
    topAnchor2 = [v17 topAnchor];
    v44 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v48[0] = v44;
    bottomAnchor = [v12 bottomAnchor];
    bottomAnchor2 = [v17 bottomAnchor];
    v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v48[1] = v41;
    leadingAnchor = [v12 leadingAnchor];
    leadingAnchor2 = [v17 leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v48[2] = v38;
    trailingAnchor = [v12 trailingAnchor];
    trailingAnchor2 = [v17 trailingAnchor];
    v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v48[3] = v35;
    bottomAnchor3 = [v17 bottomAnchor];
    mapView2 = [(RAPEditLocationMapView *)v6 mapView];
    bottomAnchor4 = [mapView2 bottomAnchor];
    v31 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-15.0];
    v48[4] = v31;
    widthAnchor = [v17 widthAnchor];
    v29 = [widthAnchor constraintEqualToConstant:30.0];
    v48[5] = v29;
    widthAnchor2 = [v17 widthAnchor];
    heightAnchor = [v17 heightAnchor];
    v21 = [widthAnchor2 constraintEqualToAnchor:heightAnchor];
    v48[6] = v21;
    trailingAnchor3 = [v17 trailingAnchor];
    mapView3 = [(RAPEditLocationMapView *)v6 mapView];
    trailingAnchor4 = [mapView3 trailingAnchor];
    v25 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-15.0];
    v48[7] = v25;
    v26 = [NSArray arrayWithObjects:v48 count:8];
    [NSLayoutConstraint activateConstraints:v26];

    [(MacRAPEditLocationMapView *)v6 setupMenuActions];
  }

  return v6;
}

@end
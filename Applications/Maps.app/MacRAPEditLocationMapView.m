@interface MacRAPEditLocationMapView
- (MacRAPEditLocationMapView)initWithMapRect:(id)a3 viewMode:(int64_t)a4 markerViewAttributes:(id)a5;
- (id)mapActionForViewMode:(int64_t)a3;
- (void)setupDescriptionViewAndAdditionalConstraints;
- (void)setupMenuActions;
@end

@implementation MacRAPEditLocationMapView

- (void)setupDescriptionViewAndAdditionalConstraints
{
  v18 = [(RAPEditLocationMapView *)self descriptionView];
  v16 = [v18 leadingAnchor];
  v17 = [(RAPEditLocationMapView *)self mapView];
  v15 = [v17 leadingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15 constant:30.0];
  v19[0] = v14;
  v13 = [(RAPEditLocationMapView *)self descriptionView];
  v3 = [v13 trailingAnchor];
  v4 = [(RAPEditLocationMapView *)self mapView];
  v5 = [v4 trailingAnchor];
  v6 = [v3 constraintLessThanOrEqualToAnchor:v5 constant:-30.0];
  v19[1] = v6;
  v7 = [(RAPEditLocationMapView *)self descriptionView];
  v8 = [v7 bottomAnchor];
  v9 = [(RAPEditLocationMapView *)self mapView];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10 constant:-15.0];
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
  v11 = [(MacRAPEditLocationMapView *)self mapModeButton];
  [v11 setMenu:v10];
}

- (id)mapActionForViewMode:(int64_t)a3
{
  if (a3 <= 7 && ((0x8Du >> a3) & 1) != 0)
  {
    v5 = *(&off_101632510 + a3);
    v6 = *(&off_101632550 + a3);
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
      v15[1] = a3;
      v12 = [UIAction actionWithTitle:v8 image:v10 identifier:0 handler:v14];
      [v12 setState:{-[RAPEditLocationMapView viewMode](self, "viewMode") == a3}];
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

- (MacRAPEditLocationMapView)initWithMapRect:(id)a3 viewMode:(int64_t)a4 markerViewAttributes:(id)a5
{
  v47.receiver = self;
  v47.super_class = MacRAPEditLocationMapView;
  v5 = [(RAPEditLocationMapView *)&v47 initWithMapRect:a4 viewMode:a5 markerViewAttributes:a3.var0.var0, a3.var0.var1, a3.var1.var0, a3.var1.var1];
  v6 = v5;
  if (v5)
  {
    v7 = [(RAPEditLocationMapView *)v5 floatingControlsView];
    [v7 setHidden:1];

    v8 = [(RAPEditLocationMapView *)v6 descriptionView];
    v9 = [v8 layer];
    [v9 setCornerRadius:20.0];

    v10 = [(RAPEditLocationMapView *)v6 descriptionView];
    v11 = [v10 layer];
    [v11 setMasksToBounds:1];

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
    v18 = [v17 contentView];
    [v18 addSubview:v12];

    v19 = [(RAPEditLocationMapView *)v6 mapView];
    [v19 addSubview:v17];

    v46 = [v12 topAnchor];
    v45 = [v17 topAnchor];
    v44 = [v46 constraintEqualToAnchor:v45];
    v48[0] = v44;
    v43 = [v12 bottomAnchor];
    v42 = [v17 bottomAnchor];
    v41 = [v43 constraintEqualToAnchor:v42];
    v48[1] = v41;
    v40 = [v12 leadingAnchor];
    v39 = [v17 leadingAnchor];
    v38 = [v40 constraintEqualToAnchor:v39];
    v48[2] = v38;
    v37 = [v12 trailingAnchor];
    v36 = [v17 trailingAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v48[3] = v35;
    v33 = [v17 bottomAnchor];
    v34 = [(RAPEditLocationMapView *)v6 mapView];
    v32 = [v34 bottomAnchor];
    v31 = [v33 constraintEqualToAnchor:v32 constant:-15.0];
    v48[4] = v31;
    v30 = [v17 widthAnchor];
    v29 = [v30 constraintEqualToConstant:30.0];
    v48[5] = v29;
    v28 = [v17 widthAnchor];
    v20 = [v17 heightAnchor];
    v21 = [v28 constraintEqualToAnchor:v20];
    v48[6] = v21;
    v22 = [v17 trailingAnchor];
    v23 = [(RAPEditLocationMapView *)v6 mapView];
    v24 = [v23 trailingAnchor];
    v25 = [v22 constraintEqualToAnchor:v24 constant:-15.0];
    v48[7] = v25;
    v26 = [NSArray arrayWithObjects:v48 count:8];
    [NSLayoutConstraint activateConstraints:v26];

    [(MacRAPEditLocationMapView *)v6 setupMenuActions];
  }

  return v6;
}

@end
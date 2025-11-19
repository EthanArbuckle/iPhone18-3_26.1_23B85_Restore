@interface RAPFixedProblemViewController
- (RAPFixedProblemViewController)init;
- (id)labelMarkerOnMapViewWithText:(id)a3;
- (void)_setAnnotationsWithDetails:(id)a3;
- (void)_setHeaderText:(id)a3 footerText:(id)a4;
- (void)_updateMapViewIfLoaded;
- (void)_updateTextFieldIfLoaded;
- (void)addRouteOverlayOnView:(id)a3;
- (void)dealloc;
- (void)handleDone:(id)a3;
- (void)mapViewDidFinishRenderingMap:(id)a3 fullyRendered:(BOOL)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setProblemStatusResponse:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation RAPFixedProblemViewController

- (id)labelMarkerOnMapViewWithText:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(MKMapView *)self->_mapView _mapLayer];
  v6 = [v5 labelMarkers];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 text];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)mapViewDidFinishRenderingMap:(id)a3 fullyRendered:(BOOL)a4
{
  v5 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D3AF08;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)handleDone:(id)a3
{
  v4 = [(RAPFixedProblemViewController *)self navigationController];
  [v4 handleDone:self];
}

- (void)_updateTextFieldIfLoaded
{
  if (self->_textView)
  {
    footerText = self->_footerText;
    v4 = self->_headerText;
    v23 = footerText;
    v25 = objc_alloc_init(NSMutableAttributedString);
    v5 = [UIFont _maps_systemFontWithFixedSize:23.0];
    v6 = +[NSParagraphStyle defaultParagraphStyle];
    v7 = [v6 mutableCopy];

    [v7 setAlignment:1];
    v28[0] = NSFontAttributeName;
    v28[1] = NSParagraphStyleAttributeName;
    v22 = v5;
    v29[0] = v5;
    v29[1] = v7;
    v28[2] = NSForegroundColorAttributeName;
    v8 = +[UIColor labelColor];
    v29[2] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];

    if (v4)
    {
      v10 = [NSAttributedString alloc];
      v11 = [(NSString *)v4 stringByAppendingString:@"\n"];
      v12 = [v10 initWithString:v11 attributes:v9];
      [v25 appendAttributedString:v12];
    }

    v24 = v4;
    v13 = +[UIFont system15];
    [v13 _mapkit_scaledValueForValue:20.0];
    v15 = v14;
    v16 = +[NSParagraphStyle defaultParagraphStyle];
    v17 = [v16 mutableCopy];

    [v17 setAlignment:1];
    [v17 setParagraphSpacingBefore:v15];
    v26[0] = NSFontAttributeName;
    v26[1] = NSParagraphStyleAttributeName;
    v27[0] = v13;
    v27[1] = v17;
    v26[2] = NSForegroundColorAttributeName;
    v18 = +[UIColor secondaryLabelColor];
    v27[2] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];

    if (v23)
    {
      v20 = [[NSAttributedString alloc] initWithString:v23 attributes:v19];
      [v25 appendAttributedString:v20];
    }

    [(UITextView *)self->_textView setAttributedText:v25];
    v21 = [(UITextView *)self->_textView textContainer];
    [v21 setLineFragmentPadding:v15];
  }
}

- (void)_setHeaderText:(id)a3 footerText:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  headerText = self->_headerText;
  self->_headerText = v7;

  v9 = [v6 copy];
  footerText = self->_footerText;
  self->_footerText = v9;

  [(RAPFixedProblemViewController *)self _updateTextFieldIfLoaded];
}

- (void)_updateMapViewIfLoaded
{
  if (self->_mapView && [(GEORPProblemStatusResponse *)self->_problemStatusResponse problemStatusCount])
  {
    v3 = [(GEORPProblemStatusResponse *)self->_problemStatusResponse problemStatus];
    v4 = [v3 objectAtIndexedSubscript:0];

    if (self->_annotation)
    {
      v5 = [v4 details];
      v6 = [v5 displayStyle];

      if (v6 != 4)
      {
        mapView = self->_mapView;
        if (self->_mapRect.size.width == 0.0 || self->_mapRect.size.height == 0.0)
        {
          annotation = self->_annotation;
          v8 = [NSArray arrayWithObjects:&annotation count:1];
          [(MKMapView *)mapView showAnnotations:v8 animated:0];
        }

        else
        {
          [(MKMapView *)self->_mapView addAnnotation:self->_annotation];
        }
      }
    }

    v9 = [v4 details];
    v10 = [v9 mapType];

    if (v10 - 2 > 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = qword_101215BA0[v10 - 2];
    }

    [(MKMapView *)self->_mapView setMapType:v11];
    p_mapRect = &self->_mapRect;
    if ((self->_mapRect.origin.x != MKMapRectNull.origin.x || self->_mapRect.origin.y != MKMapRectNull.origin.y) && self->_mapRect.size.width != 0.0 && self->_mapRect.size.height != 0.0)
    {
      v13 = self->_mapView;
      v14 = [(RAPFixedProblemViewController *)self view];
      v15 = [v14 safeAreaLayoutGuide];
      [v15 layoutFrame];
      [(MKMapView *)v13 setVisibleMapRect:0 edgePadding:p_mapRect->origin.x animated:p_mapRect->origin.y, p_mapRect->size.width, p_mapRect->size.height, v16, 0.0, 0.0, 0.0];
    }
  }
}

- (void)_setAnnotationsWithDetails:(id)a3
{
  v4 = a3;
  v24 = [v4 displayRegion];
  [v24 southLat];
  v6 = v5;
  [v24 northLat];
  if (v6 == v7)
  {
    [v24 westLng];
    v9 = v8;
    [v24 eastLng];
    if (v9 == v10)
    {
      [v24 southLat];
      [v24 westLng];
      MKMapRectMakeWithRadialDistance();
      v15 = [[GEOMapRegion alloc] initWithMapRect:{v11, v12, v13, v14}];

      v24 = v15;
    }
  }

  v16 = +[MKMapService sharedService];
  v17 = [v16 mapItemsForPlacesInDetails:v4];

  v18 = [v17 firstObject];
  v19 = [[RAPAnnotation alloc] initWithMapItem:v18];
  if (self->_annotation)
  {
    [(MKMapView *)self->_mapView removeAnnotation:?];
  }

  [(RAPAnnotation *)v19 coordinate];
  if (CLLocationCoordinate2DIsValid(v26))
  {
    objc_storeStrong(&self->_annotation, v19);
  }

  GEOMapRectForMapRegion();
  self->_mapRect.origin.x = v20;
  self->_mapRect.origin.y = v21;
  self->_mapRect.size.width = v22;
  self->_mapRect.size.height = v23;
  [(RAPFixedProblemViewController *)self _updateMapViewIfLoaded];
}

- (void)setProblemStatusResponse:(id)a3
{
  v14 = a3;
  objc_storeStrong(&self->_problemStatusResponse, a3);
  v5 = [v14 problemStatus];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v14 problemStatus];
    v8 = [v7 objectAtIndexedSubscript:0];

    v9 = [v8 details];
    v10 = [v9 localizedTitle];

    v11 = [v8 details];
    v12 = [v11 localizedDescription];

    v13 = [v8 details];
    [(RAPFixedProblemViewController *)self _setAnnotationsWithDetails:v13];

    [(RAPFixedProblemViewController *)self _setHeaderText:v10 footerText:v12];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100D3BC24;
  v4[3] = &unk_101661710;
  v4[4] = self;
  [a4 animateAlongsideTransition:v4 completion:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = RAPFixedProblemViewController;
  [(RAPFixedProblemViewController *)&v5 traitCollectionDidChange:a3];
  if ([(RAPFixedProblemViewController *)self isViewLoaded])
  {
    v4 = [(RAPFixedProblemViewController *)self view];
    [v4 setNeedsUpdateConstraints];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = RAPFixedProblemViewController;
  [(RAPFixedProblemViewController *)&v6 viewDidAppear:?];
  annotation = self->_annotation;
  if (annotation)
  {
    [(MKMapView *)self->_mapView selectAnnotation:annotation animated:v3];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  textView = self->_textView;
  if (textView == a4)
  {
    [(UITextView *)textView bounds];
    v9 = v8;
    [(UITextView *)self->_textView contentSize];
    v11 = v10;
    [(UITextView *)self->_textView zoomScale];
    v13 = (v9 - v12 * v11) * 0.5;
    v14 = v13 + -4.0;
    v15 = v13 < 4.0;
    v16 = 0.0;
    v17 = self->_textView;
    if (!v15)
    {
      v16 = v14;
    }

    [(UITextView *)v17 setContentInset:v16, 0.0, 0.0, 0.0];
  }
}

- (void)addRouteOverlayOnView:(id)a3
{
  v38 = a3;
  if ([(GEORPProblemStatusResponse *)self->_problemStatusResponse problemStatusCount])
  {
    v4 = [(GEORPProblemStatusResponse *)self->_problemStatusResponse problemStatus];
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 details];

    v7 = +[MKMapService sharedService];
    v8 = [v7 mapItemsForPlacesInDetails:v6];

    if ([v8 count] >= 2)
    {
      v9 = [v8 firstObject];
      v10 = objc_alloc_init(UILabel);
      startLabel = self->_startLabel;
      self->_startLabel = v10;

      v12 = [UIFont systemFontOfSize:17.0];
      [(UILabel *)self->_startLabel setFont:v12];

      [(UILabel *)self->_startLabel setNumberOfLines:2];
      [(UILabel *)self->_startLabel setTextAlignment:1];
      v13 = +[UIColor secondaryLabelColor];
      [(UILabel *)self->_startLabel setTextColor:v13];

      [(UILabel *)self->_startLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      v37 = v9;
      v14 = [v9 notificationDisplayName];
      [(UILabel *)self->_startLabel setText:v14];

      v15 = [v8 lastObject];
      v16 = objc_alloc_init(UILabel);
      destinationLabel = self->_destinationLabel;
      self->_destinationLabel = v16;

      v18 = [(UILabel *)self->_startLabel font];
      [(UILabel *)self->_destinationLabel setFont:v18];

      [(UILabel *)self->_destinationLabel setNumberOfLines:[(UILabel *)self->_startLabel numberOfLines]];
      [(UILabel *)self->_destinationLabel setTextAlignment:[(UILabel *)self->_startLabel textAlignment]];
      v19 = [(UILabel *)self->_startLabel textColor];
      [(UILabel *)self->_destinationLabel setTextColor:v19];

      [(UILabel *)self->_destinationLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      v20 = [v15 notificationDisplayName];
      [(UILabel *)self->_destinationLabel setText:v20];

      v21 = objc_alloc_init(UIImageView);
      transitIconImageView = self->_transitIconImageView;
      self->_transitIconImageView = v21;

      [(UIImageView *)self->_transitIconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      v23 = objc_alloc_init(UIImageView);
      transitIconBackgroundImageView = self->_transitIconBackgroundImageView;
      self->_transitIconBackgroundImageView = v23;

      [(UIImageView *)self->_transitIconBackgroundImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      if ([v6 directionsType] == 1)
      {
        v25 = [UIImage imageNamed:@"RAPTransit"];
        v26 = @"RAPTransitBgd";
      }

      else if ([v6 directionsType] == 2)
      {
        v25 = [UIImage imageNamed:@"RAPWalking"];
        v26 = @"RAPWalkBgd";
      }

      else
      {
        v25 = [UIImage imageNamed:@"RAPCar"];
        v26 = @"RAPCarBgd";
      }

      [(UIImageView *)self->_transitIconImageView setImage:v25];

      v27 = [UIImage imageNamed:v26];
      [(UIImageView *)self->_transitIconBackgroundImageView setImage:v27];

      [v38 addSubview:self->_startLabel];
      [v38 addSubview:self->_destinationLabel];
      [v38 addSubview:self->_transitIconBackgroundImageView];
      [v38 addSubview:self->_transitIconImageView];
      v28 = _NSDictionaryOfVariableBindings(@"_startLabel, _destinationLabel, _transitIconImageView, _transitIconBackgroundImageView", self->_startLabel, self->_destinationLabel, self->_transitIconImageView, self->_transitIconBackgroundImageView, 0);
      v29 = +[NSMutableArray array];
      v30 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_startLabel]|" options:0 metrics:0 views:v28];
      [v29 addObjectsFromArray:v30];

      v31 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_destinationLabel]|" options:0 metrics:0 views:v28];
      [v29 addObjectsFromArray:v31];

      v32 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(>=0)-[_startLabel]-(verticalSpacing)-[_transitIconBackgroundImageView]-(verticalSpacing)-[_destinationLabel]-(>=0)-|", 0, &off_1016EE5B0, v28);
      [v29 addObjectsFromArray:v32];

      v33 = [NSLayoutConstraint constraintWithItem:self->_transitIconImageView attribute:9 relatedBy:0 toItem:v38 attribute:9 multiplier:1.0 constant:0.0];
      [v29 addObject:v33];

      v34 = [NSLayoutConstraint constraintWithItem:self->_transitIconImageView attribute:10 relatedBy:0 toItem:v38 attribute:10 multiplier:1.0 constant:0.0];
      [v29 addObject:v34];

      v35 = [NSLayoutConstraint constraintWithItem:self->_transitIconBackgroundImageView attribute:9 relatedBy:0 toItem:v38 attribute:9 multiplier:1.0 constant:0.0];
      [v29 addObject:v35];

      v36 = [NSLayoutConstraint constraintWithItem:self->_transitIconBackgroundImageView attribute:10 relatedBy:0 toItem:v38 attribute:10 multiplier:1.0 constant:0.0];
      [v29 addObject:v36];

      [NSLayoutConstraint activateConstraints:v29];
    }
  }
}

- (void)viewDidLoad
{
  v82.receiver = self;
  v82.super_class = RAPFixedProblemViewController;
  [(RAPFixedProblemViewController *)&v82 viewDidLoad];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Reported Issue" value:@"localized string not found" table:0];
  v5 = [(RAPFixedProblemViewController *)self navigationItem];
  [v5 setTitle:v4];

  v6 = [UIBarButtonItem alloc];
  v7 = [(RAPFixedProblemViewController *)self navigationController];
  v8 = [v6 initWithBarButtonSystemItem:0 target:v7 action:"handleDone:"];
  v9 = [(RAPFixedProblemViewController *)self navigationItem];
  [v9 setRightBarButtonItem:v8];

  v10 = +[UIColor systemBackgroundColor];
  v11 = [(RAPFixedProblemViewController *)self view];
  [v11 setBackgroundColor:v10];

  v12 = [UIView alloc];
  v13 = [(RAPFixedProblemViewController *)self view];
  [v13 bounds];
  v14 = [v12 initWithFrame:?];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = +[UIColor labelColor];
  [v14 setBackgroundColor:v15];

  v16 = [(RAPFixedProblemViewController *)self view];
  [v16 addSubview:v14];

  v17 = objc_alloc_init(UITextView);
  textView = self->_textView;
  self->_textView = v17;

  [(UITextView *)self->_textView setAlwaysBounceVertical:1];
  [(UITextView *)self->_textView setEditable:0];
  v19 = +[UIColor labelColor];
  [(UITextView *)self->_textView setTextColor:v19];

  v20 = +[UIColor secondarySystemBackgroundColor];
  [(UITextView *)self->_textView setBackgroundColor:v20];

  [(UITextView *)self->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)self->_textView addObserver:self forKeyPath:@"contentSize" options:1 context:0];
  [v14 addSubview:self->_textView];
  v21 = [(GEORPProblemStatusResponse *)self->_problemStatusResponse problemStatus];
  v22 = [v21 objectAtIndexedSubscript:0];

  v23 = [v22 details];
  LODWORD(v13) = [v23 displayStyle];

  v74 = v22;
  if (v13 == 5)
  {
    v24 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v25 = [UIImage imageNamed:@"RAPRouteFixed"];
    [(MKMapView *)v24 setImage:v25];
  }

  else
  {
    v26 = [[MKMapView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    mapView = self->_mapView;
    self->_mapView = v26;

    [(MKMapView *)self->_mapView setCompassEnabled:0];
    [(MKMapView *)self->_mapView setDelegate:self];
    [(MKMapView *)self->_mapView setShowsAttribution:0];
    [(MKMapView *)self->_mapView setBackdropViewQualityChangingDisabled:1];
    v24 = self->_mapView;
  }

  [(MKMapView *)v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKMapView *)v24 setUserInteractionEnabled:0];
  [v14 addSubview:v24];
  v28 = _NSDictionaryOfVariableBindings(@"viewToShow, _textView, borderView", v24, self->_textView, v14, 0);
  v29 = _NSDictionaryOfVariableBindings(@"spacing, borderSpacing, actionButtonHeight, textViewMinimumHeight", &off_1016E9800, &off_1016E9818, &off_1016E9830, &off_1016E9848, 0);
  v30 = self->_textView;
  v73 = v24;
  v85[0] = v24;
  v85[1] = v30;
  v31 = [NSArray arrayWithObjects:v85 count:2];
  v70 = [v31 mutableCopy];

  v72 = v28;
  v71 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(borderSpacing)-[viewToShow]-0-[_textView(>=textViewMinimumHeight)]-(borderSpacing)-|", 0, v29, v28);
  v32 = +[NSMutableArray array];
  v77 = +[NSMutableArray array];
  v68 = [v14 topAnchor];
  v69 = [(RAPFixedProblemViewController *)self view];
  v67 = [v69 safeAreaLayoutGuide];
  v66 = [v67 topAnchor];
  v65 = [v68 constraintEqualToAnchor:v66 constant:5.0];
  v84[0] = v65;
  v63 = [v14 bottomAnchor];
  v64 = [(RAPFixedProblemViewController *)self view];
  v62 = [v64 safeAreaLayoutGuide];
  v61 = [v62 bottomAnchor];
  v60 = [v63 constraintEqualToAnchor:v61 constant:-5.0];
  v84[1] = v60;
  v57 = [v14 leadingAnchor];
  v59 = [(RAPFixedProblemViewController *)self view];
  v58 = [v59 safeAreaLayoutGuide];
  v33 = [v58 leadingAnchor];
  [&off_1016E9800 floatValue];
  v35 = [v57 constraintEqualToAnchor:v33 constant:v34];
  v84[2] = v35;
  v75 = v14;
  v36 = [v14 trailingAnchor];
  v76 = self;
  v37 = [(RAPFixedProblemViewController *)self view];
  v38 = [v37 safeAreaLayoutGuide];
  v39 = [v38 trailingAnchor];
  [&off_1016E9800 floatValue];
  v41 = [v36 constraintEqualToAnchor:v39 constant:-v40];
  v84[3] = v41;
  v42 = [NSArray arrayWithObjects:v84 count:4];
  [v77 addObjectsFromArray:v42];

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v43 = v70;
  v44 = [v43 countByEnumeratingWithState:&v78 objects:v83 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v79;
    do
    {
      for (i = 0; i != v45; i = i + 1)
      {
        if (*v79 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = _NSDictionaryOfVariableBindings(@"view", *(*(&v78 + 1) + 8 * i), 0);
        v49 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(borderSpacing)-[view]-(borderSpacing)-|", 0, v29, v48);
        [v32 addObjectsFromArray:v49];
      }

      v45 = [v43 countByEnumeratingWithState:&v78 objects:v83 count:16];
    }

    while (v45);
  }

  [v32 addObjectsFromArray:v71];
  v50 = [NSLayoutConstraint constraintWithItem:v73 attribute:8 relatedBy:0 toItem:v73 attribute:7 multiplier:1.0 constant:0.0];
  mapHeightConstraint = v76->_mapHeightConstraint;
  v76->_mapHeightConstraint = v50;

  LODWORD(v52) = 1144750080;
  [(NSLayoutConstraint *)v76->_mapHeightConstraint setPriority:v52];
  [v32 addObject:v76->_mapHeightConstraint];
  [NSLayoutConstraint activateConstraints:v32];
  [NSLayoutConstraint activateConstraints:v77];
  v53 = [(RAPFixedProblemViewController *)v76 view];
  [v53 setNeedsUpdateConstraints];

  [(RAPFixedProblemViewController *)v76 _updateMapViewIfLoaded];
  [(RAPFixedProblemViewController *)v76 _updateTextFieldIfLoaded];
  v54 = [v74 details];
  v55 = [v54 displayStyle];

  if (v55 == 5)
  {
    [(RAPFixedProblemViewController *)v76 addRouteOverlayOnView:v73];
  }

  v56 = +[NSNotificationCenter defaultCenter];
  [v56 addObserver:v76 selector:"_contentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];

  [(UITextView *)self->_textView removeObserver:self forKeyPath:@"contentSize"];
  v4.receiver = self;
  v4.super_class = RAPFixedProblemViewController;
  [(RAPFixedProblemViewController *)&v4 dealloc];
}

- (RAPFixedProblemViewController)init
{
  v4.receiver = self;
  v4.super_class = RAPFixedProblemViewController;
  result = [(RAPFixedProblemViewController *)&v4 init];
  if (result)
  {
    size = MKMapRectNull.size;
    result->_mapRect.origin = MKMapRectNull.origin;
    result->_mapRect.size = size;
  }

  return result;
}

@end
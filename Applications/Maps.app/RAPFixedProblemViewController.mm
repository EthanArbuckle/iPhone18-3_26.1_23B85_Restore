@interface RAPFixedProblemViewController
- (RAPFixedProblemViewController)init;
- (id)labelMarkerOnMapViewWithText:(id)text;
- (void)_setAnnotationsWithDetails:(id)details;
- (void)_setHeaderText:(id)text footerText:(id)footerText;
- (void)_updateMapViewIfLoaded;
- (void)_updateTextFieldIfLoaded;
- (void)addRouteOverlayOnView:(id)view;
- (void)dealloc;
- (void)handleDone:(id)done;
- (void)mapViewDidFinishRenderingMap:(id)map fullyRendered:(BOOL)rendered;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setProblemStatusResponse:(id)response;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation RAPFixedProblemViewController

- (id)labelMarkerOnMapViewWithText:(id)text
{
  textCopy = text;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _mapLayer = [(MKMapView *)self->_mapView _mapLayer];
  labelMarkers = [_mapLayer labelMarkers];

  v7 = [labelMarkers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(labelMarkers);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        text = [v10 text];
        v12 = [text isEqualToString:textCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [labelMarkers countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)mapViewDidFinishRenderingMap:(id)map fullyRendered:(BOOL)rendered
{
  v5 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100D3AF08;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)handleDone:(id)done
{
  navigationController = [(RAPFixedProblemViewController *)self navigationController];
  [navigationController handleDone:self];
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
    textContainer = [(UITextView *)self->_textView textContainer];
    [textContainer setLineFragmentPadding:v15];
  }
}

- (void)_setHeaderText:(id)text footerText:(id)footerText
{
  footerTextCopy = footerText;
  v7 = [text copy];
  headerText = self->_headerText;
  self->_headerText = v7;

  v9 = [footerTextCopy copy];
  footerText = self->_footerText;
  self->_footerText = v9;

  [(RAPFixedProblemViewController *)self _updateTextFieldIfLoaded];
}

- (void)_updateMapViewIfLoaded
{
  if (self->_mapView && [(GEORPProblemStatusResponse *)self->_problemStatusResponse problemStatusCount])
  {
    problemStatus = [(GEORPProblemStatusResponse *)self->_problemStatusResponse problemStatus];
    v4 = [problemStatus objectAtIndexedSubscript:0];

    if (self->_annotation)
    {
      details = [v4 details];
      displayStyle = [details displayStyle];

      if (displayStyle != 4)
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

    details2 = [v4 details];
    mapType = [details2 mapType];

    if (mapType - 2 > 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = qword_101215BA0[mapType - 2];
    }

    [(MKMapView *)self->_mapView setMapType:v11];
    p_mapRect = &self->_mapRect;
    if ((self->_mapRect.origin.x != MKMapRectNull.origin.x || self->_mapRect.origin.y != MKMapRectNull.origin.y) && self->_mapRect.size.width != 0.0 && self->_mapRect.size.height != 0.0)
    {
      v13 = self->_mapView;
      view = [(RAPFixedProblemViewController *)self view];
      safeAreaLayoutGuide = [view safeAreaLayoutGuide];
      [safeAreaLayoutGuide layoutFrame];
      [(MKMapView *)v13 setVisibleMapRect:0 edgePadding:p_mapRect->origin.x animated:p_mapRect->origin.y, p_mapRect->size.width, p_mapRect->size.height, v16, 0.0, 0.0, 0.0];
    }
  }
}

- (void)_setAnnotationsWithDetails:(id)details
{
  detailsCopy = details;
  displayRegion = [detailsCopy displayRegion];
  [displayRegion southLat];
  v6 = v5;
  [displayRegion northLat];
  if (v6 == v7)
  {
    [displayRegion westLng];
    v9 = v8;
    [displayRegion eastLng];
    if (v9 == v10)
    {
      [displayRegion southLat];
      [displayRegion westLng];
      MKMapRectMakeWithRadialDistance();
      v15 = [[GEOMapRegion alloc] initWithMapRect:{v11, v12, v13, v14}];

      displayRegion = v15;
    }
  }

  v16 = +[MKMapService sharedService];
  v17 = [v16 mapItemsForPlacesInDetails:detailsCopy];

  firstObject = [v17 firstObject];
  v19 = [[RAPAnnotation alloc] initWithMapItem:firstObject];
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

- (void)setProblemStatusResponse:(id)response
{
  responseCopy = response;
  objc_storeStrong(&self->_problemStatusResponse, response);
  problemStatus = [responseCopy problemStatus];
  v6 = [problemStatus count];

  if (v6)
  {
    problemStatus2 = [responseCopy problemStatus];
    v8 = [problemStatus2 objectAtIndexedSubscript:0];

    details = [v8 details];
    localizedTitle = [details localizedTitle];

    details2 = [v8 details];
    localizedDescription = [details2 localizedDescription];

    details3 = [v8 details];
    [(RAPFixedProblemViewController *)self _setAnnotationsWithDetails:details3];

    [(RAPFixedProblemViewController *)self _setHeaderText:localizedTitle footerText:localizedDescription];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100D3BC24;
  v4[3] = &unk_101661710;
  v4[4] = self;
  [coordinator animateAlongsideTransition:v4 completion:0];
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = RAPFixedProblemViewController;
  [(RAPFixedProblemViewController *)&v5 traitCollectionDidChange:change];
  if ([(RAPFixedProblemViewController *)self isViewLoaded])
  {
    view = [(RAPFixedProblemViewController *)self view];
    [view setNeedsUpdateConstraints];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = RAPFixedProblemViewController;
  [(RAPFixedProblemViewController *)&v6 viewDidAppear:?];
  annotation = self->_annotation;
  if (annotation)
  {
    [(MKMapView *)self->_mapView selectAnnotation:annotation animated:appearCopy];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  textView = self->_textView;
  if (textView == object)
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

- (void)addRouteOverlayOnView:(id)view
{
  viewCopy = view;
  if ([(GEORPProblemStatusResponse *)self->_problemStatusResponse problemStatusCount])
  {
    problemStatus = [(GEORPProblemStatusResponse *)self->_problemStatusResponse problemStatus];
    v5 = [problemStatus objectAtIndexedSubscript:0];
    details = [v5 details];

    v7 = +[MKMapService sharedService];
    v8 = [v7 mapItemsForPlacesInDetails:details];

    if ([v8 count] >= 2)
    {
      firstObject = [v8 firstObject];
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
      v37 = firstObject;
      notificationDisplayName = [firstObject notificationDisplayName];
      [(UILabel *)self->_startLabel setText:notificationDisplayName];

      lastObject = [v8 lastObject];
      v16 = objc_alloc_init(UILabel);
      destinationLabel = self->_destinationLabel;
      self->_destinationLabel = v16;

      font = [(UILabel *)self->_startLabel font];
      [(UILabel *)self->_destinationLabel setFont:font];

      [(UILabel *)self->_destinationLabel setNumberOfLines:[(UILabel *)self->_startLabel numberOfLines]];
      [(UILabel *)self->_destinationLabel setTextAlignment:[(UILabel *)self->_startLabel textAlignment]];
      textColor = [(UILabel *)self->_startLabel textColor];
      [(UILabel *)self->_destinationLabel setTextColor:textColor];

      [(UILabel *)self->_destinationLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      notificationDisplayName2 = [lastObject notificationDisplayName];
      [(UILabel *)self->_destinationLabel setText:notificationDisplayName2];

      v21 = objc_alloc_init(UIImageView);
      transitIconImageView = self->_transitIconImageView;
      self->_transitIconImageView = v21;

      [(UIImageView *)self->_transitIconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      v23 = objc_alloc_init(UIImageView);
      transitIconBackgroundImageView = self->_transitIconBackgroundImageView;
      self->_transitIconBackgroundImageView = v23;

      [(UIImageView *)self->_transitIconBackgroundImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      if ([details directionsType] == 1)
      {
        v25 = [UIImage imageNamed:@"RAPTransit"];
        v26 = @"RAPTransitBgd";
      }

      else if ([details directionsType] == 2)
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

      [viewCopy addSubview:self->_startLabel];
      [viewCopy addSubview:self->_destinationLabel];
      [viewCopy addSubview:self->_transitIconBackgroundImageView];
      [viewCopy addSubview:self->_transitIconImageView];
      v28 = _NSDictionaryOfVariableBindings(@"_startLabel, _destinationLabel, _transitIconImageView, _transitIconBackgroundImageView", self->_startLabel, self->_destinationLabel, self->_transitIconImageView, self->_transitIconBackgroundImageView, 0);
      v29 = +[NSMutableArray array];
      v30 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_startLabel]|" options:0 metrics:0 views:v28];
      [v29 addObjectsFromArray:v30];

      v31 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_destinationLabel]|" options:0 metrics:0 views:v28];
      [v29 addObjectsFromArray:v31];

      v32 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(>=0)-[_startLabel]-(verticalSpacing)-[_transitIconBackgroundImageView]-(verticalSpacing)-[_destinationLabel]-(>=0)-|", 0, &off_1016EE5B0, v28);
      [v29 addObjectsFromArray:v32];

      v33 = [NSLayoutConstraint constraintWithItem:self->_transitIconImageView attribute:9 relatedBy:0 toItem:viewCopy attribute:9 multiplier:1.0 constant:0.0];
      [v29 addObject:v33];

      v34 = [NSLayoutConstraint constraintWithItem:self->_transitIconImageView attribute:10 relatedBy:0 toItem:viewCopy attribute:10 multiplier:1.0 constant:0.0];
      [v29 addObject:v34];

      v35 = [NSLayoutConstraint constraintWithItem:self->_transitIconBackgroundImageView attribute:9 relatedBy:0 toItem:viewCopy attribute:9 multiplier:1.0 constant:0.0];
      [v29 addObject:v35];

      v36 = [NSLayoutConstraint constraintWithItem:self->_transitIconBackgroundImageView attribute:10 relatedBy:0 toItem:viewCopy attribute:10 multiplier:1.0 constant:0.0];
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
  navigationItem = [(RAPFixedProblemViewController *)self navigationItem];
  [navigationItem setTitle:v4];

  v6 = [UIBarButtonItem alloc];
  navigationController = [(RAPFixedProblemViewController *)self navigationController];
  v8 = [v6 initWithBarButtonSystemItem:0 target:navigationController action:"handleDone:"];
  navigationItem2 = [(RAPFixedProblemViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v8];

  v10 = +[UIColor systemBackgroundColor];
  view = [(RAPFixedProblemViewController *)self view];
  [view setBackgroundColor:v10];

  v12 = [UIView alloc];
  view2 = [(RAPFixedProblemViewController *)self view];
  [view2 bounds];
  v14 = [v12 initWithFrame:?];

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = +[UIColor labelColor];
  [v14 setBackgroundColor:v15];

  view3 = [(RAPFixedProblemViewController *)self view];
  [view3 addSubview:v14];

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
  problemStatus = [(GEORPProblemStatusResponse *)self->_problemStatusResponse problemStatus];
  v22 = [problemStatus objectAtIndexedSubscript:0];

  details = [v22 details];
  LODWORD(view2) = [details displayStyle];

  v74 = v22;
  if (view2 == 5)
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
  topAnchor = [v14 topAnchor];
  view4 = [(RAPFixedProblemViewController *)self view];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v65 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
  v84[0] = v65;
  bottomAnchor = [v14 bottomAnchor];
  view5 = [(RAPFixedProblemViewController *)self view];
  safeAreaLayoutGuide2 = [view5 safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
  v60 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
  v84[1] = v60;
  leadingAnchor = [v14 leadingAnchor];
  view6 = [(RAPFixedProblemViewController *)self view];
  safeAreaLayoutGuide3 = [view6 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide3 leadingAnchor];
  [&off_1016E9800 floatValue];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v34];
  v84[2] = v35;
  v75 = v14;
  trailingAnchor = [v14 trailingAnchor];
  selfCopy = self;
  view7 = [(RAPFixedProblemViewController *)self view];
  safeAreaLayoutGuide4 = [view7 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide4 trailingAnchor];
  [&off_1016E9800 floatValue];
  v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v40];
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
  mapHeightConstraint = selfCopy->_mapHeightConstraint;
  selfCopy->_mapHeightConstraint = v50;

  LODWORD(v52) = 1144750080;
  [(NSLayoutConstraint *)selfCopy->_mapHeightConstraint setPriority:v52];
  [v32 addObject:selfCopy->_mapHeightConstraint];
  [NSLayoutConstraint activateConstraints:v32];
  [NSLayoutConstraint activateConstraints:v77];
  view8 = [(RAPFixedProblemViewController *)selfCopy view];
  [view8 setNeedsUpdateConstraints];

  [(RAPFixedProblemViewController *)selfCopy _updateMapViewIfLoaded];
  [(RAPFixedProblemViewController *)selfCopy _updateTextFieldIfLoaded];
  details2 = [v74 details];
  displayStyle = [details2 displayStyle];

  if (displayStyle == 5)
  {
    [(RAPFixedProblemViewController *)selfCopy addRouteOverlayOnView:v73];
  }

  v56 = +[NSNotificationCenter defaultCenter];
  [v56 addObserver:selfCopy selector:"_contentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
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
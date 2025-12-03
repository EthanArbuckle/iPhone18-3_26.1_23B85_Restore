@interface RoutingAppSelectionCell
+ (id)_labelForRoutingMode:(id)mode;
+ (id)_labelForRoutingModeKeys:(id)keys intendedTransportType:(int64_t)type;
+ (id)_preferredModesForTransportType:(int64_t)type;
+ (id)sharedLockupViewGroup;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (RoutingAppSelectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (RoutingAppSelectionCellDelegate)delegate;
- (id)_artworkWithUIImage:(id)image;
- (id)_dummyArtwork;
- (id)_dummyLockup;
- (id)_lockupByAddingRoutingModes:(id)modes;
- (id)_lockupWithAppProxy:(id)proxy appIcon:(id)icon;
- (id)_lockupWithAppStoreApp:(id)app;
- (void)_route;
- (void)_updateContent;
- (void)lockupViewDidFinishRequest:(id)request;
- (void)prepareForReuse;
- (void)setAppProxy:(id)proxy;
- (void)setAppStoreApp:(id)app;
- (void)setIntendedTransportType:(int64_t)type;
@end

@implementation RoutingAppSelectionCell

- (RoutingAppSelectionCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)lockupViewDidFinishRequest:(id)request
{
  requestCopy = request;
  request = self->_request;
  v11 = requestCopy;
  request = [requestCopy request];

  if (request == request)
  {
    lockup = [v11 lockup];
    v8 = [(RoutingAppSelectionCell *)self _lockupByAddingRoutingModes:lockup];
    [v11 setLockup:v8];

    lockup2 = [v11 lockup];
    lockup = self->_lockup;
    self->_lockup = lockup2;
  }
}

- (id)_artworkWithUIImage:(id)image
{
  v3 = UIImagePNGRepresentation(image);
  v4 = [v3 base64EncodedStringWithOptions:0];

  v5 = [NSString stringWithFormat:@"data:image/pngbase64, %@", v4];;
  v6 = [ASCArtwork alloc];
  v7 = [v6 initWithURLTemplate:v5 width:ASCArtworkDecorationRoundedRect height:ASCArtworkCropBoundingBox decoration:ASCArtworkFormatPNG preferredCrop:0.0 preferredFormat:0.0];

  return v7;
}

- (id)_dummyArtwork
{
  v2 = [ASCArtwork alloc];
  v3 = [v2 initWithURLTemplate:&stru_1016631F0 width:ASCArtworkDecorationRoundedRect height:ASCArtworkCropBoundingBox decoration:ASCArtworkFormatPNG preferredCrop:0.0 preferredFormat:0.0];

  return v3;
}

- (id)_dummyLockup
{
  v3 = [ASCLockup alloc];
  v4 = [[ASCAdamID alloc] initWithInt64:0];
  v5 = ASCLockupKindApp;
  _dummyArtwork = [(RoutingAppSelectionCell *)self _dummyArtwork];
  v7 = [v3 initWithID:v4 kind:v5 metrics:0 icon:_dummyArtwork heading:0 title:0 subtitle:0 ageRating:0 offer:0];

  return v7;
}

- (id)_lockupByAddingRoutingModes:(id)modes
{
  modesCopy = modes;
  appStoreApp = [(RoutingAppSelectionCell *)self appStoreApp];
  transitModes = [appStoreApp transitModes];

  v18 = [objc_opt_class() _labelForRoutingModeKeys:transitModes intendedTransportType:self->_intendedTransportType];
  v17 = [ASCLockup alloc];
  v6 = [modesCopy id];
  kind = [modesCopy kind];
  metrics = [modesCopy metrics];
  icon = [modesCopy icon];
  heading = [modesCopy heading];
  title = [modesCopy title];
  string = [v18 string];
  ageRating = [modesCopy ageRating];
  offer = [modesCopy offer];

  v15 = [v17 initWithID:v6 kind:kind metrics:metrics icon:icon heading:heading title:title subtitle:string ageRating:ageRating offer:offer];

  return v15;
}

- (id)_lockupWithAppStoreApp:(id)app
{
  appCopy = app;
  identifier = [appCopy identifier];
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [identifier integerValue]);

  v7 = [[ASCAdamID alloc] initWithNumberValue:v6];
  transitModes = [appCopy transitModes];
  v9 = [objc_opt_class() _labelForRoutingModeKeys:transitModes intendedTransportType:self->_intendedTransportType];
  v10 = [ASCLockup alloc];
  v11 = ASCLockupKindApp;
  _dummyArtwork = [(RoutingAppSelectionCell *)self _dummyArtwork];
  displayName = [appCopy displayName];

  string = [v9 string];
  v15 = [v10 initWithID:v7 kind:v11 metrics:0 icon:_dummyArtwork heading:0 title:displayName subtitle:string ageRating:0 offer:0];

  return v15;
}

- (id)_lockupWithAppProxy:(id)proxy appIcon:(id)icon
{
  proxyCopy = proxy;
  iconCopy = icon;
  bundleIdentifier = [proxyCopy bundleIdentifier];
  v22 = [[ASCAdamID alloc] initWithStringValue:bundleIdentifier];
  directionsModes = [proxyCopy directionsModes];
  v10 = [objc_opt_class() _labelForRoutingModeKeys:directionsModes intendedTransportType:self->_intendedTransportType];
  string = [v10 string];

  objc_initWeak(&location, self);
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"Open [Routing App value:Cell]" table:{@"localized string not found", 0}];
  v14 = [ASCOfferMetadata textMetadataWithTitle:v13 subtitle:0];

  v15 = [ASCLocalOffer alloc];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100AD19EC;
  v23[3] = &unk_101661B98;
  objc_copyWeak(&v24, &location);
  v16 = [v15 initWithMetadata:v14 action:v23];
  v17 = [ASCLockup alloc];
  if (iconCopy)
  {
    [(RoutingAppSelectionCell *)self _artworkWithUIImage:iconCopy];
  }

  else
  {
    [(RoutingAppSelectionCell *)self _dummyArtwork];
  }
  v18 = ;
  localizedName = [proxyCopy localizedName];
  v20 = [v17 initWithID:v22 kind:ASCLockupKindApp metrics:0 icon:v18 heading:0 title:localizedName subtitle:string ageRating:0 offer:v16];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  return v20;
}

- (void)_updateContent
{
  if (self->_lockup)
  {
    lockupView = self->_lockupView;

    [(ASCLockupView *)lockupView setLockup:?];
  }

  else
  {
    appProxy = [(RoutingAppSelectionCell *)self appProxy];

    if (appProxy)
    {
      appProxy2 = [(RoutingAppSelectionCell *)self appProxy];
      v6 = [(RoutingAppSelectionCell *)self _lockupWithAppProxy:appProxy2 appIcon:0];
      lockup = self->_lockup;
      self->_lockup = v6;

      [(ASCLockupView *)self->_lockupView setLockup:self->_lockup];
      [(ASCLockupView *)self->_lockupView setAutomaticallyPresentsProductDetails:0];
      appProxy3 = [(RoutingAppSelectionCell *)self appProxy];
      bundleIdentifier = [appProxy3 bundleIdentifier];

      v10 = +[MapsUIImageCache sharedCache];
      appProxy4 = [(RoutingAppSelectionCell *)self appProxy];
      bundleIdentifier2 = [appProxy4 bundleIdentifier];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100AD1D18;
      v23[3] = &unk_10165FED0;
      v24 = bundleIdentifier;
      selfCopy = self;
      v13 = bundleIdentifier;
      [v10 getImageForAppIcon:bundleIdentifier2 format:2 completion:v23];
    }

    else
    {
      appStoreApp = [(RoutingAppSelectionCell *)self appStoreApp];

      if (appStoreApp)
      {
        appStoreApp2 = [(RoutingAppSelectionCell *)self appStoreApp];
        v16 = [(RoutingAppSelectionCell *)self _lockupWithAppStoreApp:appStoreApp2];
        v17 = self->_lockup;
        self->_lockup = v16;

        if (!self->_request)
        {
          v18 = [ASCLockupRequest alloc];
          v19 = [(ASCLockup *)self->_lockup id];
          v20 = [v18 initWithID:v19 kind:ASCLockupKindApp context:ASCLockupContextStandard];
          request = self->_request;
          self->_request = v20;

          [(ASCLockupView *)self->_lockupView setRequest:self->_request];
        }

        [(ASCLockupView *)self->_lockupView setLockup:self->_lockup];
        v22 = self->_lockupView;

        [(ASCLockupView *)v22 setAutomaticallyPresentsProductDetails:1];
      }
    }
  }
}

- (void)_route
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained routingAppSelectionCellRoutePressed:self];
}

- (void)setIntendedTransportType:(int64_t)type
{
  if (self->_intendedTransportType != type)
  {
    self->_intendedTransportType = type;
    [(RoutingAppSelectionCell *)self _updateContent];
  }
}

- (void)setAppProxy:(id)proxy
{
  proxyCopy = proxy;
  appProxy = self->_appProxy;
  v10 = proxyCopy;
  v7 = appProxy;
  v8 = v10;
  if (v10 | v7)
  {
    v9 = [v10 isEqual:v7];

    v8 = v10;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_appProxy, proxy);
      [(RoutingAppSelectionCell *)self _updateContent];
      v8 = v10;
    }
  }
}

- (void)setAppStoreApp:(id)app
{
  appCopy = app;
  appStoreApp = self->_appStoreApp;
  v10 = appCopy;
  v7 = appStoreApp;
  v8 = v10;
  if (v10 | v7)
  {
    v9 = [v10 isEqual:v7];

    v8 = v10;
    if ((v9 & 1) == 0)
    {
      objc_storeStrong(&self->_appStoreApp, app);
      [(RoutingAppSelectionCell *)self _updateContent];
      v8 = v10;
    }
  }
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  width = size.width;
  v6 = [(RoutingAppSelectionCell *)self lockupView:size.width];
  [v6 sizeThatFits:{width, 1.79769313e308}];
  v8 = v7;

  v9 = v8 + 20.0;
  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)prepareForReuse
{
  appStoreApp = self->_appStoreApp;
  self->_appStoreApp = 0;

  appProxy = self->_appProxy;
  self->_appProxy = 0;

  request = self->_request;
  self->_request = 0;

  lockup = self->_lockup;
  self->_lockup = 0;

  [(ASCLockupView *)self->_lockupView setRequest:0];
  _dummyLockup = [(RoutingAppSelectionCell *)self _dummyLockup];
  [(ASCLockupView *)self->_lockupView setLockup:_dummyLockup];

  [(ASCLockupView *)self->_lockupView setAutomaticallyPresentsProductDetails:0];
  v8.receiver = self;
  v8.super_class = RoutingAppSelectionCell;
  [(RoutingAppSelectionCell *)&v8 prepareForReuse];
}

- (RoutingAppSelectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v17.receiver = self;
  v17.super_class = RoutingAppSelectionCell;
  v4 = [(MapsThemeTableViewCell *)&v17 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(RoutingAppSelectionCell *)v4 setBackgroundView:0];
    v6 = +[UIColor clearColor];
    [(RoutingAppSelectionCell *)v5 setBackgroundColor:v6];

    v7 = [ASCLockupView alloc];
    contentView = [(RoutingAppSelectionCell *)v5 contentView];
    [contentView bounds];
    v9 = [v7 initWithFrame:?];

    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v9 setDelegate:v5];
    sharedLockupViewGroup = [objc_opt_class() sharedLockupViewGroup];
    [v9 setGroup:sharedLockupViewGroup];

    contentView2 = [(RoutingAppSelectionCell *)v5 contentView];
    [contentView2 addSubview:v9];

    [(RoutingAppSelectionCell *)v5 setLockupView:v9];
    contentView3 = [(RoutingAppSelectionCell *)v5 contentView];
    LODWORD(v13) = 1148846080;
    v14 = [v9 _maps_constraintsEqualToEdgesOfView:contentView3 insets:10.0 priority:{16.0, 10.0, 16.0, v13}];
    allConstraints = [v14 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints];
  }

  return v5;
}

+ (id)_preferredModesForTransportType:(int64_t)type
{
  if ((type - 1) > 4)
  {
    return &__NSArray0__struct;
  }

  else
  {
    return off_101637528[type - 1];
  }
}

+ (id)_labelForRoutingModeKeys:(id)keys intendedTransportType:(int64_t)type
{
  keysCopy = keys;
  selfCopy = self;
  v7 = [self _preferredModesForTransportType:type];
  if ([keysCopy count] && objc_msgSend(v7, "count"))
  {
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100AD2794;
    v48[3] = &unk_101637508;
    v49 = v7;
    v50 = keysCopy;
    keysCopy = [keysCopy sortedArrayUsingComparator:v48];
  }

  v8 = [keysCopy count];
  if (v8 == 1)
  {
    v13 = [NSAttributedString alloc];
    v11 = [keysCopy objectAtIndexedSubscript:0];
    v14 = [selfCopy _labelForRoutingMode:v11];
    v12 = [v13 initWithString:v14];
  }

  else
  {
    v9 = v8;
    if (v8)
    {
      if (v8 >= 3)
      {
        v15 = 3;
      }

      else
      {
        v15 = v8;
      }

      v16 = [[NSMutableArray alloc] initWithCapacity:v15];
      for (i = 0; i != v15; ++i)
      {
        v18 = [keysCopy objectAtIndexedSubscript:i];
        v19 = [self _labelForRoutingMode:v18];
        if (v19)
        {
          [v16 addObject:v19];
        }

        else
        {
          NSLog(@"Warning: %@ is an unrecognized routing mode key.", v18);
        }
      }

      v20 = +[NSBundle mainBundle];
      v21 = [v20 localizedStringForKey:@"RoutingModeCommaJoin" value:@"localized string not found" table:0];
      v42 = v16;
      v22 = [v16 componentsJoinedByString:v21];

      if (v9 > 3)
      {
        v23 = +[NSBundle mainBundle];
        v24 = [v23 localizedStringForKey:@"RoutingContinuationEllipsis" value:@"localized string not found" table:0];
        v25 = [v22 stringByAppendingString:v24];

        v22 = v25;
      }

      if ([v7 count])
      {
        v41 = keysCopy;
        v26 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
        fontDescriptor = [v26 fontDescriptor];

        v40 = fontDescriptor;
        v28 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];
        v29 = [UIFont fontWithDescriptor:v28 size:0.0];

        v30 = [[NSMutableAttributedString alloc] initWithString:v22];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v31 = v7;
        v32 = [v31 countByEnumeratingWithState:&v44 objects:v51 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v45;
          do
          {
            for (j = 0; j != v33; j = j + 1)
            {
              if (*v45 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = [self _labelForRoutingMode:*(*(&v44 + 1) + 8 * j)];
              v37 = [v22 rangeOfString:v36];
              if (v37 != 0x7FFFFFFFFFFFFFFFLL)
              {
                [v30 addAttribute:NSFontAttributeName value:v29 range:{v37, v38}];
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v44 objects:v51 count:16];
          }

          while (v33);
        }

        v12 = [v30 copy];
        keysCopy = v41;
      }

      else
      {
        v12 = [[NSAttributedString alloc] initWithString:v22];
      }

      v11 = v42;
    }

    else
    {
      v10 = [NSAttributedString alloc];
      v11 = [self _labelForRoutingMode:@"other"];
      v12 = [v10 initWithString:v11];
    }
  }

  return v12;
}

+ (id)_labelForRoutingMode:(id)mode
{
  v3 = qword_10195E4D0;
  modeCopy = mode;
  if (v3 != -1)
  {
    dispatch_once(&qword_10195E4D0, &stru_1016374E0);
  }

  v5 = [qword_10195E4D8 objectForKeyedSubscript:modeCopy];

  return v5;
}

+ (id)sharedLockupViewGroup
{
  if (qword_10195E4C8 != -1)
  {
    dispatch_once(&qword_10195E4C8, &stru_1016374C0);
  }

  v3 = qword_10195E4C0;

  return v3;
}

@end
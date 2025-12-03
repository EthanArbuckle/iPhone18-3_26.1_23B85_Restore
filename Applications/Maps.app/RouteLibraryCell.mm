@interface RouteLibraryCell
- (RouteLibraryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (RouteLibraryCellDelegate)delegate;
- (id)_greyScaleImageIfNeeded:(id)needed;
- (void)_pressedDelete;
- (void)_pressedDirections;
- (void)_pressedDownload;
- (void)_pressedEdit;
- (void)_pressedMore;
- (void)_refreshOfflineSubscription;
- (void)_setImageForSnapshot:(id)snapshot;
- (void)_updateMenu;
- (void)_updateMoreButton;
- (void)dealloc;
- (void)fadingLabelTruncationChanged:(id)changed;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareForReuse;
- (void)setOfflineSubscription:(id)subscription;
- (void)setRouteData:(id)data delegate:(id)delegate userInterfaceStyle:(int64_t)style inWidth:(double)width;
- (void)setSnapshotWithRouteData:(id)data scale:(double)scale userInterfaceStyle:(int64_t)style;
- (void)valueChangedForGEOConfigKey:(id)key;
@end

@implementation RouteLibraryCell

- (RouteLibraryCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)valueChangedForGEOConfigKey:(id)key
{
  if (key.var0 == 745 && key.var1 == &unk_101644E90)
  {
    [(RouteLibraryCell *)self _updateMenu];
  }
}

- (void)fadingLabelTruncationChanged:(id)changed
{
  v4 = [changed isTruncated] ^ 1;
  moreButton = self->_moreButton;

  [(UIButton *)moreButton setHidden:v4];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_10192C2A8 == context)
  {

    [(RouteLibraryCell *)self _updateMenu:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = RouteLibraryCell;
    [(RouteLibraryCell *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)_pressedDownload
{
  delegate = [(RouteLibraryCell *)self delegate];
  [delegate cell:self didSelectDownloadRouteData:self->_routeData];
}

- (void)_pressedMore
{
  delegate = [(RouteLibraryCell *)self delegate];
  [delegate cell:self didSelectViewMoreNotesForRouteData:self->_routeData];
}

- (void)_pressedDirections
{
  delegate = [(RouteLibraryCell *)self delegate];
  [delegate cell:self didSelectDirectionsRouteData:self->_routeData];
}

- (void)_pressedEdit
{
  delegate = [(RouteLibraryCell *)self delegate];
  [delegate cell:self didSelectEditRouteData:self->_routeData];
}

- (void)_pressedDelete
{
  delegate = [(RouteLibraryCell *)self delegate];
  [delegate cell:self didSelectDeleteRouteData:self->_routeData];
}

- (id)_greyScaleImageIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(GEOComposedGeometryRoutePersistentData *)self->_routeData isAvailableForCurrentCountry])
  {
    v5 = neededCopy;
  }

  else
  {
    v6 = +[UIColor grayColor];
    v5 = [neededCopy _maps_colorMonochromeImageWithColor:v6];
  }

  return v5;
}

- (void)_setImageForSnapshot:(id)snapshot
{
  v5 = [(RouteLibraryCell *)self _greyScaleImageIfNeeded:?];
  [(UIImageView *)self->_snapshotImageView setImage:v5];

  if (snapshot)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  if (snapshot)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  [(UIImageView *)self->_snapshotImageView setAlpha:v6];
  placeholderImageView = self->_placeholderImageView;

  [(UIImageView *)placeholderImageView setAlpha:v7];
}

- (void)setSnapshotWithRouteData:(id)data scale:(double)scale userInterfaceStyle:(int64_t)style
{
  dataCopy = data;
  v9 = [MURouteSnapshotKey alloc];
  storageID = [dataCopy storageID];
  v11 = [v9 initWithIdentifier:storageID width:style == 2 height:64.0 scale:64.0 padding:scale darkMode:{10.0, 10.0, 10.0, 10.0}];

  if (([(MURouteSnapshotKey *)self->_cacheKey isEqual:v11]& 1) == 0)
  {
    objc_storeStrong(&self->_cacheKey, v11);
    v12 = +[MURouteSnapshotManager sharedInstance];
    v13 = [v12 checkCacheForKey:v11];

    [(RouteLibraryCell *)self _setImageForSnapshot:v13];
    if (!v13)
    {
      v14 = [[GEORouteBuilder_PersistentData alloc] initWithPersistentData:dataCopy];
      buildRoute = [v14 buildRoute];
      v16 = +[MURouteSnapshotManager sharedInstance];
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_100849C54;
      v20 = &unk_10162BB28;
      selfCopy = self;
      v22 = v11;
      [v16 getSnapshotForKey:v22 route:buildRoute completion:&v17];
    }
  }

  [(RouteLibraryCell *)self _refreshOfflineSubscription:v17];
}

- (void)setRouteData:(id)data delegate:(id)delegate userInterfaceStyle:(int64_t)style inWidth:(double)width
{
  dataCopy = data;
  objc_storeStrong(&self->_routeData, data);
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);

  userProvidedName = [dataCopy userProvidedName];
  [(UILabel *)self->_titleLabel setText:userProvidedName];

  isAvailableForCurrentCountry = [dataCopy isAvailableForCurrentCountry];
  if ([dataCopy transportType] == 2)
  {
    v14 = [UIImageSymbolConfiguration configurationWithPointSize:8 weight:2 scale:12.0];
    v15 = [UIImage systemImageNamed:@"figure.walk" withConfiguration:v14];
    v16 = [v15 imageWithRenderingMode:2];
  }

  else
  {
    v16 = 0;
  }

  [(UIImageView *)self->_transportTypeImageView setImage:v16];

  if (isAvailableForCurrentCountry)
  {
    if (style == 2)
    {
      v17 = +[UIColor whiteColor];
      [(UIImageView *)self->_transportTypeImageView setTintColor:v17];

LABEL_8:
      v19 = +[UIColor tertiarySystemBackgroundColor];
      goto LABEL_11;
    }

    v20 = +[UIColor systemBlueColor];
    [(UIImageView *)self->_transportTypeImageView setTintColor:v20];
  }

  else
  {
    v18 = +[UIColor secondaryLabelColor];
    [(UIImageView *)self->_transportTypeImageView setTintColor:v18];

    if (style == 2)
    {
      goto LABEL_8;
    }
  }

  v19 = +[UIColor systemWhiteColor];
LABEL_11:
  v21 = v19;
  [(UIView *)self->_transportTypeContainerView setBackgroundColor:v19];

  if (isAvailableForCurrentCountry)
  {
    +[UIColor labelColor];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v22 = ;
  [(UILabel *)self->_titleLabel setTextColor:v22];

  v34[0] = NSFontAttributeName;
  v23 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v35[0] = v23;
  v34[1] = NSForegroundColorAttributeName;
  if (isAvailableForCurrentCountry)
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor tertiaryLabelColor];
  }
  v24 = ;
  v35[1] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];

  v26 = [dataCopy addressStringWithAttributes:v25];
  [(UILabel *)self->_addressLabel setAttributedText:v26];

  v27 = [dataCopy distanceAndElevationDescriptionStringWithAttributes:v25];
  [(MapsThemeMultiPartLabel *)self->_descriptionLabel setMultiPartString:v27];

  userProvidedNotes = [dataCopy userProvidedNotes];
  v29 = [userProvidedNotes length];

  if (v29)
  {
    v30 = +[NSBundle mainBundle];
    v31 = [v30 localizedStringForKey:@"[Route Creation] Notes Quotes" value:@"localized string not found" table:0];
    userProvidedNotes2 = [dataCopy userProvidedNotes];
    v33 = [NSString stringWithFormat:v31, userProvidedNotes2];
    [(MUFadingLabel *)self->_notesLabel setText:v33];
  }

  else
  {
    [(MUFadingLabel *)self->_notesLabel setText:0];
  }

  [(RouteLibraryCell *)self _updateMenu];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = RouteLibraryCell;
  [(RouteLibraryCell *)&v4 prepareForReuse];
  cacheKey = self->_cacheKey;
  self->_cacheKey = 0;

  [(UIImageView *)self->_snapshotImageView setImage:0];
  [(UIImageView *)self->_snapshotImageView setAlpha:0.0];
  [(UIImageView *)self->_placeholderImageView setAlpha:1.0];
}

- (void)_refreshOfflineSubscription
{
  routeData = self->_routeData;
  if (routeData)
  {
    boundingMapRegion = [(GEOComposedGeometryRoutePersistentData *)routeData boundingMapRegion];
    v7 = [GEOMapRegion _maps_offlineCoverageRegionForRouteBounds:boundingMapRegion];

    v5 = +[MapsOfflineUIHelper sharedHelper];
    v6 = [v5 subscriptionInfoForRegion:v7];
    [(RouteLibraryCell *)self setOfflineSubscription:v6];
  }

  else
  {

    [(RouteLibraryCell *)self setOfflineSubscription:0];
  }
}

- (void)setOfflineSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  offlineSubscription = self->_offlineSubscription;
  if (offlineSubscription != subscriptionCopy)
  {
    if (offlineSubscription)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v7 = [&off_1016ECFE0 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v23;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v23 != v9)
            {
              objc_enumerationMutation(&off_1016ECFE0);
            }

            [(MapDataSubscriptionInfo *)self->_offlineSubscription removeObserver:self forKeyPath:*(*(&v22 + 1) + 8 * i) context:off_10192C2A8];
          }

          v8 = [&off_1016ECFE0 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v8);
      }
    }

    objc_storeStrong(&self->_offlineSubscription, subscription);
    [(RouteLibraryOfflineDownloadStateView *)self->_offlineDownloadStateView setSubscriptionInfo:subscriptionCopy];
    v11 = self->_offlineSubscription;
    if (v11)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v12 = [&off_1016ECFF8 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v19;
        do
        {
          for (j = 0; j != v13; j = j + 1)
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(&off_1016ECFF8);
            }

            [(MapDataSubscriptionInfo *)self->_offlineSubscription addObserver:self forKeyPath:*(*(&v18 + 1) + 8 * j) options:0 context:off_10192C2A8];
          }

          v13 = [&off_1016ECFF8 countByEnumeratingWithState:&v18 objects:v26 count:16];
        }

        while (v13);
      }

      if (offlineSubscription)
      {
        goto LABEL_23;
      }

      v16 = &OBJC_IVAR___RouteLibraryCell__offlineDownloadConstraints;
      v17 = &OBJC_IVAR___RouteLibraryCell__noOfflineDownloadConstraints;
    }

    else
    {
      if (!offlineSubscription)
      {
LABEL_23:
        [(RouteLibraryCell *)self _updateMenu];
        goto LABEL_24;
      }

      v16 = &OBJC_IVAR___RouteLibraryCell__noOfflineDownloadConstraints;
      v17 = &OBJC_IVAR___RouteLibraryCell__offlineDownloadConstraints;
    }

    [NSLayoutConstraint deactivateConstraints:*(&self->super.super.super.super.isa + *v17)];
    [NSLayoutConstraint activateConstraints:*(&self->super.super.super.super.isa + *v16)];
    [(RouteLibraryOfflineDownloadStateView *)self->_offlineDownloadStateView setHidden:v11 == 0];
    goto LABEL_23;
  }

LABEL_24:
}

- (void)dealloc
{
  if (self->_offlineSubscription)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [&off_1016ECFC8 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(&off_1016ECFC8);
          }

          [(MapDataSubscriptionInfo *)self->_offlineSubscription removeObserver:self forKeyPath:*(*(&v8 + 1) + 8 * v6) context:off_10192C2A8];
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [&off_1016ECFC8 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }

  GEOConfigRemoveDelegateListenerForAllKeys();
  v7.receiver = self;
  v7.super_class = RouteLibraryCell;
  [(RouteLibraryCell *)&v7 dealloc];
}

- (void)_updateMenu
{
  objc_initWeak(location, self);
  BOOL = GEOConfigGetBOOL();
  if (([(GEOComposedGeometryRoutePersistentData *)self->_routeData isAvailableForCurrentCountry]& BOOL) == 1)
  {
    if (GEOSupportsOfflineMaps())
    {
      offlineSubscription = self->_offlineSubscription;
      if (offlineSubscription && (-[MapDataSubscriptionInfo state](offlineSubscription, "state"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 loadState], v5, (v6 - 1) < 2))
      {
        v7 = +[NSBundle mainBundle];
        v8 = [v7 localizedStringForKey:@"[Route Creation] Offline Data Downloaded" value:@"localized string not found" table:0];

        v9 = [UIImage systemImageNamed:@"checkmark.circle"];
      }

      else
      {
        v11 = +[NSBundle mainBundle];
        v8 = [v11 localizedStringForKey:@"[Route Creation] Download Offline Data" value:@"localized string not found" table:0];

        v9 = [UIImage systemImageNamed:@"arrow.down.circle"];
      }

      v12 = v9;
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10084AC14;
      v38[3] = &unk_101661900;
      objc_copyWeak(&v39, location);
      v31 = [UIAction actionWithTitle:v8 image:v12 identifier:0 handler:v38];
      objc_destroyWeak(&v39);
    }

    else
    {
      v31 = 0;
    }

    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"[Route Creation] Directions on Route" value:@"localized string not found" table:0];
    v15 = [UIImage systemImageNamed:@"arrow.triangle.turn.up.right.circle"];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10084AC54;
    v36[3] = &unk_101661900;
    objc_copyWeak(&v37, location);
    v10 = [UIAction actionWithTitle:v14 image:v15 identifier:0 handler:v36];

    objc_destroyWeak(&v37);
  }

  else
  {
    v31 = 0;
    v10 = 0;
  }

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"[Route Creation] Edit Route" value:@"localized string not found" table:0];
  v18 = [UIImage systemImageNamed:@"pencil"];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10084AC94;
  v34[3] = &unk_101661900;
  objc_copyWeak(&v35, location);
  v19 = [UIAction actionWithTitle:v17 image:v18 identifier:0 handler:v34];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"[Route Creation] Delete Route" value:@"localized string not found" table:0];
  v22 = [UIImage systemImageNamed:@"trash"];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10084ACD4;
  v32[3] = &unk_101661900;
  objc_copyWeak(&v33, location);
  v23 = [UIAction actionWithTitle:v21 image:v22 identifier:0 handler:v32];

  [v23 setAttributes:2];
  v24 = objc_opt_new();
  v25 = v24;
  if (v10)
  {
    [v24 addObject:v10];
  }

  if (v31)
  {
    [v25 addObject:v31];
  }

  if ([v25 count])
  {
    v26 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v25];
    if ([v25 count] >= 2)
    {
      [v26 setPreferredElementSize:1];
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = objc_opt_new();
  v28 = v27;
  if (v26)
  {
    [v27 addObject:v26];
  }

  [v28 addObject:v19];
  [v28 addObject:v23];
  v29 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:0 children:v28];
  [*(v30 + 96) setMenu:v29];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);

  objc_destroyWeak(location);
}

- (void)_updateMoreButton
{
  [(UIButton *)self->_moreButton intrinsicContentSize];
  notesLabel = self->_notesLabel;

  [(MUFadingLabel *)notesLabel setTrailingPadding:?];
}

- (RouteLibraryCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v233.receiver = self;
  v233.super_class = RouteLibraryCell;
  v4 = [(RouteLibraryCell *)&v233 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(RouteLibraryCell *)v4 setAccessibilityIdentifier:v6];

    contentView = [(RouteLibraryCell *)v4 contentView];
    v8 = objc_opt_new();
    snapshotImageView = v4->_snapshotImageView;
    v4->_snapshotImageView = v8;

    [(UIImageView *)v4->_snapshotImageView setAccessibilityIdentifier:@"SnapshotImageView"];
    [(UIImageView *)v4->_snapshotImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_snapshotImageView setContentMode:4];
    [(UIImageView *)v4->_snapshotImageView _setContinuousCornerRadius:8.0];
    [(UIImageView *)v4->_snapshotImageView setClipsToBounds:1];
    layer = [(UIImageView *)v4->_snapshotImageView layer];
    [layer setBorderWidth:0.5];

    v11 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
    cGColor = [v11 CGColor];
    layer2 = [(UIImageView *)v4->_snapshotImageView layer];
    [layer2 setBorderColor:cGColor];

    [contentView addSubview:v4->_snapshotImageView];
    v14 = objc_opt_new();
    placeholderImageView = v4->_placeholderImageView;
    v4->_placeholderImageView = v14;

    [(UIImageView *)v4->_placeholderImageView setAccessibilityIdentifier:@"PlaceholderImageView"];
    [(UIImageView *)v4->_placeholderImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_placeholderImageView setContentMode:4];
    v16 = [UIImage systemImageNamed:@"figure.walk"];
    [(UIImageView *)v4->_placeholderImageView setImage:v16];

    v17 = +[UIColor tertiaryLabelColor];
    [(UIImageView *)v4->_placeholderImageView setBackgroundColor:v17];

    v18 = +[UIColor labelColor];
    [(UIImageView *)v4->_placeholderImageView setTintColor:v18];

    [(UIImageView *)v4->_placeholderImageView _setContinuousCornerRadius:8.0];
    [(UIImageView *)v4->_placeholderImageView setClipsToBounds:1];
    layer3 = [(UIImageView *)v4->_placeholderImageView layer];
    [layer3 setBorderWidth:0.5];

    v20 = [UIColor colorWithWhite:0.0 alpha:0.0799999982];
    cGColor2 = [v20 CGColor];
    layer4 = [(UIImageView *)v4->_placeholderImageView layer];
    [layer4 setBorderColor:cGColor2];

    [contentView addSubview:v4->_placeholderImageView];
    v23 = objc_opt_new();
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    layer5 = [v23 layer];
    [layer5 setShadowOffset:{0.0, 4.0}];

    v25 = +[UIColor blackColor];
    cGColor3 = [v25 CGColor];
    layer6 = [v23 layer];
    [layer6 setShadowColor:cGColor3];

    layer7 = [v23 layer];
    [layer7 setShadowRadius:8.0];

    layer8 = [v23 layer];
    LODWORD(v30) = 1042536202;
    [layer8 setShadowOpacity:v30];

    v31 = [UIBezierPath bezierPathWithRoundedRect:0.0 cornerRadius:0.0, 20.0, 20.0, 10.0];
    cGPath = [v31 CGPath];
    layer9 = [v23 layer];
    [layer9 setShadowPath:cGPath];

    v232 = v23;
    [contentView addSubview:v23];
    v34 = objc_opt_new();
    transportTypeContainerView = v4->_transportTypeContainerView;
    v4->_transportTypeContainerView = v34;

    [(UIView *)v4->_transportTypeContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_transportTypeContainerView _setCornerRadius:10.0];
    [(UIView *)v4->_transportTypeContainerView setClipsToBounds:1];
    [v23 addSubview:v4->_transportTypeContainerView];
    v36 = objc_opt_new();
    transportTypeImageView = v4->_transportTypeImageView;
    v4->_transportTypeImageView = v36;

    [(UIImageView *)v4->_transportTypeImageView setAccessibilityIdentifier:@"TransportTypeImageView"];
    [(UIImageView *)v4->_transportTypeImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_transportTypeImageView setContentMode:4];
    [(UIImageView *)v4->_transportTypeImageView setClipsToBounds:1];
    [(UIView *)v4->_transportTypeContainerView addSubview:v4->_transportTypeImageView];
    v38 = objc_opt_new();
    textContainerView = v4->_textContainerView;
    v4->_textContainerView = v38;

    [(UIView *)v4->_textContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v4->_textContainerView];
    v40 = objc_opt_new();
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v40;

    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v42 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody weight:UIFontWeightSemibold];
    [(UILabel *)v4->_titleLabel setFont:v42];

    LODWORD(v43) = 1148846080;
    [(UILabel *)v4->_titleLabel setContentHuggingPriority:1 forAxis:v43];
    LODWORD(v44) = 1148846080;
    [(UILabel *)v4->_titleLabel setContentCompressionResistancePriority:1 forAxis:v44];
    [(UIView *)v4->_textContainerView addSubview:v4->_titleLabel];
    v45 = objc_opt_new();
    addressLabel = v4->_addressLabel;
    v4->_addressLabel = v45;

    [(UILabel *)v4->_addressLabel setAccessibilityIdentifier:@"AddressLabel"];
    [(UILabel *)v4->_addressLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v47 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(UILabel *)v4->_addressLabel setFont:v47];

    v48 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_addressLabel setTextColor:v48];

    LODWORD(v49) = 1148846080;
    [(UILabel *)v4->_addressLabel setContentHuggingPriority:1 forAxis:v49];
    LODWORD(v50) = 1148846080;
    [(UILabel *)v4->_addressLabel setContentCompressionResistancePriority:1 forAxis:v50];
    [(UIView *)v4->_textContainerView addSubview:v4->_addressLabel];
    v51 = objc_opt_new();
    descriptionLabel = v4->_descriptionLabel;
    v4->_descriptionLabel = v51;

    [(MapsThemeMultiPartLabel *)v4->_descriptionLabel setAccessibilityIdentifier:@"DescriptionLabel"];
    [(MapsThemeMultiPartLabel *)v4->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsThemeMultiPartLabel *)v4->_descriptionLabel setUserInteractionEnabled:0];
    v53 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(MapsThemeMultiPartLabel *)v4->_descriptionLabel setFont:v53];

    v54 = +[UIColor secondaryLabelColor];
    [(MapsThemeMultiPartLabel *)v4->_descriptionLabel setTextColor:v54];

    [(MapsThemeMultiPartLabel *)v4->_descriptionLabel setNumberOfLines:1];
    LODWORD(v55) = 1148846080;
    [(MapsThemeMultiPartLabel *)v4->_descriptionLabel setContentHuggingPriority:1 forAxis:v55];
    LODWORD(v56) = 1148846080;
    [(MapsThemeMultiPartLabel *)v4->_descriptionLabel setContentCompressionResistancePriority:1 forAxis:v56];
    [(UIView *)v4->_textContainerView addSubview:v4->_descriptionLabel];
    v57 = [[MUFadingLabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    notesLabel = v4->_notesLabel;
    v4->_notesLabel = v57;

    [(MUFadingLabel *)v4->_notesLabel setAccessibilityIdentifier:@"NotesLabel"];
    [(MUFadingLabel *)v4->_notesLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v59 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(MUFadingLabel *)v4->_notesLabel setFont:v59];

    v60 = +[UIColor secondaryLabelColor];
    [(MUFadingLabel *)v4->_notesLabel setTextColor:v60];

    [(MUFadingLabel *)v4->_notesLabel setNumberOfLines:2];
    [(MUFadingLabel *)v4->_notesLabel setDelegate:v4];
    [contentView addSubview:v4->_notesLabel];
    v61 = objc_opt_new();
    moreButton = v4->_moreButton;
    v4->_moreButton = v61;

    [(UIButton *)v4->_moreButton setAccessibilityIdentifier:@"MoreButton"];
    [(UIButton *)v4->_moreButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v63 = v4->_moreButton;
    v64 = +[UIColor systemBlueColor];
    [(UIButton *)v63 setTitleColor:v64 forState:0];

    v65 = v4->_moreButton;
    v66 = +[NSBundle mainBundle];
    v67 = [v66 localizedStringForKey:@"[Route Creation] More Notes" value:@"localized string not found" table:0];
    [(UIButton *)v65 setTitle:v67 forState:0];

    [(UIButton *)v4->_moreButton addTarget:v4 action:"_pressedMore" forControlEvents:64];
    LODWORD(v68) = 1148846080;
    [(UIButton *)v4->_moreButton setContentHuggingPriority:0 forAxis:v68];
    LODWORD(v69) = 1148846080;
    [(UIButton *)v4->_moreButton setContentHuggingPriority:1 forAxis:v69];
    font = [(MUFadingLabel *)v4->_notesLabel font];
    titleLabel = [(UIButton *)v4->_moreButton titleLabel];
    [titleLabel setFont:font];

    v72 = +[UIColor clearColor];
    [(UIButton *)v4->_moreButton setBackgroundColor:v72];

    [(UIButton *)v4->_moreButton setHidden:1];
    [contentView addSubview:v4->_moreButton];
    v73 = objc_opt_new();
    menuButton = v4->_menuButton;
    v4->_menuButton = v73;

    [(UIButton *)v4->_menuButton setAccessibilityIdentifier:@"MenuButton"];
    [(UIButton *)v4->_menuButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v75 = +[UIColor systemBlueColor];
    [(UIButton *)v4->_menuButton setTintColor:v75];

    [(UIButton *)v4->_menuButton setShowsMenuAsPrimaryAction:1];
    v76 = [UIFont systemFontOfSize:17.0 weight:UIFontWeightSemibold];
    v228 = [UIImageSymbolConfiguration configurationWithFont:v76];

    v77 = v4->_menuButton;
    v78 = [UIImage systemImageNamed:@"ellipsis" withConfiguration:v228];
    [(UIButton *)v77 setImage:v78 forState:0];

    LODWORD(v79) = 1148846080;
    [(UIButton *)v4->_menuButton setContentHuggingPriority:0 forAxis:v79];
    LODWORD(v80) = 1148846080;
    [(UIButton *)v4->_menuButton setContentCompressionResistancePriority:0 forAxis:v80];
    [(UIButton *)v4->_menuButton _setTouchInsets:-11.0, -11.0, -11.0, -11.0];
    v231 = contentView;
    [contentView addSubview:v4->_menuButton];
    [(RouteLibraryCell *)v4 _updateMenu];
    v81 = objc_opt_new();
    offlineDownloadStateView = v4->_offlineDownloadStateView;
    v4->_offlineDownloadStateView = v81;

    [(RouteLibraryOfflineDownloadStateView *)v4->_offlineDownloadStateView setAccessibilityIdentifier:@"OfflineDownloadState"];
    [(RouteLibraryOfflineDownloadStateView *)v4->_offlineDownloadStateView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RouteLibraryOfflineDownloadStateView *)v4->_offlineDownloadStateView setHidden:1];
    [contentView addSubview:v4->_offlineDownloadStateView];
    trailingAnchor = [(UILabel *)v4->_titleLabel trailingAnchor];
    leadingAnchor = [(UIButton *)v4->_menuButton leadingAnchor];
    v85 = [trailingAnchor constraintEqualToAnchor:leadingAnchor constant:-8.0];
    v238 = v85;
    v86 = [NSArray arrayWithObjects:&v238 count:1];
    noOfflineDownloadConstraints = v4->_noOfflineDownloadConstraints;
    v4->_noOfflineDownloadConstraints = v86;

    trailingAnchor2 = [(UILabel *)v4->_titleLabel trailingAnchor];
    leadingAnchor2 = [(RouteLibraryOfflineDownloadStateView *)v4->_offlineDownloadStateView leadingAnchor];
    v90 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor2 constant:-8.0];
    v237 = v90;
    v91 = [NSArray arrayWithObjects:&v237 count:1];
    offlineDownloadConstraints = v4->_offlineDownloadConstraints;
    v4->_offlineDownloadConstraints = v91;

    lastBaselineAnchor = [(UIButton *)v4->_moreButton lastBaselineAnchor];
    lastBaselineAnchor2 = [(MUFadingLabel *)v4->_notesLabel lastBaselineAnchor];
    v95 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2];
    moreButtonBottomConstraint = v4->_moreButtonBottomConstraint;
    v4->_moreButtonBottomConstraint = v95;

    if (sub_10000FA08(v4) == 5)
    {
      v97 = 4.0;
    }

    else
    {
      v97 = 8.0;
    }

    if (sub_10000FA08(v4) == 5)
    {
      v98 = 8.0;
    }

    else
    {
      v98 = 12.0;
    }

    leadingAnchor3 = [(UIImageView *)v4->_snapshotImageView leadingAnchor];
    leadingAnchor4 = [contentView leadingAnchor];
    v222 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
    v236[0] = v222;
    topAnchor = [(UIImageView *)v4->_snapshotImageView topAnchor];
    topAnchor2 = [contentView topAnchor];
    v218 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
    v236[1] = v218;
    widthAnchor = [(UIImageView *)v4->_snapshotImageView widthAnchor];
    v214 = [widthAnchor constraintEqualToConstant:64.0];
    v236[2] = v214;
    heightAnchor = [(UIImageView *)v4->_snapshotImageView heightAnchor];
    v213 = [heightAnchor constraintEqualToConstant:64.0];
    v236[3] = v213;
    leadingAnchor5 = [(UIImageView *)v4->_placeholderImageView leadingAnchor];
    leadingAnchor6 = [contentView leadingAnchor];
    v210 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:16.0];
    v236[4] = v210;
    topAnchor3 = [(UIImageView *)v4->_placeholderImageView topAnchor];
    topAnchor4 = [contentView topAnchor];
    v206 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:16.0];
    v236[5] = v206;
    widthAnchor2 = [(UIImageView *)v4->_placeholderImageView widthAnchor];
    v204 = [widthAnchor2 constraintEqualToConstant:64.0];
    v236[6] = v204;
    heightAnchor2 = [(UIImageView *)v4->_placeholderImageView heightAnchor];
    v202 = [heightAnchor2 constraintEqualToConstant:64.0];
    v236[7] = v202;
    leadingAnchor7 = [v23 leadingAnchor];
    leadingAnchor8 = [(UIImageView *)v4->_placeholderImageView leadingAnchor];
    v199 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:48.0];
    v236[8] = v199;
    topAnchor5 = [v23 topAnchor];
    topAnchor6 = [(UIImageView *)v4->_placeholderImageView topAnchor];
    v196 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:48.0];
    v236[9] = v196;
    widthAnchor3 = [v23 widthAnchor];
    v194 = [widthAnchor3 constraintEqualToConstant:20.0];
    v236[10] = v194;
    heightAnchor3 = [v23 heightAnchor];
    v192 = [heightAnchor3 constraintEqualToConstant:20.0];
    v236[11] = v192;
    leadingAnchor9 = [(UIView *)v4->_transportTypeContainerView leadingAnchor];
    leadingAnchor10 = [v23 leadingAnchor];
    v189 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v236[12] = v189;
    trailingAnchor3 = [(UIView *)v4->_transportTypeContainerView trailingAnchor];
    trailingAnchor4 = [v23 trailingAnchor];
    v186 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v236[13] = v186;
    topAnchor7 = [(UIView *)v4->_transportTypeContainerView topAnchor];
    topAnchor8 = [v23 topAnchor];
    v183 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v236[14] = v183;
    bottomAnchor = [(UIView *)v4->_transportTypeContainerView bottomAnchor];
    bottomAnchor2 = [v23 bottomAnchor];
    v180 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v236[15] = v180;
    centerXAnchor = [(UIImageView *)v4->_transportTypeImageView centerXAnchor];
    centerXAnchor2 = [(UIView *)v4->_transportTypeContainerView centerXAnchor];
    v177 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v236[16] = v177;
    centerYAnchor = [(UIImageView *)v4->_transportTypeImageView centerYAnchor];
    centerYAnchor2 = [(UIView *)v4->_transportTypeContainerView centerYAnchor];
    v176 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v236[17] = v176;
    trailingAnchor5 = [(UIButton *)v4->_menuButton trailingAnchor];
    trailingAnchor6 = [contentView trailingAnchor];
    v173 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
    v236[18] = v173;
    centerYAnchor3 = [(UIButton *)v4->_menuButton centerYAnchor];
    centerYAnchor4 = [(UILabel *)v4->_titleLabel centerYAnchor];
    v170 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v236[19] = v170;
    leadingAnchor11 = [(UIView *)v4->_textContainerView leadingAnchor];
    trailingAnchor7 = [(UIImageView *)v4->_placeholderImageView trailingAnchor];
    v167 = [leadingAnchor11 constraintEqualToAnchor:trailingAnchor7 constant:v98];
    v236[20] = v167;
    trailingAnchor8 = [(UIView *)v4->_textContainerView trailingAnchor];
    trailingAnchor9 = [contentView trailingAnchor];
    v164 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9 constant:-16.0];
    v236[21] = v164;
    topAnchor9 = [(UIView *)v4->_textContainerView topAnchor];
    topAnchor10 = [contentView topAnchor];
    v161 = [topAnchor9 constraintGreaterThanOrEqualToAnchor:topAnchor10 constant:16.0];
    v236[22] = v161;
    topAnchor11 = [(UIView *)v4->_textContainerView topAnchor];
    topAnchor12 = [contentView topAnchor];
    LODWORD(v99) = *"";
    v158 = [topAnchor11 constraintEqualToAnchor:topAnchor12 constant:16.0 priority:v99];
    v236[23] = v158;
    centerYAnchor5 = [(UIView *)v4->_textContainerView centerYAnchor];
    centerYAnchor6 = [(UIImageView *)v4->_placeholderImageView centerYAnchor];
    LODWORD(v100) = 1148829696;
    v155 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6 constant:0.0 priority:v100];
    v236[24] = v155;
    leadingAnchor12 = [(UILabel *)v4->_titleLabel leadingAnchor];
    leadingAnchor13 = [(UIView *)v4->_textContainerView leadingAnchor];
    v152 = [leadingAnchor12 constraintEqualToAnchor:leadingAnchor13];
    v236[25] = v152;
    topAnchor13 = [(UILabel *)v4->_titleLabel topAnchor];
    topAnchor14 = [(UIView *)v4->_textContainerView topAnchor];
    v149 = [topAnchor13 constraintEqualToAnchor:topAnchor14];
    v236[26] = v149;
    leadingAnchor14 = [(UILabel *)v4->_addressLabel leadingAnchor];
    leadingAnchor15 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v146 = [leadingAnchor14 constraintEqualToAnchor:leadingAnchor15];
    v236[27] = v146;
    trailingAnchor10 = [(UILabel *)v4->_addressLabel trailingAnchor];
    trailingAnchor11 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v143 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
    v236[28] = v143;
    topAnchor15 = [(UILabel *)v4->_addressLabel topAnchor];
    bottomAnchor3 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v140 = [topAnchor15 constraintEqualToAnchor:bottomAnchor3 constant:1.0];
    v236[29] = v140;
    leadingAnchor16 = [(MapsThemeMultiPartLabel *)v4->_descriptionLabel leadingAnchor];
    leadingAnchor17 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v138 = [leadingAnchor16 constraintEqualToAnchor:leadingAnchor17];
    v236[30] = v138;
    trailingAnchor12 = [(MapsThemeMultiPartLabel *)v4->_descriptionLabel trailingAnchor];
    trailingAnchor13 = [(UIView *)v4->_textContainerView trailingAnchor];
    v135 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13];
    v236[31] = v135;
    topAnchor16 = [(MapsThemeMultiPartLabel *)v4->_descriptionLabel topAnchor];
    bottomAnchor4 = [(UILabel *)v4->_addressLabel bottomAnchor];
    v133 = [topAnchor16 constraintEqualToAnchor:bottomAnchor4 constant:-6.0];
    v236[32] = v133;
    bottomAnchor5 = [(MapsThemeMultiPartLabel *)v4->_descriptionLabel bottomAnchor];
    bottomAnchor6 = [(UIView *)v4->_textContainerView bottomAnchor];
    v131 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:8.0];
    v236[33] = v131;
    leadingAnchor18 = [(MUFadingLabel *)v4->_notesLabel leadingAnchor];
    leadingAnchor19 = [(UIView *)v4->_textContainerView leadingAnchor];
    v128 = [leadingAnchor18 constraintEqualToAnchor:leadingAnchor19];
    v236[34] = v128;
    trailingAnchor14 = [(MUFadingLabel *)v4->_notesLabel trailingAnchor];
    trailingAnchor15 = [(UIView *)v4->_textContainerView trailingAnchor];
    v125 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15];
    v236[35] = v125;
    topAnchor17 = [(MUFadingLabel *)v4->_notesLabel topAnchor];
    bottomAnchor7 = [(UIView *)v4->_textContainerView bottomAnchor];
    v102 = [topAnchor17 constraintEqualToAnchor:bottomAnchor7 constant:v97];
    v236[36] = v102;
    bottomAnchor8 = [contentView bottomAnchor];
    bottomAnchor9 = [(MUFadingLabel *)v4->_notesLabel bottomAnchor];
    LODWORD(v105) = 1132068864;
    v106 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:16.0 priority:v105];
    v236[37] = v106;
    trailingAnchor16 = [(UIButton *)v4->_moreButton trailingAnchor];
    trailingAnchor17 = [(MUFadingLabel *)v4->_notesLabel trailingAnchor];
    v109 = [trailingAnchor16 constraintEqualToAnchor:trailingAnchor17];
    v236[38] = v109;
    v236[39] = v4->_moreButtonBottomConstraint;
    v110 = [NSArray arrayWithObjects:v236 count:40];
    [NSLayoutConstraint activateConstraints:v110];

    [(RouteLibraryCell *)v4 _updateMoreButton];
    [NSLayoutConstraint activateConstraints:v4->_noOfflineDownloadConstraints];
    centerYAnchor7 = [(RouteLibraryOfflineDownloadStateView *)v4->_offlineDownloadStateView centerYAnchor];
    centerYAnchor8 = [(UIButton *)v4->_menuButton centerYAnchor];
    v226 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    v235[0] = v226;
    widthAnchor4 = [(RouteLibraryOfflineDownloadStateView *)v4->_offlineDownloadStateView widthAnchor];
    v112 = [widthAnchor4 constraintEqualToConstant:16.0];
    v235[1] = v112;
    heightAnchor4 = [(RouteLibraryOfflineDownloadStateView *)v4->_offlineDownloadStateView heightAnchor];
    widthAnchor5 = [(RouteLibraryOfflineDownloadStateView *)v4->_offlineDownloadStateView widthAnchor];
    v115 = [heightAnchor4 constraintEqualToAnchor:widthAnchor5];
    v235[2] = v115;
    trailingAnchor18 = [(RouteLibraryOfflineDownloadStateView *)v4->_offlineDownloadStateView trailingAnchor];
    leadingAnchor20 = [(UIButton *)v4->_menuButton leadingAnchor];
    v118 = [trailingAnchor18 constraintEqualToAnchor:leadingAnchor20 constant:-8.0];
    v235[3] = v118;
    v119 = [NSArray arrayWithObjects:v235 count:4];
    [NSLayoutConstraint activateConstraints:v119];

    v120 = +[NSNotificationCenter defaultCenter];
    [v120 addObserver:v4 selector:"_refreshOfflineSubscription" name:@"OfflineMapsSubscriptionsDidChangeNotification" object:0];

    v234 = objc_opt_class();
    v121 = [NSArray arrayWithObjects:&v234 count:1];
    v122 = [(RouteLibraryCell *)v4 registerForTraitChanges:v121 withTarget:v4 action:"_userInterfaceStyleDidChange"];

    _GEOConfigAddDelegateListenerForKey();
  }

  return v4;
}

@end
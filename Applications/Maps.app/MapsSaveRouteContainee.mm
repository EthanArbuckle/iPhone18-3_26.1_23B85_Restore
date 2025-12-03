@interface MapsSaveRouteContainee
- (BOOL)_doneEnabled;
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (MapsSaveRouteContainee)initWithDelegate:(id)delegate isEditing:(BOOL)editing showInitialKeyboard:(BOOL)keyboard;
- (double)heightForLayout:(unint64_t)layout;
- (void)_pressedCancel;
- (void)_pressedSave:(id)save;
- (void)_startFetchingAddressIfNeeded;
- (void)_textValuesDidChange;
- (void)didBecomeCurrent;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)current;
@end

@implementation MapsSaveRouteContainee

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  textCopy = text;
  text = [view text];
  v10 = [text stringByReplacingCharactersInRange:location withString:{length, textCopy}];

  LOBYTE(location) = [v10 length] < 0x2711;
  return location;
}

- (BOOL)_doneEnabled
{
  text = [(UITextField *)self->_nameField text];
  if ([text length])
  {
    text2 = [(UITextField *)self->_nameField text];
  }

  else
  {
    text2 = &stru_1016631F0;
  }

  text3 = [(TextViewWithPlaceholderText *)self->_notesField text];
  if ([text3 length])
  {
    text4 = [(TextViewWithPlaceholderText *)self->_notesField text];
  }

  else
  {
    text4 = &stru_1016631F0;
  }

  isEditing = self->_isEditing;
  v8 = [(__CFString *)text2 length];
  if (isEditing)
  {
    if (v8)
    {
      if ([(NSString *)self->_originalName isEqualToString:text2])
      {
        v9 = ![(NSString *)self->_originalNotes isEqualToString:text4];
      }

      else
      {
        LOBYTE(v9) = 1;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = v8 != 0;
  }

  return v9;
}

- (void)_textValuesDidChange
{
  _doneEnabled = [(MapsSaveRouteContainee *)self _doneEnabled];
  trailingButton = [(ModalCardHeaderView *)self->_modalHeaderView trailingButton];
  [trailingButton setEnabled:_doneEnabled];
}

- (void)didBecomeCurrent
{
  v3.receiver = self;
  v3.super_class = MapsSaveRouteContainee;
  [(ContaineeViewController *)&v3 didBecomeCurrent];
  if (self->_showInitialKeyboard)
  {
    [(UITextField *)self->_nameField becomeFirstResponder];
  }
}

- (void)willBecomeCurrent:(BOOL)current
{
  v6.receiver = self;
  v6.super_class = MapsSaveRouteContainee;
  [(ContaineeViewController *)&v6 willBecomeCurrent:current];
  _doneEnabled = [(MapsSaveRouteContainee *)self _doneEnabled];
  trailingButton = [(ModalCardHeaderView *)self->_modalHeaderView trailingButton];
  [trailingButton setEnabled:_doneEnabled];
}

- (void)_pressedSave:(id)save
{
  saveCopy = save;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "pressed save", buf, 2u);
  }

  v6 = saveCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 setEnabled:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  routeData = [WeakRetained routeData];

  text = [(UITextField *)self->_nameField text];
  if ([text length])
  {
    [(UITextField *)self->_nameField text];
  }

  else
  {
    [routeData routeName];
  }
  v12 = ;

  [routeData setUserProvidedName:v12];
  text2 = [(TextViewWithPlaceholderText *)self->_notesField text];
  v14 = text2;
  if (text2)
  {
    v15 = text2;
  }

  else
  {
    v15 = &stru_1016631F0;
  }

  [routeData setUserProvidedNotes:v15];

  v16 = dispatch_group_create();
  if (self->_isEditing)
  {
    goto LABEL_27;
  }

  offlineDownloadView = self->_offlineDownloadView;
  if (!offlineDownloadView || ![(MapsSaveRouteOfflineDownloadView *)offlineDownloadView shouldDownload])
  {
    goto LABEL_27;
  }

  estimatedRegionSizeInBytes = [(MapsSaveRouteOfflineDownloadView *)self->_offlineDownloadView estimatedRegionSizeInBytes];
  v19 = +[MapsOfflineUIHelper sharedHelper];
  v43 = estimatedRegionSizeInBytes;
  v20 = [v19 alertControllerForInsufficientDiskSpaceForDownloadSize:estimatedRegionSizeInBytes];

  if (!v20)
  {
    v42 = v12;
    v22 = objc_loadWeakRetained(&self->_delegate);
    routeData2 = [v22 routeData];
    boundingMapRegion = [routeData2 boundingMapRegion];
    v25 = [GEOMapRegion _maps_offlineDownloadRegionForRouteBounds:boundingMapRegion];

    v26 = sub_1007989A4();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v70 = v25;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Adding offline region: %{private}@", buf, 0xCu);
    }

    if (GEOConfigGetBOOL())
    {
      v27 = +[NSUserDefaults standardUserDefaults];
      v28 = [v27 BOOLForKey:@"OfflineMapsAutoUpdateDisclaimerDisplayed"];

      if ((v28 & 1) == 0)
      {
        v29 = +[NSUserDefaults standardUserDefaults];
        [v29 setBool:1 forKey:@"OfflineMapsAutoUpdateDisclaimerDisplayed"];
      }
    }

    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_100F27838;
    v66[3] = &unk_10165D378;
    v30 = v16;
    v67 = v30;
    v31 = v25;
    v68 = v31;
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_100F2798C;
    v61[3] = &unk_10165D3C8;
    v65 = v43;
    v41 = objc_retainBlock(v66);
    v64 = v41;
    v32 = v30;
    v62 = v32;
    selfCopy = self;
    v33 = objc_retainBlock(v61);
    dispatch_group_enter(v32);
    v34 = +[GEOMapService sharedService];
    v44 = [v34 ticketForOfflineRegionNameSuggestionWithRegion:v31 traits:0];

    v35 = sub_1007989A4();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v70 = v44;
      v71 = 2112;
      v72 = v31;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Looking up name with ticket %@, region %@", buf, 0x16u);
    }

    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100F27B8C;
    v56[3] = &unk_10165D3F0;
    v57 = v31;
    v58 = v42;
    v60 = v33;
    v36 = v32;
    v12 = v42;
    v59 = v36;
    v37 = v33;
    v38 = v31;
    GEOConfigGetDouble();
    [v44 submitWithHandler:v56 timeout:v39 networkActivity:0 queue:&_dispatch_main_q];

LABEL_27:
    dispatch_group_enter(v16);
    if (self->_isEditing)
    {
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_100F27D88;
      v53[3] = &unk_10165D300;
      v54 = routeData;
      v55 = v16;
      [MapsSavedRoutesManager saveRouteData:v54 completion:v53];
    }

    else
    {
      objc_initWeak(buf, self);
      fetchAddressDispatchGroup = self->_fetchAddressDispatchGroup;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100F27E8C;
      block[3] = &unk_101661480;
      objc_copyWeak(&v52, buf);
      v50 = v16;
      v51 = routeData;
      dispatch_group_notify(fetchAddressDispatchGroup, &_dispatch_main_q, block);

      objc_destroyWeak(&v52);
      objc_destroyWeak(buf);
    }

    objc_initWeak(buf, self);
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100F27F64;
    v45[3] = &unk_101661480;
    objc_copyWeak(&v48, buf);
    v46 = v8;
    v47 = routeData;
    dispatch_group_notify(v16, &_dispatch_main_q, v45);

    objc_destroyWeak(&v48);
    objc_destroyWeak(buf);
    goto LABEL_31;
  }

  v21 = sub_10003D9F4();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v70 = v43;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Displaying insufficient disk space alert for attempted download of %{bytes}llu", buf, 0xCu);
  }

  [(MapsSaveRouteContainee *)self _maps_topMostPresentViewController:v20 animated:1 completion:0];
  [v8 setEnabled:1];

LABEL_31:
}

- (void)_pressedCancel
{
  v3 = sub_1007989A4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "pressed cancel", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained popContainee];
}

- (double)heightForLayout:(unint64_t)layout
{
  v3 = -1.0;
  if (layout - 3 <= 2)
  {
    view = [(MapsSaveRouteContainee *)self view];
    [view layoutIfNeeded];

    view2 = [(MapsSaveRouteContainee *)self view];
    [view2 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
    v8 = v7;

    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController bottomSafeOffset];
    v3 = v10 + v8;
  }

  return v3;
}

- (void)_startFetchingAddressIfNeeded
{
  if (!self->_isEditing)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    routeData = [WeakRetained routeData];

    address = [routeData address];
    if (!address || (v6 = address, [routeData iso3166CountryCode], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8 <= 1))
    {
      boundingMapRegion = [routeData boundingMapRegion];
      v10 = boundingMapRegion;
      if (boundingMapRegion)
      {
        [boundingMapRegion centerLat];
        v12 = v11;
        [v10 centerLng];
        v14 = v13;
        v15 = +[GEOMapService sharedService];
        v16 = [v15 ticketForReverseGeocodeCoordinate:0 shiftLocationsIfNeeded:self->_traits traits:{v12, v14}];

        v17 = self->_fetchAddressDispatchGroup;
        dispatch_group_enter(v17);
        objc_initWeak(&location, self);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_100F28620;
        v19[3] = &unk_10165D328;
        objc_copyWeak(&v22, &location);
        v18 = v17;
        v20 = v18;
        v21 = routeData;
        [v16 submitWithHandler:v19 networkActivity:0];

        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)viewDidLoad
{
  v186.receiver = self;
  v186.super_class = MapsSaveRouteContainee;
  [(ContaineeViewController *)&v186 viewDidLoad];
  [(MapsSaveRouteContainee *)self _startFetchingAddressIfNeeded];
  view = [(MapsSaveRouteContainee *)self view];
  [view setAccessibilityIdentifier:@"SaveToLibraryView"];

  headerView = [(ContaineeViewController *)self headerView];
  v5 = [[_TtC4Maps19ModalCardHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(ModalCardHeaderView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(view) = self->_isEditing;
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (view)
  {
    v8 = @"[Route Creation] Edit Route Title";
  }

  else
  {
    v8 = @"[Route Creation] Save Route Title";
  }

  v9 = [v6 localizedStringForKey:v8 value:@"localized string not found" table:0];
  [(ModalCardHeaderView *)v5 setTitle:v9];

  v10 = [MapsThemeButton buttonWithType:1];
  [v10 addTarget:self action:"_pressedCancel" forControlEvents:64];
  v181 = v10;
  [(ModalCardHeaderView *)v5 setLeadingButton:v10];
  v11 = [MapsThemeButton buttonWithType:1];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"[Route Creation] Done" value:@"localized string not found" table:0];
  [v11 setTitle:v13 forState:0];

  [v11 addTarget:self action:"_pressedSave:" forControlEvents:64];
  v180 = v11;
  [(ModalCardHeaderView *)v5 setTrailingButton:v11];
  v185 = headerView;
  [headerView addSubview:v5];
  v184 = v5;
  objc_storeStrong(&self->_modalHeaderView, v5);
  v14 = objc_opt_new();
  contentContainer = self->_contentContainer;
  self->_contentContainer = v14;

  [(UIView *)self->_contentContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(ContaineeViewController *)self contentView];
  [contentView addSubview:self->_contentContainer];

  v17 = objc_opt_new();
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = +[UIColor secondarySystemGroupedBackgroundColor];
  [v17 setBackgroundColor:v18];

  [v17 _setContinuousCornerRadius:10.0];
  [(UIView *)self->_contentContainer addSubview:v17];
  v19 = objc_opt_new();
  nameField = self->_nameField;
  self->_nameField = v19;

  [(UITextField *)self->_nameField setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextField *)self->_nameField setAccessibilityIdentifier:@"RouteNameTextField"];
  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"[Route Creation] Route Name" value:@"localized string not found" table:0];
  [(UITextField *)self->_nameField setPlaceholder:v22];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  routeData = [WeakRetained routeData];

  userProvidedName = [routeData userProvidedName];
  v179 = routeData;
  if ([userProvidedName length])
  {
    [routeData userProvidedName];
  }

  else
  {
    [routeData routeName];
  }
  v26 = ;
  [(UITextField *)self->_nameField setText:v26];

  v27 = +[UIFont system17SemiBold];
  [(UITextField *)self->_nameField setFont:v27];

  [(UITextField *)self->_nameField setClearButtonMode:1];
  [(UITextField *)self->_nameField setAutocapitalizationType:1];
  [v17 addSubview:self->_nameField];
  v28 = +[NSNotificationCenter defaultCenter];
  [v28 addObserver:self selector:"_textValuesDidChange" name:UITextFieldTextDidChangeNotification object:self->_nameField];

  v29 = objc_opt_new();
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v30) = 1148846080;
  [v29 setContentHuggingPriority:1 forAxis:v30];
  LODWORD(v31) = 1148846080;
  [v29 setContentCompressionResistancePriority:1 forAxis:v31];
  v183 = v29;
  [v17 addSubview:v29];
  v32 = objc_opt_new();
  notesField = self->_notesField;
  self->_notesField = v32;

  [(TextViewWithPlaceholderText *)self->_notesField setTranslatesAutoresizingMaskIntoConstraints:0];
  [(TextViewWithPlaceholderText *)self->_notesField setAccessibilityIdentifier:@"RouteNotesTextView"];
  v34 = +[UIColor clearColor];
  [(TextViewWithPlaceholderText *)self->_notesField setBackgroundColor:v34];

  v35 = +[NSBundle mainBundle];
  [v35 localizedStringForKey:@"[Route Creation] Add notes" value:@"localized string not found" table:0];
  v36 = v182 = v17;
  placeholderLabel = [(TextViewWithPlaceholderText *)self->_notesField placeholderLabel];
  [placeholderLabel setText:v36];

  v38 = +[UIColor secondaryLabelColor];
  placeholderLabel2 = [(TextViewWithPlaceholderText *)self->_notesField placeholderLabel];
  [placeholderLabel2 setTextColor:v38];

  v40 = +[UIFont system17];
  placeholderLabel3 = [(TextViewWithPlaceholderText *)self->_notesField placeholderLabel];
  [placeholderLabel3 setFont:v40];

  v42 = +[UIFont system17];
  [(TextViewWithPlaceholderText *)self->_notesField setFont:v42];

  [(TextViewWithPlaceholderText *)self->_notesField setDelegate:self];
  v43 = +[UIColor labelColor];
  [(TextViewWithPlaceholderText *)self->_notesField setTextColor:v43];

  v44 = objc_loadWeakRetained(&self->_delegate);
  routeData2 = [v44 routeData];
  userProvidedNotes = [routeData2 userProvidedNotes];
  [(TextViewWithPlaceholderText *)self->_notesField setText:userProvidedNotes];

  v47 = v182;
  [v182 addSubview:self->_notesField];
  v48 = +[NSNotificationCenter defaultCenter];
  [v48 addObserver:self selector:"_textValuesDidChange" name:UITextViewTextDidChangeNotification object:self->_notesField];

  if (!self->_isEditing)
  {
    if (GEOSupportsOfflineMaps())
    {
      v49 = +[MapsOfflineUIHelper sharedHelper];
      isUsingOfflineMaps = [v49 isUsingOfflineMaps];

      if ((isUsingOfflineMaps & 1) == 0)
      {
        v51 = objc_loadWeakRetained(&self->_delegate);
        routeData3 = [v51 routeData];
        boundingMapRegion = [routeData3 boundingMapRegion];

        v53 = [GEOMapRegion _maps_offlineDownloadRegionForRouteBounds:boundingMapRegion];
        v54 = [GEOMapRegion _maps_offlineCoverageRegionForRouteBounds:boundingMapRegion];
        v55 = +[MapsOfflineUIHelper sharedHelper];
        v56 = [v55 subscriptionInfoForRegion:v54];
        existingOfflineSubscription = self->_existingOfflineSubscription;
        self->_existingOfflineSubscription = v56;

        v58 = [[MapsSaveRouteOfflineDownloadView alloc] initWithRegion:v53 existingSubscription:self->_existingOfflineSubscription];
        offlineDownloadView = self->_offlineDownloadView;
        self->_offlineDownloadView = v58;

        [(MapsSaveRouteOfflineDownloadView *)self->_offlineDownloadView setTranslatesAutoresizingMaskIntoConstraints:0];
        v60 = +[UIColor secondarySystemGroupedBackgroundColor];
        [(MapsSaveRouteOfflineDownloadView *)self->_offlineDownloadView setBackgroundColor:v60];

        v61 = v53;
        [(MapsSaveRouteOfflineDownloadView *)self->_offlineDownloadView _setContinuousCornerRadius:10.0];
        [(UIView *)self->_contentContainer addSubview:self->_offlineDownloadView];
        v62 = boundingMapRegion;
        if (!self->_existingOfflineSubscription)
        {
          v63 = objc_alloc_init(UILabel);
          offlineDownloadFooter = self->_offlineDownloadFooter;
          self->_offlineDownloadFooter = v63;

          v65 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote compatibleWithTraitCollection:0];
          [(UILabel *)self->_offlineDownloadFooter setFont:v65];

          v66 = +[UIColor secondaryLabelColor];
          [(UILabel *)self->_offlineDownloadFooter setTextColor:v66];

          [(UILabel *)self->_offlineDownloadFooter setAccessibilityIdentifier:@"DownloadMapFooter"];
          [(UILabel *)self->_offlineDownloadFooter setTranslatesAutoresizingMaskIntoConstraints:0];
          [(UILabel *)self->_offlineDownloadFooter setNumberOfLines:0];
          if (GEOConfigGetBOOL() && (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v67 = objc_claimAutoreleasedReturnValue(), v68 = [v67 BOOLForKey:@"OfflineMapsAutoUpdateDisclaimerDisplayed"], v67, !v68))
          {
            v69 = @"SAVE_ROUTE_DOWNLOAD_MAP_FOOTER_AUTO_UPDATES_DISCLAIMER";
          }

          else
          {
            v69 = @"SAVE_ROUTE_DOWNLOAD_MAP_FOOTER";
          }

          v70 = +[NSBundle mainBundle];
          v71 = [v70 localizedStringForKey:v69 value:@"localized string not found" table:@"Offline"];
          [(UILabel *)self->_offlineDownloadFooter setText:v71];

          [(UIView *)self->_contentContainer addSubview:self->_offlineDownloadFooter];
          v61 = v53;
          v62 = boundingMapRegion;
        }

        v47 = v182;
      }
    }
  }

  leadingAnchor = [(ModalCardHeaderView *)v184 leadingAnchor];
  leadingAnchor2 = [v185 leadingAnchor];
  v170 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v190[0] = v170;
  topAnchor = [(ModalCardHeaderView *)v184 topAnchor];
  topAnchor2 = [v185 topAnchor];
  v166 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v190[1] = v166;
  trailingAnchor = [(ModalCardHeaderView *)v184 trailingAnchor];
  trailingAnchor2 = [v185 trailingAnchor];
  v163 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v190[2] = v163;
  bottomAnchor = [(ModalCardHeaderView *)v184 bottomAnchor];
  bottomAnchor2 = [v185 bottomAnchor];
  v160 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v190[3] = v160;
  heightAnchor = [v185 heightAnchor];
  v158 = [heightAnchor constraintEqualToConstant:72.0];
  v190[4] = v158;
  leadingAnchor3 = [(UIView *)self->_contentContainer leadingAnchor];
  contentView2 = [(ContaineeViewController *)self contentView];
  leadingAnchor4 = [contentView2 leadingAnchor];
  v154 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v190[5] = v154;
  trailingAnchor3 = [(UIView *)self->_contentContainer trailingAnchor];
  contentView3 = [(ContaineeViewController *)self contentView];
  trailingAnchor4 = [contentView3 trailingAnchor];
  v150 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v190[6] = v150;
  topAnchor3 = [(UIView *)self->_contentContainer topAnchor];
  headerView2 = [(ContaineeViewController *)self headerView];
  bottomAnchor3 = [headerView2 bottomAnchor];
  v146 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3];
  v190[7] = v146;
  bottomAnchor4 = [(UIView *)self->_contentContainer bottomAnchor];
  contentView4 = [(ContaineeViewController *)self contentView];
  bottomAnchor5 = [contentView4 bottomAnchor];
  v142 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v190[8] = v142;
  leadingAnchor5 = [v47 leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_contentContainer leadingAnchor];
  v139 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:16.0];
  v190[9] = v139;
  trailingAnchor5 = [v47 trailingAnchor];
  trailingAnchor6 = [(UIView *)self->_contentContainer trailingAnchor];
  v136 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
  v190[10] = v136;
  topAnchor4 = [v47 topAnchor];
  topAnchor5 = [(UIView *)self->_contentContainer topAnchor];
  v133 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v190[11] = v133;
  leadingAnchor7 = [(UITextField *)self->_nameField leadingAnchor];
  leadingAnchor8 = [v47 leadingAnchor];
  v130 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:15.0];
  v190[12] = v130;
  trailingAnchor7 = [(UITextField *)self->_nameField trailingAnchor];
  trailingAnchor8 = [v47 trailingAnchor];
  v127 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-10.0];
  v190[13] = v127;
  topAnchor6 = [(UITextField *)self->_nameField topAnchor];
  topAnchor7 = [v47 topAnchor];
  v124 = [topAnchor6 constraintEqualToAnchor:topAnchor7 constant:-1.0];
  v190[14] = v124;
  heightAnchor2 = [(UITextField *)self->_nameField heightAnchor];
  v122 = [heightAnchor2 constraintEqualToConstant:48.0];
  v190[15] = v122;
  leadingAnchor9 = [v183 leadingAnchor];
  leadingAnchor10 = [v47 leadingAnchor];
  v119 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:16.0];
  v190[16] = v119;
  trailingAnchor9 = [v183 trailingAnchor];
  trailingAnchor10 = [v47 trailingAnchor];
  v116 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v190[17] = v116;
  topAnchor8 = [v183 topAnchor];
  bottomAnchor6 = [(UITextField *)self->_nameField bottomAnchor];
  v113 = [topAnchor8 constraintEqualToAnchor:bottomAnchor6];
  v190[18] = v113;
  leadingAnchor11 = [(TextViewWithPlaceholderText *)self->_notesField leadingAnchor];
  leadingAnchor12 = [v47 leadingAnchor];
  v110 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:10.0];
  v190[19] = v110;
  trailingAnchor11 = [(TextViewWithPlaceholderText *)self->_notesField trailingAnchor];
  trailingAnchor12 = [v47 trailingAnchor];
  v107 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12 constant:-16.0];
  v190[20] = v107;
  topAnchor9 = [(TextViewWithPlaceholderText *)self->_notesField topAnchor];
  bottomAnchor7 = [v183 bottomAnchor];
  v104 = [topAnchor9 constraintEqualToAnchor:bottomAnchor7 constant:6.0];
  v190[21] = v104;
  heightAnchor3 = [(TextViewWithPlaceholderText *)self->_notesField heightAnchor];
  v72 = [heightAnchor3 constraintEqualToConstant:92.0];
  v190[22] = v72;
  bottomAnchor8 = [(TextViewWithPlaceholderText *)self->_notesField bottomAnchor];
  bottomAnchor9 = [v47 bottomAnchor];
  v75 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:6.0];
  v190[23] = v75;
  bottomAnchor10 = [(UIView *)self->_contentContainer bottomAnchor];
  [v47 bottomAnchor];
  v78 = v77 = v47;
  v79 = [bottomAnchor10 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v78 multiplier:1.0];
  v190[24] = v79;
  v80 = [NSArray arrayWithObjects:v190 count:25];
  [NSLayoutConstraint activateConstraints:v80];

  v81 = v77;
  v82 = self->_offlineDownloadView;
  if (v82)
  {
    leadingAnchor13 = [(MapsSaveRouteOfflineDownloadView *)v82 leadingAnchor];
    leadingAnchor14 = [(UIView *)self->_contentContainer leadingAnchor];
    v83 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14 constant:16.0];
    v189[0] = v83;
    trailingAnchor13 = [(MapsSaveRouteOfflineDownloadView *)self->_offlineDownloadView trailingAnchor];
    trailingAnchor14 = [(UIView *)self->_contentContainer trailingAnchor];
    v86 = [trailingAnchor13 constraintEqualToAnchor:trailingAnchor14 constant:-16.0];
    v189[1] = v86;
    topAnchor10 = [(MapsSaveRouteOfflineDownloadView *)self->_offlineDownloadView topAnchor];
    bottomAnchor11 = [v77 bottomAnchor];
    v89 = [topAnchor10 constraintEqualToAnchor:bottomAnchor11 constant:16.0];
    v189[2] = v89;
    v90 = [NSArray arrayWithObjects:v189 count:3];
    [NSLayoutConstraint activateConstraints:v90];

    v91 = self->_offlineDownloadFooter;
    if (v91)
    {
      leadingAnchor15 = [(UILabel *)v91 leadingAnchor];
      leadingAnchor16 = [(MapsSaveRouteOfflineDownloadView *)self->_offlineDownloadView leadingAnchor];
      v92 = [leadingAnchor15 constraintEqualToAnchor:leadingAnchor16 constant:16.0];
      v188[0] = v92;
      trailingAnchor15 = [(UILabel *)self->_offlineDownloadFooter trailingAnchor];
      trailingAnchor16 = [(MapsSaveRouteOfflineDownloadView *)self->_offlineDownloadView trailingAnchor];
      v169 = [trailingAnchor15 constraintEqualToAnchor:trailingAnchor16 constant:-16.0];
      v188[1] = v169;
      topAnchor11 = [(UILabel *)self->_offlineDownloadFooter topAnchor];
      bottomAnchor12 = [(MapsSaveRouteOfflineDownloadView *)self->_offlineDownloadView bottomAnchor];
      v96 = [topAnchor11 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor12 multiplier:1.0];
      v188[2] = v96;
      bottomAnchor13 = [(UIView *)self->_contentContainer bottomAnchor];
      bottomAnchor14 = [(UILabel *)self->_offlineDownloadFooter bottomAnchor];
      v99 = [bottomAnchor13 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor14 multiplier:1.0];
      v188[3] = v99;
      v100 = [NSArray arrayWithObjects:v188 count:4];
      [NSLayoutConstraint activateConstraints:v100];

      bottomAnchor16 = leadingAnchor16;
      bottomAnchor15 = leadingAnchor15;
    }

    else
    {
      bottomAnchor15 = [(UIView *)self->_contentContainer bottomAnchor];
      bottomAnchor16 = [(MapsSaveRouteOfflineDownloadView *)self->_offlineDownloadView bottomAnchor];
      v92 = [bottomAnchor15 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor16 multiplier:1.0];
      v187 = v92;
      trailingAnchor15 = [NSArray arrayWithObjects:&v187 count:1];
      [NSLayoutConstraint activateConstraints:trailingAnchor15];
    }

    v81 = v182;
  }
}

- (MapsSaveRouteContainee)initWithDelegate:(id)delegate isEditing:(BOOL)editing showInitialKeyboard:(BOOL)keyboard
{
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = MapsSaveRouteContainee;
  v9 = [(MapsSaveRouteContainee *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v10->_isEditing = editing;
    v10->_showInitialKeyboard = keyboard;
    cardPresentationController = [(ContaineeViewController *)v10 cardPresentationController];
    [cardPresentationController setHideGrabber:1];

    cardPresentationController2 = [(ContaineeViewController *)v10 cardPresentationController];
    [cardPresentationController2 setPresentedModally:1];

    cardPresentationController3 = [(ContaineeViewController *)v10 cardPresentationController];
    [cardPresentationController3 setAllowsSwipeToDismiss:0];

    routeData = [delegateCopy routeData];
    userProvidedName = [routeData userProvidedName];
    if ([(__CFString *)userProvidedName length])
    {
      v16 = userProvidedName;
    }

    else
    {
      v16 = &stru_1016631F0;
    }

    objc_storeStrong(&v10->_originalName, v16);
    userProvidedNotes = [routeData userProvidedNotes];
    if ([(__CFString *)userProvidedNotes length])
    {
      v18 = userProvidedNotes;
    }

    else
    {
      v18 = &stru_1016631F0;
    }

    objc_storeStrong(&v10->_originalNotes, v18);
    v19 = dispatch_group_create();
    fetchAddressDispatchGroup = v10->_fetchAddressDispatchGroup;
    v10->_fetchAddressDispatchGroup = v19;
  }

  return v10;
}

@end
@interface MapsSaveRouteContainee
- (BOOL)_doneEnabled;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (MapsSaveRouteContainee)initWithDelegate:(id)a3 isEditing:(BOOL)a4 showInitialKeyboard:(BOOL)a5;
- (double)heightForLayout:(unint64_t)a3;
- (void)_pressedCancel;
- (void)_pressedSave:(id)a3;
- (void)_startFetchingAddressIfNeeded;
- (void)_textValuesDidChange;
- (void)didBecomeCurrent;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)a3;
@end

@implementation MapsSaveRouteContainee

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v8 = a5;
  v9 = [a3 text];
  v10 = [v9 stringByReplacingCharactersInRange:location withString:{length, v8}];

  LOBYTE(location) = [v10 length] < 0x2711;
  return location;
}

- (BOOL)_doneEnabled
{
  v3 = [(UITextField *)self->_nameField text];
  if ([v3 length])
  {
    v4 = [(UITextField *)self->_nameField text];
  }

  else
  {
    v4 = &stru_1016631F0;
  }

  v5 = [(TextViewWithPlaceholderText *)self->_notesField text];
  if ([v5 length])
  {
    v6 = [(TextViewWithPlaceholderText *)self->_notesField text];
  }

  else
  {
    v6 = &stru_1016631F0;
  }

  isEditing = self->_isEditing;
  v8 = [(__CFString *)v4 length];
  if (isEditing)
  {
    if (v8)
    {
      if ([(NSString *)self->_originalName isEqualToString:v4])
      {
        v9 = ![(NSString *)self->_originalNotes isEqualToString:v6];
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
  v3 = [(MapsSaveRouteContainee *)self _doneEnabled];
  v4 = [(ModalCardHeaderView *)self->_modalHeaderView trailingButton];
  [v4 setEnabled:v3];
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

- (void)willBecomeCurrent:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MapsSaveRouteContainee;
  [(ContaineeViewController *)&v6 willBecomeCurrent:a3];
  v4 = [(MapsSaveRouteContainee *)self _doneEnabled];
  v5 = [(ModalCardHeaderView *)self->_modalHeaderView trailingButton];
  [v5 setEnabled:v4];
}

- (void)_pressedSave:(id)a3
{
  v4 = a3;
  v5 = sub_1007989A4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "pressed save", buf, 2u);
  }

  v6 = v4;
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
  v10 = [WeakRetained routeData];

  v11 = [(UITextField *)self->_nameField text];
  if ([v11 length])
  {
    [(UITextField *)self->_nameField text];
  }

  else
  {
    [v10 routeName];
  }
  v12 = ;

  [v10 setUserProvidedName:v12];
  v13 = [(TextViewWithPlaceholderText *)self->_notesField text];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_1016631F0;
  }

  [v10 setUserProvidedNotes:v15];

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

  v18 = [(MapsSaveRouteOfflineDownloadView *)self->_offlineDownloadView estimatedRegionSizeInBytes];
  v19 = +[MapsOfflineUIHelper sharedHelper];
  v43 = v18;
  v20 = [v19 alertControllerForInsufficientDiskSpaceForDownloadSize:v18];

  if (!v20)
  {
    v42 = v12;
    v22 = objc_loadWeakRetained(&self->_delegate);
    v23 = [v22 routeData];
    v24 = [v23 boundingMapRegion];
    v25 = [GEOMapRegion _maps_offlineDownloadRegionForRouteBounds:v24];

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
    v63 = self;
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
      v54 = v10;
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
      v51 = v10;
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
    v47 = v10;
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

- (double)heightForLayout:(unint64_t)a3
{
  v3 = -1.0;
  if (a3 - 3 <= 2)
  {
    v5 = [(MapsSaveRouteContainee *)self view];
    [v5 layoutIfNeeded];

    v6 = [(MapsSaveRouteContainee *)self view];
    [v6 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
    v8 = v7;

    v9 = [(ContaineeViewController *)self cardPresentationController];
    [v9 bottomSafeOffset];
    v3 = v10 + v8;
  }

  return v3;
}

- (void)_startFetchingAddressIfNeeded
{
  if (!self->_isEditing)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = [WeakRetained routeData];

    v5 = [v4 address];
    if (!v5 || (v6 = v5, [v4 iso3166CountryCode], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8 <= 1))
    {
      v9 = [v4 boundingMapRegion];
      v10 = v9;
      if (v9)
      {
        [v9 centerLat];
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
        v21 = v4;
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
  v3 = [(MapsSaveRouteContainee *)self view];
  [v3 setAccessibilityIdentifier:@"SaveToLibraryView"];

  v4 = [(ContaineeViewController *)self headerView];
  v5 = [[_TtC4Maps19ModalCardHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(ModalCardHeaderView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v3) = self->_isEditing;
  v6 = +[NSBundle mainBundle];
  v7 = v6;
  if (v3)
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
  v185 = v4;
  [v4 addSubview:v5];
  v184 = v5;
  objc_storeStrong(&self->_modalHeaderView, v5);
  v14 = objc_opt_new();
  contentContainer = self->_contentContainer;
  self->_contentContainer = v14;

  [(UIView *)self->_contentContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [(ContaineeViewController *)self contentView];
  [v16 addSubview:self->_contentContainer];

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
  v24 = [WeakRetained routeData];

  v25 = [v24 userProvidedName];
  v179 = v24;
  if ([v25 length])
  {
    [v24 userProvidedName];
  }

  else
  {
    [v24 routeName];
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
  v37 = [(TextViewWithPlaceholderText *)self->_notesField placeholderLabel];
  [v37 setText:v36];

  v38 = +[UIColor secondaryLabelColor];
  v39 = [(TextViewWithPlaceholderText *)self->_notesField placeholderLabel];
  [v39 setTextColor:v38];

  v40 = +[UIFont system17];
  v41 = [(TextViewWithPlaceholderText *)self->_notesField placeholderLabel];
  [v41 setFont:v40];

  v42 = +[UIFont system17];
  [(TextViewWithPlaceholderText *)self->_notesField setFont:v42];

  [(TextViewWithPlaceholderText *)self->_notesField setDelegate:self];
  v43 = +[UIColor labelColor];
  [(TextViewWithPlaceholderText *)self->_notesField setTextColor:v43];

  v44 = objc_loadWeakRetained(&self->_delegate);
  v45 = [v44 routeData];
  v46 = [v45 userProvidedNotes];
  [(TextViewWithPlaceholderText *)self->_notesField setText:v46];

  v47 = v182;
  [v182 addSubview:self->_notesField];
  v48 = +[NSNotificationCenter defaultCenter];
  [v48 addObserver:self selector:"_textValuesDidChange" name:UITextViewTextDidChangeNotification object:self->_notesField];

  if (!self->_isEditing)
  {
    if (GEOSupportsOfflineMaps())
    {
      v49 = +[MapsOfflineUIHelper sharedHelper];
      v50 = [v49 isUsingOfflineMaps];

      if ((v50 & 1) == 0)
      {
        v51 = objc_loadWeakRetained(&self->_delegate);
        v52 = [v51 routeData];
        v175 = [v52 boundingMapRegion];

        v53 = [GEOMapRegion _maps_offlineDownloadRegionForRouteBounds:v175];
        v54 = [GEOMapRegion _maps_offlineCoverageRegionForRouteBounds:v175];
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
        v62 = v175;
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
          v62 = v175;
        }

        v47 = v182;
      }
    }
  }

  v176 = [(ModalCardHeaderView *)v184 leadingAnchor];
  v172 = [v185 leadingAnchor];
  v170 = [v176 constraintEqualToAnchor:v172];
  v190[0] = v170;
  v168 = [(ModalCardHeaderView *)v184 topAnchor];
  v167 = [v185 topAnchor];
  v166 = [v168 constraintEqualToAnchor:v167];
  v190[1] = v166;
  v165 = [(ModalCardHeaderView *)v184 trailingAnchor];
  v164 = [v185 trailingAnchor];
  v163 = [v165 constraintEqualToAnchor:v164];
  v190[2] = v163;
  v162 = [(ModalCardHeaderView *)v184 bottomAnchor];
  v161 = [v185 bottomAnchor];
  v160 = [v162 constraintEqualToAnchor:v161];
  v190[3] = v160;
  v159 = [v185 heightAnchor];
  v158 = [v159 constraintEqualToConstant:72.0];
  v190[4] = v158;
  v156 = [(UIView *)self->_contentContainer leadingAnchor];
  v157 = [(ContaineeViewController *)self contentView];
  v155 = [v157 leadingAnchor];
  v154 = [v156 constraintEqualToAnchor:v155];
  v190[5] = v154;
  v152 = [(UIView *)self->_contentContainer trailingAnchor];
  v153 = [(ContaineeViewController *)self contentView];
  v151 = [v153 trailingAnchor];
  v150 = [v152 constraintEqualToAnchor:v151];
  v190[6] = v150;
  v148 = [(UIView *)self->_contentContainer topAnchor];
  v149 = [(ContaineeViewController *)self headerView];
  v147 = [v149 bottomAnchor];
  v146 = [v148 constraintEqualToAnchor:v147];
  v190[7] = v146;
  v144 = [(UIView *)self->_contentContainer bottomAnchor];
  v145 = [(ContaineeViewController *)self contentView];
  v143 = [v145 bottomAnchor];
  v142 = [v144 constraintEqualToAnchor:v143];
  v190[8] = v142;
  v141 = [v47 leadingAnchor];
  v140 = [(UIView *)self->_contentContainer leadingAnchor];
  v139 = [v141 constraintEqualToAnchor:v140 constant:16.0];
  v190[9] = v139;
  v138 = [v47 trailingAnchor];
  v137 = [(UIView *)self->_contentContainer trailingAnchor];
  v136 = [v138 constraintEqualToAnchor:v137 constant:-16.0];
  v190[10] = v136;
  v135 = [v47 topAnchor];
  v134 = [(UIView *)self->_contentContainer topAnchor];
  v133 = [v135 constraintEqualToAnchor:v134];
  v190[11] = v133;
  v132 = [(UITextField *)self->_nameField leadingAnchor];
  v131 = [v47 leadingAnchor];
  v130 = [v132 constraintEqualToAnchor:v131 constant:15.0];
  v190[12] = v130;
  v129 = [(UITextField *)self->_nameField trailingAnchor];
  v128 = [v47 trailingAnchor];
  v127 = [v129 constraintEqualToAnchor:v128 constant:-10.0];
  v190[13] = v127;
  v126 = [(UITextField *)self->_nameField topAnchor];
  v125 = [v47 topAnchor];
  v124 = [v126 constraintEqualToAnchor:v125 constant:-1.0];
  v190[14] = v124;
  v123 = [(UITextField *)self->_nameField heightAnchor];
  v122 = [v123 constraintEqualToConstant:48.0];
  v190[15] = v122;
  v121 = [v183 leadingAnchor];
  v120 = [v47 leadingAnchor];
  v119 = [v121 constraintEqualToAnchor:v120 constant:16.0];
  v190[16] = v119;
  v118 = [v183 trailingAnchor];
  v117 = [v47 trailingAnchor];
  v116 = [v118 constraintEqualToAnchor:v117];
  v190[17] = v116;
  v115 = [v183 topAnchor];
  v114 = [(UITextField *)self->_nameField bottomAnchor];
  v113 = [v115 constraintEqualToAnchor:v114];
  v190[18] = v113;
  v112 = [(TextViewWithPlaceholderText *)self->_notesField leadingAnchor];
  v111 = [v47 leadingAnchor];
  v110 = [v112 constraintEqualToAnchor:v111 constant:10.0];
  v190[19] = v110;
  v109 = [(TextViewWithPlaceholderText *)self->_notesField trailingAnchor];
  v108 = [v47 trailingAnchor];
  v107 = [v109 constraintEqualToAnchor:v108 constant:-16.0];
  v190[20] = v107;
  v106 = [(TextViewWithPlaceholderText *)self->_notesField topAnchor];
  v105 = [v183 bottomAnchor];
  v104 = [v106 constraintEqualToAnchor:v105 constant:6.0];
  v190[21] = v104;
  v103 = [(TextViewWithPlaceholderText *)self->_notesField heightAnchor];
  v72 = [v103 constraintEqualToConstant:92.0];
  v190[22] = v72;
  v73 = [(TextViewWithPlaceholderText *)self->_notesField bottomAnchor];
  v74 = [v47 bottomAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:6.0];
  v190[23] = v75;
  v76 = [(UIView *)self->_contentContainer bottomAnchor];
  [v47 bottomAnchor];
  v78 = v77 = v47;
  v79 = [v76 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v78 multiplier:1.0];
  v190[24] = v79;
  v80 = [NSArray arrayWithObjects:v190 count:25];
  [NSLayoutConstraint activateConstraints:v80];

  v81 = v77;
  v82 = self->_offlineDownloadView;
  if (v82)
  {
    v177 = [(MapsSaveRouteOfflineDownloadView *)v82 leadingAnchor];
    v173 = [(UIView *)self->_contentContainer leadingAnchor];
    v83 = [v177 constraintEqualToAnchor:v173 constant:16.0];
    v189[0] = v83;
    v84 = [(MapsSaveRouteOfflineDownloadView *)self->_offlineDownloadView trailingAnchor];
    v85 = [(UIView *)self->_contentContainer trailingAnchor];
    v86 = [v84 constraintEqualToAnchor:v85 constant:-16.0];
    v189[1] = v86;
    v87 = [(MapsSaveRouteOfflineDownloadView *)self->_offlineDownloadView topAnchor];
    v88 = [v77 bottomAnchor];
    v89 = [v87 constraintEqualToAnchor:v88 constant:16.0];
    v189[2] = v89;
    v90 = [NSArray arrayWithObjects:v189 count:3];
    [NSLayoutConstraint activateConstraints:v90];

    v91 = self->_offlineDownloadFooter;
    if (v91)
    {
      v178 = [(UILabel *)v91 leadingAnchor];
      v171 = [(MapsSaveRouteOfflineDownloadView *)self->_offlineDownloadView leadingAnchor];
      v92 = [v178 constraintEqualToAnchor:v171 constant:16.0];
      v188[0] = v92;
      v93 = [(UILabel *)self->_offlineDownloadFooter trailingAnchor];
      v174 = [(MapsSaveRouteOfflineDownloadView *)self->_offlineDownloadView trailingAnchor];
      v169 = [v93 constraintEqualToAnchor:v174 constant:-16.0];
      v188[1] = v169;
      v94 = [(UILabel *)self->_offlineDownloadFooter topAnchor];
      v95 = [(MapsSaveRouteOfflineDownloadView *)self->_offlineDownloadView bottomAnchor];
      v96 = [v94 constraintEqualToSystemSpacingBelowAnchor:v95 multiplier:1.0];
      v188[2] = v96;
      v97 = [(UIView *)self->_contentContainer bottomAnchor];
      v98 = [(UILabel *)self->_offlineDownloadFooter bottomAnchor];
      v99 = [v97 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v98 multiplier:1.0];
      v188[3] = v99;
      v100 = [NSArray arrayWithObjects:v188 count:4];
      [NSLayoutConstraint activateConstraints:v100];

      v101 = v171;
      v102 = v178;
    }

    else
    {
      v102 = [(UIView *)self->_contentContainer bottomAnchor];
      v101 = [(MapsSaveRouteOfflineDownloadView *)self->_offlineDownloadView bottomAnchor];
      v92 = [v102 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v101 multiplier:1.0];
      v187 = v92;
      v93 = [NSArray arrayWithObjects:&v187 count:1];
      [NSLayoutConstraint activateConstraints:v93];
    }

    v81 = v182;
  }
}

- (MapsSaveRouteContainee)initWithDelegate:(id)a3 isEditing:(BOOL)a4 showInitialKeyboard:(BOOL)a5
{
  v8 = a3;
  v22.receiver = self;
  v22.super_class = MapsSaveRouteContainee;
  v9 = [(MapsSaveRouteContainee *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    v10->_isEditing = a4;
    v10->_showInitialKeyboard = a5;
    v11 = [(ContaineeViewController *)v10 cardPresentationController];
    [v11 setHideGrabber:1];

    v12 = [(ContaineeViewController *)v10 cardPresentationController];
    [v12 setPresentedModally:1];

    v13 = [(ContaineeViewController *)v10 cardPresentationController];
    [v13 setAllowsSwipeToDismiss:0];

    v14 = [v8 routeData];
    v15 = [v14 userProvidedName];
    if ([(__CFString *)v15 length])
    {
      v16 = v15;
    }

    else
    {
      v16 = &stru_1016631F0;
    }

    objc_storeStrong(&v10->_originalName, v16);
    v17 = [v14 userProvidedNotes];
    if ([(__CFString *)v17 length])
    {
      v18 = v17;
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
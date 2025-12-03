@interface NTKCCFacesViewController
- (BOOL)_canTouchCollectionView;
- (BOOL)_complicationsAreLoaded;
- (CGSize)faceSize;
- (NTKCCFacesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_detailViewControllerForIndexPath:(id)path;
- (id)_viewControllerForFace:(id)face;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_activeDeviceChanged;
- (void)_clearSelectionsAnimated:(BOOL)animated;
- (void)_configureLayout;
- (void)_editDoneTapped;
- (void)_editTapped;
- (void)_faceAddedFromGallery:(id)gallery;
- (void)_faceAddedFromGreenfield:(id)greenfield;
- (void)_fontSizeDidChange;
- (void)_loadLibrary;
- (void)_popDetailViewControllerAnimated:(BOOL)animated;
- (void)_popLibraryDetailViewControllerForFace:(id)face;
- (void)_pushDetailViewController:(id)controller animated:(BOOL)animated;
- (void)_reloadAllFacesForCollectionView;
- (void)_reloadFaces;
- (void)_removeViewControllerForFace:(id)face;
- (void)_resetCollectionView;
- (void)_scrollToFace:(id)face;
- (void)_showBearTrap;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)dealloc;
- (void)faceCollection:(id)collection didAddFace:(id)face atIndex:(unint64_t)index;
- (void)faceCollection:(id)collection didRemoveFace:(id)face atIndex:(unint64_t)index;
- (void)faceCollectionDidLoad:(id)load;
- (void)faceCollectionDidReorderFaces:(id)faces;
- (void)faceCollectionDidReset:(id)reset;
- (void)faceConfigurationDidChange:(id)change;
- (void)libraryDetail:(id)detail didRemoveFace:(id)face;
- (void)libraryDetail:(id)detail didSelectFace:(id)face;
- (void)setLibrary:(id)library;
- (void)upgradeManager:(id)manager didCompleteWithFace:(id)face error:(id)error;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NTKCCFacesViewController

- (void)_loadLibrary
{
  v5 = +[NTKCompanionFaceCollectionsManager sharedInstance];
  v3 = +[CLKDevice currentDevice];
  v4 = [v5 sharedFaceCollectionForDevice:v3 forCollectionIdentifier:NTKCollectionIdentifierLibraryFaces];
  [(NTKCCFacesViewController *)self setLibrary:v4];
}

- (void)viewDidLoad
{
  v79.receiver = self;
  v79.super_class = NTKCCFacesViewController;
  [(NTKCCFacesViewController *)&v79 viewDidLoad];
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  memset(v74, 0, sizeof(v74));
  sub_254C(v74);
  if (_os_feature_enabled_impl())
  {
    BPSBackgroundColor();
  }

  else
  {
    BPSForegroundColor();
  }
  v3 = ;
  view = [(NTKCCFacesViewController *)self view];
  [view setBackgroundColor:v3];

  v5 = objc_opt_new();
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v6 = BPSBackgroundColor();
    [v5 setBackgroundColor:v6];
  }

  view2 = [(NTKCCFacesViewController *)self view];
  [view2 addSubview:v5];

  v8 = objc_opt_new();
  [(NTKCCFacesViewController *)self setHeaderView:v8];

  [v5 addSubview:self->_headerView];
  v9 = objc_opt_new();
  [(NTKCCFacesViewController *)self setTitleLabel:v9];

  v10 = NTKCCustomizationLocalizedString();
  if (_os_feature_enabled_impl())
  {
    [(UILabel *)self->_titleLabel setText:v10];
  }

  else
  {
    v11 = +[UIColor systemGrayColor];
    [(UILabel *)self->_titleLabel setTextColor:v11];

    localizedUppercaseString = [v10 localizedUppercaseString];
    [(UILabel *)self->_titleLabel setText:localizedUppercaseString];
  }

  [(UILabel *)self->_titleLabel setLineBreakMode:0];
  LODWORD(v13) = 1045220557;
  [(UILabel *)self->_titleLabel _setHyphenationFactor:v13];
  [(UIStackView *)self->_headerView addArrangedSubview:self->_titleLabel];
  v14 = objc_opt_new();
  [(NTKCCFacesViewController *)self setLayout:v14];

  [(UICollectionViewFlowLayout *)self->_layout _setWantsRightToLeftHorizontalMirroringIfNeeded:1];
  [(UICollectionViewFlowLayout *)self->_layout setScrollDirection:1];
  [(UICollectionViewFlowLayout *)self->_layout setMinimumLineSpacing:15.0];
  v15 = [[UICollectionView alloc] initWithFrame:self->_layout collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(NTKCCFacesViewController *)self setCollectionView:v15];

  collectionView = self->_collectionView;
  v17 = objc_opt_class();
  v18 = +[_NTKCCFacesCollectionCell classicReuseIdentifier];
  [(UICollectionView *)collectionView registerClass:v17 forCellWithReuseIdentifier:v18];

  v19 = self->_collectionView;
  v20 = objc_opt_class();
  v21 = +[_NTKCCFacesCollectionCell luxoReuseIdentifier];
  [(UICollectionView *)v19 registerClass:v20 forCellWithReuseIdentifier:v21];

  v22 = self->_collectionView;
  v23 = objc_opt_class();
  v24 = +[_NTKCCFacesCollectionCell aloeReuseIdentifier];
  [(UICollectionView *)v22 registerClass:v23 forCellWithReuseIdentifier:v24];

  v25 = self->_collectionView;
  v26 = objc_opt_class();
  v27 = +[_NTKCCFacesCollectionCell agaveReuseIdentifier];
  [(UICollectionView *)v25 registerClass:v26 forCellWithReuseIdentifier:v27];

  v28 = self->_collectionView;
  v29 = objc_opt_class();
  v30 = +[_NTKCCFacesCollectionCell avoniaReuseIdentifier];
  [(UICollectionView *)v28 registerClass:v29 forCellWithReuseIdentifier:v30];

  v31 = self->_collectionView;
  v32 = objc_opt_class();
  v33 = +[_NTKCCFacesCollectionCell begoniaReuseIdentifier];
  [(UICollectionView *)v31 registerClass:v32 forCellWithReuseIdentifier:v33];

  view3 = [(NTKCCFacesViewController *)self view];
  backgroundColor = [view3 backgroundColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:backgroundColor];

  [(UICollectionView *)self->_collectionView setIndicatorStyle:2];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setDataSource:self];
  [(UICollectionView *)self->_collectionView setAlwaysBounceHorizontal:1];
  [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
  v36 = self->_collectionView;
  v37 = [[UIContextMenuInteraction alloc] initWithDelegate:self];
  [(UICollectionView *)v36 addInteraction:v37];

  [(UICollectionView *)self->_collectionView contentInset];
  v38 = *(v74 + 1);
  [(UICollectionView *)self->_collectionView setContentInset:?];
  view4 = [(NTKCCFacesViewController *)self view];
  [view4 addSubview:self->_collectionView];

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v40 = objc_opt_new();
    [(NTKCCFacesViewController *)self setTopSeparatorView:v40];

    v41 = BPSSeparatorColor();
    [(UIView *)self->_topSeparatorView setBackgroundColor:v41];

    view5 = [(NTKCCFacesViewController *)self view];
    [view5 addSubview:self->_topSeparatorView];
  }

  v43 = [UIButton buttonWithType:1];
  [(NTKCCFacesViewController *)self setEditButton:v43];

  v44 = BPSBridgeTintColor();
  [(UIButton *)self->_editButton setTintColor:v44];

  editButton = self->_editButton;
  v46 = NTKCCustomizationLocalizedString();
  [(UIButton *)editButton setTitle:v46 forState:0];

  [(UIButton *)self->_editButton addTarget:self action:"_editTapped" forControlEvents:64];
  titleLabel = [(UIButton *)self->_editButton titleLabel];
  LODWORD(v48) = 1144750080;
  [titleLabel setContentCompressionResistancePriority:0 forAxis:v48];

  [(UIButton *)self->_editButton setContentHorizontalAlignment:4];
  [(UIStackView *)self->_headerView addArrangedSubview:self->_editButton];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(UIView *)self->_topSeparatorView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v49 = +[NSMutableArray array];
  v50 = _os_feature_enabled_impl();
  headerView = self->_headerView;
  if (v50)
  {
    _NSDictionaryOfVariableBindings(@"backgroundView, _headerView, _collectionView", v5, headerView, self->_collectionView, 0);
  }

  else
  {
    _NSDictionaryOfVariableBindings(@"backgroundView, _headerView, _collectionView, _topSeparatorView", v5, headerView, self->_collectionView, self->_topSeparatorView, 0);
  }
  v52 = ;
  v53 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[backgroundView]|" options:0 metrics:0 views:v52];
  [v49 addObjectsFromArray:v53];

  v73 = v5;
  v72 = v52;
  if (_os_feature_enabled_impl())
  {
    v54 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[backgroundView][_collectionView]" options:96 metrics:0 views:v52];
    [v49 addObjectsFromArray:v54];
  }

  else
  {
    v84 = @"SeparatorHeight";
    [(UIView *)self->_topSeparatorView intrinsicContentSize];
    v54 = [NSNumber numberWithDouble:-v55];
    v85 = v54;
    v56 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    v57 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|[backgroundView][_topSeparatorView]-(SeparatorHeight)-[_collectionView]", 96, v56, v52);
    [v49 addObjectsFromArray:v57];
  }

  bottomAnchor = [(UICollectionView *)self->_collectionView bottomAnchor];
  view6 = [(NTKCCFacesViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v61 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  LODWORD(v62) = 1132068864;
  [v61 setPriority:v62];
  [v49 addObject:v61];
  v82[0] = @"MarginLeading";
  v63 = [NSNumber numberWithDouble:v38];
  v82[1] = @"MarginTrailing";
  v83[0] = v63;
  v64 = [NSNumber numberWithDouble:v38 - *&v76];
  v83[1] = v64;
  v65 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:2];
  v66 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-MarginLeading-[_headerView]-MarginTrailing-|", 0, v65, v72);
  [v49 addObjectsFromArray:v66];

  v80 = @"HeaderVerticalMargin";
  v67 = [NSNumber numberWithDouble:*(&v75 + 1)];
  v81 = v67;
  v68 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
  v69 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(HeaderVerticalMargin)-[_headerView]|", 0, v68, v72);
  [v49 addObjectsFromArray:v69];

  heightAnchor = [(UICollectionView *)self->_collectionView heightAnchor];
  v71 = [heightAnchor constraintEqualToConstant:0.0];
  [(NTKCCFacesViewController *)self setCollectionViewHeightConstraint:v71];

  [v49 addObject:self->_collectionViewHeightConstraint];
  [(NTKCCFacesViewController *)self _configureLayout];
  [NSLayoutConstraint activateConstraints:v49];
}

- (void)_configureLayout
{
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  [(UILabel *)self->_titleLabel setNumberOfLines:1, sub_254C(&v30).n128_f64[0]];
  if (_os_feature_enabled_impl())
  {
    v3 = +[UIListContentConfiguration prominentInsetGroupedHeaderConfiguration];
    textProperties = [v3 textProperties];
    font = [textProperties font];
    [(UILabel *)self->_titleLabel setFont:font];

    textProperties2 = [v3 textProperties];
    color = [textProperties2 color];
    [(UILabel *)self->_titleLabel setTextColor:color];
  }

  else
  {
    v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(UILabel *)self->_titleLabel setFont:v3];
  }

  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  titleLabel = [(UIButton *)self->_editButton titleLabel];
  [titleLabel setFont:v8];

  [(UIStackView *)self->_headerView setAxis:0];
  [(UIStackView *)self->_headerView setAlignment:2];
  [(UIStackView *)self->_headerView setDistribution:3];
  [(UIStackView *)self->_headerView setSpacing:8.0];
  [(UIStackView *)self->_headerView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  v11 = v10;
  view = [(NTKCCFacesViewController *)self view];
  [view bounds];
  v13 = CGRectGetWidth(v40) + *(&v30 + 1) * -2.0;

  if (v11 > v13)
  {
    [(UIStackView *)self->_headerView setAxis:1];
    [(UIStackView *)self->_headerView setAlignment:1];
    [(UIStackView *)self->_headerView setDistribution:0];
    [(UIStackView *)self->_headerView setSpacing:0.0];
    [(UILabel *)self->_titleLabel setNumberOfLines:0];
  }

  v14 = *(&v33 + 1);
  v15 = *&v34;
  [NTKCFaceContainerView faceSizeForSize:3 style:*(&v33 + 1), *&v34];
  [(NTKCCFacesViewController *)self setFaceSize:?];
  traitCollection = [(NTKCCFacesViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v14 = v14 + v14 * 0.5;
  }

  v19 = *&v31;
  v20 = v15 + *&v31;
  v29 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v29 _scaledValueForValue:*&v35];
  v22 = v21;
  [v29 _scaledValueForValue:v19];
  v24 = v23;
  v25 = objc_opt_new();
  HIDWORD(v26) = HIDWORD(v38);
  *&v26 = *(&v38 + 1);
  [v25 setHyphenationFactor:v26];
  NTKMaxLineHeightDeltaForEnumeratableFaceCollection();
  v28 = v20 + v22 + v24 + v27;
  [(NSLayoutConstraint *)self->_collectionViewHeightConstraint setConstant:v28];
  [(UICollectionViewFlowLayout *)self->_layout setItemSize:v14, v28];
}

- (BOOL)_complicationsAreLoaded
{
  v2 = +[NTKCompanionRemoteComplicationManager sharedInstance];
  loaded = [v2 loaded];

  v4 = +[NTKCompanionBundleComplicationSyncCoordinator sharedInstance];
  loaded2 = [v4 loaded];

  v6 = +[CLKDevice currentDevice];
  v7 = [NTKCompanionWidgetComplicationManager instanceForDevice:v6];
  loaded3 = [v7 loaded];

  return loaded & loaded2 & loaded3;
}

- (NTKCCFacesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = NTKCCFacesViewController;
  v4 = [(NTKCCFacesViewController *)&v7 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"_activeDeviceChanged" name:CLKActiveDeviceChangedNotification object:0];
    [v5 addObserver:v4 selector:"_faceAddedFromGallery:" name:NTKCFaceDetailViewControllerDidAddFace object:0];
    [v5 addObserver:v4 selector:"_fontSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
    [v5 addObserver:v4 selector:"_complicationsDidLoad" name:NTKCompanionRemoteComplicationManagerDidLoadNotification object:0];
    [v5 addObserver:v4 selector:"_complicationsDidLoad" name:NTKCompanionWidgetComplicationManagerDidLoadNotification object:0];
    [v5 addObserver:v4 selector:"_complicationsDidLoad" name:NTKCompanionBundleComplicationManagerDidLoadNotification object:0];
    [v5 addObserver:v4 selector:"_faceAddedFromGreenfield:" name:NTKGreenfieldAddWatchFaceManagerDidAddFaceNotification object:0];
    [(NTKCCFacesViewController *)v4 _loadLibrary];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:CLKActiveDeviceChangedNotification object:0];
  [v3 removeObserver:self name:NTKCFaceDetailViewControllerDidAddFace object:0];
  [v3 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];
  [v3 removeObserver:self name:NTKCompanionRemoteComplicationManagerDidLoadNotification object:0];
  [v3 removeObserver:self name:NTKCompanionWidgetComplicationManagerDidLoadNotification object:0];
  [v3 removeObserver:self name:NTKGreenfieldAddWatchFaceManagerDidAddFaceNotification object:0];
  [(NTKCCFacesViewController *)self setLibrary:0];

  v4.receiver = self;
  v4.super_class = NTKCCFacesViewController;
  [(NTKCCFacesViewController *)&v4 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = NTKCCFacesViewController;
  [(NTKCCFacesViewController *)&v5 viewWillAppear:?];
  [(NTKCCFacesViewController *)self _clearSelectionsAnimated:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = NTKCCFacesViewController;
  [(NTKCCFacesViewController *)&v4 viewDidAppear:appear];
  [(NTKCCFacesViewController *)self setVisible:1];
  [(NTKCCFacesViewController *)self _popDetailViewControllerAnimated:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = NTKCCFacesViewController;
  [(NTKCCFacesViewController *)&v4 viewDidDisappear:disappear];
  [(NTKCCFacesViewController *)self setVisible:0];
}

- (void)setLibrary:(id)library
{
  libraryCopy = library;
  if (self->_library != libraryCopy)
  {
    v6 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if ([(NTKFaceCollection *)libraryCopy hasLoaded])
      {
        v7 = @"HAS";
      }

      else
      {
        v7 = @"HAS NOT";
      }

      *buf = 138412546;
      v19 = v7;
      v20 = 2048;
      numberOfFaces = [(NTKFaceCollection *)libraryCopy numberOfFaces];
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "new library. %@ been loaded with %lu faces", buf, 0x16u);
    }

    library = self->_library;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_3690;
    v17[3] = &unk_20738;
    v17[4] = self;
    [(NTKFaceCollection *)library enumerateFacesUsingBlock:v17];
    [(NTKFaceCollection *)self->_library removeObserver:self];
    objc_storeStrong(&self->_library, library);
    [(NTKFaceCollection *)self->_library addObserver:self];
    [(NTKCCFacesViewController *)self _reloadFaces];
    [(NTKCCFacesViewController *)self _resetCollectionView];
    [(UICollectionView *)self->_collectionView scrollRectToVisible:0 animated:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    presentedViewController = [(NTKCCFacesViewController *)self presentedViewController];
    if (!presentedViewController)
    {
      goto LABEL_13;
    }

    v10 = presentedViewController;
    presentedViewController2 = [(NTKCCFacesViewController *)self presentedViewController];
    v12 = presentedViewController2;
    if (presentedViewController2 == self->_presentedDetailVC)
    {
    }

    else
    {
      presentedViewController3 = [(NTKCCFacesViewController *)self presentedViewController];
      childViewControllers = [presentedViewController3 childViewControllers];
      firstObject = [childViewControllers firstObject];
      presentedListVC = self->_presentedListVC;

      if (firstObject != presentedListVC)
      {
LABEL_13:
        [(NTKCCFacesViewController *)self _popDetailViewControllerAnimated:1];
        goto LABEL_14;
      }
    }

    [(NTKCCFacesViewController *)self _editDoneTapped];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)_activeDeviceChanged
{
  [(NTKCCFacesViewController *)self _clearFaceViewControllers];

  [(NTKCCFacesViewController *)self _loadLibrary];
}

- (BOOL)_canTouchCollectionView
{
  [(UICollectionView *)self->_collectionView bounds];
  IsEmpty = CGRectIsEmpty(v10);
  _complicationsAreLoaded = [(NTKCCFacesViewController *)self _complicationsAreLoaded];
  if (IsEmpty)
  {
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "collectionView not yet laid out - suppressing modifications", buf, 2u);
    }
  }

  if ((_complicationsAreLoaded & 1) == 0)
  {
    v6 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "complications are not loaded yet - suppressing modifications", v8, 2u);
    }
  }

  return !IsEmpty & _complicationsAreLoaded;
}

- (void)_clearSelectionsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  indexPathsForSelectedItems = [(UICollectionView *)self->_collectionView indexPathsForSelectedItems];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [indexPathsForSelectedItems countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        [(UICollectionView *)self->_collectionView deselectItemAtIndexPath:*(*(&v10 + 1) + 8 * v9) animated:animatedCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [indexPathsForSelectedItems countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_resetCollectionView
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "resetting the collectionView", v4, 2u);
  }

  [(UICollectionView *)self->_collectionView reloadData];
}

- (void)_faceAddedFromGallery:(id)gallery
{
  object = [gallery object];
  [(NTKCCFacesViewController *)self _scrollToFace:object];
}

- (void)_faceAddedFromGreenfield:(id)greenfield
{
  object = [greenfield object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    facesByUUID = [(NTKFaceCollection *)self->_library facesByUUID];
    v5 = [facesByUUID objectForKey:object];
    [(NTKCCFacesViewController *)self _scrollToFace:v5];
  }
}

- (void)_scrollToFace:(id)face
{
  faceCopy = face;
  if ([(NTKCCFacesViewController *)self _canTouchCollectionView])
  {
    v4 = [(NTKFaceCollection *)self->_library indexOfFace:faceCopy];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = v4;
      if (v4 < [(UICollectionView *)self->_collectionView numberOfItemsInSection:0])
      {
        collectionView = self->_collectionView;
        v7 = [NSIndexPath indexPathForItem:v5 inSection:0];
        [(UICollectionView *)collectionView scrollToItemAtIndexPath:v7 atScrollPosition:16 animated:self->_visible];
      }
    }
  }
}

- (void)_editTapped
{
  v6 = objc_opt_new();
  v3 = [[NTKCNavigationController alloc] initWithRootViewController:v6];
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_editDoneTapped"];
  navigationItem = [v6 navigationItem];
  [navigationItem setRightBarButtonItem:v4];

  [v6 setEditing:1 animated:0];
  [(NTKCCFacesViewController *)self setPresentedListVC:v6];
  [(NTKCCFacesViewController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)_editDoneTapped
{
  [(NTKCCFacesViewController *)self setPresentedListVC:0];

  [(NTKCCFacesViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_reloadFaces
{
  library = self->_library;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_3CF0;
  v3[3] = &unk_20738;
  v3[4] = self;
  [(NTKFaceCollection *)library enumerateFacesUsingBlock:v3];
}

- (void)_popLibraryDetailViewControllerForFace:(id)face
{
  faceCopy = face;
  presentedDetailVC = self->_presentedDetailVC;
  if (presentedDetailVC)
  {
    v7 = faceCopy;
    face = [(NTKCFaceDetailViewController *)presentedDetailVC face];

    if (face == v7)
    {
      [(NTKCCFacesViewController *)self _popDetailViewControllerAnimated:1];
    }
  }

  _objc_release_x1();
}

- (id)_viewControllerForFace:(id)face
{
  faceCopy = face;
  faceVCs = self->_faceVCs;
  if (!faceVCs)
  {
    v6 = objc_opt_new();
    [(NTKCCFacesViewController *)self setFaceVCs:v6];

    faceVCs = self->_faceVCs;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = faceVCs;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v18 + 1) + 8 * v11);
      face = [v12 face];

      if (face == faceCopy)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v14 = v12;

    if (v14)
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_11:
  }

  device = [faceCopy device];
  if ([device isRunningNapiliGMOrLater])
  {
    v16 = [(NTKFaceCollection *)self->_library uuidForFace:faceCopy];
    v14 = [[NFGReplicatedSnapshotViewController alloc] initWithFace:faceCopy uuid:v16];
  }

  else
  {
    v14 = [[NTKFaceSnapshotViewController alloc] initWithFace:faceCopy];
  }

  [(NSMutableArray *)self->_faceVCs addObject:v14];

LABEL_17:

  return v14;
}

- (void)_removeViewControllerForFace:(id)face
{
  faceCopy = face;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_faceVCs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      face = [v10 face];

      if (face == faceCopy)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v12 = v10;

    if (!v12)
    {
      goto LABEL_13;
    }

    [(NSMutableArray *)self->_faceVCs removeObject:v12];
    v5 = v12;
  }

LABEL_12:

LABEL_13:
}

- (id)_detailViewControllerForIndexPath:(id)path
{
  v4 = -[NTKFaceCollection faceAtIndex:](self->_library, "faceAtIndex:", [path item]);
  libraryDetailViewController = [v4 libraryDetailViewController];
  [libraryDetailViewController setDelegate:self];

  return libraryDetailViewController;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v5 = [(NTKCCFacesViewController *)self _complicationsAreLoaded:view];
  v6 = _NTKLoggingObjectForDomain();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      numberOfFaces = [(NTKFaceCollection *)self->_library numberOfFaces];
      v10 = 134217984;
      v11 = numberOfFaces;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[_library numberOfFaces] = %lu", &v10, 0xCu);
    }

    return [(NTKFaceCollection *)self->_library numberOfFaces];
  }

  else
  {
    if (v7)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Collection view datasource returning zero items for section because complications are not loaded yet.", &v10, 2u);
    }

    return 0;
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  collectionView = self->_collectionView;
  pathCopy = path;
  v7 = +[_NTKCCFacesCollectionCell reuseIdentifier];
  v8 = [(UICollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:pathCopy];

  [v8 setFaceSize:{self->_faceSize.width, self->_faceSize.height}];
  [v8 setSelected:0];
  library = self->_library;
  item = [pathCopy item];

  v11 = [(NTKFaceCollection *)library faceAtIndex:item];
  v12 = [(NTKCCFacesViewController *)self _viewControllerForFace:v11];
  view = [v12 view];
  [v8 setFaceView:view];

  name = [v11 name];
  [v8 setName:name];

  return v8;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = -[NTKFaceCollection faceAtIndex:](self->_library, "faceAtIndex:", [pathCopy item]);
  bundleIdentifierForUpgrade = [v7 bundleIdentifierForUpgrade];

  if (bundleIdentifierForUpgrade)
  {
    v9 = +[NTKFaceBundleManager sharedManager];
    bundleIdentifierForUpgrade2 = [v7 bundleIdentifierForUpgrade];
    v11 = +[CLKDevice currentDevice];
    v12 = [v9 faceBundleForBundleIdentifier:bundleIdentifierForUpgrade2 onDevice:v11];

    faceClass = [v12 faceClass];
    v14 = +[CLKDevice currentDevice];
    v15 = [faceClass upgradeManagerWithFace:v7 forDevice:v14];

    if ([v15 canUpgradeFace])
    {
      v16 = [v15 upgradeFlowViewControllerWithDelegate:self];
      if (v16)
      {
        v17 = v16;
        [v15 setUpgradingFaceIndex:{objc_msgSend(pathCopy, "item")}];
        [(NTKCCFacesViewController *)self presentViewController:v17 animated:1 completion:0];
        [viewCopy deselectItemAtIndexPath:pathCopy animated:1];

        goto LABEL_7;
      }
    }
  }

  v12 = [(NTKCCFacesViewController *)self _detailViewControllerForIndexPath:pathCopy];
  [(NTKCCFacesViewController *)self _pushDetailViewController:v12 animated:1];
LABEL_7:
}

- (void)_pushDetailViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  [(NTKCCFacesViewController *)self setPresentedDetailVC:controllerCopy];
  parentViewController = [(NTKCCFacesViewController *)self parentViewController];
  navigationController = [parentViewController navigationController];
  [navigationController pushViewController:controllerCopy animated:1];
}

- (void)_popDetailViewControllerAnimated:(BOOL)animated
{
  if (self->_presentedDetailVC)
  {
    animatedCopy = animated;
    parentViewController = [(NTKCCFacesViewController *)self parentViewController];
    navigationController = [parentViewController navigationController];
    viewControllers = [navigationController viewControllers];
    v8 = [viewControllers containsObject:self->_presentedDetailVC];

    if (v8)
    {
      parentViewController2 = [(NTKCCFacesViewController *)self parentViewController];
      navigationController2 = [parentViewController2 navigationController];
      v11 = [navigationController2 popToViewController:self->_presentedDetailVC animated:0];

      parentViewController3 = [(NTKCCFacesViewController *)self parentViewController];
      navigationController3 = [parentViewController3 navigationController];
      v14 = [navigationController3 popViewControllerAnimated:animatedCopy];
    }
  }

  [(NTKCCFacesViewController *)self setPresentedDetailVC:0];
}

- (void)libraryDetail:(id)detail didRemoveFace:(id)face
{
  faceCopy = face;
  if ([(NTKFaceCollection *)self->_library containsFace:faceCopy])
  {
    v6 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = faceCopy;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "user removing face %@ from library", &v7, 0xCu);
    }

    [(NTKFaceCollection *)self->_library removeFace:faceCopy suppressingCallbackToObserver:0];
    [(NTKCCFacesViewController *)self _popLibraryDetailViewControllerForFace:faceCopy];
  }
}

- (void)libraryDetail:(id)detail didSelectFace:(id)face
{
  faceCopy = face;
  if ([(NTKFaceCollection *)self->_library containsFace:?])
  {
    selectedFace = [(NTKFaceCollection *)self->_library selectedFace];

    if (selectedFace != faceCopy)
    {
      [(NTKFaceCollection *)self->_library setSelectedFace:faceCopy suppressingCallbackToObserver:0];
    }
  }
}

- (void)faceConfigurationDidChange:(id)change
{
  library = self->_library;
  changeCopy = change;
  v6 = [(NTKFaceCollection *)library indexOfFace:changeCopy];
  collectionView = self->_collectionView;
  v8 = [NSIndexPath indexPathForItem:v6 inSection:0];
  v10 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v8];

  name = [changeCopy name];

  [v10 setName:name];
}

- (void)faceCollectionDidLoad:(id)load
{
  loadCopy = load;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if ([loadCopy hasLoaded])
    {
      v6 = @"HAS";
    }

    else
    {
      v6 = @"HAS NOT";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2048;
    numberOfFaces = [loadCopy numberOfFaces];
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "library %@ loaded with %lu faces", &v7, 0x16u);
  }

  [(NTKCCFacesViewController *)self _reloadAllFacesForCollectionView];
}

- (void)faceCollectionDidReset:(id)reset
{
  resetCopy = reset;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if ([resetCopy hasLoaded])
    {
      v6 = @"HAS";
    }

    else
    {
      v6 = @"HAS NOT";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2048;
    numberOfFaces = [resetCopy numberOfFaces];
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "library %@ reloaded with %lu faces", &v7, 0x16u);
  }

  [(NTKCCFacesViewController *)self _reloadAllFacesForCollectionView];
}

- (void)_reloadAllFacesForCollectionView
{
  [(NTKCCFacesViewController *)self _reloadFaces];
  if ([(NTKCCFacesViewController *)self isViewLoaded])
  {
    [(NTKCCFacesViewController *)self _configureLayout];
    [(NTKCCFacesViewController *)self _resetCollectionView];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:BPSNTKFacesViewControllerDidUpdateContentNotification object:0];
  }
}

- (void)faceCollection:(id)collection didAddFace:(id)face atIndex:(unint64_t)index
{
  faceCopy = face;
  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v19 = faceCopy;
    *&v19[8] = 1024;
    *v20 = index;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "adding face %@ at index %d", buf, 0x12u);
  }

  [faceCopy addObserver:self];
  if ([(NTKCCFacesViewController *)self _canTouchCollectionView])
  {
    v9 = [(UICollectionView *)self->_collectionView numberOfItemsInSection:0];
    if ([(NTKFaceCollection *)self->_library numberOfFaces]== (v9 + 1))
    {
      v10 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v19 = index;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[_collectionView insert:%d];", buf, 8u);
      }

      collectionView = self->_collectionView;
      v12 = [NSIndexPath indexPathForItem:index inSection:0];
      v17 = v12;
      v13 = [NSArray arrayWithObjects:&v17 count:1];
      [(UICollectionView *)collectionView insertItemsAtIndexPaths:v13];
    }

    else
    {
      [(NTKCCFacesViewController *)self _showBearTrap];
      v14 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        numberOfFaces = [(NTKFaceCollection *)self->_library numberOfFaces];
        *buf = 67109890;
        *v19 = v9;
        *&v19[4] = 1024;
        *&v19[6] = numberOfFaces;
        *v20 = 1024;
        *&v20[2] = index;
        v21 = 2112;
        v22 = faceCopy;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "UICollectionView has %d faces, NTKFaceCollection has %d faces and added the #%d face (%@).", buf, 0x1Eu);
      }

      [(NTKCCFacesViewController *)self _resetCollectionView];
    }

    [(NTKCCFacesViewController *)self _configureLayout];
    v16 = +[NSNotificationCenter defaultCenter];
    [v16 postNotificationName:BPSNTKFacesViewControllerDidUpdateContentNotification object:0];
  }
}

- (void)faceCollection:(id)collection didRemoveFace:(id)face atIndex:(unint64_t)index
{
  faceCopy = face;
  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v19 = faceCopy;
    *&v19[8] = 1024;
    *v20 = index;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "removing face %@ at index %d", buf, 0x12u);
  }

  [faceCopy removeObserver:self];
  [(NTKCCFacesViewController *)self _removeViewControllerForFace:faceCopy];
  if ([(NTKCCFacesViewController *)self _canTouchCollectionView])
  {
    v9 = [(UICollectionView *)self->_collectionView numberOfItemsInSection:0];
    if (v9 > index && [(NTKFaceCollection *)self->_library numberOfFaces]== (v9 - 1))
    {
      v10 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *v19 = index;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[_collectionView delete:%d];", buf, 8u);
      }

      collectionView = self->_collectionView;
      v12 = [NSIndexPath indexPathForItem:index inSection:0];
      v17 = v12;
      v13 = [NSArray arrayWithObjects:&v17 count:1];
      [(UICollectionView *)collectionView deleteItemsAtIndexPaths:v13];
    }

    else
    {
      [(NTKCCFacesViewController *)self _showBearTrap];
      v14 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        numberOfFaces = [(NTKFaceCollection *)self->_library numberOfFaces];
        *buf = 67109890;
        *v19 = v9;
        *&v19[4] = 1024;
        *&v19[6] = numberOfFaces;
        *v20 = 1024;
        *&v20[2] = index;
        v21 = 2112;
        v22 = faceCopy;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "UICollectionView has %d faces, NTKFaceCollection has %d faces and deleted the #%d face (%@).", buf, 0x1Eu);
      }

      [(NTKCCFacesViewController *)self _resetCollectionView];
    }

    [(NTKCCFacesViewController *)self _configureLayout];
    v16 = +[NSNotificationCenter defaultCenter];
    [v16 postNotificationName:BPSNTKFacesViewControllerDidUpdateContentNotification object:0];
  }

  [(NTKCCFacesViewController *)self _popLibraryDetailViewControllerForFace:faceCopy];
}

- (void)faceCollectionDidReorderFaces:(id)faces
{
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "reordering faces so reload section", buf, 2u);
  }

  if ([(NTKCCFacesViewController *)self _canTouchCollectionView])
  {
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[_collectionView reloadSections:[NSIndexSet indexSetWithIndex:0]];", v8, 2u);
    }

    collectionView = self->_collectionView;
    v7 = [NSIndexSet indexSetWithIndex:0];
    [(UICollectionView *)collectionView reloadSections:v7];
  }
}

- (void)_showBearTrap
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "BEAR TRAP", buf, 2u);
  }

  if (NTKInternalBuild())
  {
    [UIAlertController alertControllerWithTitle:@"[Internal Only]" message:@"We detected an inconsistency between the UI and the daemon! Please file a radar on Watch Faces with a sysdiagnose and the /var/mobile/Library/NanoTimeKit/ from both watch and phone." preferredStyle:1];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_53EC;
    v7 = v6[3] = &unk_20760;
    v4 = v7;
    v5 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:v6];
    [v4 addAction:v5];

    [(NTKCCFacesViewController *)self presentViewController:v4 animated:1 completion:0];
  }
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  v5 = [(UICollectionView *)self->_collectionView indexPathForItemAtPoint:interaction, location.x, location.y];
  if (v5)
  {
    [(UICollectionView *)self->_collectionView selectItemAtIndexPath:v5 animated:0 scrollPosition:0];
    v6 = self->_library;
    v7 = -[NTKFaceCollection faceAtIndex:](v6, "faceAtIndex:", [v5 item]);
    bundleIdentifierForUpgrade = [v7 bundleIdentifierForUpgrade];

    v9 = 0;
    if (!bundleIdentifierForUpgrade)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_55B8;
      v15[3] = &unk_20788;
      v15[4] = self;
      v16 = v5;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_55C4;
      v11[3] = &unk_20840;
      v12 = v6;
      v13 = v7;
      selfCopy = self;
      v9 = [UIContextMenuConfiguration configurationWithIdentifier:v16 previewProvider:v15 actionProvider:v11];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  identifier = [configuration identifier];
  v6 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:identifier];
  if (v6)
  {
    v7 = [UITargetedPreview alloc];
    faceContainerView = [v6 faceContainerView];
    v9 = [v7 initWithView:faceContainerView];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)contextMenuInteraction:(id)interaction willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  [animatorCopy previewViewController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_5B58;
  v9 = v8[3] = &unk_20868;
  selfCopy = self;
  v7 = v9;
  [animatorCopy addCompletion:v8];
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5C28;
  v5[3] = &unk_20890;
  v5[4] = self;
  [animator addAnimations:{v5, configuration}];
}

- (void)_fontSizeDidChange
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "font size changed", v4, 2u);
  }

  if ([(NTKCCFacesViewController *)self isViewLoaded])
  {
    [(NTKCCFacesViewController *)self _configureLayout];
    [(NTKCCFacesViewController *)self _resetCollectionView];
  }
}

- (void)upgradeManager:(id)manager didCompleteWithFace:(id)face error:(id)error
{
  managerCopy = manager;
  faceCopy = face;
  errorCopy = error;
  if (errorCopy)
  {
    v11 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_F59C(managerCopy, errorCopy, v11);
    }

LABEL_4:

    goto LABEL_14;
  }

  if (!faceCopy)
  {
    v11 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_F624(managerCopy, v11);
    }

    goto LABEL_4;
  }

  if ([managerCopy upgradingFaceIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    numberOfFaces = [(NTKFaceCollection *)self->_library numberOfFaces];
  }

  else
  {
    numberOfFaces = [managerCopy upgradingFaceIndex] + 1;
  }

  v13 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = faceCopy;
    v16 = 2048;
    v17 = numberOfFaces;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Adding new, upgraded face %@ to %lu", &v14, 0x16u);
  }

  [(NTKFaceCollection *)self->_library addFace:faceCopy atIndex:numberOfFaces suppressingCallbackToObserver:0];
  [(NTKFaceCollection *)self->_library setSelectedFaceIndex:numberOfFaces suppressingCallbackToObserver:0];
LABEL_14:
}

- (CGSize)faceSize
{
  width = self->_faceSize.width;
  height = self->_faceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
@interface RAPHomeDataSource
- (BOOL)_isInternalInstall;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (RAPHomeDataSource)initWithCollectionView:(id)view updateLocation:(BOOL)location;
- (SupplementaryElementsDataSourceDelegate)supplementaryElementsDelegate;
- (double)footerHeightForSection:(int64_t)section collectionView:(id)view;
- (double)headerHeightForSection:(int64_t)section collectionView:(id)view;
- (id)RAPHomeReportMenu;
- (id)_footerLinkText;
- (id)_footerString90Days;
- (id)_footerStringActionsSection;
- (id)_footerStringReviewedSection;
- (id)_headerStringActionsSection;
- (id)_headerStringInReviewSection;
- (id)_headerStringIncidentsReportedSection;
- (id)_headerStringIssuesReportedSection;
- (id)_headerStringReviewedSection;
- (id)_headerStringTellUsMoreSection;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)sectionForIndex:(unint64_t)index;
- (void)_addSections;
- (void)_buildReportHistoryContent;
- (void)_layoutManagerDidLoadLayoutItems:(id)items;
- (void)_loadReportHistoryContent;
- (void)_populateActionSectionWithNonZeroTrafficIncidentLayoutItems;
- (void)_reloadTrafficIncidentLayoutItems;
- (void)_updateNonZeroTrafficLayoutItems;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)privacyTextTapped;
- (void)reportHistoryManagerDidUpdate:(id)update;
- (void)seeAllTappedForReportForSection:(int64_t)section;
@end

@implementation RAPHomeDataSource

- (SupplementaryElementsDataSourceDelegate)supplementaryElementsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_supplementaryElementsDelegate);

  return WeakRetained;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  pathsCopy = paths;
  if (-[RAPHomeDataSource _isInternalInstall](self, "_isInternalInstall") && (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 BOOLForKey:@"__internal__EnableTapRAPForReportID"], v7, v8) && objc_msgSend(pathsCopy, "count") == 1)
  {
    firstObject = [pathsCopy firstObject];
    v10 = [firstObject row];
    v11 = -[RAPHomeDataSource sectionForIndex:](self, "sectionForIndex:", [firstObject section]);
    if ((v11 - 2) <= 2 && ([*(&self->super.super.isa + **(&off_10162A6E0 + v11 - 2)) objectAtIndexedSubscript:v10], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1007D50F0;
      v16[3] = &unk_101660440;
      v17 = v12;
      v13 = v12;
      v14 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v16];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_isInternalInstall
{
  v2 = +[GEOPlatform sharedPlatform];
  isInternalInstall = [v2 isInternalInstall];

  return isInternalInstall;
}

- (void)reportHistoryManagerDidUpdate:(id)update
{
  v5 = sub_100026868();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ %@", &v9, 0x16u);
  }

  [(RAPHomeDataSource *)self _updateNonZeroTrafficLayoutItems];
  [(RAPHomeDataSource *)self _populateActionSectionWithNonZeroTrafficIncidentLayoutItems];
  [(RAPHomeDataSource *)self _loadReportHistoryContent];
}

- (double)headerHeightForSection:(int64_t)section collectionView:(id)view
{
  viewCopy = view;
  string = 0;
  if (section > 2)
  {
    switch(section)
    {
      case 3:
        _headerStringReviewedSection = [(RAPHomeDataSource *)self _headerStringReviewedSection];
        goto LABEL_11;
      case 4:
        _headerStringReviewedSection = [(RAPHomeDataSource *)self _headerStringIssuesReportedSection];
        goto LABEL_11;
      case 5:
        _headerStringReviewedSection = [(RAPHomeDataSource *)self _headerStringIncidentsReportedSection];
LABEL_11:
        v10 = _headerStringReviewedSection;
        string = [_headerStringReviewedSection string];

        goto LABEL_12;
    }

    goto LABEL_12;
  }

  v9 = 0.0;
  if (section)
  {
    if (section == 2)
    {
      _headerStringReviewedSection = [(RAPHomeDataSource *)self _headerStringInReviewSection];
      goto LABEL_11;
    }

LABEL_12:
    collectionView = [(DataSource *)self collectionView];
    [collectionView bounds];
    Width = CGRectGetWidth(v17);
    collectionView2 = [(DataSource *)self collectionView];
    traitCollection = [collectionView2 traitCollection];
    [SectionHeaderCollectionReusableView heightWhenFirstNonEmptySection:string == 0 title:string actionTitle:0 availableWidth:traitCollection traitCollection:Width];
    v9 = v15;
  }

  return v9;
}

- (double)footerHeightForSection:(int64_t)section collectionView:(id)view
{
  [view frame];
  v7 = v6;
  height = UILayoutFittingExpandedSize.height;
  v9 = objc_alloc_init(UserProfileSectionFooterView);
  v10 = 0;
  if (section > 2)
  {
    if (section == 3)
    {
      v11 = [UserProfileSectionFooterViewModel alloc];
      _footerStringReviewedSection = [(RAPHomeDataSource *)self _footerStringReviewedSection];
      goto LABEL_11;
    }

    if (section == 4)
    {
LABEL_7:
      v11 = [UserProfileSectionFooterViewModel alloc];
      _footerStringReviewedSection = [(RAPHomeDataSource *)self _footerString90Days];
LABEL_11:
      v15 = _footerStringReviewedSection;
      v10 = [(UserProfileSectionFooterViewModel *)v11 initWithContentString:_footerStringReviewedSection];
LABEL_12:
    }
  }

  else
  {
    if (section)
    {
      if (section != 2)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }

    v13 = +[UserProfileReportHistoryManager sharedInstance];
    inChina = [v13 inChina];

    if ((inChina & 1) == 0)
    {
      _footerStringActionsSection = [(RAPHomeDataSource *)self _footerStringActionsSection];
      _footerLinkText = [(RAPHomeDataSource *)self _footerLinkText];
      v15 = [_footerStringActionsSection stringByAppendingString:_footerLinkText];

      v23 = [UserProfileSectionFooterViewModel alloc];
      v24 = [[NSAttributedString alloc] initWithString:v15];
      v10 = [(UserProfileSectionFooterViewModel *)v23 initWithContentString:v24];

      goto LABEL_12;
    }

    v10 = 0;
  }

LABEL_13:
  [(UserProfileSectionFooterView *)v9 configureWithViewModel:v10];
  LODWORD(v16) = 1148846080;
  LODWORD(v17) = 1132068864;
  [(UserProfileSectionFooterView *)v9 systemLayoutSizeFittingSize:v7 + -32.0 withHorizontalFittingPriority:height verticalFittingPriority:v16, v17];
  v19 = v18;

  return v19;
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v5 = -[RAPHomeDataSource sectionForIndex:](self, "sectionForIndex:", [path section]);
  if (-[RAPHomeDataSource _isInternalInstall](self, "_isInternalInstall") && (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 BOOLForKey:@"__internal__EnableTapRAPForReportID"], v6, v7))
  {
    LOBYTE(v8) = v5 != 5;
  }

  else
  {
    v8 = 0xBu >> (v5 & 0xF);
    if (v5 > 3)
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8 & 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [pathCopy row];
  v8 = -[RAPHomeDataSource sectionForIndex:](self, "sectionForIndex:", [pathCopy section]);
  if (v8 == 3)
  {
    v15 = 136;
    goto LABEL_7;
  }

  if (v8 == 1)
  {
    v15 = 144;
LABEL_7:
    collectionView = [*(&self->super.super.isa + v15) objectAtIndexedSubscript:v7];
    delegate = [(DataSource *)self delegate];
    [delegate dataSource:self itemTapped:collectionView];
    goto LABEL_8;
  }

  if (v8)
  {
    goto LABEL_9;
  }

  v9 = [(NSMutableArray *)self->_reportActionSections objectAtIndexedSubscript:v7];
  integerValue = [v9 integerValue];

  reportMenuProvider = self->_reportMenuProvider;
  entryPoint = [(RAPHomeDataSource *)self entryPoint];
  collectionView = [(DataSource *)self collectionView];
  delegate = [collectionView _maps_mapsSceneDelegate];
  [(RAPReportMenuProvider *)reportMenuProvider handleMenuActionWithLinkType:integerValue entryPoint:entryPoint sceneDelegate:delegate];
LABEL_8:

LABEL_9:
  [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
}

- (void)seeAllTappedForReportForSection:(int64_t)section
{
  switch(section)
  {
    case 4:
      _headerStringIssuesReportedSection = [(RAPHomeDataSource *)self _headerStringIssuesReportedSection];
      goto LABEL_7;
    case 3:
      _headerStringIssuesReportedSection = [(RAPHomeDataSource *)self _headerStringReviewedSection];
      goto LABEL_7;
    case 2:
      _headerStringIssuesReportedSection = [(RAPHomeDataSource *)self _headerStringInReviewSection];
LABEL_7:
      v6 = _headerStringIssuesReportedSection;
      string = [_headerStringIssuesReportedSection string];

      goto LABEL_9;
  }

  string = 0;
LABEL_9:
  supplementaryElementsDelegate = [(RAPHomeDataSource *)self supplementaryElementsDelegate];
  [supplementaryElementsDelegate didTapOnMoreButtonForSectionType:section sectionTitle:string];
}

- (void)privacyTextTapped
{
  supplementaryElementsDelegate = [(RAPHomeDataSource *)self supplementaryElementsDelegate];
  [supplementaryElementsDelegate didTapOnPrivacyText];
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  v11 = -[RAPHomeDataSource sectionForIndex:](self, "sectionForIndex:", [pathCopy section]);
  v12 = v11;
  v13 = 0;
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      _headerStringReviewedSection = [(RAPHomeDataSource *)self _headerStringReviewedSection];
      _footerStringReviewedSection = [(RAPHomeDataSource *)self _footerStringReviewedSection];
    }

    else
    {
      if (v11 != 4)
      {
        _headerStringReviewedSection = 0;
        if (v11 != 5)
        {
          goto LABEL_18;
        }

        _headerStringIncidentsReportedSection = [(RAPHomeDataSource *)self _headerStringIncidentsReportedSection];
LABEL_14:
        _headerStringReviewedSection = _headerStringIncidentsReportedSection;
LABEL_15:
        v13 = 0;
        goto LABEL_18;
      }

      _headerStringReviewedSection = [(RAPHomeDataSource *)self _headerStringIssuesReportedSection];
      _footerStringReviewedSection = [(RAPHomeDataSource *)self _footerString90Days];
    }

LABEL_17:
    v13 = _footerStringReviewedSection;
    goto LABEL_18;
  }

  if (v11)
  {
    if (v11 != 1)
    {
      _headerStringReviewedSection = 0;
      if (v11 != 2)
      {
        goto LABEL_18;
      }

      _headerStringReviewedSection = [(RAPHomeDataSource *)self _headerStringInReviewSection];
      _footerStringReviewedSection = [(RAPHomeDataSource *)self _footerString90Days];
      goto LABEL_17;
    }

    _headerStringIncidentsReportedSection = [(RAPHomeDataSource *)self _headerStringTellUsMoreSection];
    goto LABEL_14;
  }

  if (sub_10000FA08(viewCopy) == 5)
  {
    _headerStringReviewedSection = [(RAPHomeDataSource *)self _headerStringActionsSection];
  }

  else
  {
    _headerStringReviewedSection = 0;
  }

  v20 = +[UserProfileReportHistoryManager sharedInstance];
  inChina = [v20 inChina];

  if (inChina)
  {
    goto LABEL_15;
  }

  _footerStringActionsSection = [(RAPHomeDataSource *)self _footerStringActionsSection];
  _footerLinkText = [(RAPHomeDataSource *)self _footerLinkText];
  v22 = objc_alloc_init(NSMutableParagraphStyle);
  [v22 setLineBreakMode:0];
  v27 = v22;
  v51[0] = NSParagraphStyleAttributeName;
  v51[1] = NSForegroundColorAttributeName;
  v52[0] = v22;
  v23 = +[UIColor secondaryLabelColor];
  v52[1] = v23;
  v29 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];

  v49 = NSForegroundColorAttributeName;
  v24 = +[UIColor systemBlueColor];
  v50 = v24;
  v25 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];

  v13 = [[NSMutableAttributedString alloc] initWithString:_footerStringActionsSection attributes:v29];
  v26 = [[NSMutableAttributedString alloc] initWithString:_footerLinkText attributes:v25];
  [v13 appendAttributedString:v26];

LABEL_18:
  if ([kindCopy isEqualToString:_UICollectionViewListLayoutElementKindSectionHeader])
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = sub_1007D5F58;
    v47 = sub_1007D5F68;
    v48 = 0;
    objc_initWeak(&location, self);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1007D5F70;
    v36[3] = &unk_10162A698;
    objc_copyWeak(v41, &location);
    v40 = &v43;
    v37 = viewCopy;
    v38 = pathCopy;
    v39 = _headerStringReviewedSection;
    v41[1] = v12;
    [UIView performWithoutAnimation:v36];
    v17 = v44[5];

    objc_destroyWeak(v41);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v43, 8);
  }

  else
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1007D61A4;
    v31[3] = &unk_10162A6C0;
    v32 = viewCopy;
    selfCopy = self;
    v35 = v12;
    v33 = pathCopy;
    v18 = objc_retainBlock(v31);
    v17 = (v18[2])(v18, v13, 1);
  }

  return v17;
}

- (id)_footerLinkText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[RAP History] See How Your Data is Managed" value:@"localized string not found" table:0];

  return v3;
}

- (id)_footerStringReviewedSection
{
  v2 = [NSAttributedString alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[RAP History] From the past 90 days. Reports about issues with information from Apple partners can take some time to get updated in Maps" value:@"localized string not found" table:0];
  v5 = [v2 initWithString:v4];

  return v5;
}

- (id)_footerString90Days
{
  v2 = [NSAttributedString alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[RAP History] From the past 90 days." value:@"localized string not found" table:0];
  v5 = [v2 initWithString:v4];

  return v5;
}

- (id)_headerStringActionsSection
{
  v2 = [NSAttributedString alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[RAP History] Report an Issue" value:@"localized string not found" table:0];
  v5 = [v2 initWithString:v4];

  return v5;
}

- (id)_footerStringActionsSection
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[RAP History] Issues you report are associated with your Apple Account. Incidents you report are not associated with your Apple Account" value:@"localized string not found" table:0];

  return v3;
}

- (id)_headerStringIncidentsReportedSection
{
  v2 = [NSAttributedString alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[RAP History] Incidents Reported" value:@"localized string not found" table:0];
  v5 = [v2 initWithString:v4];

  return v5;
}

- (id)_headerStringIssuesReportedSection
{
  v2 = [NSAttributedString alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[RAP History] Issues Reported" value:@"localized string not found" table:0];
  v5 = [v2 initWithString:v4];

  return v5;
}

- (id)_headerStringReviewedSection
{
  v2 = [NSAttributedString alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[RAP History] Reviewed" value:@"localized string not found" table:0];
  v5 = [v2 initWithString:v4];

  return v5;
}

- (id)_headerStringInReviewSection
{
  v2 = [NSAttributedString alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[RAP History] In Review" value:@"localized string not found" table:0];
  v5 = [v2 initWithString:v4];

  return v5;
}

- (id)_headerStringTellUsMoreSection
{
  v2 = [NSAttributedString alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[RAP History] Tell Us More" value:@"localized string not found" table:0];
  v5 = [v2 initWithString:v4];

  return v5;
}

- (id)RAPHomeReportMenu
{
  reportMenuProvider = self->_reportMenuProvider;
  entryPoint = [(RAPHomeDataSource *)self entryPoint];
  collectionView = [(DataSource *)self collectionView];
  _maps_mapsSceneDelegate = [collectionView _maps_mapsSceneDelegate];
  v7 = [(RAPReportMenuProvider *)reportMenuProvider getReportMenuFromEntryPoint:entryPoint sceneDelegate:_maps_mapsSceneDelegate];

  return v7;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v5 = [(RAPHomeDataSource *)self sectionForIndex:section];
  result = 1;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v7 = 136;
      if ([(NSArray *)self->_reportsAlreadyReviewed count]>= 4)
      {
        v8 = 177;
        goto LABEL_18;
      }

      goto LABEL_20;
    }

    if (v5 == 4)
    {
      v7 = 120;
      if ([(NSArray *)self->_allReports count]>= 4)
      {
        v8 = 178;
        goto LABEL_18;
      }

LABEL_20:
      v10 = *(&self->super.super.isa + v7);
      goto LABEL_21;
    }

    if (v5 != 5)
    {
      return result;
    }

    v9 = 200;
  }

  else if (v5)
  {
    if (v5 != 1)
    {
      if (v5 != 2)
      {
        return result;
      }

      v7 = 128;
      if ([(NSArray *)self->_reportsInReview count]>= 4)
      {
        v8 = 176;
LABEL_18:
        *(&self->super.super.isa + v8) = 1;
        return 3;
      }

      goto LABEL_20;
    }

    v9 = 144;
  }

  else
  {
    v9 = 168;
  }

  v10 = *(&self->super.super.isa + v9);
LABEL_21:

  return [v10 count];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[RAPHomeDataSource sectionForIndex:](self, "sectionForIndex:", [pathCopy section]);
  v9 = [pathCopy row];
  v10 = objc_alloc_init(ReportLinkFactory);
  v11 = 0;
  if (v8 > 2)
  {
    switch(v8)
    {
      case 3:
        v12 = &OBJC_IVAR___RAPHomeDataSource__reportsAlreadyReviewed;
        goto LABEL_16;
      case 4:
        v12 = &OBJC_IVAR___RAPHomeDataSource__allReports;
        goto LABEL_16;
      case 5:
        v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"IncidentsCell" forIndexPath:pathCopy];
        if (sub_10000FA08(v13) == 5)
        {
          +[UIColor clearColor];
        }

        else
        {
          +[UIColor secondarySystemGroupedBackgroundColor];
        }
        v19 = ;
        [v13 setBackgroundColor:v19];

        v11 = [(NSArray *)self->_nonZeroTrafficIncidentLayoutItems objectAtIndexedSubscript:v9];
        displayText = [v11 displayText];
        [v13 setTitle:displayText];

        v21 = +[UserProfileReportHistoryManager sharedInstance];
        v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v21 countForGEOTrafficIncidentType:{objc_msgSend(v11, "incidentType")}]);
        [v13 setSubtitle:v22];

        displayImage = [v11 displayImage];
        [v13 setIcon:displayImage];
        goto LABEL_18;
    }
  }

  else
  {
    switch(v8)
    {
      case 0:
        v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"ReportLinkCell" forIndexPath:pathCopy];
        v14 = [(NSMutableArray *)self->_reportActionSections objectAtIndexedSubscript:v9];
        integerValue = [v14 integerValue];

        if (integerValue > 4)
        {
          v11 = 0;
        }

        else
        {
          v11 = [(ReportLinkFactory *)v10 createModelForType:integerValue];
        }

        [v13 setReportLink:v11];
        goto LABEL_19;
      case 1:
        v12 = &OBJC_IVAR___RAPHomeDataSource__reportsTellUsMore;
        goto LABEL_16;
      case 2:
        v12 = &OBJC_IVAR___RAPHomeDataSource__reportsInReview;
LABEL_16:
        v11 = [*(&self->super.super.isa + *v12) objectAtIndexedSubscript:v9];
        break;
    }
  }

  v16 = +[(TwoLineCollectionViewListCell *)TwoLinesCollectionViewInsetGroupedListCell];
  v13 = [viewCopy dequeueReusableCellWithReuseIdentifier:v16 forIndexPath:pathCopy];

  displayImage = [TwoLinesContentViewModelComposer cellModelForRAPReportsHistory:v11 allowDisclosureIndicator:1];
  [v13 setViewModel:displayImage];
LABEL_18:

LABEL_19:

  return v13;
}

- (int64_t)sectionForIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_homeViewSections count]<= index)
  {
    return 0;
  }

  v5 = [(NSMutableArray *)self->_homeViewSections objectAtIndexedSubscript:index];
  integerValue = [v5 integerValue];

  return integerValue;
}

- (void)_addSections
{
  v3 = objc_alloc_init(NSMutableArray);
  homeViewSections = self->_homeViewSections;
  self->_homeViewSections = v3;

  if (![(RAPHomeDataSource *)self _isRAPNewUI]&& _MKRAPIsAvailable() && (sub_1007413D0() & 1) == 0)
  {
    [(NSMutableArray *)self->_homeViewSections addObject:&off_1016E6EF0];
  }

  v5 = +[UserProfileReportHistoryManager sharedInstance];
  inChina = [v5 inChina];

  if (inChina)
  {
    if (![(NSArray *)self->_allReports count])
    {
      goto LABEL_16;
    }

    v7 = &off_1016E6F08;
    goto LABEL_15;
  }

  if ([(RAPHomeDataSource *)self _isRAPNewUI])
  {
    v8 = +[UserProfileReportHistoryManager sharedInstance];
    hasTellUsMoreRAPs = [v8 hasTellUsMoreRAPs];

    if (hasTellUsMoreRAPs)
    {
      [(NSMutableArray *)self->_homeViewSections addObject:&off_1016E6F20];
    }
  }

  v10 = +[UserProfileReportHistoryManager sharedInstance];
  hasInReviewRAPs = [v10 hasInReviewRAPs];

  if (hasInReviewRAPs)
  {
    [(NSMutableArray *)self->_homeViewSections addObject:&off_1016E6F38];
  }

  v12 = +[UserProfileReportHistoryManager sharedInstance];
  hasReviewedRAPs = [v12 hasReviewedRAPs];

  if (hasReviewedRAPs)
  {
    v7 = &off_1016E6F50;
LABEL_15:
    [(NSMutableArray *)self->_homeViewSections addObject:v7];
  }

LABEL_16:
  if ([(NSArray *)self->_nonZeroTrafficIncidentLayoutItems count])
  {
    [(NSMutableArray *)self->_homeViewSections addObject:&off_1016E6F68];
  }

  collectionView = [(DataSource *)self collectionView];
  [collectionView reloadData];
}

- (void)_buildReportHistoryContent
{
  v3 = +[NSArray array];
  reportsInReview = self->_reportsInReview;
  self->_reportsInReview = v3;

  v5 = +[NSArray array];
  reportsAlreadyReviewed = self->_reportsAlreadyReviewed;
  v30 = 136;
  self->_reportsAlreadyReviewed = v5;

  v7 = +[NSArray array];
  reportsTellUsMore = self->_reportsTellUsMore;
  self->_reportsTellUsMore = v7;

  v9 = +[UserProfileReportHistoryManager sharedInstance];
  rapHistory = [v9 rapHistory];

  v11 = +[NSMutableArray array];
  v12 = +[NSMutableArray array];
  v13 = +[NSMutableArray array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = rapHistory;
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        reportStatus = [v19 reportStatus];
        v21 = v11;
        if (!reportStatus)
        {
          goto LABEL_11;
        }

        if (reportStatus == 2)
        {
          v21 = v13;
LABEL_11:
          [v21 addObject:v19];
          continue;
        }

        v21 = v12;
        if (reportStatus == 1)
        {
          goto LABEL_11;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v16);
  }

  v22 = [[NSSortDescriptor alloc] initWithKey:@"dateOfReportCreation" ascending:0];
  v23 = [NSArray arrayWithObject:v22];
  v24 = [v11 sortedArrayUsingDescriptors:v23];
  v25 = self->_reportsInReview;
  self->_reportsInReview = v24;

  v26 = [v12 sortedArrayUsingDescriptors:v23];
  v27 = *(&self->super.super.isa + v30);
  *(&self->super.super.isa + v30) = v26;

  v28 = [v13 sortedArrayUsingDescriptors:v23];
  v29 = self->_reportsTellUsMore;
  self->_reportsTellUsMore = v28;

  [(RAPHomeDataSource *)self _addSections];
}

- (void)_loadReportHistoryContent
{
  [(RAPHomeDataSource *)self _buildReportHistoryContent];
  delegate = [(DataSource *)self delegate];
  [delegate dataSourceUpdated:self];
}

- (void)_populateActionSectionWithNonZeroTrafficIncidentLayoutItems
{
  v3 = [NSMutableArray arrayWithArray:&off_1016ECBA8];
  reportActionSections = self->_reportActionSections;
  self->_reportActionSections = v3;

  v5 = +[GEOPlatform sharedPlatform];
  supportsNavigation = [v5 supportsNavigation];

  if (supportsNavigation)
  {
    [(NSMutableArray *)self->_reportActionSections addObject:&off_1016E6EC0];
    if ([(NSArray *)self->_nonZeroTrafficIncidentLayoutItems count])
    {
      [(NSMutableArray *)self->_reportActionSections addObject:&off_1016E6ED8];
      collectionView = [(DataSource *)self collectionView];
      [collectionView reloadData];
    }
  }
}

- (void)_updateNonZeroTrafficLayoutItems
{
  v3 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_trafficIncidentLayoutItems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = +[UserProfileReportHistoryManager sharedInstance];
        v11 = [v10 countForGEOTrafficIncidentType:{objc_msgSend(v9, "incidentType")}];

        if (v11 >= 1)
        {
          [(NSArray *)v3 addObject:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  nonZeroTrafficIncidentLayoutItems = self->_nonZeroTrafficIncidentLayoutItems;
  self->_nonZeroTrafficIncidentLayoutItems = v3;
}

- (void)_layoutManagerDidLoadLayoutItems:(id)items
{
  objc_storeStrong(&self->_trafficIncidentLayoutItems, items);
  [(RAPHomeDataSource *)self _updateNonZeroTrafficLayoutItems];
  [(RAPHomeDataSource *)self _populateActionSectionWithNonZeroTrafficIncidentLayoutItems];

  [(RAPHomeDataSource *)self _loadReportHistoryContent];
}

- (void)_reloadTrafficIncidentLayoutItems
{
  objc_initWeak(&location, self);
  v2 = +[TrafficIncidentLayoutManager sharedInstance];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007D75DC;
  v3[3] = &unk_101654BC0;
  objc_copyWeak(&v4, &location);
  [v2 fetchTrafficIncidentsLayout:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (RAPHomeDataSource)initWithCollectionView:(id)view updateLocation:(BOOL)location
{
  locationCopy = location;
  viewCopy = view;
  v25.receiver = self;
  v25.super_class = RAPHomeDataSource;
  v7 = [(DataSource *)&v25 initWithCollectionView:viewCopy updateLocation:locationCopy];
  if (v7)
  {
    v8 = +[UserProfileReportHistoryManager sharedInstance];
    rapHistory = [v8 rapHistory];
    allReports = v7->_allReports;
    v7->_allReports = rapHistory;

    v11 = +[UserProfileReportHistoryManager sharedInstance];
    [v11 refineRAPHistory];

    v12 = +[UserProfileReportHistoryManager sharedInstance];
    observers = [v12 observers];
    [observers registerObserver:v7];

    v14 = objc_alloc_init(RAPReportMenuProvider);
    reportMenuProvider = v7->_reportMenuProvider;
    v7->_reportMenuProvider = v14;

    [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"ReportLinkCell"];
    [viewCopy registerClass:objc_opt_class() forCellWithReuseIdentifier:@"IncidentsCell"];
    v16 = objc_opt_class();
    v17 = +[(TwoLineCollectionViewListCell *)TwoLinesCollectionViewInsetGroupedListCell];
    [viewCopy registerClass:v16 forCellWithReuseIdentifier:v17];

    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [viewCopy registerClass:v18 forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:v20];

    v21 = objc_opt_class();
    v22 = +[SectionHeaderCollectionReusableView reuseIdentifier];
    [viewCopy registerClass:v21 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v22];

    v23 = +[TrafficIncidentLayoutManager sharedInstance];
    [v23 addObserver:v7];

    [(RAPHomeDataSource *)v7 _reloadTrafficIncidentLayoutItems];
  }

  return v7;
}

@end
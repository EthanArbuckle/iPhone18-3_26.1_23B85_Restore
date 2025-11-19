@interface RAPHomeDataSource
- (BOOL)_isInternalInstall;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (RAPHomeDataSource)initWithCollectionView:(id)a3 updateLocation:(BOOL)a4;
- (SupplementaryElementsDataSourceDelegate)supplementaryElementsDelegate;
- (double)footerHeightForSection:(int64_t)a3 collectionView:(id)a4;
- (double)headerHeightForSection:(int64_t)a3 collectionView:(id)a4;
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
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)sectionForIndex:(unint64_t)a3;
- (void)_addSections;
- (void)_buildReportHistoryContent;
- (void)_layoutManagerDidLoadLayoutItems:(id)a3;
- (void)_loadReportHistoryContent;
- (void)_populateActionSectionWithNonZeroTrafficIncidentLayoutItems;
- (void)_reloadTrafficIncidentLayoutItems;
- (void)_updateNonZeroTrafficLayoutItems;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)privacyTextTapped;
- (void)reportHistoryManagerDidUpdate:(id)a3;
- (void)seeAllTappedForReportForSection:(int64_t)a3;
@end

@implementation RAPHomeDataSource

- (SupplementaryElementsDataSourceDelegate)supplementaryElementsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_supplementaryElementsDelegate);

  return WeakRetained;
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  v6 = a4;
  if (-[RAPHomeDataSource _isInternalInstall](self, "_isInternalInstall") && (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 BOOLForKey:@"__internal__EnableTapRAPForReportID"], v7, v8) && objc_msgSend(v6, "count") == 1)
  {
    v9 = [v6 firstObject];
    v10 = [v9 row];
    v11 = -[RAPHomeDataSource sectionForIndex:](self, "sectionForIndex:", [v9 section]);
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
  v3 = [v2 isInternalInstall];

  return v3;
}

- (void)reportHistoryManagerDidUpdate:(id)a3
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

- (double)headerHeightForSection:(int64_t)a3 collectionView:(id)a4
{
  v6 = a4;
  v7 = 0;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v8 = [(RAPHomeDataSource *)self _headerStringReviewedSection];
        goto LABEL_11;
      case 4:
        v8 = [(RAPHomeDataSource *)self _headerStringIssuesReportedSection];
        goto LABEL_11;
      case 5:
        v8 = [(RAPHomeDataSource *)self _headerStringIncidentsReportedSection];
LABEL_11:
        v10 = v8;
        v7 = [v8 string];

        goto LABEL_12;
    }

    goto LABEL_12;
  }

  v9 = 0.0;
  if (a3)
  {
    if (a3 == 2)
    {
      v8 = [(RAPHomeDataSource *)self _headerStringInReviewSection];
      goto LABEL_11;
    }

LABEL_12:
    v11 = [(DataSource *)self collectionView];
    [v11 bounds];
    Width = CGRectGetWidth(v17);
    v13 = [(DataSource *)self collectionView];
    v14 = [v13 traitCollection];
    [SectionHeaderCollectionReusableView heightWhenFirstNonEmptySection:v7 == 0 title:v7 actionTitle:0 availableWidth:v14 traitCollection:Width];
    v9 = v15;
  }

  return v9;
}

- (double)footerHeightForSection:(int64_t)a3 collectionView:(id)a4
{
  [a4 frame];
  v7 = v6;
  height = UILayoutFittingExpandedSize.height;
  v9 = objc_alloc_init(UserProfileSectionFooterView);
  v10 = 0;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v11 = [UserProfileSectionFooterViewModel alloc];
      v12 = [(RAPHomeDataSource *)self _footerStringReviewedSection];
      goto LABEL_11;
    }

    if (a3 == 4)
    {
LABEL_7:
      v11 = [UserProfileSectionFooterViewModel alloc];
      v12 = [(RAPHomeDataSource *)self _footerString90Days];
LABEL_11:
      v15 = v12;
      v10 = [(UserProfileSectionFooterViewModel *)v11 initWithContentString:v12];
LABEL_12:
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 2)
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }

    v13 = +[UserProfileReportHistoryManager sharedInstance];
    v14 = [v13 inChina];

    if ((v14 & 1) == 0)
    {
      v21 = [(RAPHomeDataSource *)self _footerStringActionsSection];
      v22 = [(RAPHomeDataSource *)self _footerLinkText];
      v15 = [v21 stringByAppendingString:v22];

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

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = -[RAPHomeDataSource sectionForIndex:](self, "sectionForIndex:", [a4 section]);
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

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [v6 row];
  v8 = -[RAPHomeDataSource sectionForIndex:](self, "sectionForIndex:", [v6 section]);
  if (v8 == 3)
  {
    v15 = 136;
    goto LABEL_7;
  }

  if (v8 == 1)
  {
    v15 = 144;
LABEL_7:
    v13 = [*(&self->super.super.isa + v15) objectAtIndexedSubscript:v7];
    v14 = [(DataSource *)self delegate];
    [v14 dataSource:self itemTapped:v13];
    goto LABEL_8;
  }

  if (v8)
  {
    goto LABEL_9;
  }

  v9 = [(NSMutableArray *)self->_reportActionSections objectAtIndexedSubscript:v7];
  v10 = [v9 integerValue];

  reportMenuProvider = self->_reportMenuProvider;
  v12 = [(RAPHomeDataSource *)self entryPoint];
  v13 = [(DataSource *)self collectionView];
  v14 = [v13 _maps_mapsSceneDelegate];
  [(RAPReportMenuProvider *)reportMenuProvider handleMenuActionWithLinkType:v10 entryPoint:v12 sceneDelegate:v14];
LABEL_8:

LABEL_9:
  [v16 deselectItemAtIndexPath:v6 animated:1];
}

- (void)seeAllTappedForReportForSection:(int64_t)a3
{
  switch(a3)
  {
    case 4:
      v5 = [(RAPHomeDataSource *)self _headerStringIssuesReportedSection];
      goto LABEL_7;
    case 3:
      v5 = [(RAPHomeDataSource *)self _headerStringReviewedSection];
      goto LABEL_7;
    case 2:
      v5 = [(RAPHomeDataSource *)self _headerStringInReviewSection];
LABEL_7:
      v6 = v5;
      v8 = [v5 string];

      goto LABEL_9;
  }

  v8 = 0;
LABEL_9:
  v7 = [(RAPHomeDataSource *)self supplementaryElementsDelegate];
  [v7 didTapOnMoreButtonForSectionType:a3 sectionTitle:v8];
}

- (void)privacyTextTapped
{
  v2 = [(RAPHomeDataSource *)self supplementaryElementsDelegate];
  [v2 didTapOnPrivacyText];
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = -[RAPHomeDataSource sectionForIndex:](self, "sectionForIndex:", [v10 section]);
  v12 = v11;
  v13 = 0;
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      v14 = [(RAPHomeDataSource *)self _headerStringReviewedSection];
      v15 = [(RAPHomeDataSource *)self _footerStringReviewedSection];
    }

    else
    {
      if (v11 != 4)
      {
        v14 = 0;
        if (v11 != 5)
        {
          goto LABEL_18;
        }

        v16 = [(RAPHomeDataSource *)self _headerStringIncidentsReportedSection];
LABEL_14:
        v14 = v16;
LABEL_15:
        v13 = 0;
        goto LABEL_18;
      }

      v14 = [(RAPHomeDataSource *)self _headerStringIssuesReportedSection];
      v15 = [(RAPHomeDataSource *)self _footerString90Days];
    }

LABEL_17:
    v13 = v15;
    goto LABEL_18;
  }

  if (v11)
  {
    if (v11 != 1)
    {
      v14 = 0;
      if (v11 != 2)
      {
        goto LABEL_18;
      }

      v14 = [(RAPHomeDataSource *)self _headerStringInReviewSection];
      v15 = [(RAPHomeDataSource *)self _footerString90Days];
      goto LABEL_17;
    }

    v16 = [(RAPHomeDataSource *)self _headerStringTellUsMoreSection];
    goto LABEL_14;
  }

  if (sub_10000FA08(v8) == 5)
  {
    v14 = [(RAPHomeDataSource *)self _headerStringActionsSection];
  }

  else
  {
    v14 = 0;
  }

  v20 = +[UserProfileReportHistoryManager sharedInstance];
  v21 = [v20 inChina];

  if (v21)
  {
    goto LABEL_15;
  }

  v30 = [(RAPHomeDataSource *)self _footerStringActionsSection];
  v28 = [(RAPHomeDataSource *)self _footerLinkText];
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

  v13 = [[NSMutableAttributedString alloc] initWithString:v30 attributes:v29];
  v26 = [[NSMutableAttributedString alloc] initWithString:v28 attributes:v25];
  [v13 appendAttributedString:v26];

LABEL_18:
  if ([v9 isEqualToString:_UICollectionViewListLayoutElementKindSectionHeader])
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
    v37 = v8;
    v38 = v10;
    v39 = v14;
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
    v32 = v8;
    v34 = self;
    v35 = v12;
    v33 = v10;
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
  v4 = [(RAPHomeDataSource *)self entryPoint];
  v5 = [(DataSource *)self collectionView];
  v6 = [v5 _maps_mapsSceneDelegate];
  v7 = [(RAPReportMenuProvider *)reportMenuProvider getReportMenuFromEntryPoint:v4 sceneDelegate:v6];

  return v7;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(RAPHomeDataSource *)self sectionForIndex:a4];
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[RAPHomeDataSource sectionForIndex:](self, "sectionForIndex:", [v7 section]);
  v9 = [v7 row];
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
        v13 = [v6 dequeueReusableCellWithReuseIdentifier:@"IncidentsCell" forIndexPath:v7];
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
        v20 = [v11 displayText];
        [v13 setTitle:v20];

        v21 = +[UserProfileReportHistoryManager sharedInstance];
        v22 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v21 countForGEOTrafficIncidentType:{objc_msgSend(v11, "incidentType")}]);
        [v13 setSubtitle:v22];

        v17 = [v11 displayImage];
        [v13 setIcon:v17];
        goto LABEL_18;
    }
  }

  else
  {
    switch(v8)
    {
      case 0:
        v13 = [v6 dequeueReusableCellWithReuseIdentifier:@"ReportLinkCell" forIndexPath:v7];
        v14 = [(NSMutableArray *)self->_reportActionSections objectAtIndexedSubscript:v9];
        v15 = [v14 integerValue];

        if (v15 > 4)
        {
          v11 = 0;
        }

        else
        {
          v11 = [(ReportLinkFactory *)v10 createModelForType:v15];
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
  v13 = [v6 dequeueReusableCellWithReuseIdentifier:v16 forIndexPath:v7];

  v17 = [TwoLinesContentViewModelComposer cellModelForRAPReportsHistory:v11 allowDisclosureIndicator:1];
  [v13 setViewModel:v17];
LABEL_18:

LABEL_19:

  return v13;
}

- (int64_t)sectionForIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_homeViewSections count]<= a3)
  {
    return 0;
  }

  v5 = [(NSMutableArray *)self->_homeViewSections objectAtIndexedSubscript:a3];
  v6 = [v5 integerValue];

  return v6;
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
  v6 = [v5 inChina];

  if (v6)
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
    v9 = [v8 hasTellUsMoreRAPs];

    if (v9)
    {
      [(NSMutableArray *)self->_homeViewSections addObject:&off_1016E6F20];
    }
  }

  v10 = +[UserProfileReportHistoryManager sharedInstance];
  v11 = [v10 hasInReviewRAPs];

  if (v11)
  {
    [(NSMutableArray *)self->_homeViewSections addObject:&off_1016E6F38];
  }

  v12 = +[UserProfileReportHistoryManager sharedInstance];
  v13 = [v12 hasReviewedRAPs];

  if (v13)
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

  v14 = [(DataSource *)self collectionView];
  [v14 reloadData];
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
  v10 = [v9 rapHistory];

  v11 = +[NSMutableArray array];
  v12 = +[NSMutableArray array];
  v13 = +[NSMutableArray array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = v10;
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
        v20 = [v19 reportStatus];
        v21 = v11;
        if (!v20)
        {
          goto LABEL_11;
        }

        if (v20 == 2)
        {
          v21 = v13;
LABEL_11:
          [v21 addObject:v19];
          continue;
        }

        v21 = v12;
        if (v20 == 1)
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
  v3 = [(DataSource *)self delegate];
  [v3 dataSourceUpdated:self];
}

- (void)_populateActionSectionWithNonZeroTrafficIncidentLayoutItems
{
  v3 = [NSMutableArray arrayWithArray:&off_1016ECBA8];
  reportActionSections = self->_reportActionSections;
  self->_reportActionSections = v3;

  v5 = +[GEOPlatform sharedPlatform];
  v6 = [v5 supportsNavigation];

  if (v6)
  {
    [(NSMutableArray *)self->_reportActionSections addObject:&off_1016E6EC0];
    if ([(NSArray *)self->_nonZeroTrafficIncidentLayoutItems count])
    {
      [(NSMutableArray *)self->_reportActionSections addObject:&off_1016E6ED8];
      v7 = [(DataSource *)self collectionView];
      [v7 reloadData];
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

- (void)_layoutManagerDidLoadLayoutItems:(id)a3
{
  objc_storeStrong(&self->_trafficIncidentLayoutItems, a3);
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

- (RAPHomeDataSource)initWithCollectionView:(id)a3 updateLocation:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v25.receiver = self;
  v25.super_class = RAPHomeDataSource;
  v7 = [(DataSource *)&v25 initWithCollectionView:v6 updateLocation:v4];
  if (v7)
  {
    v8 = +[UserProfileReportHistoryManager sharedInstance];
    v9 = [v8 rapHistory];
    allReports = v7->_allReports;
    v7->_allReports = v9;

    v11 = +[UserProfileReportHistoryManager sharedInstance];
    [v11 refineRAPHistory];

    v12 = +[UserProfileReportHistoryManager sharedInstance];
    v13 = [v12 observers];
    [v13 registerObserver:v7];

    v14 = objc_alloc_init(RAPReportMenuProvider);
    reportMenuProvider = v7->_reportMenuProvider;
    v7->_reportMenuProvider = v14;

    [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"ReportLinkCell"];
    [v6 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"IncidentsCell"];
    v16 = objc_opt_class();
    v17 = +[(TwoLineCollectionViewListCell *)TwoLinesCollectionViewInsetGroupedListCell];
    [v6 registerClass:v16 forCellWithReuseIdentifier:v17];

    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v6 registerClass:v18 forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:v20];

    v21 = objc_opt_class();
    v22 = +[SectionHeaderCollectionReusableView reuseIdentifier];
    [v6 registerClass:v21 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v22];

    v23 = +[TrafficIncidentLayoutManager sharedInstance];
    [v23 addObserver:v7];

    [(RAPHomeDataSource *)v7 _reloadTrafficIncidentLayoutItems];
  }

  return v7;
}

@end
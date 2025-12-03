@interface UGCUserInformationSectionController
- (NSArray)rowItems;
- (UGCPOIEnrichmentAnalyticsDelegate)analyticsDelegate;
- (UGCSectionControllerDelegate)delegate;
- (UGCUserInformationSectionController)initWithInsetGrouped:(BOOL)grouped isInlineMode:(BOOL)mode;
- (id)_legalDisclosureString;
- (void)_retrieveUserInformation;
- (void)_setupUserInfoView;
- (void)userInformationCellDidSelectLegalAttribution:(id)attribution;
@end

@implementation UGCUserInformationSectionController

- (UGCPOIEnrichmentAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (UGCSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)userInformationCellDidSelectLegalAttribution:(id)attribution
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sectionControllerRequestsLegalAttribution:self];
}

- (NSArray)rowItems
{
  rowItems = self->_rowItems;
  if (!rowItems)
  {
    v4 = [UGCPOIEnrichmentRowItem rowItemWithView:self->_userInformationCell];
    v12 = v4;
    v5 = [NSArray arrayWithObjects:&v12 count:1];
    v6 = self->_rowItems;
    self->_rowItems = v5;

    rowItems = self->_rowItems;
    if (self->_isInsetGrouped)
    {
      v7 = [UGCPOIEnrichmentGroupedSectionView groupedSectionRowItemWithRowItems:rowItems bottomSpacing:self->_isInlineMode isInlineMode:16.0];
      v11 = v7;
      v8 = [NSArray arrayWithObjects:&v11 count:1];
      v9 = self->_rowItems;
      self->_rowItems = v8;

      rowItems = self->_rowItems;
    }
  }

  return rowItems;
}

- (id)_legalDisclosureString
{
  if ([(UGCUserInformationSectionController *)self isInsetGrouped])
  {
    v2 = +[NSBundle mainBundle];
    v3 = v2;
    v4 = @"Inline ratings legal disclaimer [UGC]";
  }

  else
  {
    IsEnabled_ARPCommunityID = MapsFeature_IsEnabled_ARPCommunityID();
    v2 = +[NSBundle mainBundle];
    v3 = v2;
    if (IsEnabled_ARPCommunityID)
    {
      v4 = @"Ratings and photos legal disclaimer for CommunityID [UGC]";
    }

    else
    {
      v4 = @"Ratings and photos legal disclaimer [UGC]";
    }
  }

  v6 = [v2 localizedStringForKey:v4 value:@"localized string not found" table:0];

  return v6;
}

- (void)_retrieveUserInformation
{
  v3 = +[GEOUserAccountInfo primaryICloudAccount];
  v4 = +[UserInformationManager sharedInstance];
  if (v3)
  {
    v5 = objc_alloc_init(UGCUserInformationViewModel);
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"[UGC] Contribution Name" value:@"localized string not found" table:0];
    userName = [v4 userName];
    v9 = [NSString stringWithFormat:v7, userName];
    [(UGCUserInformationViewModel *)v5 setUserName:v9];

    userEmail = [v4 userEmail];
    [(UGCUserInformationViewModel *)v5 setUserEmail:userEmail];

    userIcon = [v4 userIcon];
    [(UGCUserInformationViewModel *)v5 setUserIcon:userIcon];

    _legalDisclosureString = [(UGCUserInformationSectionController *)self _legalDisclosureString];
    [(UGCUserInformationViewModel *)v5 setLegalDisclosureString:_legalDisclosureString];

    [(UGCUserInformationCell *)self->_userInformationCell setViewModel:v5];
    objc_initWeak(&location, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100987A5C;
    v13[3] = &unk_101636260;
    objc_copyWeak(&v15, &location);
    v14 = v4;
    [v14 retrieveAddressForLocationWithCompletion:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)_setupUserInfoView
{
  v3 = [[UGCUserInformationCell alloc] initWithEmphasis:1];
  userInformationCell = self->_userInformationCell;
  self->_userInformationCell = v3;

  [(UGCUserInformationCell *)self->_userInformationCell setWantsButtonShapes:!self->_isInsetGrouped];
  [(UGCUserInformationCell *)self->_userInformationCell updateLayoutMarginsForIsInsetGrouped:self->_isInsetGrouped];
  [(UGCUserInformationCell *)self->_userInformationCell setDelegate:self];
  if (!self->_isInsetGrouped && sub_10000FA08(self->_userInformationCell) != 5 && (MapsFeature_IsEnabled_ARPCommunityID() & 1) == 0)
  {
    [(UGCPOIEnrichmentEditorCell *)self->_userInformationCell setShowTopHairline:1];
  }

  [(UGCUserInformationSectionController *)self _retrieveUserInformation];
}

- (UGCUserInformationSectionController)initWithInsetGrouped:(BOOL)grouped isInlineMode:(BOOL)mode
{
  v9.receiver = self;
  v9.super_class = UGCUserInformationSectionController;
  v6 = [(UGCUserInformationSectionController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_isInsetGrouped = grouped;
    v6->_isInlineMode = mode;
    [(UGCUserInformationSectionController *)v6 _setupUserInfoView];
  }

  return v7;
}

@end
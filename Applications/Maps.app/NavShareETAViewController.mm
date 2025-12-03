@interface NavShareETAViewController
- (NavActionCoordination)navActionCoordinator;
- (NavShareETACell)openContactsCell;
- (NavShareETAViewController)init;
- (double)_extraHeight;
- (double)_footerHeight;
- (double)_tableContentWidth;
- (double)heightForLayout:(unint64_t)layout;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path itemIdentifier:(id)identifier;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (void)_dismiss;
- (void)_reloadContactForFirstDisplay;
- (void)_updateSharingFooterWithIdentity:(id)identity;
- (void)_updateWithSharingIdentity:(id)identity;
- (void)capabilityLevelFetcher:(id)fetcher didUpdateCapabilityLevelsForHandles:(id)handles;
- (void)cellDidFinishRingAnimation:(id)animation;
- (void)dealloc;
- (void)dismissAfterDelay;
- (void)handleDismissAction:(id)action;
- (void)headerViewTapped:(id)tapped;
- (void)sharedTripService:(id)service didUpdateReceivers:(id)receivers;
- (void)sharedTripServiceDidUpdateSendingAvailability:(id)availability;
- (void)suggestionsDataSourceDidUpdateContactsForDisplay:(id)display;
- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NavShareETAViewController

- (NavActionCoordination)navActionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_navActionCoordinator);

  return WeakRetained;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  self->_userInteracted = 1;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  if ([(SharedTripSuggestionsDataSource *)self->_dataSource isContactSearchItemAtIndexPath:pathCopy])
  {
    v7 = sub_100035E6C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Tapped ShareETA Open contacts", &v22, 2u);
    }

    [(GCDTimer *)self->_dismissTimer invalidate];
    dismissTimer = self->_dismissTimer;
    self->_dismissTimer = 0;

    WeakRetained = objc_loadWeakRetained(&self->_navActionCoordinator);
    [WeakRetained viewControllerOpenContactsSearch:self];

    [GEOAPPortal captureUserAction:9027 target:649 value:0];
  }

  else
  {
    v10 = [(SharedTripSuggestionsDataSource *)self->_dataSource contactForItemIndexPath:pathCopy];
    v11 = v10;
    if (v10)
    {
      cellsByContactStringValue = self->_cellsByContactStringValue;
      stringValue = [v10 stringValue];
      v14 = [(NSMutableDictionary *)cellsByContactStringValue objectForKey:stringValue];

      if ([v14 sharingState])
      {
        sharingState = [v14 sharingState];
        v16 = sub_100035E6C();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
        if (sharingState == 1)
        {
          if (v17)
          {
            v22 = 138477827;
            v23 = v11;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Tapped to cancel share to %{private}@", &v22, 0xCu);
          }

          [(NavShareETAViewController *)self dismissAfterDelay];
          [v14 setSharingState:-[SharedTripSuggestionsDataSource sharingStateForContact:](self->_dataSource animated:{"sharingStateForContact:", v11), 0}];
        }

        else
        {
          if (v17)
          {
            v22 = 138477827;
            v23 = v11;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Tapped to stop sharing to %{private}@", &v22, 0xCu);
          }

          [(NavShareETAViewController *)self dismissAfterDelay];
          [(SharedTripSuggestionsDataSource *)self->_dataSource toggleContact:v11];
        }

        v20 = 9026;
      }

      else
      {
        v18 = sub_100035E6C();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v22 = 138477827;
          v23 = v11;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Tapped to start sharing to %{private}@", &v22, 0xCu);
        }

        [(GCDTimer *)self->_dismissTimer invalidate];
        v19 = self->_dismissTimer;
        self->_dismissTimer = 0;

        [v14 setSharingState:1 animated:1];
        v20 = 9025;
      }

      [GEOAPPortal captureUserAction:v20 target:649 value:0];
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController updateHeightForCurrentLayout];
    }
  }
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if ([view numberOfSections] - 1 <= section)
  {
    v5 = self->_footerView;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  if ([view numberOfSections] - 1 > section)
  {
    return 0.0;
  }

  [(NavShareETAViewController *)self _footerHeight];
  return result;
}

- (void)tableView:(id)view didEndDisplayingCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = cellCopy;
  if (isKindOfClass)
  {
    contact = [cellCopy contact];
    if (contact)
    {
      v8 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
      [v8 cancelCapabilityLevelRequestForContact:contact];
    }

    v6 = cellCopy;
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contact = [cellCopy contact];
    if (contact)
    {
      v7 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
      v9 = contact;
      v8 = [NSArray arrayWithObjects:&v9 count:1];
      [v7 requestCapabilityLevelsForContacts:v8];
    }
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(SharedTripSuggestionsDataSource *)self->_dataSource isContactSearchItemAtIndexPath:pathCopy])
  {
    openContactsCell = [(NavShareETAViewController *)self openContactsCell];
    v9 = openContactsCell;
  }

  else
  {
    dataSource = [viewCopy dataSource];
    if (dataSource == self)
    {
      v9 = 0;
    }

    else
    {
      v9 = [(SharedTripSuggestionsDataSource *)self->_dataSource contactForItemIndexPath:pathCopy];
    }

    sizingCell = self->_sizingCell;
    if (!sizingCell)
    {
      v12 = [[NavShareETACell alloc] initWithStyle:0 reuseIdentifier:0];
      v13 = self->_sizingCell;
      self->_sizingCell = v12;

      sizingCell = self->_sizingCell;
    }

    [(NavShareETACell *)sizingCell setContact:v9];
    [(NavShareETACell *)self->_sizingCell setSharingState:3 animated:0];
    openContactsCell = self->_sizingCell;
  }

  [(NavShareETAViewController *)self _tableContentWidth];
  [openContactsCell heightForWidth:?];
  v15 = v14;

  return v15;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v4 = [[UITableViewCell alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path itemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  contactSearchItemIdentifier = [(SharedTripSuggestionsDataSource *)self->_dataSource contactSearchItemIdentifier];
  v8 = [identifierCopy isEqual:contactSearchItemIdentifier];

  if (v8)
  {
    openContactsCell = [(NavShareETAViewController *)self openContactsCell];
    goto LABEL_9;
  }

  v10 = [(SharedTripSuggestionsDataSource *)self->_dataSource contactForItemIdentifier:identifierCopy];
  cellsByContactStringValue = self->_cellsByContactStringValue;
  stringValue = [v10 stringValue];
  openContactsCell = [(NSMutableDictionary *)cellsByContactStringValue objectForKey:stringValue];

  if (openContactsCell)
  {
    v13 = [(SharedTripSuggestionsDataSource *)self->_dataSource sharingStateForContact:v10];
    v14 = openContactsCell;
    v15 = 1;
  }

  else
  {
    stringValue2 = [v10 stringValue];
    v17 = [stringValue2 length];

    if (!v17)
    {
      openContactsCell = 0;
      goto LABEL_8;
    }

    openContactsCell = [[NavShareETACell alloc] initWithStyle:0 reuseIdentifier:0];
    v18 = self->_cellsByContactStringValue;
    stringValue3 = [v10 stringValue];
    [(NSMutableDictionary *)v18 setObject:openContactsCell forKey:stringValue3];

    [(NavShareETACell *)openContactsCell setDelegate:self];
    [(NavShareETACell *)openContactsCell setContact:v10];
    v13 = [(SharedTripSuggestionsDataSource *)self->_dataSource sharingStateForContact:v10];
    v14 = openContactsCell;
    v15 = 0;
  }

  [(NavShareETACell *)v14 setSharingState:v13 animated:v15];
LABEL_8:
  v20 = +[MSPSharedTripService sharedInstance];
  v24 = 0;
  v21 = [v20 capabilityTypeForContact:v10 serviceName:&v24 isActiveReceiver:0];
  v22 = v24;

  [(NavShareETACell *)openContactsCell setCapabilityType:v21 serviceName:v22];
LABEL_9:

  return openContactsCell;
}

- (double)_tableContentWidth
{
  [(UITableView *)self->_tableView frame];
  Width = CGRectGetWidth(v8);
  [(UITableView *)self->_tableView layoutMargins];
  v5 = v4;
  [(UITableView *)self->_tableView layoutMargins];
  return Width - (v5 + v6);
}

- (double)_footerHeight
{
  footerView = self->_footerView;
  [(NavShareETAViewController *)self _tableContentWidth];

  [(NavShareETAFooterView *)footerView heightForWidth:?];
  return result;
}

- (double)_extraHeight
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController bottomSafeOffset];
  if (v3 <= 0.0)
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

- (double)heightForLayout:(unint64_t)layout
{
  if (layout == 1)
  {
    [(ContaineeViewController *)self headerHeight];
    v12 = v11;
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController bottomSafeOffset];
    v4 = v14 + v12;
LABEL_13:

    return v4;
  }

  v4 = -1.0;
  if (layout == 2)
  {
    if ([(UITableView *)self->_tableView numberOfSections]< 1)
    {
      v6 = 0.0;
    }

    else
    {
      v5 = 0;
      v6 = 0.0;
      do
      {
        if ([(UITableView *)self->_tableView numberOfRowsInSection:v5]>= 1)
        {
          v7 = 0;
          do
          {
            tableView = self->_tableView;
            v9 = [NSIndexPath indexPathForRow:v7 inSection:v5];
            [(NavShareETAViewController *)self tableView:tableView heightForRowAtIndexPath:v9];
            v6 = v10 + v6;

            ++v7;
          }

          while (v7 < [(UITableView *)self->_tableView numberOfRowsInSection:v5]);
        }

        ++v5;
      }

      while (v5 < [(UITableView *)self->_tableView numberOfSections]);
    }

    [(ContaineeViewController *)self headerHeight];
    v16 = v15;
    [(NavShareETAViewController *)self _footerHeight];
    v18 = v16 + v17;
    [(NavShareETAViewController *)self _extraHeight];
    v20 = v6 + v19;
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController bottomSafeOffset];
    v4 = v18 + v21 + v20;
    goto LABEL_13;
  }

  return v4;
}

- (void)handleDismissAction:(id)action
{
  actionCopy = action;
  v6.receiver = self;
  v6.super_class = NavShareETAViewController;
  [(ContaineeViewController *)&v6 handleDismissAction:actionCopy];
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = actionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Dismissed ShareETA from %@", buf, 0xCu);
  }

  [GEOAPPortal captureUserAction:4 target:649 value:0];
}

- (void)_dismiss
{
  v3 = sub_100035E6C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Automatically dismissing ShareETA", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = NavShareETAViewController;
  [(ContaineeViewController *)&v4 handleDismissAction:0];
}

- (void)headerViewTapped:(id)tapped
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  v7 = cardPresentationController2;
  if (containeeLayout == 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [cardPresentationController2 wantsLayout:v8];

  [GEOAPPortal captureUserAction:3 target:649 value:0];
}

- (void)capabilityLevelFetcher:(id)fetcher didUpdateCapabilityLevelsForHandles:(id)handles
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = handles;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSMutableDictionary *)self->_cellsByContactStringValue objectForKey:*(*(&v18 + 1) + 8 * v8)];
        contact = [v9 contact];
        v11 = contact;
        if (v9)
        {
          v12 = contact == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          v13 = +[MSPSharedTripService sharedInstance];
          v17 = 0;
          v14 = [v13 capabilityTypeForContact:v11 serviceName:&v17 isActiveReceiver:0];
          v15 = v17;

          [v9 setCapabilityType:v14 serviceName:v15];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }
}

- (void)sharedTripService:(id)service didUpdateReceivers:(id)receivers
{
  headerView = self->_headerView;
  receiversCopy = receivers;
  activeContacts = [(NavShareETAHeaderView *)headerView activeContacts];
  v8 = [activeContacts count];
  v9 = [receiversCopy count];

  [(NavShareETAHeaderView *)self->_headerView setActiveContacts:receiversCopy];
  if (v8 != v9)
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController updateHeightForCurrentLayout];
  }
}

- (void)_updateWithSharingIdentity:(id)identity
{
  identityCopy = identity;
  [(NavShareETAViewController *)self _updateSharingFooterWithIdentity:identityCopy];
  hasValidAccount = [identityCopy hasValidAccount];

  if ((hasValidAccount & 1) == 0)
  {

    [(NavShareETAViewController *)self _dismiss];
  }
}

- (void)sharedTripServiceDidUpdateSendingAvailability:(id)availability
{
  sharingIdentity = [availability sharingIdentity];
  [(NavShareETAViewController *)self _updateWithSharingIdentity:sharingIdentity];
}

- (void)suggestionsDataSourceDidUpdateContactsForDisplay:(id)display
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(SharedTripSuggestionsDataSource *)self->_dataSource changedContacts];
  v4 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v17 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        objectEnumerator = [(NSMutableDictionary *)self->_cellsByContactStringValue objectEnumerator];
        v9 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v20;
          while (2)
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v20 != v11)
              {
                objc_enumerationMutation(objectEnumerator);
              }

              contact = [*(*(&v19 + 1) + 8 * j) contact];
              v14 = [contact isEqual:v7];

              if (v14)
              {
                [(NavShareETAViewController *)self dismissAfterDelay];
                goto LABEL_16;
              }
            }

            v10 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100862668;
  v18[3] = &unk_101661B18;
  v18[4] = self;
  v15 = objc_retainBlock(v18);
  if (self->_visible)
  {
    [UIView animateWithDuration:v15 animations:0.25];
  }

  else
  {
    [UIView performWithoutAnimation:v15];
  }
}

- (void)cellDidFinishRingAnimation:(id)animation
{
  animationCopy = animation;
  v5 = sub_100035E6C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    contact = [animationCopy contact];
    v10 = 138477827;
    v11 = contact;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Now starting share to %{private}@", &v10, 0xCu);
  }

  dataSource = self->_dataSource;
  contact2 = [animationCopy contact];
  [(SharedTripSuggestionsDataSource *)dataSource toggleContact:contact2];

  [(NavShareETAViewController *)self dismissAfterDelay];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController updateHeightForCurrentLayout];
}

- (void)dismissAfterDelay
{
  objc_initWeak(&location, self);
  GEOConfigGetDouble();
  v4 = v3;
  v5 = &_dispatch_main_q;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100862928;
  v8[3] = &unk_1016616E8;
  objc_copyWeak(&v9, &location);
  v6 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:v8 block:v4];
  dismissTimer = self->_dismissTimer;
  self->_dismissTimer = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_updateSharingFooterWithIdentity:(id)identity
{
  identityCopy = identity;
  v5 = +[NSBundle mainBundle];
  v10 = [v5 localizedStringForKey:@"[SharedETA] sender info label" value:@"localized string not found" table:0];

  name = [identityCopy name];
  handle = [identityCopy handle];

  v8 = [NSString stringWithFormat:v10, name, handle];
  [(NavShareETAFooterView *)self->_footerView setFooterText:v8];

  [(UITableView *)self->_tableView reloadData];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController updateHeightForCurrentLayout];
}

- (void)_reloadContactForFirstDisplay
{
  v3 = +[MSPSharedTripService sharedInstance];
  receivers = [v3 receivers];
  [(NavShareETAHeaderView *)self->_headerView setActiveContacts:receivers];

  [(SharedTripSuggestionsDataSource *)self->_dataSource resetContactsForDisplayOrdering];
  tableView = self->_tableView;

  [(UITableView *)tableView reloadData];
}

- (NavShareETACell)openContactsCell
{
  openContactsCell = self->_openContactsCell;
  if (!openContactsCell)
  {
    v4 = [[NavShareETACell alloc] initWithStyle:0 reuseIdentifier:0];
    v5 = self->_openContactsCell;
    self->_openContactsCell = v4;

    openContactsCell = self->_openContactsCell;
  }

  return openContactsCell;
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = NavShareETAViewController;
  changeCopy = change;
  [(MapsThemeViewController *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(NavShareETAViewController *)self traitCollection:v9.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(UITableView *)self->_tableView reloadData];
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController updateHeightForCurrentLayout];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v18.receiver = self;
  v18.super_class = NavShareETAViewController;
  [(NavShareETAViewController *)&v18 viewDidDisappear:disappear];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_cellsByContactStringValue objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 sharingState] == 1)
        {
          dataSource = self->_dataSource;
          contact = [v9 contact];
          [(SharedTripSuggestionsDataSource *)dataSource toggleContact:contact];

          [v9 setSharingState:3 animated:0];
        }
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
  [v12 unregisterObserver:self];

  [(SharedTripSuggestionsDataSource *)self->_dataSource clearTableView];
  dismissTimer = self->_dismissTimer;
  self->_dismissTimer = 0;

  self->_visible = 0;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = NavShareETAViewController;
  [(NavShareETAViewController *)&v4 viewDidAppear:appear];
  self->_visible = 1;
}

- (void)viewWillAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = NavShareETAViewController;
  [(ContaineeViewController *)&v13 viewWillAppear:appear];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setHideGrabber:1];

  [(SharedTripSuggestionsDataSource *)self->_dataSource addTableView:self->_tableView cellProvider:self];
  [(NavShareETAViewController *)self _reloadContactForFirstDisplay];
  objc_initWeak(&location, self);
  v5 = +[MSPSharedTripService sharedInstance];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_100862FC4;
  v10 = &unk_10165CF80;
  objc_copyWeak(&v11, &location);
  [v5 refreshSharingIdentityWithCompletion:&v7];

  v6 = [MSPSharedTripCapabilityLevelFetcher sharedFetcher:v7];
  [v6 registerObserver:self];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)viewDidLoad
{
  v58.receiver = self;
  v58.super_class = NavShareETAViewController;
  [(ContaineeViewController *)&v58 viewDidLoad];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setEdgeAttachedRegularHeightDimmingBehavior:2];

  view = [(NavShareETAViewController *)self view];
  [view setAccessibilityIdentifier:@"NavShareETAView"];

  v5 = objc_opt_new();
  trayHeader = self->_trayHeader;
  self->_trayHeader = v5;

  [(ContainerHeaderView *)self->_trayHeader setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)self->_trayHeader setDelegate:self];
  [(ContainerHeaderView *)self->_trayHeader setHairLineAlpha:0.0];
  [(ContainerHeaderView *)self->_trayHeader setHeaderSize:2];
  view2 = [(NavShareETAViewController *)self view];
  [view2 addSubview:self->_trayHeader];

  v8 = objc_opt_new();
  headerView = self->_headerView;
  self->_headerView = v8;

  [(NavShareETAHeaderView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)self->_trayHeader setTitleView:self->_headerView];
  v10 = objc_opt_new();
  contentView = self->_contentView;
  self->_contentView = v10;

  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentView setAccessibilityIdentifier:@"NavShareETAContent"];
  view3 = [(NavShareETAViewController *)self view];
  [view3 addSubview:self->_contentView];

  v13 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  tableView = self->_tableView;
  self->_tableView = v13;

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setSeparatorInset:0.0, 76.0, 0.0, 16.0];
  [(UITableView *)self->_tableView _setTopPadding:0.0];
  [(UITableView *)self->_tableView _setBottomPadding:0.0];
  [(UITableView *)self->_tableView setSectionHeaderHeight:0.0];
  [(UITableView *)self->_tableView setSectionFooterHeight:16.0];
  [(UITableView *)self->_tableView setAlwaysBounceVertical:0];
  v15 = +[UIColor clearColor];
  [(UITableView *)self->_tableView setBackgroundColor:v15];

  [(UITableView *)self->_tableView setLayoutMargins:0.0, 16.0, 0.0, 16.0];
  [(UITableView *)self->_tableView setAccessibilityIdentifier:@"NavShareETATableView"];
  [(UIView *)self->_contentView addSubview:self->_tableView];
  v16 = objc_opt_new();
  footerView = self->_footerView;
  self->_footerView = v16;

  topAnchor = [(ContainerHeaderView *)self->_trayHeader topAnchor];
  view4 = [(NavShareETAViewController *)self view];
  topAnchor2 = [view4 topAnchor];
  v54 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v59[0] = v54;
  leadingAnchor = [(ContainerHeaderView *)self->_trayHeader leadingAnchor];
  view5 = [(NavShareETAViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v50 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v59[1] = v50;
  trailingAnchor = [(ContainerHeaderView *)self->_trayHeader trailingAnchor];
  view6 = [(NavShareETAViewController *)self view];
  trailingAnchor2 = [view6 trailingAnchor];
  v46 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v59[2] = v46;
  topAnchor3 = [(UIView *)self->_contentView topAnchor];
  bottomAnchor = [(ContainerHeaderView *)self->_trayHeader bottomAnchor];
  v43 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v59[3] = v43;
  leadingAnchor3 = [(UIView *)self->_contentView leadingAnchor];
  view7 = [(NavShareETAViewController *)self view];
  leadingAnchor4 = [view7 leadingAnchor];
  v39 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v59[4] = v39;
  trailingAnchor3 = [(UIView *)self->_contentView trailingAnchor];
  view8 = [(NavShareETAViewController *)self view];
  trailingAnchor4 = [view8 trailingAnchor];
  v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v59[5] = v35;
  bottomAnchor2 = [(UIView *)self->_contentView bottomAnchor];
  view9 = [(NavShareETAViewController *)self view];
  bottomAnchor3 = [view9 bottomAnchor];
  v31 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v59[6] = v31;
  topAnchor4 = [(UITableView *)self->_tableView topAnchor];
  topAnchor5 = [(UIView *)self->_contentView topAnchor];
  v28 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v59[7] = v28;
  leadingAnchor5 = [(UITableView *)self->_tableView leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_contentView leadingAnchor];
  v18 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v59[8] = v18;
  trailingAnchor5 = [(UITableView *)self->_tableView trailingAnchor];
  trailingAnchor6 = [(UIView *)self->_contentView trailingAnchor];
  v21 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v59[9] = v21;
  bottomAnchor4 = [(UITableView *)self->_tableView bottomAnchor];
  bottomAnchor5 = [(UIView *)self->_contentView bottomAnchor];
  v24 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v59[10] = v24;
  v25 = [NSArray arrayWithObjects:v59 count:11];
  [NSLayoutConstraint activateConstraints:v25];

  [(SharedTripSuggestionsDataSource *)self->_dataSource addTableView:self->_tableView cellProvider:self];
}

- (void)dealloc
{
  if (!self->_userInteracted)
  {
    [(SharedTripSuggestionsDataSource *)self->_dataSource abandon];
  }

  v3 = +[MSPSharedTripService sharedInstance];
  [v3 removeSendingObserver:self];

  v4.receiver = self;
  v4.super_class = NavShareETAViewController;
  [(NavShareETAViewController *)&v4 dealloc];
}

- (NavShareETAViewController)init
{
  v14.receiver = self;
  v14.super_class = NavShareETAViewController;
  v2 = [(NavShareETAViewController *)&v14 initWithNibName:0 bundle:0];
  v3 = v2;
  if (v2)
  {
    cardPresentationController = [(ContaineeViewController *)v2 cardPresentationController];
    [cardPresentationController setBlurInCardView:0];

    v5 = [UIColor colorNamed:@"NavigationMaterialColor"];
    cardPresentationController2 = [(ContaineeViewController *)v3 cardPresentationController];
    [cardPresentationController2 setCardColor:v5];

    cardPresentationController3 = [(ContaineeViewController *)v3 cardPresentationController];
    [cardPresentationController3 setMaximumLayoutForEdgeInsetUpdate:0];

    v8 = objc_alloc_init(NSMutableDictionary);
    cellsByContactStringValue = v3->_cellsByContactStringValue;
    v3->_cellsByContactStringValue = v8;

    v10 = [[SharedTripSuggestionsDataSource alloc] initWithSoftCellCap:GEOConfigGetUInteger() includeActiveContacts:1];
    dataSource = v3->_dataSource;
    v3->_dataSource = v10;

    [(SharedTripSuggestionsDataSource *)v3->_dataSource setShowContactSearchItem:1];
    [(SharedTripSuggestionsDataSource *)v3->_dataSource setContactSearchItemPosition:1];
    [(SharedTripSuggestionsDataSource *)v3->_dataSource setDelegate:v3];
    v12 = +[MSPSharedTripService sharedInstance];
    [v12 addSendingObserver:v3];
  }

  return v3;
}

@end
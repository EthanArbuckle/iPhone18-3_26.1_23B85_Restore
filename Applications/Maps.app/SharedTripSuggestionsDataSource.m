@interface SharedTripSuggestionsDataSource
+ (void)prefetchSuggestionsAndCapabilitiesWithContext:(id)a3;
- (BOOL)isContactSearchItemAtIndexPath:(id)a3;
- (BOOL)isRefreshing;
- (BOOL)showsContactSearchItem;
- (NSArray)contactsForDisplay;
- (SharedTripSuggestionsDataSource)initWithSoftCellCap:(unint64_t)a3 includeActiveContacts:(BOOL)a4;
- (SharedTripSuggestionsDataSourceDelegate)delegate;
- (UITableView)tableView;
- (id)_recommendedContactsForDisplay;
- (id)contactForItemIdentifier:(id)a3;
- (id)contactForItemIndexPath:(id)a3;
- (id)contactSearchItemIdentifier;
- (id)findChangedContactsWithNewActiveSet:(id)a3 previousActiveSet:(id)a4;
- (unint64_t)sharingStateForContact:(id)a3;
- (void)_refreshWithActiveContacts:(id)a3;
- (void)_updateFromCache;
- (void)abandon;
- (void)addTableView:(id)a3 cellProvider:(id)a4;
- (void)clearTableView;
- (void)dataDidUpdateAnimatingChanges:(BOOL)a3;
- (void)dataWillUpdate;
- (void)dealloc;
- (void)resetContactsForDisplayOrdering;
- (void)setShowContactSearchItem:(BOOL)a3;
- (void)setSoftCap:(unint64_t)a3;
- (void)sharedTripService:(id)a3 didUpdateReceivers:(id)a4;
- (void)sharedTripService:(id)a3 sharingDidInvalidateWithError:(id)a4;
- (void)sharedTripServiceDidUpdateSendingAvailability:(id)a3;
- (void)suggestionsDidUpdateInCache:(id)a3;
- (void)suggestionsWillUpdateInCache:(id)a3;
- (void)toggleContact:(id)a3 startSharingCompletion:(id)a4 stopSharingCompletion:(id)a5;
@end

@implementation SharedTripSuggestionsDataSource

- (void)_updateFromCache
{
  v3 = sub_1000946AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "SharedTripSuggestionsDataSource updating from cached suggestions", v7, 2u);
  }

  v4 = +[SharedTripSuggestionsCache sharedInstance];
  v5 = [v4 suggestedContacts];

  v6 = [NSOrderedSet orderedSetWithArray:v5];
  [(SharedTripSuggestionsDataSource *)self setOrderedSuggestions:v6];
}

- (SharedTripSuggestionsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)showsContactSearchItem
{
  if (!self->_showContactSearchItem)
  {
    return 0;
  }

  v2 = +[MSPSharedTripService sharedInstance];
  v3 = [v2 canAddReceivers];

  return v3;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (NSArray)contactsForDisplay
{
  v3 = +[MSPSharedTripService sharedInstance];
  v4 = [v3 canAddReceivers];

  if (v4)
  {
    v23 = +[NSMutableArray array];
    v22 = [(SharedTripSuggestionsDataSource *)self _recommendedContactsForDisplay];
    v5 = [NSMutableOrderedSet orderedSetWithOrderedSet:?];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = self->_contactsForDisplay;
    v6 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_100BC4C4C;
          v25[3] = &unk_101654D78;
          v25[4] = v10;
          v11 = [v5 indexOfObjectPassingTest:v25];
          if (v11 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = [v5 objectAtIndexedSubscript:v11];
            [v23 addObject:v12];

            [v5 removeObject:v10];
          }
        }

        v7 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v7);
    }

    v13 = [v5 array];
    v14 = v23;
    [v23 addObjectsFromArray:v13];

    v15 = sub_1000946AC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v23 valueForKeyPath:@"stringValue"];
      *buf = 138477827;
      v31 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "SharedTripSuggestionsDataSource calculated contacts for display: %{private}@", buf, 0xCu);
    }

    v17 = [v23 copy];
    contactsForDisplay = self->_contactsForDisplay;
    self->_contactsForDisplay = v17;

    v19 = self->_contactsForDisplay;
  }

  else
  {
    v20 = sub_1000946AC();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "SharedTripSuggestionsDataSource only showing active contacts, unable to add receivers at this time", buf, 2u);
    }

    v14 = [(SharedTripSuggestionsDataSource *)self activeContacts];
    v19 = [v14 array];
  }

  return v19;
}

- (id)_recommendedContactsForDisplay
{
  if ([(SharedTripSuggestionsDataSource *)self includeActiveContacts])
  {
    v3 = [(SharedTripSuggestionsDataSource *)self activeContacts];
    v4 = [v3 mutableCopy];
  }

  else
  {
    v4 = +[NSMutableOrderedSet orderedSet];
  }

  v5 = [v4 count];
  if (v5 < [(SharedTripSuggestionsDataSource *)self softCap])
  {
    v6 = [(SharedTripSuggestionsDataSource *)self wereActiveContacts];
    v7 = [v6 array];
    [v4 addObjectsFromArray:v7];

    v8 = [(SharedTripSuggestionsDataSource *)self orderedSuggestions];
    v9 = [v8 array];
    [v4 addObjectsFromArray:v9];

    v10 = [v4 count];
    if (v10 > [(SharedTripSuggestionsDataSource *)self softCap])
    {
      [v4 removeObjectsInRange:{-[SharedTripSuggestionsDataSource softCap](self, "softCap"), objc_msgSend(v4, "count") - -[SharedTripSuggestionsDataSource softCap](self, "softCap")}];
    }
  }

  if (![(SharedTripSuggestionsDataSource *)self includeActiveContacts])
  {
    v11 = [(SharedTripSuggestionsDataSource *)self activeContacts];
    [v4 minusOrderedSet:v11];
  }

  return v4;
}

- (id)contactSearchItemIdentifier
{
  contactSearchItem = self->_contactSearchItem;
  if (contactSearchItem)
  {
    contactSearchItem = sub_10009B2BC(contactSearchItem);
    v2 = vars8;
  }

  return contactSearchItem;
}

- (void)dataWillUpdate
{
  v3 = [(SharedTripSuggestionsDataSource *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SharedTripSuggestionsDataSource *)self delegate];
    [v5 suggestionsDataSourceWillUpdateContactsForDisplay:self];
  }
}

- (BOOL)isRefreshing
{
  v2 = +[SharedTripSuggestionsCache sharedInstance];
  v3 = [v2 isRefreshing];

  return v3;
}

- (id)contactForItemIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SharedTripSuggestionsDataSource *)self tableViewDataSource];
  v6 = [v5 itemIdentifierForIndexPath:v4];

  v7 = [(SharedTripSuggestionsDataSource *)self contactForItemIdentifier:v6];

  return v7;
}

- (id)contactForItemIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [(SharedTripSuggestionsDataSource *)self activeContacts];

  if (v6)
  {
    v7 = [(SharedTripSuggestionsDataSource *)self activeContacts];
    [v5 addObject:v7];
  }

  v8 = [(SharedTripSuggestionsDataSource *)self wereActiveContacts];

  if (v8)
  {
    v9 = [(SharedTripSuggestionsDataSource *)self wereActiveContacts];
    [v5 addObject:v9];
  }

  v10 = [(SharedTripSuggestionsDataSource *)self orderedSuggestions];

  if (v10)
  {
    v11 = [(SharedTripSuggestionsDataSource *)self orderedSuggestions];
    [v5 addObject:v11];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100BC4674;
        v21[3] = &unk_101654D78;
        v22 = v4;
        v18 = [v17 indexOfObjectPassingTest:v21];
        if (v18 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v19 = [v17 objectAtIndexedSubscript:v18];

          goto LABEL_17;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v19 = objc_alloc_init(MSPSharedTripContact);
LABEL_17:

  return v19;
}

- (unint64_t)sharingStateForContact:(id)a3
{
  v4 = a3;
  v5 = +[MSPSharedTripService sharedInstance];
  v6 = [v5 isSharingWithContact:v4];

  if (v6)
  {
    v7 = [(SharedTripSuggestionsDataSource *)self activeContacts];
    if ([v7 containsObject:v4])
    {
      v8 = [(SharedTripSuggestionsDataSource *)self initiallyActiveHandles];
      v9 = [v4 stringValue];
      v10 = [v8 containsObject:v9];

      if (v10)
      {
        v11 = 2;
      }

      else
      {
        v11 = 3;
      }
    }

    else
    {

      v11 = 3;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)abandon
{
  v2 = sub_1000946AC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "SharedTripSuggestionsDataSource abandon", v4, 2u);
  }

  v3 = +[SharedTripSuggestionsCache sharedInstance];
  [v3 provideAbandonmentFeedback];
}

- (void)toggleContact:(id)a3 startSharingCompletion:(id)a4 stopSharingCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[MSPSharedTripService sharedInstance];
  v12 = [v11 isSharingWithContact:v8];

  v13 = sub_1000946AC();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v14)
    {
      v15 = [v8 stringValue];
      *buf = 138477827;
      v32 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "SharedTripSuggestionsDataSource toggle contact off: %{private}@", buf, 0xCu);
    }

    v16 = +[MSPSharedTripService sharedInstance];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100BC4B28;
    v29[3] = &unk_1016610B8;
    v17 = &v30;
    v30 = v10;
    [v16 stopSharingWithContact:v8 completion:v29];

    v18 = [(SharedTripSuggestionsDataSource *)self initiallyActiveHandles];
    v19 = [v18 mutableCopy];

    v20 = [v8 stringValue];
    [v19 removeObject:v20];

    v21 = [v19 copy];
    [(SharedTripSuggestionsDataSource *)self setInitiallyActiveHandles:v21];
  }

  else
  {
    if (v14)
    {
      v22 = [v8 stringValue];
      *buf = 138477827;
      v32 = v22;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "SharedTripSuggestionsDataSource toggle contact on: %{private}@", buf, 0xCu);
    }

    v23 = +[MSPSharedTripService sharedInstance];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100BC4B40;
    v26[3] = &unk_10164CB28;
    v17 = &v27;
    v24 = v8;
    v27 = v24;
    v28 = v9;
    [v23 startSharingWithContact:v24 completion:v26];

    v25 = +[SharedTripSuggestionsCache sharedInstance];
    [v25 provideFeedbackForContact:v24];

    v19 = v28;
  }
}

- (void)resetContactsForDisplayOrdering
{
  v3 = sub_1000946AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "SharedTripSuggestionsDataSource reset contacts for display", v5, 2u);
  }

  contactsForDisplay = self->_contactsForDisplay;
  self->_contactsForDisplay = &__NSArray0__struct;
}

- (id)findChangedContactsWithNewActiveSet:(id)a3 previousActiveSet:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSMutableOrderedSet orderedSetWithOrderedSet:v6];
  [v7 minusOrderedSet:v5];
  v8 = [NSMutableOrderedSet orderedSetWithOrderedSet:v5];

  [v8 minusOrderedSet:v6];
  v9 = [NSMutableOrderedSet orderedSetWithOrderedSet:v8];
  [v9 unionOrderedSet:v7];
  v10 = sub_1000946AC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [v9 count];
    v12 = [v8 valueForKeyPath:@"stringValue"];
    v13 = [v7 valueForKeyPath:@"stringValue"];
    v16 = 134218499;
    v17 = v11;
    v18 = 2113;
    v19 = v12;
    v20 = 2113;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "SharedTripSuggestionsDataSource found changed %lu contacts:\nremoved: %{private}@\nadded: %{private}@", &v16, 0x20u);
  }

  v14 = [v9 copy];

  return v14;
}

- (void)_refreshWithActiveContacts:(id)a3
{
  v4 = a3;
  v5 = [(SharedTripSuggestionsDataSource *)self activeContacts];
  v6 = [v5 copy];
  [(SharedTripSuggestionsDataSource *)self setWereActiveContacts:v6];

  v7 = [[NSOrderedSet alloc] initWithArray:v4];
  [(SharedTripSuggestionsDataSource *)self setActiveContacts:v7];
  v8 = [(SharedTripSuggestionsDataSource *)self wereActiveContacts];
  v9 = [(SharedTripSuggestionsDataSource *)self findChangedContactsWithNewActiveSet:v7 previousActiveSet:v8];
  [(SharedTripSuggestionsDataSource *)self setChangedContacts:v9];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = [(SharedTripSuggestionsDataSource *)self activeContacts];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if (![(NSArray *)self->_contactsForDisplay containsObject:*(*(&v15 + 1) + 8 * i)])
        {
          [(SharedTripSuggestionsDataSource *)self resetContactsForDisplayOrdering];
          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(SharedTripSuggestionsDataSource *)self dataDidUpdate];
}

- (void)sharedTripService:(id)a3 didUpdateReceivers:(id)a4
{
  v5 = a4;
  v6 = sub_1000946AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "SharedTripSuggestionsDataSource notified didUpdateReceivers", v7, 2u);
  }

  [(SharedTripSuggestionsDataSource *)self _refreshWithActiveContacts:v5];
}

- (void)sharedTripServiceDidUpdateSendingAvailability:(id)a3
{
  v4 = a3;
  v5 = sub_1000946AC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "SharedTripSuggestionsDataSource notified didUpdateSendingAvailability", v7, 2u);
  }

  v6 = [v4 receivers];

  [(SharedTripSuggestionsDataSource *)self _refreshWithActiveContacts:v6];
}

- (void)sharedTripService:(id)a3 sharingDidInvalidateWithError:(id)a4
{
  v5 = a4;
  v6 = sub_1000946AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "SharedTripSuggestionsDataSource notified didInvalidateWithError: %{public}@", &v7, 0xCu);
  }

  [(SharedTripSuggestionsDataSource *)self _refreshWithActiveContacts:&__NSArray0__struct];
}

- (BOOL)isContactSearchItemAtIndexPath:(id)a3
{
  if (!self->_contactSearchItem)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(SharedTripSuggestionsDataSource *)self tableViewDataSource];
  v6 = [v5 itemIdentifierForIndexPath:v4];

  v7 = [(SharedTripSuggestionsDataSource *)self contactSearchItemIdentifier];
  LOBYTE(v4) = [v6 isEqual:v7];

  return v4;
}

- (void)setShowContactSearchItem:(BOOL)a3
{
  if (self->_showContactSearchItem != a3)
  {
    self->_showContactSearchItem = a3;
    if (a3)
    {
      v5 = objc_alloc_init(SharedTripContactSearchItem);
    }

    else
    {
      v5 = 0;
    }

    contactSearchItem = self->_contactSearchItem;
    self->_contactSearchItem = v5;

    [(SharedTripSuggestionsDataSource *)self dataDidUpdate];
  }
}

- (void)dataDidUpdateAnimatingChanges:(BOOL)a3
{
  v3 = a3;
  v5 = [(SharedTripSuggestionsDataSource *)self tableViewDataSource];

  if (v5)
  {
    v6 = [(SharedTripSuggestionsDataSource *)self contactsForDisplay];
    v7 = [NSDiffableDataSourceSnapshot _maps_singleSectionSnapshotWithIdentifiersForItems:v6];
    v8 = [(SharedTripSuggestionsDataSource *)self changedContacts];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [(SharedTripSuggestionsDataSource *)self changedContacts];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100BC55C0;
      v22[3] = &unk_10164CB00;
      v22[4] = self;
      v11 = sub_100021DB0(v10, v22);

      [v7 reconfigureItemsWithIdentifiers:v11];
    }

    if ([(SharedTripSuggestionsDataSource *)self showsContactSearchItem])
    {
      v12 = [v7 sectionIdentifiers];
      v13 = [v12 firstObject];

      contactSearchItem = self->_contactSearchItem;
      v14 = contactSearchItem;
      v15 = [NSArray arrayWithObjects:&contactSearchItem count:1];
      v16 = [v7 _maps_appendIdentifiersForSection:v14 items:v15];

      if (v13 && [(SharedTripSuggestionsDataSource *)self contactSearchItemPosition]== 2)
      {
        v17 = [(SharedTripSuggestionsDataSource *)self contactSearchItemIdentifier];
        [v7 moveSectionWithIdentifier:v17 beforeSectionWithIdentifier:v13];
      }
    }

    v18 = [(SharedTripSuggestionsDataSource *)self tableViewDataSource];
    [v18 applySnapshot:v7 animatingDifferences:v3];
  }

  v19 = sub_1000946AC();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "SharedTripSuggestionsDataSource data did update", v21, 2u);
  }

  v20 = [(SharedTripSuggestionsDataSource *)self delegate];
  [v20 suggestionsDataSourceDidUpdateContactsForDisplay:self];

  [(SharedTripSuggestionsDataSource *)self setChangedContacts:0];
}

- (void)suggestionsDidUpdateInCache:(id)a3
{
  v4 = sub_1000946AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "SharedTripSuggestionsDataSource notified cache updated", v5, 2u);
  }

  [(SharedTripSuggestionsDataSource *)self _updateFromCache];
  [(SharedTripSuggestionsDataSource *)self dataDidUpdate];
}

- (void)suggestionsWillUpdateInCache:(id)a3
{
  v4 = sub_1000946AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "SharedTripSuggestionsDataSource notified cache updated", v5, 2u);
  }

  [(SharedTripSuggestionsDataSource *)self dataWillUpdate];
}

- (void)clearTableView
{
  [(SharedTripSuggestionsDataSource *)self setTableViewDataSource:0];

  [(SharedTripSuggestionsDataSource *)self setTableView:0];
}

- (void)addTableView:(id)a3 cellProvider:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(SharedTripSuggestionsDataSource *)self tableView];

  if (v7 != v11)
  {
    [(SharedTripSuggestionsDataSource *)self setTableView:v11];
    v8 = [UITableViewDiffableDataSource alloc];
    v9 = sub_10009ACF0(v6);
    v10 = [v8 initWithTableView:v11 cellProvider:v9];
    [(SharedTripSuggestionsDataSource *)self setTableViewDataSource:v10];

    [(SharedTripSuggestionsDataSource *)self dataDidUpdate];
  }
}

- (void)setSoftCap:(unint64_t)a3
{
  if (self->_softCap != a3)
  {
    self->_softCap = a3;
    [(SharedTripSuggestionsDataSource *)self dataDidUpdateAnimatingChanges:0];
  }
}

- (void)dealloc
{
  v3 = +[SharedTripSuggestionsCache sharedInstance];
  [v3 removeObserver:self];

  v4 = +[MSPSharedTripService sharedInstance];
  [v4 removeSendingObserver:self];

  v5.receiver = self;
  v5.super_class = SharedTripSuggestionsDataSource;
  [(SharedTripSuggestionsDataSource *)&v5 dealloc];
}

- (SharedTripSuggestionsDataSource)initWithSoftCellCap:(unint64_t)a3 includeActiveContacts:(BOOL)a4
{
  v18.receiver = self;
  v18.super_class = SharedTripSuggestionsDataSource;
  v6 = [(SharedTripSuggestionsDataSource *)&v18 init];
  v7 = v6;
  if (v6)
  {
    v6->_softCap = a3;
    v6->_includeActiveContacts = a4;
    v8 = [NSOrderedSet alloc];
    v9 = +[MSPSharedTripService sharedInstance];
    v10 = [v9 receivers];
    v11 = [v8 initWithArray:v10];
    [(SharedTripSuggestionsDataSource *)v7 setActiveContacts:v11];

    v12 = [(SharedTripSuggestionsDataSource *)v7 activeContacts];
    v13 = sub_100021DB0(v12, &stru_10164CAD8);
    [(SharedTripSuggestionsDataSource *)v7 setInitiallyActiveHandles:v13];

    v14 = +[MSPSharedTripService sharedInstance];
    [v14 addSendingObserver:v7];

    v15 = +[SharedTripSuggestionsCache sharedInstance];
    [v15 addObserver:v7];

    [(SharedTripSuggestionsDataSource *)v7 _updateFromCache];
    v16 = +[SharedTripSuggestionsCache sharedInstance];
    [v16 requestFreshSuggestions];
  }

  return v7;
}

+ (void)prefetchSuggestionsAndCapabilitiesWithContext:(id)a3
{
  v3 = a3;
  if (MSPSharedTripSharingAvailable())
  {
    v4 = [v3 automaticSharingContacts];
    if ([v4 count])
    {
      v5 = sub_1000946AC();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v36 = [v4 count];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "SharedTripSuggestionsDataSource:prefetch will prefetch %lu autoshare contacts", buf, 0xCu);
      }

      v6 = +[MSPSharedTripCapabilityLevelFetcher sharedFetcher];
      [v6 requestCapabilityLevelsForContacts:v4];
    }

    v7 = [v3 routingToContacts];
    if (v7)
    {
      v8 = sub_1000946AC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = v7;
        if ([v9 count])
        {
          v28 = v8;
          v29 = v4;
          v30 = v3;
          v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v27 = v9;
          v11 = v9;
          v12 = [v11 countByEnumeratingWithState:&v31 objects:buf count:16];
          if (!v12)
          {
            goto LABEL_26;
          }

          v13 = v12;
          v14 = *v32;
          while (1)
          {
            v15 = 0;
            do
            {
              if (*v32 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v31 + 1) + 8 * v15);
              if (v16)
              {
                v17 = objc_opt_class();
                v18 = NSStringFromClass(v17);
                if ((objc_opt_respondsToSelector() & 1) == 0)
                {
                  goto LABEL_19;
                }

                v19 = [v16 performSelector:"accessibilityIdentifier"];
                v20 = v19;
                if (v19 && ![v19 isEqualToString:v18])
                {
                  v21 = [NSString stringWithFormat:@"%@<%p, %@>", v18, v16, v20];
                }

                else
                {

LABEL_19:
                  v21 = [NSString stringWithFormat:@"%@<%p>", v18, v16];
                }

                goto LABEL_22;
              }

              v21 = @"<nil>";
LABEL_22:

              [v10 addObject:v21];
              v15 = v15 + 1;
            }

            while (v13 != v15);
            v22 = [v11 countByEnumeratingWithState:&v31 objects:buf count:16];
            v13 = v22;
            if (!v22)
            {
LABEL_26:

              v23 = [v11 componentsJoinedByString:{@", "}];
              v24 = [NSString stringWithFormat:@"<%p> [%@]", v11, v23];

              v4 = v29;
              v3 = v30;
              v8 = v28;
              v9 = v27;
              goto LABEL_30;
            }
          }
        }

        v24 = [NSString stringWithFormat:@"<%p> (empty)", v9];
LABEL_30:

        *buf = 138412290;
        v36 = v24;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "SharedTripSuggestionsDataSource:prefetch will provide routingToContacts: %@", buf, 0xCu);
      }
    }

    v25 = sub_1000946AC();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "SharedTripSuggestionsDataSource:prefetch will now prefetch suggestions+capabilities", buf, 2u);
    }

    v26 = +[SharedTripSuggestionsCache sharedInstance];
    [v26 requestFreshSuggestionsWithSeedContacts:v7];
  }

  else
  {
    v4 = sub_1000946AC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "SharedTripSuggestionsDataSource will not prefetch suggestions/capabilities, sharing not available", buf, 2u);
    }
  }
}

@end
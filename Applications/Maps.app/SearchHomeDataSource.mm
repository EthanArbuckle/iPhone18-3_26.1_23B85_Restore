@interface SearchHomeDataSource
- (BOOL)shouldShowNoRecentSearchesCell;
- (BOOL)shouldShowSearchHomeTip:(id)tip;
- (BOOL)useSingleColumnLayout;
- (SearchHomeDataSource)initWithCollectionView:(id)view parentViewController:(id)controller updateLocation:(BOOL)location isSearchAlongRoute:(BOOL)route supportsFullTextSearch:(BOOL)search;
- (SearchHomeDataSource)initWithTableView:(id)view traits:(id)traits supportsFullTextSearch:(BOOL)search;
- (SearchHomeDataSourceDelegate)searchHomeDataSourceDelegate;
- (UICollectionViewLayout)collectionViewLayout;
- (double)heightForFooterInSection:(int64_t)section dataProvider:(id)provider;
- (double)heightForHeaderInSection:(int64_t)section dataProvider:(id)provider;
- (double)isTouristHereValue;
- (id)_emptySection;
- (id)_supplementaryViewForCollectionView:(id)view ofKind:(id)kind atIndexPath:(id)path;
- (id)analyticsSuggestions;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)dataProviderOfType:(int64_t)type;
- (id)dataProviderWithIdentifier:(id)identifier;
- (id)layoutProviderForDataProvider:(id)provider;
- (id)newTraits;
- (id)tableView:(id)view indexPath:(id)path identifier:(id)identifier;
- (unint64_t)_ppt_numberOfDataFetchers;
- (void)_applySnapshotOnMainThread;
- (void)_applyTableViewSnapshot;
- (void)_hoverGestureRecognizerStateDidChange:(id)change;
- (void)_ppt_selectBrowseCities;
- (void)_ppt_selectCategoryAtIndex:(unint64_t)index;
- (void)_ppt_selectExploreGuides;
- (void)_ppt_selectFirstCuratedGuide;
- (void)_ppt_selectFirstGuidePublisher;
- (void)_ppt_selectSeeAllCuratedCollections;
- (void)_updateRegionListForCachedKey:(id)key value:(BOOL)value;
- (void)addKeyCommand:(id)command;
- (void)addToCollectionObserver;
- (void)applySnapshotWithCompletion:(id)completion;
- (void)collectionManager:(id)manager contentDidChange:(id)change;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)curatedCollectionSyncManagerDidUpdateSyncedCollections:(id)collections;
- (void)dealloc;
- (void)didSelectBrowseCategoryAtIndex:(unint64_t)index;
- (void)didSelectCompactGuideModelAtIndex:(unint64_t)index;
- (void)didSelectGuideModelAtIndex:(unint64_t)index sectionIndex:(int64_t)sectionIndex;
- (void)didSelectRecentAtIndex:(unint64_t)index;
- (void)didUpdateDataFetcher:(id)fetcher;
- (void)performDeleteAnimationOnSectionWithIdentifier:(id)identifier itemAtIndex:(unint64_t)index dataProvider:(id)provider animated:(BOOL)animated;
- (void)reloadSectionOfType:(int64_t)type;
- (void)reorderKeyCommands;
- (void)sendNoTypingACAnalytics;
- (void)setActive:(BOOL)active;
- (void)setNeedsUpdate;
- (void)setShouldRemoveSearchHomeTip:(BOOL)tip;
- (void)setupTableHeaderView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SearchHomeDataSource

- (SearchHomeDataSourceDelegate)searchHomeDataSourceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_searchHomeDataSourceDelegate);

  return WeakRetained;
}

- (void)didSelectRecentAtIndex:(unint64_t)index
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100747B30;
  v18 = sub_100747B40;
  v19 = 0;
  dataProviders = [(SearchHomeDataSource *)self dataProviders];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100747B48;
  v13[3] = &unk_101627FB8;
  v13[4] = &v14;
  [dataProviders enumerateObjectsUsingBlock:v13];

  if (v15[5])
  {
    collectionViewDiffableDataSource = [(SearchHomeDataSource *)self collectionViewDiffableDataSource];
    snapshot = [collectionViewDiffableDataSource snapshot];

    sectionIdentifiers = [snapshot sectionIdentifiers];
    identifier = [v15[5] identifier];
    v10 = [sectionIdentifiers indexOfObject:identifier];

    v11 = [NSIndexPath indexPathForRow:index inSection:v10];
    collectionView = [(DataSource *)self collectionView];
    [(SearchHomeDataSource *)self collectionView:collectionView didSelectItemAtIndexPath:v11];
  }

  _Block_object_dispose(&v14, 8);
}

- (void)didSelectCompactGuideModelAtIndex:(unint64_t)index
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100747B30;
  v18 = sub_100747B40;
  v19 = 0;
  dataProviders = [(SearchHomeDataSource *)self dataProviders];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100747D84;
  v13[3] = &unk_101627FB8;
  v13[4] = &v14;
  [dataProviders enumerateObjectsUsingBlock:v13];

  if (v15[5])
  {
    collectionViewDiffableDataSource = [(SearchHomeDataSource *)self collectionViewDiffableDataSource];
    snapshot = [collectionViewDiffableDataSource snapshot];

    sectionIdentifiers = [snapshot sectionIdentifiers];
    identifier = [v15[5] identifier];
    v10 = [sectionIdentifiers indexOfObject:identifier];

    v11 = [NSIndexPath indexPathForRow:index inSection:v10];
    collectionView = [(DataSource *)self collectionView];
    [(SearchHomeDataSource *)self collectionView:collectionView didSelectItemAtIndexPath:v11];
  }

  _Block_object_dispose(&v14, 8);
}

- (BOOL)useSingleColumnLayout
{
  v2 = [(SearchHomeDataSource *)self dataProviderOfType:2];
  wantsOneColumnLayout = [v2 wantsOneColumnLayout];

  return wantsOneColumnLayout;
}

- (void)didSelectBrowseCategoryAtIndex:(unint64_t)index
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100747B30;
  v18 = sub_100747B40;
  v19 = 0;
  dataProviders = [(SearchHomeDataSource *)self dataProviders];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100747FFC;
  v13[3] = &unk_101627FB8;
  v13[4] = &v14;
  [dataProviders enumerateObjectsUsingBlock:v13];

  if (v15[5])
  {
    collectionViewDiffableDataSource = [(SearchHomeDataSource *)self collectionViewDiffableDataSource];
    snapshot = [collectionViewDiffableDataSource snapshot];

    sectionIdentifiers = [snapshot sectionIdentifiers];
    identifier = [v15[5] identifier];
    v10 = [sectionIdentifiers indexOfObject:identifier];

    v11 = [NSIndexPath indexPathForRow:index inSection:v10];
    collectionView = [(DataSource *)self collectionView];
    [(SearchHomeDataSource *)self collectionView:collectionView didSelectItemAtIndexPath:v11];
  }

  _Block_object_dispose(&v14, 8);
}

- (void)didSelectGuideModelAtIndex:(unint64_t)index sectionIndex:(int64_t)sectionIndex
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100747B30;
  v15 = sub_100747B40;
  v16 = 0;
  dataProviders = [(SearchHomeDataSource *)self dataProviders];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1007481DC;
  v10[3] = &unk_101627E38;
  v10[4] = &v11;
  v10[5] = sectionIndex;
  [dataProviders enumerateObjectsUsingBlock:v10];

  if (v12[5])
  {
    v8 = [NSIndexPath indexPathForRow:index inSection:sectionIndex];
    collectionView = [(DataSource *)self collectionView];
    [(SearchHomeDataSource *)self collectionView:collectionView didSelectItemAtIndexPath:v8];
  }

  _Block_object_dispose(&v11, 8);
}

- (void)addToCollectionObserver
{
  v3 = +[CollectionManager sharedManager];
  [v3 removeObserver:self];

  v4 = +[CollectionManager sharedManager];
  [v4 addObserver:self];
}

- (void)collectionManager:(id)manager contentDidChange:(id)change
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SearchHomeDataSource *)self dataFetchers:manager];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 fetchContent];
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100748478;
  v12[3] = &unk_101661B18;
  v12[4] = self;
  [UIView performWithoutAnimation:v12];
  v11 = +[CollectionManager sharedManager];
  [v11 removeObserver:self];
}

- (void)_ppt_selectFirstCuratedGuide
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  dataProviders = [(SearchHomeDataSource *)self dataProviders];
  v4 = [dataProviders countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(dataProviders);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 type] == 3)
        {
          objects = [v8 objects];
          v10 = [objects count];

          if (v10)
          {
            objects2 = [v8 objects];
            firstObject = [objects2 firstObject];

            delegate = [(DataSource *)self delegate];
            [delegate dataSource:self itemTapped:firstObject];

            goto LABEL_12;
          }
        }
      }

      v5 = [dataProviders countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (void)_ppt_selectBrowseCities
{
  searchHomeDataSourceDelegate = [(SearchHomeDataSource *)self searchHomeDataSourceDelegate];
  [searchHomeDataSourceDelegate showCitySelector];
}

- (void)_ppt_selectExploreGuides
{
  v3 = [(SearchHomeDataSource *)self dataProviderOfType:3];
  if (v3)
  {
    v6 = v3;
    exploreGuides = [v3 exploreGuides];
    if (exploreGuides)
    {
      searchHomeDataSourceDelegate = [(SearchHomeDataSource *)self searchHomeDataSourceDelegate];
      [searchHomeDataSourceDelegate showGuidesHomeFromExploreGuides:exploreGuides];
    }

    v3 = v6;
  }
}

- (void)_ppt_selectFirstGuidePublisher
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  dataProviders = [(SearchHomeDataSource *)self dataProviders];
  v4 = [dataProviders countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(dataProviders);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 type] == 4)
        {
          objects = [v8 objects];
          v10 = [objects count];

          if (v10)
          {
            objects2 = [v8 objects];
            firstObject = [objects2 firstObject];

            delegate = [(DataSource *)self delegate];
            [delegate dataSource:self itemTapped:firstObject];

            goto LABEL_12;
          }
        }
      }

      v5 = [dataProviders countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (void)_ppt_selectSeeAllCuratedCollections
{
  searchHomeDataSourceDelegate = [(SearchHomeDataSource *)self searchHomeDataSourceDelegate];
  [searchHomeDataSourceDelegate seeAllTappedForCollections];
}

- (unint64_t)_ppt_numberOfDataFetchers
{
  dataFetchers = [(SearchHomeDataSource *)self dataFetchers];
  v3 = [dataFetchers count];

  return v3;
}

- (void)_ppt_selectCategoryAtIndex:(unint64_t)index
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100747B30;
  v18 = sub_100747B40;
  v19 = 0;
  dataProviders = [(SearchHomeDataSource *)self dataProviders];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100748A70;
  v13[3] = &unk_101627FB8;
  v13[4] = &v14;
  [dataProviders enumerateObjectsUsingBlock:v13];

  if (v15[5])
  {
    collectionViewDiffableDataSource = [(SearchHomeDataSource *)self collectionViewDiffableDataSource];
    snapshot = [collectionViewDiffableDataSource snapshot];

    sectionIdentifiers = [snapshot sectionIdentifiers];
    identifier = [v15[5] identifier];
    v10 = [sectionIdentifiers indexOfObject:identifier];

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [NSIndexPath indexPathForRow:index inSection:v10];
      collectionView = [(DataSource *)self collectionView];
      [(SearchHomeDataSource *)self collectionView:collectionView didSelectItemAtIndexPath:v11];
    }
  }

  _Block_object_dispose(&v14, 8);
}

- (void)setupTableHeaderView
{
  v3 = +[NSBundle mainBundle];
  v13 = [v3 localizedStringForKey:@"[Offline Route Planning] Find Nearby" value:@"localized string not found" table:0];

  v4 = [[SectionHeaderTableViewHeaderFooterView alloc] initWithTitle:v13 isFirstNonEmptySection:1];
  tableView = [(DataSource *)self tableView];
  [tableView frame];
  Width = CGRectGetWidth(v15);
  tableView2 = [(DataSource *)self tableView];
  traitCollection = [tableView2 traitCollection];
  [SectionHeaderTableViewHeaderFooterView heightWhenFirstNonEmptySection:1 title:v13 actionTitle:0 availableWidth:traitCollection traitCollection:Width];
  v10 = v9;

  tableView3 = [(DataSource *)self tableView];
  [tableView3 frame];
  [(SectionHeaderTableViewHeaderFooterView *)v4 setBounds:0.0, 0.0, CGRectGetWidth(v16), v10];

  [(SectionHeaderTableViewHeaderFooterView *)v4 layoutIfNeeded];
  tableView4 = [(DataSource *)self tableView];
  [tableView4 setTableHeaderView:v4];
}

- (id)tableView:(id)view indexPath:(id)path identifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  tableViewDiffableDataSource = [(SearchHomeDataSource *)self tableViewDiffableDataSource];
  snapshot = [tableViewDiffableDataSource snapshot];

  section = [pathCopy section];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  if ([sectionIdentifiers count])
  {
    sectionIdentifiers2 = [snapshot sectionIdentifiers];
    v16 = [sectionIdentifiers2 count];

    if (section < v16)
    {
      sectionIdentifiers3 = [snapshot sectionIdentifiers];
      v18 = [sectionIdentifiers3 objectAtIndex:section];

      v19 = [(SearchHomeDataSource *)self dataProviderWithIdentifier:v18];
      v20 = identifierCopy;
      if (objc_opt_respondsToSelector())
      {
        viewModels = [v19 viewModels];
        v22 = [viewModels count];

        if (v22)
        {
          viewModels2 = [v19 viewModels];
          v24 = [pathCopy row];
          if (v24 >= [viewModels2 count])
          {
            v30 = sub_100067540();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v33 = v18;
              v34 = 2112;
              v35 = pathCopy;
              v36 = 2112;
              v37 = snapshot;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Error fetching SearchHome cell for section: %@, indexpath:%@, snapshot: %@", buf, 0x20u);
            }

            v28 = 0;
            goto LABEL_15;
          }

          viewModels3 = [v19 viewModels];
          v31 = [viewModels3 objectAtIndex:{-[NSObject row](pathCopy, "row")}];

          v20 = v31;
        }
      }

      v26 = [(SearchHomeDataSource *)self layoutProviderForDataProvider:v19];
      if (objc_opt_respondsToSelector())
      {
        v27 = [v26 cellForRowAtIndexPath:pathCopy tableview:viewCopy item:v20];
      }

      else
      {
        v27 = objc_alloc_init(UITableViewCell);
      }

      v28 = v27;

LABEL_15:
      goto LABEL_16;
    }
  }

  else
  {
  }

  v18 = sub_100067540();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v33 = pathCopy;
    v34 = 2112;
    v35 = snapshot;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error fetching SearchHome section at indexpath: %@, snapshot: %@", buf, 0x16u);
  }

  v28 = 0;
LABEL_16:

  return v28;
}

- (void)curatedCollectionSyncManagerDidUpdateSyncedCollections:(id)collections
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100749004;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)analyticsSuggestions
{
  autocompleteContext = [(SearchHomeDataSource *)self autocompleteContext];

  if (autocompleteContext)
  {
    objectsForAnalytics = [(SearchHomeDataSource *)self objectsForAnalytics];
    autocompleteContext2 = [(SearchHomeDataSource *)self autocompleteContext];
    newTraits = [(SearchHomeDataSource *)self newTraits];
    v7 = [MapsAnalyticsHelper acSuggestionEntriesFromAutoCompleteObjects:objectsForAnalytics context:autocompleteContext2 mapsSuggestionsInsights:0 skipReportASearchItems:1 traits:newTraits];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)sendNoTypingACAnalytics
{
  analyticsManager = [(SearchHomeDataSource *)self analyticsManager];
  analyticsSuggestions = [(SearchHomeDataSource *)self analyticsSuggestions];
  [analyticsManager autocompleteSessionsStartedWithVisibleSuggestions:analyticsSuggestions];
}

- (void)reorderKeyCommands
{
  v3 = [NSMutableArray alloc];
  v4 = [(NSArray *)self->_keyCommands count];
  v5 = v3;
  selfCopy = self;
  v31 = [v5 initWithCapacity:v4];
  v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_keyCommands, "count")}];
  if ([(NSArray *)selfCopy->_keyCommands count])
  {
    v8 = 0;
    do
    {
      v9 = [(NSArray *)selfCopy->_keyCommands objectAtIndexedSubscript:v8];
      propertyList = [v9 propertyList];
      v11 = [propertyList objectForKeyedSubscript:@"section"];
      unsignedIntegerValue = [v11 unsignedIntegerValue];

      v13 = [NSString stringWithFormat:@"%lu:%lu", unsignedIntegerValue, v8];
      [v7 addObject:v13];

      ++v8;
    }

    while (v8 < [(NSArray *)selfCopy->_keyCommands count]);
  }

  v32 = selfCopy;
  [v7 sortUsingSelector:"localizedCaseInsensitiveCompare:"];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v7;
  v33 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v33)
  {
    v30 = *v35;
    do
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v35 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v15 = [*(*(&v34 + 1) + 8 * i) componentsSeparatedByString:@":"];
        lastObject = [v15 lastObject];
        integerValue = [lastObject integerValue];

        v18 = [(NSArray *)v32->_keyCommands objectAtIndexedSubscript:integerValue];
        title = [v18 title];
        image = [v18 image];
        action = [v18 action];
        v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v31 count] + 1);
        stringValue = [v22 stringValue];
        modifierFlags = [v18 modifierFlags];
        propertyList2 = [v18 propertyList];
        v26 = [UIKeyCommand commandWithTitle:title image:image action:action input:stringValue modifierFlags:modifierFlags propertyList:propertyList2];
        [v31 addObject:v26];
      }

      v33 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v33);
  }

  v27 = [v31 copy];
  keyCommands = v32->_keyCommands;
  v32->_keyCommands = v27;
}

- (void)addKeyCommand:(id)command
{
  commandCopy = command;
  if ([(SearchHomeDataSource *)self needsToResetKeyCommands])
  {
    keyCommands = self->_keyCommands;
    self->_keyCommands = &__NSArray0__struct;

    [(SearchHomeDataSource *)self setNeedsToResetKeyCommands:0];
  }

  v5 = self->_keyCommands;
  if ([(NSArray *)v5 count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [(NSArray *)v5 objectAtIndexedSubscript:v6];
      action = [v7 action];
      action2 = [commandCopy action];

      if (action == action2)
      {
        break;
      }

      if (++v6 >= [(NSArray *)v5 count])
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v10 = [(NSArray *)v5 arrayByAddingObject:commandCopy];
    v11 = self->_keyCommands;
    self->_keyCommands = v10;
  }
}

- (void)performDeleteAnimationOnSectionWithIdentifier:(id)identifier itemAtIndex:(unint64_t)index dataProvider:(id)provider animated:(BOOL)animated
{
  animatedCopy = animated;
  identifierCopy = identifier;
  providerCopy = provider;
  collectionViewDiffableDataSource = [(SearchHomeDataSource *)self collectionViewDiffableDataSource];
  snapshot = [collectionViewDiffableDataSource snapshot];

  v14 = [snapshot numberOfItemsInSection:identifierCopy];
  if (_UISolariumEnabled() && [providerCopy type] == 1)
  {
    objects = [providerCopy objects];
    firstObject = [objects firstObject];
    v14 = [firstObject count];
  }

  if (v14 == 1)
  {
    v24 = identifierCopy;
    v17 = [NSArray arrayWithObjects:&v24 count:1];
    [snapshot deleteSectionsWithIdentifiers:v17];
  }

  else
  {
    v17 = [snapshot itemIdentifiersInSectionWithIdentifier:identifierCopy];
    if (_UISolariumEnabled() && [providerCopy type] == 1)
    {
      objects2 = [providerCopy objects];
      firstObject2 = [objects2 firstObject];

      v17 = firstObject2;
    }

    v20 = [v17 objectAtIndex:index];
    v23 = v20;
    v21 = [NSArray arrayWithObjects:&v23 count:1];
    [snapshot deleteItemsWithIdentifiers:v21];
  }

  collectionViewDiffableDataSource2 = [(SearchHomeDataSource *)self collectionViewDiffableDataSource];
  [collectionViewDiffableDataSource2 applySnapshot:snapshot animatingDifferences:animatedCopy];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  tableViewDiffableDataSource = [(SearchHomeDataSource *)self tableViewDiffableDataSource];
  snapshot = [tableViewDiffableDataSource snapshot];

  sectionIdentifiers = [snapshot sectionIdentifiers];
  v9 = [sectionIdentifiers objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  v10 = [(SearchHomeDataSource *)self dataProviderWithIdentifier:v9];
  objects = [v10 objects];
  v12 = [pathCopy row];

  v13 = [objects objectAtIndex:v12];

  delegate = [(DataSource *)self delegate];
  [delegate dataSource:self itemTapped:v13];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectItemAtIndexPath:pathCopy animated:1];
  collectionViewDiffableDataSource = [(SearchHomeDataSource *)self collectionViewDiffableDataSource];
  snapshot = [collectionViewDiffableDataSource snapshot];

  sectionIdentifiers = [snapshot sectionIdentifiers];
  v10 = [sectionIdentifiers objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  v11 = [(SearchHomeDataSource *)self dataProviderWithIdentifier:v10];
  type = [v11 type];
  if (type <= 3)
  {
    switch(type)
    {
      case 1:
        v31 = _UISolariumEnabled();
        objects = [v11 objects];
        v33 = objects;
        if (v31)
        {
          firstObject = [objects firstObject];
          v15 = [firstObject objectAtIndex:{objc_msgSend(pathCopy, "row")}];
        }

        else
        {
          v15 = [objects objectAtIndex:{objc_msgSend(pathCopy, "row")}];
        }

        delegate = [(DataSource *)self delegate];
        [delegate dataSource:self itemTapped:v15];

        analyticsManager = [(SearchHomeDataSource *)self analyticsManager];
        v43 = [pathCopy row];
        analyticsSuggestions = [(SearchHomeDataSource *)self analyticsSuggestions];
        [analyticsManager recentTappedAtIndex:v43 visibleSuggestions:analyticsSuggestions];

        goto LABEL_25;
      case 2:
        objects2 = [v11 objects];
        firstObject2 = [objects2 firstObject];
        v15 = [firstObject2 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

        delegate2 = [(DataSource *)self delegate];
        category = [v15 category];
        [delegate2 dataSource:self itemTapped:category];

        analyticsManager2 = [(SearchHomeDataSource *)self analyticsManager];
        name = [v15 name];
        [analyticsManager2 browseCategoryTapped:name];
LABEL_21:

        goto LABEL_22;
      case 3:
        objects3 = [v11 objects];
        firstObject3 = [objects3 firstObject];
        v15 = [firstObject3 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

        delegate3 = [(DataSource *)self delegate];
        [delegate3 dataSource:self itemTapped:v15];

        v22 = [v11 itemIsSaved:v15];
        analyticsManager2 = [(SearchHomeDataSource *)self analyticsManager];
        collectionIdentifier = [v15 collectionIdentifier];
        [analyticsManager2 curatedCollectionsTappedWithMuid:objc_msgSend(collectionIdentifier horizontalIndex:"muid") isCurrentlySaved:{objc_msgSend(pathCopy, "row"), v22}];

LABEL_22:
        goto LABEL_26;
    }
  }

  else
  {
    if (type <= 5)
    {
      if (type == 4)
      {
        objects4 = [v11 objects];
        v15 = [objects4 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

        delegate4 = [(DataSource *)self delegate];
        [delegate4 dataSource:self itemTapped:v15];

        analyticsManager2 = [(SearchHomeDataSource *)self analyticsManager];
        name = [v15 identifier];
        [analyticsManager2 publisherTappedWithMuid:objc_msgSend(name verticalIndex:{"muid"), objc_msgSend(pathCopy, "row")}];
      }

      else
      {
        objects5 = [v11 objects];
        firstObject4 = [objects5 firstObject];
        v15 = [firstObject4 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

        delegate5 = [(DataSource *)self delegate];
        [delegate5 dataSource:self itemTapped:v15];

        analyticsManager2 = [(SearchHomeDataSource *)self analyticsManager];
        name = [v15 guideLocationIdentifier];
        [analyticsManager2 guideLocationTappedWithMuid:objc_msgSend(name horizontalIndex:{"muid"), objc_msgSend(pathCopy, "row")}];
      }

      goto LABEL_21;
    }

    if (type == 6)
    {
      v37 = sub_100798B6C();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Removing SearchHome Tip.", v45, 2u);
      }

      [(SearchHomeDataSource *)self setShouldRemoveSearchHomeTip:1];
      [(SearchHomeDataSource *)self setNeedsUpdate];
    }

    else if (type == 7)
    {
      objects6 = [v11 objects];
      v15 = [objects6 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_26:

        goto LABEL_27;
      }

      analyticsManager = v15;
      delegate6 = [(DataSource *)self delegate];
      collections = [analyticsManager collections];
      [delegate6 dataSource:self itemTapped:collections];

      collections2 = [analyticsManager collections];
      identifier = [collections2 identifier];
      v30 = [identifier isEqualToString:@"__internal_CollectionPlaceholderIdentifier"];

      if (v30)
      {
        [(SearchHomeDataSource *)self addToCollectionObserver];
      }

LABEL_25:

      goto LABEL_26;
    }
  }

LABEL_27:
}

- (double)heightForFooterInSection:(int64_t)section dataProvider:(id)provider
{
  providerCopy = provider;
  collectionView = [(DataSource *)self collectionView];
  if (sub_10000FA08(collectionView) == 5)
  {
    type = [providerCopy type];

    if (type == 1 && ![providerCopy entriesState])
    {
      collectionView2 = [(DataSource *)self collectionView];
      traitCollection = [collectionView2 traitCollection];
      [SectionFooterCollectionReusableView heightForFooterViewWithTraitCollection:traitCollection];
      v11 = v10;

      goto LABEL_11;
    }
  }

  else
  {
  }

  if ([providerCopy type] == 3 || (v11 = 0.0, MapsFeature_IsEnabled_Maps269()) && objc_msgSend(providerCopy, "type") == 5 && (-[DataSource collectionView](self, "collectionView"), v13 = objc_claimAutoreleasedReturnValue(), v14 = sub_10000FA08(v13), v13, v14 != 5))
  {
    +[ActionButtonCollectionReusableView estimatedHeight];
    v11 = v12;
  }

LABEL_11:

  return v11;
}

- (double)heightForHeaderInSection:(int64_t)section dataProvider:(id)provider
{
  providerCopy = provider;
  objects = [providerCopy objects];
  if (![objects count])
  {

    goto LABEL_5;
  }

  type = [providerCopy type];

  if (!type)
  {
LABEL_5:
    v8 = 0.0;
    goto LABEL_6;
  }

  +[SectionHeaderCollectionReusableView estimatedHeight];
  v8 = v7;
LABEL_6:

  return v8;
}

- (id)_supplementaryViewForCollectionView:(id)view ofKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v9 = [kind isEqualToString:UICollectionElementKindSectionFooter];
  if (v9)
  {
    v10 = UICollectionElementKindSectionFooter;
  }

  else
  {
    v10 = UICollectionElementKindSectionHeader;
  }

  v11 = off_1015F6610;
  if (!v9)
  {
    v11 = off_1015F6740;
  }

  reuseIdentifier = [(__objc2_class *)*v11 reuseIdentifier];
  v13 = [viewCopy dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:reuseIdentifier forIndexPath:pathCopy];

  [v13 setAlpha:0.0];

  return v13;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  collectionViewDiffableDataSource = [(SearchHomeDataSource *)self collectionViewDiffableDataSource];
  snapshot = [collectionViewDiffableDataSource snapshot];

  section = [pathCopy section];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v15 = [sectionIdentifiers count];

  if (section < v15)
  {
    sectionIdentifiers2 = [snapshot sectionIdentifiers];
    v17 = [sectionIdentifiers2 objectAtIndex:section];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v78 = sub_100747B30;
    v79 = sub_100747B40;
    v80 = [(SearchHomeDataSource *)self dataProviderWithIdentifier:v17];
    collectionView = [(DataSource *)self collectionView];
    if (sub_10000FA08(collectionView) == 5 && [*(*&buf[8] + 40) conformsToProtocol:&OBJC_PROTOCOL___SearchHomeDataProviderDeletable])
    {
      v19 = UICollectionElementKindSectionFooter;

      if (UICollectionElementKindSectionFooter == kindCopy)
      {
        v20 = *(*&buf[8] + 40);
        if ([v20 entriesState] == 1)
        {
          v21 = 0;
        }

        else
        {
          v49 = +[SectionFooterCollectionReusableView reuseIdentifier];
          v50 = [viewCopy dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:v49 forIndexPath:pathCopy];

          v66[0] = _NSConcreteStackBlock;
          v66[1] = 3221225472;
          v66[2] = sub_10074ABFC;
          v66[3] = &unk_101661600;
          v21 = v50;
          v67 = v21;
          v68 = buf;
          [UIView performWithoutAnimation:v66];
          [v21 setNeedsLayout];
          [v21 layoutIfNeeded];
        }

        goto LABEL_46;
      }
    }

    else
    {

      v19 = UICollectionElementKindSectionFooter;
    }

    if (!-[NSString isEqualToString:](kindCopy, "isEqualToString:", v19) || [*(*&buf[8] + 40) type] != 3)
    {
      objects = [*(*&buf[8] + 40) objects];
      if ([objects count])
      {
        v36 = [*(*&buf[8] + 40) type] == 0;

        if (!v36)
        {
          dataProviders = [(SearchHomeDataSource *)self dataProviders];
          v38 = [dataProviders indexOfObjectPassingTest:&stru_101627F90];

          if (v38 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v39 = 0;
          }

          else
          {
            dataProviders2 = [(SearchHomeDataSource *)self dataProviders];
            if (v38 >= [dataProviders2 count])
            {
              v39 = 0;
            }

            else
            {
              v43 = [(NSArray *)self->_dataProviders objectAtIndexedSubscript:v38];
              v39 = v43 == *(*&buf[8] + 40);
            }
          }

          v45 = +[_TtC4Maps33StandardSectionHeaderViewListCell reuseIdentifier];
          v21 = [viewCopy dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v45 forIndexPath:pathCopy];

          title = [*(*&buf[8] + 40) title];
          [v21 setTitle:title];

          v47 = sub_10000FA08(viewCopy);
          if (v39)
          {
            v48 = v47 == 5;
          }

          else
          {
            v48 = 2;
          }

          [v21 setSectionHeaderPosition:v48];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_initWeak(v69, self);
            v61[0] = _NSConcreteStackBlock;
            v61[1] = 3221225472;
            v61[2] = sub_10074AE2C;
            v61[3] = &unk_101661B98;
            objc_copyWeak(&v62, v69);
            [v21 setActionHandler:v61];
            objc_destroyWeak(&v62);
            objc_destroyWeak(v69);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_initWeak(v69, self);
              v59[0] = _NSConcreteStackBlock;
              v59[1] = 3221225472;
              v59[2] = sub_10074AE88;
              v59[3] = &unk_101661B98;
              objc_copyWeak(&v60, v69);
              [v21 setActionHandler:v59];
              objc_destroyWeak(&v60);
              objc_destroyWeak(v69);
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_initWeak(v69, self);
                v57[0] = _NSConcreteStackBlock;
                v57[1] = 3221225472;
                v57[2] = sub_10074AEFC;
                v57[3] = &unk_10165E700;
                objc_copyWeak(&v58, v69);
                v57[4] = self;
                v57[5] = buf;
                [v21 setActionHandler:v57];
                objc_destroyWeak(&v58);
                objc_destroyWeak(v69);
              }

              else
              {
                [v21 setActionHandler:0];
              }
            }
          }

          goto LABEL_46;
        }
      }

      else
      {
      }

      v40 = sub_100067540();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = *(*&buf[8] + 40);
        *v69 = 138413058;
        v70 = kindCopy;
        v71 = 2112;
        v72 = v17;
        v73 = 2112;
        v74 = snapshot;
        v75 = 2112;
        v76 = v41;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Unable to create a Supplementary View of kind : %@. Section Identifier: %@. Snapshot: %@. Data provider: %@", v69, 0x2Au);
      }

      v21 = [(SearchHomeDataSource *)self _supplementaryViewForCollectionView:viewCopy ofKind:kindCopy atIndexPath:pathCopy];
      goto LABEL_46;
    }

    v56 = *(*&buf[8] + 40);
    if (MapsFeature_IsEnabled_Maps269() && ([v56 exploreGuides], (v23 = objc_claimAutoreleasedReturnValue()) != 0) && (v24 = sub_10000FA08(viewCopy) == 5, v23, !v24))
    {
      v51 = +[MKExploreGuidesReusableView reuseIdentifier];
      v21 = [viewCopy dequeueReusableSupplementaryViewOfKind:v19 withReuseIdentifier:v51 forIndexPath:pathCopy];

      v52 = +[MKExploreGuidesReusableView reuseIdentifier];
      [v21 setAccessibilityLabel:v52];

      objc_initWeak(v69, self);
      exploreGuides = [v56 exploreGuides];
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_10074AD2C;
      v64[3] = &unk_101627F50;
      objc_copyWeak(&v65, v69);
      [v21 configureWithExploreGuides:exploreGuides tapHandler:v64];

      objc_destroyWeak(&v65);
      objc_destroyWeak(v69);
    }

    else
    {
      v25 = +[NSBundle mainBundle];
      v55 = [v25 localizedStringForKey:@"[Search Home] See All Guides" value:@"localized string not found" table:0];

      v26 = +[ActionButtonCollectionReusableView reuseIdentifier];
      v21 = [viewCopy dequeueReusableSupplementaryViewOfKind:v19 withReuseIdentifier:v26 forIndexPath:pathCopy];

      v27 = +[ActionButtonCollectionReusableView reuseIdentifier];
      [v21 setAccessibilityIdentifier:v27];

      v28 = [[MKPlaceCollectionsSizeController alloc] initWithDefaultCollectionsConfigurationUsingTraitCollections:viewCopy inContext:3];
      collectionView2 = [(DataSource *)self collectionView];
      v30 = [collectionView2 effectiveUserInterfaceLayoutDirection] == 1;

      [v28 sectionInsets];
      if (v30)
      {
        [v21 setLeadingPadding:v32];
        [v28 sectionInsets];
        v34 = v33;
      }

      else
      {
        [v21 setLeadingPadding:v31];
        [v28 sectionInsets];
        v34 = v44;
      }

      [v21 setTrailingPadding:v34];
      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_10074ADC4;
      v63[3] = &unk_101661B18;
      v63[4] = self;
      [v21 setTitle:v55 completion:v63];
    }

LABEL_46:
    _Block_object_dispose(buf, 8);

    goto LABEL_47;
  }

  v22 = sub_100798B6C();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    *&buf[4] = kindCopy;
    *&buf[12] = 2048;
    *&buf[14] = section;
    *&buf[22] = 2112;
    v78 = snapshot;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Unable to create a Supplementary View of kind : %@. Section Index : %lu. Snapshot: %@.", buf, 0x20u);
  }

  v21 = [(SearchHomeDataSource *)self _supplementaryViewForCollectionView:viewCopy ofKind:kindCopy atIndexPath:pathCopy];
LABEL_47:

  return v21;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  collectionViewDiffableDataSource = [(SearchHomeDataSource *)self collectionViewDiffableDataSource];
  snapshot = [collectionViewDiffableDataSource snapshot];

  sectionIdentifiers = [snapshot sectionIdentifiers];
  if ([sectionIdentifiers count])
  {
    section = [pathCopy section];
    sectionIdentifiers2 = [snapshot sectionIdentifiers];
    v16 = [sectionIdentifiers2 count];

    if (section < v16)
    {
      sectionIdentifiers3 = [snapshot sectionIdentifiers];
      v18 = [sectionIdentifiers3 objectAtIndex:{-[NSObject section](pathCopy, "section")}];

      v19 = [(SearchHomeDataSource *)self dataProviderWithIdentifier:v18];
      v20 = identifierCopy;
      if (objc_opt_respondsToSelector())
      {
        viewModels = [v19 viewModels];
        v22 = [viewModels count];

        if (v22)
        {
          viewModels2 = [v19 viewModels];
          v24 = [pathCopy row];
          if (v24 >= [viewModels2 count])
          {
            v29 = sub_100067540();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v32 = v18;
              v33 = 2112;
              v34 = pathCopy;
              v35 = 2112;
              v36 = snapshot;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Error fetching SearchHome cell for section: %@, indexpath:%@, snapshot: %@", buf, 0x20u);
            }

            v27 = 0;
            goto LABEL_8;
          }

          viewModels3 = [v19 viewModels];
          v30 = [viewModels3 objectAtIndex:{-[NSObject row](pathCopy, "row")}];

          v20 = v30;
        }
      }

      v26 = [(SearchHomeDataSource *)self layoutProviderForDataProvider:v19];
      v27 = [v26 cellForRowAtIndexPath:pathCopy collectionView:viewCopy item:v20];

LABEL_8:
      goto LABEL_13;
    }
  }

  else
  {
  }

  v18 = sub_100067540();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v32 = pathCopy;
    v33 = 2112;
    v34 = snapshot;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error fetching SearchHome section at indexpath: %@, snapshot: %@", buf, 0x16u);
  }

  v27 = 0;
LABEL_13:

  return v27;
}

- (UICollectionViewLayout)collectionViewLayout
{
  collectionViewLayout = self->_collectionViewLayout;
  if (!collectionViewLayout)
  {
    objc_initWeak(&location, self);
    v4 = [UICollectionViewCompositionalLayout alloc];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10074B4C8;
    v8[3] = &unk_101627F28;
    objc_copyWeak(&v9, &location);
    v8[4] = self;
    v5 = [v4 initWithSectionProvider:v8];
    v6 = self->_collectionViewLayout;
    self->_collectionViewLayout = v5;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    collectionViewLayout = self->_collectionViewLayout;
  }

  return collectionViewLayout;
}

- (id)_emptySection
{
  v2 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v3 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v4 = [NSCollectionLayoutSize sizeWithWidthDimension:v2 heightDimension:v3];

  v5 = [NSCollectionLayoutItem itemWithLayoutSize:v4];
  v6 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v7 = [NSCollectionLayoutDimension estimatedDimension:1.0];
  v8 = [NSCollectionLayoutSize sizeWithWidthDimension:v6 heightDimension:v7];

  v9 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v8 repeatingSubitem:v5 count:1];
  v10 = [NSCollectionLayoutSection sectionWithGroup:v9];

  return v10;
}

- (id)dataProviderOfType:(int64_t)type
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100747B30;
  v12 = sub_100747B40;
  v13 = 0;
  dataProviders = [(SearchHomeDataSource *)self dataProviders];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10074C3B8;
  v7[3] = &unk_101627E38;
  v7[4] = &v8;
  v7[5] = type;
  [dataProviders enumerateObjectsUsingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)dataProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  dataProviders = [(SearchHomeDataSource *)self dataProviders];
  v6 = [dataProviders countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(dataProviders);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [dataProviders countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)layoutProviderForDataProvider:(id)provider
{
  providerCopy = provider;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  layoutProviders = [(SearchHomeDataSource *)self layoutProviders];
  v6 = [layoutProviders countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(layoutProviders);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        type = [v9 type];
        if (type == [providerCopy type])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [layoutProviders countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)reloadSectionOfType:(int64_t)type
{
  v4 = [(SearchHomeDataSource *)self dataProviderOfType:type];
  identifier = [v4 identifier];

  collectionViewDiffableDataSource = [(SearchHomeDataSource *)self collectionViewDiffableDataSource];
  snapshot = [collectionViewDiffableDataSource snapshot];

  if ([identifier length])
  {
    sectionIdentifiers = [snapshot sectionIdentifiers];
    v9 = [sectionIdentifiers containsObject:identifier];

    v10 = sub_100798B6C();
    collectionViewDiffableDataSource2 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = identifier;
        _os_log_impl(&_mh_execute_header, collectionViewDiffableDataSource2, OS_LOG_TYPE_DEBUG, "Reloading section: %@", buf, 0xCu);
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      dataProviders = [(SearchHomeDataSource *)self dataProviders];
      v13 = [dataProviders countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        while (2)
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(dataProviders);
            }

            v17 = *(*(&v22 + 1) + 8 * i);
            identifier2 = [v17 identifier];
            v19 = [identifier2 isEqualToString:identifier];

            if (v19)
            {
              v26 = identifier;
              v20 = [NSArray arrayWithObjects:&v26 count:1];
              [snapshot deleteItemsWithIdentifiers:v20];
              objects = [v17 objects];
              [snapshot appendItemsWithIdentifiers:objects intoSectionWithIdentifier:identifier];

              goto LABEL_17;
            }
          }

          v14 = [dataProviders countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:

      collectionViewDiffableDataSource2 = [(SearchHomeDataSource *)self collectionViewDiffableDataSource];
      [collectionViewDiffableDataSource2 applySnapshot:snapshot animatingDifferences:0];
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = identifier;
      _os_log_impl(&_mh_execute_header, collectionViewDiffableDataSource2, OS_LOG_TYPE_INFO, "Unable to reload snapshot section named: %@ as it is not in the snapshot.", buf, 0xCu);
    }
  }
}

- (double)isTouristHereValue
{
  searchHomeDataSourceDelegate = [(SearchHomeDataSource *)self searchHomeDataSourceDelegate];
  [searchHomeDataSourceDelegate isTouristHereValue];
  v4 = v3;

  return v4;
}

- (id)newTraits
{
  v3 = +[MapsOfflineUIHelper sharedHelper];
  if (![v3 isUsingOfflineMaps] || self->_supportsFullTextSearch || !self->_routePlanning)
  {

    goto LABEL_9;
  }

  traits = self->_traits;

  if (!traits)
  {
LABEL_9:
    searchHomeDataSourceDelegate = [(SearchHomeDataSource *)self searchHomeDataSourceDelegate];
    newTraits = [searchHomeDataSourceDelegate newTraits];

    return newTraits;
  }

  v5 = self->_traits;

  return v5;
}

- (void)didUpdateDataFetcher:(id)fetcher
{
  fetcherCopy = fetcher;
  v5 = sub_10074D190();
  v6 = os_signpost_id_generate(v5);

  v7 = sub_10074D190();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "UpdateDataFetcher", "", buf, 2u);
  }

  v9 = +[NSMutableArray array];
  spid = v6;
  v49 = v6 - 1;
  if (!self->_isUsingOfflineMaps || [(SearchHomeDataSource *)self searchAlongRoute]|| [(SearchHomeDataSource *)self supportsFullTextSearch])
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = [(SearchHomeDataSource *)self dataFetchers];
    v52 = [obj countByEnumeratingWithState:&v67 objects:v82 count:16];
    if (v52)
    {
      v51 = *v68;
      do
      {
        v10 = 0;
        do
        {
          if (*v68 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v53 = v10;
          dataProviders = [*(*(&v67 + 1) + 8 * v10) dataProviders];
          v12 = dataProviders;
          if (dataProviders)
          {
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v13 = [dataProviders countByEnumeratingWithState:&v63 objects:v81 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v64;
              do
              {
                for (i = 0; i != v14; i = i + 1)
                {
                  if (*v64 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v63 + 1) + 8 * i);
                  if (_UISolariumEnabled())
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      continue;
                    }
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    if ([(SearchHomeDataSource *)self shouldShowSearchHomeTip:fetcherCopy])
                    {
                      [v9 insertObject:v17 atIndex:0];
                    }
                  }

                  else
                  {
                    [v9 addObject:v17];
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v63 objects:v81 count:16];
              }

              while (v14);
            }
          }

          v10 = v53 + 1;
        }

        while (v53 + 1 != v52);
        v52 = [obj countByEnumeratingWithState:&v67 objects:v82 count:16];
      }

      while (v52);
    }
  }

  else
  {
    dataFetchers = [(SearchHomeDataSource *)self dataFetchers];
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_10074D1E4;
    v73[3] = &unk_101627E10;
    v46 = v9;
    v74 = v46;
    [dataFetchers enumerateObjectsUsingBlock:v73];

    dataFetchers2 = [(SearchHomeDataSource *)self dataFetchers];
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_10074D280;
    v71[3] = &unk_101627E10;
    v72 = v46;
    [dataFetchers2 enumerateObjectsUsingBlock:v71];
  }

  v18 = [v9 copy];
  [(SearchHomeDataSource *)self setDataProviders:v18];

  v19 = +[MapsOfflineUIHelper sharedHelper];
  if ([v19 isUsingOfflineMaps])
  {
    supportsFullTextSearch = self->_supportsFullTextSearch;

    if (supportsFullTextSearch)
    {
      goto LABEL_34;
    }

    v19 = sub_100798B6C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      dataProviders2 = [(SearchHomeDataSource *)self dataProviders];
      layoutProviders = [(SearchHomeDataSource *)self layoutProviders];
      *buf = 138412546;
      v78 = dataProviders2;
      v79 = 2112;
      v80 = layoutProviders;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Data providers: %@ Layout providers :%@", buf, 0x16u);
    }
  }

LABEL_34:
  [(SearchHomeDataSource *)self setNeedsUpdate];
  v23 = +[NSMutableArray array];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  dataProviders3 = [(SearchHomeDataSource *)self dataProviders];
  v25 = [dataProviders3 countByEnumeratingWithState:&v59 objects:v76 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v60;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v60 != v27)
        {
          objc_enumerationMutation(dataProviders3);
        }

        v29 = *(*(&v59 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          objectsForAnalytics = [v29 objectsForAnalytics];
          if ([objectsForAnalytics count])
          {
            [v23 addObjectsFromArray:objectsForAnalytics];
          }
        }
      }

      v26 = [dataProviders3 countByEnumeratingWithState:&v59 objects:v76 count:16];
    }

    while (v26);
  }

  v31 = [v23 copy];
  objectsForAnalytics = self->_objectsForAnalytics;
  self->_objectsForAnalytics = v31;

  v33 = [[AutocompleteContext alloc] initWithQueryString:&stru_1016631F0];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v54 = v23;
  v34 = [v54 countByEnumeratingWithState:&v55 objects:v75 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v56;
    do
    {
      for (k = 0; k != v35; k = k + 1)
      {
        if (*v56 != v36)
        {
          objc_enumerationMutation(v54);
        }

        v38 = *(*(&v55 + 1) + 8 * k);
        v39 = [AutocompleteMatchInfo matchInfoWithType:0];
        [(AutocompleteContext *)v33 setMatchInfo:v39 forObject:v38];
      }

      v35 = [v54 countByEnumeratingWithState:&v55 objects:v75 count:16];
    }

    while (v35);
  }

  autocompleteContext = self->_autocompleteContext;
  self->_autocompleteContext = v33;
  v41 = v33;

  v42 = +[NSNotificationCenter defaultCenter];

  [v42 postNotificationName:@"PPTTest_SearchHome_DidUpdateDataFetcher" object:fetcherCopy];
  v43 = sub_10074D190();
  v44 = v43;
  if (v49 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_END, spid, "UpdateDataFetcher", "", buf, 2u);
  }
}

- (void)_updateRegionListForCachedKey:(id)key value:(BOOL)value
{
  valueCopy = value;
  if ([key length] && MapsFeature_IsEnabled_NaturalSearchMaps())
  {
    v6 = GEOConfigGetDictionary();
    v7 = [NSMutableDictionary dictionaryWithDictionary:v6];

    v8 = [NSNumber numberWithBool:valueCopy];
    [v7 setObject:v8 forKeyedSubscript:self->_naturalSearchHomeCachedKey];

    GEOConfigSetDictionary();
    v9 = sub_100798B6C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting Search Home Tip value as Seen", v10, 2u);
    }
  }
}

- (void)applySnapshotWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = sub_10074D190();
  v6 = os_signpost_id_generate(v5);

  v7 = sub_10074D190();
  v8 = v7;
  spid = v6;
  v37 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SearchHomeApplyingSnapshot", "", buf, 2u);
  }

  v38 = completionCopy;

  v40 = objc_alloc_init(NSMutableArray);
  v39 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [(SearchHomeDataSource *)self dataProviders];
  v9 = [obj countByEnumeratingWithState:&v42 objects:v58 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v43;
    v12 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v42 + 1) + 8 * i);
        identifier = [v14 identifier];
        if (identifier)
        {
          objects = [v14 objects];
          v17 = [objects copy];

          firstObject = [v17 firstObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v17 firstObject];
            v20 = v19 = self;
            v21 = [v20 count];

            self = v19;
            v12 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;

            if (!v21)
            {
              goto LABEL_24;
            }
          }

          else
          {
          }

          if (![v14 type])
          {
            if (![(SearchHomeDataSource *)self shouldShowNoRecentSearchesCell])
            {
              goto LABEL_24;
            }

            v57 = identifier;
            v24 = [v12[286] arrayWithObjects:&v57 count:1];
            [v39 appendSectionsWithIdentifiers:v24];

            objects2 = [v14 objects];
            v12 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
            [v39 appendItemsWithIdentifiers:objects2 intoSectionWithIdentifier:identifier];

            v55 = identifier;
            objects3 = [v14 objects];
            v56 = objects3;
            v26 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
            [v40 addObject:v26];

            goto LABEL_23;
          }

          if (([v14 type] != 6 || !-[SearchHomeDataSource shouldRemoveSearchHomeTip](self, "shouldRemoveSearchHomeTip")) && -[NSObject count](v17, "count"))
          {
            v54 = identifier;
            v22 = [v12[286] arrayWithObjects:&v54 count:1];
            [v39 appendSectionsWithIdentifiers:v22];

            [v39 appendItemsWithIdentifiers:v17 intoSectionWithIdentifier:identifier];
            v52 = identifier;
            v53 = v17;
            objects3 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
            [v40 addObject:objects3];
LABEL_23:
          }
        }

        else
        {
          v17 = sub_100798B6C();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v47 = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "The section identifier - %@ is nil while applying the snapshot.", buf, 0xCu);
          }
        }

LABEL_24:
      }

      v10 = [obj countByEnumeratingWithState:&v42 objects:v58 count:16];
    }

    while (v10);
  }

  v27 = [v40 copy];
  cachedSnapshotObjects = [(SearchHomeDataSource *)self cachedSnapshotObjects];
  v29 = [v27 isEqualToArray:cachedSnapshotObjects];

  if ((v29 & 1) == 0)
  {
    [(SearchHomeDataSource *)self setCachedSnapshotObjects:v27];
    v30 = sub_100798B6C();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      dataProviders = [(SearchHomeDataSource *)self dataProviders];
      layoutProviders = [(SearchHomeDataSource *)self layoutProviders];
      *buf = 138412802;
      v47 = v39;
      v48 = 2112;
      v49 = dataProviders;
      v50 = 2112;
      v51 = layoutProviders;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "The snapshot - (%@) will be applied, Data Providers : %@, Layout providers : %@", buf, 0x20u);
    }

    collectionViewDiffableDataSource = [(SearchHomeDataSource *)self collectionViewDiffableDataSource];
    [collectionViewDiffableDataSource applySnapshotUsingReloadData:v39];
  }

  v38[2](v38);
  v34 = sub_10074D190();
  v35 = v34;
  if (v37 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, OS_SIGNPOST_INTERVAL_END, spid, "SearchHomeApplyingSnapshot", "", buf, 2u);
  }
}

- (void)_applyTableViewSnapshot
{
  if (self->_tableViewDiffableDataSource && !self->_supportsFullTextSearch && (-[DataSource tableView](self, "tableView"), v3 = objc_claimAutoreleasedReturnValue(), [v3 dataSource], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, v3, (isKindOfClass & 1) != 0))
  {
    v29 = 192;
    v6 = objc_alloc_init(NSDiffableDataSourceSnapshot);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    selfCopy = self;
    dataProviders = [(SearchHomeDataSource *)self dataProviders];
    v8 = [dataProviders countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(dataProviders);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          identifier = [v12 identifier];
          objects = [v12 objects];
          v15 = [objects copy];

          if ([v15 count])
          {
            v16 = identifier == 0;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            v17 = sub_100798B6C();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v38 = identifier;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "The section identifier - %@ and there are no objects to reload.", buf, 0xCu);
            }
          }

          else
          {
            v35 = identifier;
            v18 = [NSArray arrayWithObjects:&v35 count:1];
            [v6 appendSectionsWithIdentifiers:v18];

            [v6 appendItemsWithIdentifiers:v15 intoSectionWithIdentifier:identifier];
          }
        }

        v9 = [dataProviders countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v9);
    }

    v19 = sub_100798B6C();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      dataProviders2 = [(SearchHomeDataSource *)selfCopy dataProviders];
      layoutProviders = [(SearchHomeDataSource *)selfCopy layoutProviders];
      *buf = 138412802;
      v38 = v6;
      v39 = 2112;
      v40 = dataProviders2;
      v41 = 2112;
      v42 = layoutProviders;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "The table view snapshot - (%@) will be applied, Data Providers : %@, Layout providers : %@", buf, 0x20u);
    }

    [*(&selfCopy->super.super.isa + v29) applySnapshotUsingReloadData:v6];
  }

  else
  {
    v6 = sub_100798B6C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v22 = +[MapsOfflineUIHelper sharedHelper];
      if ([v22 isUsingOfflineMaps])
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v24 = v23;
      if (self->_supportsFullTextSearch)
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      v26 = v25;
      tableView = [(DataSource *)self tableView];
      dataSource = [tableView dataSource];
      *buf = 138412802;
      v38 = v24;
      v39 = 2112;
      v40 = v26;
      v41 = 2112;
      v42 = dataSource;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "The _tableViewDiffableDataSource is nil but the user is trying to add a stop in Route planning, The Maps Offline status: %@, Full text support: %@, Table view datasource: %@", buf, 0x20u);
    }
  }
}

- (void)_applySnapshotOnMainThread
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v16 = "[SearchHomeDataSource _applySnapshotOnMainThread]";
        v17 = 2080;
        v18 = "SearchHomeDataSource.m";
        v19 = 1024;
        v20 = 378;
        v21 = 2080;
        v22 = "dispatch_get_main_queue()";
        v23 = 2080;
        v24 = dispatch_queue_get_label(&_dispatch_main_q);
        v25 = 2080;
        v26 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v12 = sub_10006D178();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v16 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  if (!self->_supportsFullTextSearch)
  {
    v6 = +[MapsOfflineUIHelper sharedHelper];
    if ([v6 isUsingOfflineMaps])
    {
      routePlanning = self->_routePlanning;

      if (routePlanning)
      {
        [(SearchHomeDataSource *)self _applyTableViewSnapshot];
        return;
      }
    }

    else
    {
    }
  }

  if (![(SearchHomeDataSource *)self needsToApplySnapshot])
  {
    [(SearchHomeDataSource *)self setNeedsToApplySnapshot:1];
    [(SearchHomeDataSource *)self setNeedsToResetKeyCommands:1];
    v8 = sub_100798B6C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      collectionView = [(UICollectionViewDiffableDataSource *)self->_collectionViewDiffableDataSource collectionView];
      [collectionView contentSize];
      v10 = NSStringFromSize(v27);
      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Applying snapshot started. Content Size: %@", buf, 0xCu);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10074E108;
    v14[3] = &unk_101661B18;
    v14[4] = self;
    [(SearchHomeDataSource *)self applySnapshotWithCompletion:v14];
  }
}

- (void)setNeedsUpdate
{
  if (+[NSThread isMainThread])
  {

    [(SearchHomeDataSource *)self _applySnapshotOnMainThread];
  }

  else
  {
    v3 = sub_100798B6C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Making sure that the UI update happens on main queue", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10074E300;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (BOOL)shouldShowNoRecentSearchesCell
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  dataFetchers = [(SearchHomeDataSource *)self dataFetchers];
  v4 = [dataFetchers countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v22 != v6)
      {
        objc_enumerationMutation(dataFetchers);
      }

      if (![*(*(&v21 + 1) + 8 * v7) isFetchingDataComplete])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [dataFetchers countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    dataFetchers = [(SearchHomeDataSource *)self dataProviders];
    v8 = [dataFetchers countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (!v8)
    {
      v15 = 1;
      goto LABEL_20;
    }

    v9 = v8;
    v10 = *v18;
LABEL_11:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(dataFetchers);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      if ([v12 type])
      {
        objects = [v12 objects];
        v14 = [objects count];

        if (v14)
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [dataFetchers countByEnumeratingWithState:&v17 objects:v25 count:16];
        v15 = 1;
        if (v9)
        {
          goto LABEL_11;
        }

        goto LABEL_20;
      }
    }
  }

  v15 = 0;
LABEL_20:

  return v15;
}

- (void)setShouldRemoveSearchHomeTip:(BOOL)tip
{
  self->_shouldRemoveSearchHomeTip = tip;
  if (tip)
  {
    [(SearchHomeDataSource *)self _updateRegionListForCachedKey:self->_naturalSearchHomeCachedKey value:1];
  }
}

- (BOOL)shouldShowSearchHomeTip:(id)tip
{
  tipCopy = tip;
  if ((MapsFeature_IsEnabled_NaturalSearchMaps() & 1) == 0)
  {
    v5 = sub_100067540();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v6 = "The NaturalSearchMaps FF is not enabled";
      v7 = buf;
      v8 = v5;
      v9 = OS_LOG_TYPE_INFO;
      goto LABEL_7;
    }

LABEL_8:

    v10 = 0;
    goto LABEL_18;
  }

  if ([(SearchHomeDataSource *)self searchAlongRoute])
  {
    v5 = sub_100067540();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v18 = 0;
      v6 = "The NaturalSearch Tipkit should not be seen in SAR";
      v7 = &v18;
      v8 = v5;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v8, v9, v6, v7, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v11 = GEOConfigGetDictionary();
  v12 = [NSMutableDictionary dictionaryWithDictionary:v11];

  if (![(NSString *)self->_naturalSearchHomeCachedKey length]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    naturalSearchCachedKey = [tipCopy naturalSearchCachedKey];
    naturalSearchHomeCachedKey = self->_naturalSearchHomeCachedKey;
    self->_naturalSearchHomeCachedKey = naturalSearchCachedKey;
  }

  if ([(NSString *)self->_naturalSearchHomeCachedKey length])
  {
    v15 = [v12 objectForKeyedSubscript:self->_naturalSearchHomeCachedKey];
    bOOLValue = [v15 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      [(SearchHomeDataSource *)self setShouldRemoveSearchHomeTip:0];
    }

    v10 = bOOLValue ^ 1;
  }

  else
  {
    v10 = 0;
  }

LABEL_18:
  return v10;
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  v17.receiver = self;
  v17.super_class = SearchHomeDataSource;
  [(DataSource *)&v17 setActive:?];
  if (activeCopy)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"PPTTest_SearchHome_DidSetActive" object:self];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    dataFetchers = [(SearchHomeDataSource *)self dataFetchers];
    v7 = [dataFetchers countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(dataFetchers);
          }

          [*(*(&v13 + 1) + 8 * v10) fetchContent];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [dataFetchers countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v11 = sub_100067540();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Data source marked inactive. Will not show SearchHome tip again.", v12, 2u);
    }

    [(SearchHomeDataSource *)self setShouldRemoveSearchHomeTip:1];
  }

  [(SearchHomeDataSource *)self setNeedsUpdate];
}

- (void)_hoverGestureRecognizerStateDidChange:(id)change
{
  changeCopy = change;
  if ([changeCopy _maps_isHovering])
  {
    collectionView = [(DataSource *)self collectionView];
    [changeCopy locationInView:collectionView];
    v6 = v5;
    v8 = v7;

    collectionView2 = [(DataSource *)self collectionView];
    v10 = [collectionView2 indexPathForItemAtPoint:{v6, v8}];

    collectionView3 = [(DataSource *)self collectionView];
    v12 = [collectionView3 cellForItemAtIndexPath:v10];

    if (v12 && ([v12 frame], v24.x = v6, v24.y = v8, CGRectContainsPoint(v25, v24)))
    {
      if (v10)
      {
        if ([v10 isEqual:self->_lastSelectedIndexPath])
        {
          v13 = 0;
LABEL_13:
          collectionView4 = [(DataSource *)self collectionView];
          [collectionView4 selectItemAtIndexPath:v10 animated:0 scrollPosition:0];

          objc_storeStrong(&self->_lastSelectedIndexPath, v10);
          if (v12)
          {
            [v12 canBecomeFirstResponder];
          }

          [v12 becomeFirstResponder];
LABEL_16:

          if (!v13)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        v16 = 0;
LABEL_12:
        v13 = self->_lastSelectedIndexPath;
        lastSelectedIndexPath = self->_lastSelectedIndexPath;
        self->_lastSelectedIndexPath = 0;

        if (v16)
        {
          goto LABEL_16;
        }

        goto LABEL_13;
      }
    }

    else
    {

      v10 = 0;
    }

    v16 = 1;
    goto LABEL_12;
  }

  if ([changeCopy state] == 3)
  {
    v14 = self->_lastSelectedIndexPath;
    if (v14)
    {
      v13 = v14;
      v15 = self->_lastSelectedIndexPath;
      self->_lastSelectedIndexPath = 0;

LABEL_17:
      collectionView5 = [(DataSource *)self collectionView];
      v20 = [collectionView5 cellForItemAtIndexPath:v13];

      [v20 resignFirstResponder];
      collectionView6 = [(DataSource *)self collectionView];
      [collectionView6 deselectItemAtIndexPath:v13 animated:0];
    }
  }

LABEL_18:
}

- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  collectionView = [(DataSource *)self collectionView];
  v7 = sub_10000FA08(collectionView);

  if (v7 == 5)
  {
    collectionView2 = [(DataSource *)self collectionView];
    [collectionView2 deselectItemAtIndexPath:self->_lastSelectedIndexPath animated:0];

    collectionView3 = [(DataSource *)self collectionView];
    nextFocusedIndexPath = [contextCopy nextFocusedIndexPath];
    [collectionView3 selectItemAtIndexPath:nextFocusedIndexPath animated:0 scrollPosition:0];

    nextFocusedIndexPath2 = [contextCopy nextFocusedIndexPath];
    lastSelectedIndexPath = self->_lastSelectedIndexPath;
    self->_lastSelectedIndexPath = nextFocusedIndexPath2;
  }
}

- (void)dealloc
{
  v3 = +[CuratedCollectionSyncManager sharedManager];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SearchHomeDataSource;
  [(SearchHomeDataSource *)&v4 dealloc];
}

- (SearchHomeDataSource)initWithCollectionView:(id)view parentViewController:(id)controller updateLocation:(BOOL)location isSearchAlongRoute:(BOOL)route supportsFullTextSearch:(BOOL)search
{
  searchCopy = search;
  routeCopy = route;
  locationCopy = location;
  viewCopy = view;
  obj = controller;
  v85.receiver = self;
  v85.super_class = SearchHomeDataSource;
  v13 = [(DataSource *)&v85 initWithCollectionView:viewCopy updateLocation:locationCopy];
  val = v13;
  if (v13)
  {
    naturalSearchHomeCachedKey = v13->_naturalSearchHomeCachedKey;
    v13->_naturalSearchHomeCachedKey = 0;

    objc_storeWeak(&val->_parentViewController, obj);
    [(SearchHomeDataSource *)val setSearchAlongRoute:routeCopy];
    [(SearchHomeDataSource *)val setSupportsFullTextSearch:searchCopy];
    v68 = +[NSMutableArray array];
    v15 = +[MapsOfflineUIHelper sharedHelper];
    val->_isUsingOfflineMaps = [v15 isUsingOfflineMaps];

    if (![(SearchHomeDataSource *)val searchAlongRoute])
    {
      v16 = [[SearchHomeRecentSearchesDataFetcher alloc] initWithDelegate:val isSearchAlongRoute:[(SearchHomeDataSource *)val searchAlongRoute]];
      [v68 addObject:v16];
    }

    if (val->_isUsingOfflineMaps && ![(SearchHomeDataSource *)val searchAlongRoute]&& ![(SearchHomeDataSource *)val supportsFullTextSearch])
    {
      v17 = [[_TtC4Maps31SearchHomeUserGuidesDataFetcher alloc] initWithDelegate:val isSearchAlongRoute:[(SearchHomeDataSource *)val searchAlongRoute]];
      [v68 addObject:v17];
    }

    v67 = [[SearchHomeDataDownloader alloc] initWithDelegate:val isSearchAlongRoute:[(SearchHomeDataSource *)val searchAlongRoute]];
    [(SearchHomeDataDownloader *)v67 setSupportsFullTextSearch:[(SearchHomeDataSource *)val supportsFullTextSearch]];
    [v68 addObject:v67];
    v18 = [[SearchHomeNoDataDataFetcher alloc] initWithDelegate:val isSearchAlongRoute:[(SearchHomeDataSource *)val searchAlongRoute]];
    [v68 addObject:v18];

    v19 = [v68 copy];
    dataFetchers = val->_dataFetchers;
    val->_dataFetchers = v19;

    v70 = +[NSMutableArray array];
    v21 = objc_alloc_init(SearchHomeNoDataLayoutProvider);
    [v70 addObject:v21];

    if (![(SearchHomeDataSource *)val searchAlongRoute])
    {
      if (!val->_isUsingOfflineMaps)
      {
        v22 = objc_alloc_init(SearchHomeTipLayoutProvider);
        objc_initWeak(&location, val);
        v82[0] = _NSConcreteStackBlock;
        v82[1] = 3221225472;
        v82[2] = sub_10074F550;
        v82[3] = &unk_101661B98;
        objc_copyWeak(&v83, &location);
        [(SearchHomeTipLayoutProvider *)v22 setTipkitDismissHandler:v82];
        [v70 addObject:v22];
        objc_destroyWeak(&v83);
        objc_destroyWeak(&location);
      }

      if ((_UISolariumEnabled() & 1) != 0 || ([viewCopy traitCollection], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "userInterfaceIdiom") == 5, v23, !v24))
      {
        v25 = [[SearchHomeRecentSearchesLayoutProvider alloc] initWithParentViewController:obj];
      }

      else
      {
        v25 = objc_alloc_init(MacSearchHomeRecentSearchesLayoutProvider);
      }

      v26 = v25;
      [v70 addObject:v25];
    }

    v27 = [[SearchHomeBrowseCategoriesLayoutProvider alloc] initWithSearchAlongRoute:[(SearchHomeDataSource *)val searchAlongRoute] supportsFullTextSearch:val->_supportsFullTextSearch parentViewController:obj];
    [v70 addObject:v27];

    v28 = val;
    if (val->_isUsingOfflineMaps)
    {
      searchAlongRoute = [(SearchHomeDataSource *)val searchAlongRoute];
      v28 = val;
      if ((searchAlongRoute & 1) == 0)
      {
        supportsFullTextSearch = [(SearchHomeDataSource *)val supportsFullTextSearch];
        v28 = val;
        if ((supportsFullTextSearch & 1) == 0)
        {
          v31 = objc_alloc_init(_TtC4Maps34SearchHomeUserGuidesLayoutProvider);
          [v70 addObject:v31];

          v28 = val;
        }
      }
    }

    if (![(SearchHomeDataSource *)v28 searchAlongRoute])
    {
      v32 = [[SearchHomeCuratedCollectionsLayoutProvider alloc] initWithTraitEnvironment:viewCopy parentViewController:obj];
      [v70 addObject:v32];

      v33 = objc_alloc_init(SearchHomePublishersLayoutProvider);
      [v70 addObject:v33];

      if (MapsFeature_IsEnabled_Maps269())
      {
        if (sub_10000FA08(viewCopy) != 5)
        {
          v34 = [[SearchHomeCitiesLayoutProvider alloc] initWithTraitEnvironment:viewCopy parentViewController:obj];
          [v70 addObject:v34];
        }
      }
    }

    v35 = [v70 copy];
    layoutProviders = val->_layoutProviders;
    val->_layoutProviders = v35;

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v72 = val->_layoutProviders;
    v37 = [(NSArray *)v72 countByEnumeratingWithState:&v78 objects:v87 count:16];
    if (v37)
    {
      v73 = *v79;
      do
      {
        v38 = 0;
        do
        {
          if (*v79 != v73)
          {
            objc_enumerationMutation(v72);
          }

          v39 = *(*(&v78 + 1) + 8 * v38);
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          cellClasses = [v39 cellClasses];
          v41 = [cellClasses countByEnumeratingWithState:&v74 objects:v86 count:16];
          if (v41)
          {
            v42 = *v75;
            do
            {
              v43 = 0;
              do
              {
                if (*v75 != v42)
                {
                  objc_enumerationMutation(cellClasses);
                }

                v44 = *(*(&v74 + 1) + 8 * v43);
                cellReuseIdentifier = [v39 cellReuseIdentifier];
                [viewCopy registerClass:v44 forCellWithReuseIdentifier:cellReuseIdentifier];

                v43 = v43 + 1;
              }

              while (v41 != v43);
              v41 = [cellClasses countByEnumeratingWithState:&v74 objects:v86 count:16];
            }

            while (v41);
          }

          v38 = v38 + 1;
        }

        while (v38 != v37);
        v37 = [(NSArray *)v72 countByEnumeratingWithState:&v78 objects:v87 count:16];
      }

      while (v37);
    }

    v46 = objc_opt_class();
    v47 = +[_TtC4Maps20SearchHomeRecentCell reuseIdentifier];
    [viewCopy registerClass:v46 forCellWithReuseIdentifier:v47];

    v48 = objc_opt_class();
    v49 = +[_TtC4Maps33StandardSectionHeaderViewListCell reuseIdentifier];
    [viewCopy registerClass:v48 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v49];

    v50 = objc_opt_class();
    v51 = +[SectionFooterCollectionReusableView reuseIdentifier];
    [viewCopy registerClass:v50 forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:v51];

    if (MapsFeature_IsEnabled_Maps269() && sub_10000FA08(viewCopy) != 5 && ![(SearchHomeDataSource *)val searchAlongRoute])
    {
      v52 = objc_opt_class();
      v53 = +[MKExploreGuidesReusableView reuseIdentifier];
      [viewCopy registerClass:v52 forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:v53];
    }

    v54 = objc_opt_class();
    v55 = +[ActionButtonCollectionReusableView reuseIdentifier];
    [viewCopy registerClass:v54 forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:v55];

    v56 = [UICollectionViewDiffableDataSource alloc];
    collectionView = [(DataSource *)val collectionView];
    v58 = sub_1007CDFC8(val);
    v59 = [v56 initWithCollectionView:collectionView cellProvider:v58];
    collectionViewDiffableDataSource = val->_collectionViewDiffableDataSource;
    val->_collectionViewDiffableDataSource = v59;

    v61 = sub_1007CE178(val);
    [(UICollectionViewDiffableDataSource *)val->_collectionViewDiffableDataSource setSupplementaryViewProvider:v61];

    if (sub_10000FA08(viewCopy) == 5)
    {
      v62 = [[UIHoverGestureRecognizer alloc] initWithTarget:val action:"_hoverGestureRecognizerStateDidChange:"];
      [viewCopy addGestureRecognizer:v62];
    }

    else
    {
      v62 = +[NSNotificationCenter defaultCenter];
      [v62 addObserver:val selector:"contentSizeDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
    }

    v63 = [[SearchHomeAnalyticsManager alloc] initWithSearchAlongRoute:[(SearchHomeDataSource *)val searchAlongRoute]];
    analyticsManager = val->_analyticsManager;
    val->_analyticsManager = v63;

    if (![(SearchHomeDataSource *)val searchAlongRoute])
    {
      v65 = +[CuratedCollectionSyncManager sharedManager];
      [v65 addObserver:val];
    }
  }

  return val;
}

- (SearchHomeDataSource)initWithTableView:(id)view traits:(id)traits supportsFullTextSearch:(BOOL)search
{
  searchCopy = search;
  viewCopy = view;
  traitsCopy = traits;
  v44.receiver = self;
  v44.super_class = SearchHomeDataSource;
  v9 = [(DataSource *)&v44 initWithTableView:viewCopy updateLocation:0];
  v10 = v9;
  if (v9)
  {
    naturalSearchHomeCachedKey = v9->_naturalSearchHomeCachedKey;
    v9->_naturalSearchHomeCachedKey = 0;

    v10->_supportsFullTextSearch = searchCopy;
    v10->_routePlanning = 1;
    objc_storeStrong(&v10->_traits, traits);
    v36 = +[NSMutableArray array];
    v34 = [[SearchHomeDataDownloader alloc] initWithDelegate:v10 isSearchAlongRoute:[(SearchHomeDataSource *)v10 searchAlongRoute]];
    [v36 addObject:v34];
    v12 = [v36 copy];
    [(SearchHomeDataSource *)v10 setDataFetchers:v12];

    v13 = +[NSMutableArray array];
    v14 = [[SearchHomeBrowseCategoriesLayoutProvider alloc] initWithSearchAlongRoute:[(SearchHomeDataSource *)v10 searchAlongRoute] supportsFullTextSearch:v10->_supportsFullTextSearch parentViewController:0];
    [v13 addObject:v14];

    v15 = [v13 copy];
    layoutProviders = v10->_layoutProviders;
    v10->_layoutProviders = v15;

    [viewCopy setDataSource:0];
    [viewCopy setDelegate:v10];
    [(SearchHomeDataSource *)v10 setupTableHeaderView];
    v17 = objc_opt_self();
    v18 = +[_TtC4Maps27BrowseCategoryTableViewCell identifier];
    [viewCopy registerClass:v17 forCellReuseIdentifier:v18];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    dataFetchers = [(SearchHomeDataSource *)v10 dataFetchers];
    v20 = [dataFetchers countByEnumeratingWithState:&v40 objects:v55 count:16];
    if (v20)
    {
      v21 = *v41;
      do
      {
        v22 = 0;
        do
        {
          if (*v41 != v21)
          {
            objc_enumerationMutation(dataFetchers);
          }

          [*(*(&v40 + 1) + 8 * v22) fetchContent];
          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [dataFetchers countByEnumeratingWithState:&v40 objects:v55 count:16];
      }

      while (v20);
    }

    objc_initWeak(&location, v10);
    v23 = [UITableViewDiffableDataSource alloc];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10074FA50;
    v37[3] = &unk_10162A430;
    objc_copyWeak(&v38, &location);
    v24 = [v23 initWithTableView:viewCopy cellProvider:v37];
    tableViewDiffableDataSource = v10->_tableViewDiffableDataSource;
    v10->_tableViewDiffableDataSource = v24;

    v26 = sub_100798B6C();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = @"NO";
      if (searchCopy)
      {
        v27 = @"YES";
      }

      v28 = v27;
      tableView = [(DataSource *)v10 tableView];
      dataProviders = [(SearchHomeDataSource *)v10 dataProviders];
      layoutProviders = [(SearchHomeDataSource *)v10 layoutProviders];
      dataFetchers2 = [(SearchHomeDataSource *)v10 dataFetchers];
      *buf = 138413314;
      v46 = v28;
      v47 = 2112;
      v48 = tableView;
      v49 = 2112;
      v50 = dataProviders;
      v51 = 2112;
      v52 = layoutProviders;
      v53 = 2112;
      v54 = dataFetchers2;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Search home for Maps offline capability :%@, with tableView: %@, Data providers: %@, layout providers : %@, Data fectchers: %@", buf, 0x34u);
    }

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  return v10;
}

@end
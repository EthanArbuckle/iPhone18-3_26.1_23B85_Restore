@interface CuratedCollectionProvider
- (CGRect)subheaderFrame;
- (CuratedCollectionProvider)initWithTableView:(id)view curatedCollectionIdentifier:(id)identifier;
- (CuratedCollectionProvider)initWithTableView:(id)view fullyClientizedCuratedCollection:(id)collection;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path itemIdentifier:(id)identifier;
- (void)_commonInitWithTableView:(id)view;
- (void)_openURL:(id)l;
- (void)_punchoutToViewModel:(id)model;
- (void)_reconfigureSnapshot:(id)snapshot updatedModels:(id)models;
- (void)_updateKeyCommandsAtIndexPath:(id)path;
- (void)_updateLibraryStatusForModels;
- (void)_updateSnapshotWithCollection:(id)collection resolverInfo:(id)info;
- (void)_updateSubheaderColors;
- (void)addToUserCollection:(id)collection;
- (void)cellExpansionOccured:(id)occured;
- (void)cellPublisherLogoTapped:(id)tapped;
- (void)collectionManager:(id)manager contentDidChange:(id)change;
- (void)dealloc;
- (void)didFailToResolveCollectionWithError:(id)error withFetchedCollection:(id)collection;
- (void)didResolveCollection:(id)collection resolverInfo:(id)info;
- (void)didSelectAddOrRemoveFromLibrary:(BOOL)library forModel:(id)model;
- (void)didSelectAddToUserCollection:(id)collection forMapItem:(id)item sourceView:(id)view onSaveCompletion:(id)completion;
- (void)mediaIntegrationCell:(id)cell didSelectChildLink:(id)link;
- (void)mediaIntegrationCellDidDisplayChildLinks:(id)links;
- (void)openAppClip:(id)clip;
- (void)refresh;
- (void)setSubheaderTransitionFraction:(double)fraction;
- (void)startResolvingCollection;
- (void)storeDidChange:(id)change;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)willPunchOutToPublisherWebpageForPlaceCollectionItem:(id)item;
@end

@implementation CuratedCollectionProvider

- (void)storeDidChange:(id)change
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E129B0;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_punchoutToViewModel:(id)model
{
  modelCopy = model;
  analyticsController = [(CuratedCollectionProvider *)self analyticsController];
  targetAppIdentifier = [modelCopy targetAppIdentifier];
  [analyticsController logPunchOutUsingAppWithIdentifier:targetAppIdentifier];

  analyticsController2 = [(CuratedCollectionProvider *)self analyticsController];
  v8 = [modelCopy url];
  [analyticsController2 logPunchOutToURL:v8];

  v9 = [modelCopy url];

  [(CuratedCollectionProvider *)self _openURL:v9];
}

- (void)mediaIntegrationCell:(id)cell didSelectChildLink:(id)link
{
  linkCopy = link;
  analyticsController = [(CuratedCollectionProvider *)self analyticsController];
  targetAppIdentifier = [linkCopy targetAppIdentifier];
  [analyticsController logTapMediaAppWithIdentifier:targetAppIdentifier];

  [(CuratedCollectionProvider *)self _punchoutToViewModel:linkCopy];
}

- (void)mediaIntegrationCellDidDisplayChildLinks:(id)links
{
  linksCopy = links;
  tableView = [(DataSource *)self tableView];
  v5 = [tableView indexPathForCell:linksCopy];

  if (v5)
  {
    analyticsController = [(CuratedCollectionProvider *)self analyticsController];
    viewModel = [linksCopy viewModel];
    [analyticsController logTapMediaIntegrationWithType:objc_msgSend(viewModel verticalIndex:{"mediaType"), objc_msgSend(v5, "row")}];

    analyticsController2 = [(CuratedCollectionProvider *)self analyticsController];
    [analyticsController2 logShowMediaAppMenu];
  }
}

- (void)_reconfigureSnapshot:(id)snapshot updatedModels:(id)models
{
  snapshotCopy = snapshot;
  [snapshotCopy reconfigureItemsWithIdentifiers:models];
  self->_isApplyingSnapshot = 1;
  dataSource = self->_dataSource;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100E12CB0;
  v8[3] = &unk_101661B18;
  v8[4] = self;
  [(UITableViewDiffableDataSource *)dataSource applySnapshotUsingReloadData:snapshotCopy completion:v8];
}

- (void)collectionManager:(id)manager contentDidChange:(id)change
{
  managerCopy = manager;
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    [(CuratedCollectionProvider *)self _updateLibraryStatusForModels];
  }

  else
  {
    dataSource = [(CuratedCollectionProvider *)self dataSource];
    snapshot = [dataSource snapshot];

    if ([snapshot indexOfSectionIdentifier:@"CollectionItemSection"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = sub_100E12F44();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        curatedCollection = [(CuratedCollectionProvider *)self curatedCollection];
        curatedCollection2 = [(CuratedCollectionProvider *)self curatedCollection];
        if ([curatedCollection2 isSuppressed])
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        v12 = v11;
        curatedCollection3 = [(CuratedCollectionProvider *)self curatedCollection];
        if ([curatedCollection3 isBlocked])
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }

        v15 = v14;
        sectionIdentifiers = [snapshot sectionIdentifiers];
        itemIdentifiers = [snapshot itemIdentifiers];
        *buf = 138413314;
        v21 = curatedCollection;
        v22 = 2112;
        v23 = v12;
        v24 = 2112;
        v25 = v15;
        v26 = 2112;
        v27 = sectionIdentifiers;
        v28 = 2112;
        v29 = itemIdentifiers;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to find collection items section during contentDidChange.                         Collection: %@. isSuppressed/isBlocked: %@/%@. Sections: %@. Identifiers: %@", buf, 0x34u);
      }
    }

    else
    {
      v8 = [snapshot itemIdentifiersInSectionWithIdentifier:@"CollectionItemSection"];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100E12F98;
      v18[3] = &unk_101655960;
      v19 = managerCopy;
      [v8 enumerateObjectsUsingBlock:v18];
      [(CuratedCollectionProvider *)self _reconfigureSnapshot:snapshot updatedModels:v8];
    }
  }
}

- (void)_updateLibraryStatusForModels
{
  dataSource = [(CuratedCollectionProvider *)self dataSource];
  snapshot = [dataSource snapshot];

  if ([snapshot indexOfSectionIdentifier:@"CollectionItemSection"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = dispatch_group_create();
    v6 = [snapshot itemIdentifiersInSectionWithIdentifier:@"CollectionItemSection"];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100E13218;
    v12[3] = &unk_101655960;
    v13 = v5;
    v7 = v5;
    [v6 enumerateObjectsUsingBlock:v12];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100E13300;
    v9[3] = &unk_101661A40;
    v9[4] = self;
    v10 = snapshot;
    v11 = v6;
    v8 = v6;
    dispatch_group_notify(v7, &_dispatch_main_q, v9);
  }
}

- (void)refresh
{
  v3 = +[UIColor separatorColor];
  tableView = [(DataSource *)self tableView];
  [tableView setSeparatorColor:v3];

  resolver = self->_resolver;

  [(CuratedCollectionResolver *)resolver resolveCollection];
}

- (void)cellExpansionOccured:(id)occured
{
  expanded = [occured expanded];
  analyticsController = [(CuratedCollectionProvider *)self analyticsController];
  v6 = analyticsController;
  if (expanded)
  {
    [analyticsController logTapShowMoreDescription];
  }

  else
  {
    [analyticsController logTapShowLessDescription];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E13448;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)cellPublisherLogoTapped:(id)tapped
{
  delegate = [(DataSource *)self delegate];
  curatedCollection = [(CuratedCollectionProvider *)self curatedCollection];
  publisher = [curatedCollection publisher];
  [delegate showPublisherView:publisher];
}

- (void)openAppClip:(id)clip
{
  clipCopy = clip;
  delegate = [(DataSource *)self delegate];
  [delegate dataSource:self openAppClip:clipCopy];
}

- (void)willPunchOutToPublisherWebpageForPlaceCollectionItem:(id)item
{
  itemCopy = item;
  delegate = [(DataSource *)self delegate];
  [delegate dataSource:self willPunchOuToPublisherWebpageForPlaceCollectionItem:itemCopy];
}

- (void)didSelectAddToUserCollection:(id)collection forMapItem:(id)item sourceView:(id)view onSaveCompletion:(id)completion
{
  completionCopy = completion;
  viewCopy = view;
  itemCopy = item;
  collectionCopy = collection;
  delegate = [(DataSource *)self delegate];
  [delegate dataSource:self addToUserCollection:collectionCopy forMapItem:itemCopy sourceView:viewCopy onSaveCompletion:completionCopy];
}

- (void)didSelectAddOrRemoveFromLibrary:(BOOL)library forModel:(id)model
{
  libraryCopy = library;
  modelCopy = model;
  delegate = [(DataSource *)self delegate];
  libraryOperationsCoordinator = [modelCopy libraryOperationsCoordinator];

  if (libraryCopy)
  {
    [delegate dataSource:self addPlaceToLibraryUsingCoordinator:libraryOperationsCoordinator];
  }

  else
  {
    [delegate dataSource:self removePlaceFromLibraryUsingCoordinator:libraryOperationsCoordinator];
  }
}

- (void)_openURL:(id)l
{
  lCopy = l;
  v4 = +[UIApplication sharedApplication];
  [v4 _maps_openURL:lCopy options:0 completionHandler:0];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  dataSource = [(CuratedCollectionProvider *)self dataSource];
  snapshot = [dataSource snapshot];

  sectionIdentifiers = [snapshot sectionIdentifiers];
  v10 = [sectionIdentifiers objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  if (![v10 isEqualToString:@"CollectionItemSection"])
  {
    if ([v10 isEqualToString:@"ActionsItemSection"])
    {
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      footerActionItems = [(CuratedCollectionProvider *)self footerActionItems];
      delegate2 = [footerActionItems objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      if ([delegate2 type])
      {
        goto LABEL_13;
      }

      curatedCollection = [viewCopy cellForRowAtIndexPath:pathCopy];
      delegate = [(DataSource *)self delegate];
      [delegate presentRAPWithSourceView:curatedCollection];
    }

    else
    {
      if (![v10 isEqualToString:@"CollectionPublisherItemSection"])
      {
        goto LABEL_14;
      }

      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      delegate2 = [(DataSource *)self delegate];
      curatedCollection = [(CuratedCollectionProvider *)self curatedCollection];
      delegate = [curatedCollection publisher];
      [delegate2 showPublisherView:delegate];
    }

    goto LABEL_12;
  }

  models = [(CuratedCollectionProvider *)self models];
  delegate2 = [models objectAtIndex:{objc_msgSend(pathCopy, "row")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    curatedCollection = [delegate2 collectionItem];
    delegate3 = [(DataSource *)self delegate];
    [delegate3 dataSource:self itemTapped:curatedCollection];

LABEL_12:
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    analyticsController = [(CuratedCollectionProvider *)self analyticsController];
    mediaIntegrationModel = [(CuratedCollectionProvider *)self mediaIntegrationModel];
    [analyticsController logTapMediaIntegrationWithType:objc_msgSend(mediaIntegrationModel verticalIndex:{"mediaType"), objc_msgSend(pathCopy, "row")}];

    curatedCollection = [(CuratedCollectionProvider *)self mediaIntegrationModel];
    [(CuratedCollectionProvider *)self _punchoutToViewModel:curatedCollection];
    goto LABEL_12;
  }

LABEL_13:

LABEL_14:
}

- (void)tableView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  viewCopy = view;
  nextFocusedItem = [context nextFocusedItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate2 = [viewCopy indexPathForCell:nextFocusedItem];
    if (delegate2)
    {
      dataSource = [(CuratedCollectionProvider *)self dataSource];
      snapshot = [dataSource snapshot];

      sectionIdentifiers = [snapshot sectionIdentifiers];
      v12 = [sectionIdentifiers objectAtIndex:{objc_msgSend(delegate2, "section")}];

      if ([v12 isEqualToString:@"CollectionItemSection"])
      {
        models = [(CuratedCollectionProvider *)self models];
        v14 = [models objectAtIndex:{objc_msgSend(delegate2, "row")}];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          collectionItem = [v14 collectionItem];
          delegate = [(DataSource *)self delegate];
          [delegate dataSource:self itemFocused:collectionItem];

          [(CuratedCollectionProvider *)self _updateKeyCommandsAtIndexPath:delegate2];
          goto LABEL_10;
        }
      }
    }
  }

  [(CuratedCollectionProvider *)self _updateKeyCommandsAtIndexPath:0];
  delegate2 = [(DataSource *)self delegate];
  [delegate2 dataSource:self itemFocused:0];
LABEL_10:
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  dataSource = [(CuratedCollectionProvider *)self dataSource];
  snapshot = [dataSource snapshot];

  sectionIdentifiers = [snapshot sectionIdentifiers];
  section = [pathCopy section];

  v12 = [sectionIdentifiers objectAtIndex:section];

  if ([v12 isEqualToString:@"CollectionActionSection"])
  {
    v13 = cellCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    [(CuratedCollectionProvider *)self _updateActionColorsInCell:v15 animated:0];
  }

  else
  {
    if (![v12 isEqualToString:@"CollectionDescriptionSection"])
    {
      goto LABEL_12;
    }

    v16 = cellCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v15 = v17;

    [(CuratedCollectionProvider *)self _updateDescriptionColorsInCell:v15 animated:0];
  }

LABEL_12:
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(CuratedCollectionProvider *)self dataSource];
  snapshot = [dataSource snapshot];

  sectionIdentifiers = [snapshot sectionIdentifiers];
  section = [pathCopy section];

  v10 = [sectionIdentifiers objectAtIndex:section];

  if ([v10 isEqualToString:@"CollectionDescriptionSection"])
  {
    v11 = CuratedCollectionDescriptionTableViewCell;
  }

  else
  {
    if (![v10 isEqualToString:@"CollectionItemSection"])
    {
      v13 = UITableViewAutomaticDimension;
      goto LABEL_7;
    }

    v11 = CuratedCollectionItemTableViewCell;
  }

  [(__objc2_class *)v11 estimatedCellHeight];
  v13 = v12;
LABEL_7:

  return v13;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path itemIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
  dataSource = [(CuratedCollectionProvider *)self dataSource];
  snapshot = [dataSource snapshot];

  sectionIdentifiers = [snapshot sectionIdentifiers];
  v14 = [sectionIdentifiers objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  if ([v14 isEqualToString:@"CollectionActionSection"])
  {
    v15 = +[CuratedCollectionActionTableViewCell reuseIdentifier];
    v16 = [viewCopy dequeueReusableCellWithIdentifier:v15 forIndexPath:pathCopy];

    [v16 configureWithModel:identifierCopy];
    [(CuratedCollectionProvider *)self _updateActionColorsInCell:v16 animated:0];
    goto LABEL_21;
  }

  if ([v14 isEqualToString:@"CollectionDescriptionSection"])
  {
    v17 = +[CuratedCollectionDescriptionTableViewCell reuseIdentifier];
    v16 = [viewCopy dequeueReusableCellWithIdentifier:v17 forIndexPath:pathCopy];

    [v16 setDelegate:self];
    [v16 bounds];
    [v16 setSeparatorInset:{0.0, CGRectGetWidth(v45), 0.0, 0.0}];
    [v16 configureWithModel:identifierCopy];
    [(CuratedCollectionProvider *)self _updateDescriptionColorsInCell:v16 animated:0];
    goto LABEL_21;
  }

  if ([v14 isEqualToString:@"CollectionItemSection"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = identifierCopy;
      currentLocation = [(DataSource *)self currentLocation];
      [v18 setCurrentLocation:currentLocation];

      v20 = +[CuratedCollectionItemTableViewCell reuseIdentifier];
      v16 = [viewCopy dequeueReusableCellWithIdentifier:v20 forIndexPath:pathCopy];

      [v16 setDelegate:self];
      [v16 configureWithModel:v18];
      v21 = [pathCopy row];
      resolverInfo = [(CuratedCollectionProvider *)self resolverInfo];
      if (v21 == [resolverInfo mediaIntegrationCollectionItemIndex])
      {
        resolverInfo2 = [(CuratedCollectionProvider *)self resolverInfo];
        mediaIntegrationPosition = [resolverInfo2 mediaIntegrationPosition];

        if (mediaIntegrationPosition == 2)
        {
          [v16 bounds];
          [v16 setSeparatorInset:{0.0, CGRectGetWidth(v46), 0.0, 0.0}];
        }
      }

      else
      {
      }

      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = +[CuratedCollectionMediaIntegrationTableViewCell reuseIdentifier];
      v16 = [viewCopy dequeueReusableCellWithIdentifier:v26 forIndexPath:pathCopy];

      [v16 setViewModel:identifierCopy];
      resolverInfo3 = [(CuratedCollectionProvider *)self resolverInfo];
      [v16 setPosition:{objc_msgSend(resolverInfo3, "mediaIntegrationPosition")}];

      [v16 setDelegate:self];
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if ([v14 isEqualToString:@"CollectionPublisherItemSection"])
  {
    v18 = identifierCopy;
    v25 = +[TwoLinesTableViewCell identifier];
    v16 = [viewCopy dequeueReusableCellWithIdentifier:v25];

    [v16 setViewModel:v18];
LABEL_20:

    goto LABEL_21;
  }

  if (![v14 isEqualToString:@"ActionsItemSection"])
  {
LABEL_18:
    v16 = 0;
    goto LABEL_21;
  }

  v43 = identifierCopy;
  v16 = [viewCopy dequeueReusableCellWithIdentifier:@"FooterActionsItemRowIdentifier" forIndexPath:pathCopy];
  v28 = +[UIColor clearColor];
  [v16 setBackgroundColor:v28];

  v29 = +[UIListContentConfiguration cellConfiguration];
  title = [v43 title];
  v42 = v29;
  [v29 setText:title];

  v31 = +[UIColor linkColor];
  textProperties = [v29 textProperties];
  [textProperties setColor:v31];

  glyph = [v43 glyph];
  v33 = [UIImage systemImageNamed:glyph];
  v34 = [v33 imageWithRenderingMode:2];
  [v42 setImage:v34];

  v35 = +[UIColor linkColor];
  imageProperties = [v42 imageProperties];
  [imageProperties setTintColor:v35];

  [v16 setContentConfiguration:v42];
  v37 = [pathCopy row];
  footerActionItems = [(CuratedCollectionProvider *)self footerActionItems];
  v39 = [footerActionItems count] - 1;

  if (v37 == v39)
  {
    [v16 bounds];
    [v16 setSeparatorInset:{0.0, CGRectGetWidth(v47), 0.0, 0.0}];
  }

LABEL_21:

  return v16;
}

- (void)didFailToResolveCollectionWithError:(id)error withFetchedCollection:(id)collection
{
  errorCopy = error;
  collectionCopy = collection;
  v8 = sub_100E12F44();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v17 = 138412290;
    v18 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to resolve collection with error %@", &v17, 0xCu);
  }

  v9 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  tableView = [(DataSource *)self tableView];
  [tableView setTableFooterView:v9];

  tableView2 = [(DataSource *)self tableView];
  [tableView2 setScrollEnabled:0];

  v12 = +[UIColor clearColor];
  tableView3 = [(DataSource *)self tableView];
  [tableView3 setSeparatorColor:v12];

  delegate = [(DataSource *)self delegate];
  v15 = collectionCopy;
  if ([v15 isBlocked])
  {
    v16 = 1;
  }

  else if ([v15 isSuppressed])
  {
    v16 = 2;
  }

  else if (MKCurrentNetworkConnectionFailureDiagnosis())
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  [delegate dataSource:self didFailWithErrorState:v16];
}

- (void)_updateSnapshotWithCollection:(id)collection resolverInfo:(id)info
{
  collectionCopy = collection;
  infoCopy = info;
  v7 = sub_100E12F44();
  v8 = os_signpost_id_generate(v7);

  v9 = sub_100E12F44();
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ResolvedCollectionWithItems", "", buf, 2u);
  }

  v12 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  [(CuratedCollectionProvider *)self setCuratedCollection:collectionCopy];
  [(CuratedCollectionProvider *)self setResolverInfo:infoCopy];
  collectionItems = [infoCopy collectionItems];
  [(CuratedCollectionProvider *)self setCollectionItems:collectionItems];

  if ([collectionCopy isSuppressed] & 1) != 0 || (objc_msgSend(collectionCopy, "isBlocked"))
  {
    v14 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    tableView = [(DataSource *)self tableView];
    [tableView setTableFooterView:v14];

    tableView2 = [(DataSource *)self tableView];
    [tableView2 setScrollEnabled:0];

    v17 = +[UIColor clearColor];
    tableView3 = [(DataSource *)self tableView];
    [tableView3 setSeparatorColor:v17];
  }

  else
  {
    v95 = v8 - 1;
    v96 = v8;
    v97 = infoCopy;
    v19 = [CuratedCollectionActionCellModel alloc];
    curatedCollection = [(CuratedCollectionProvider *)self curatedCollection];
    v21 = [(CuratedCollectionActionCellModel *)v19 initWithCollection:curatedCollection];
    [(CuratedCollectionProvider *)self setActionModel:v21];

    delegate = [(DataSource *)self delegate];
    actionModel = [(CuratedCollectionProvider *)self actionModel];
    [actionModel setActionDelegate:delegate];

    v118 = @"CollectionActionSection";
    v24 = [NSArray arrayWithObjects:&v118 count:1];
    [v12 appendSectionsWithIdentifiers:v24];

    actionModel2 = [(CuratedCollectionProvider *)self actionModel];
    v117 = actionModel2;
    v26 = [NSArray arrayWithObjects:&v117 count:1];
    [v12 appendItemsWithIdentifiers:v26];

    v27 = [CuratedCollectionDescriptionCellModel alloc];
    curatedCollection2 = [(CuratedCollectionProvider *)self curatedCollection];
    collectionDescription = [(CuratedCollectionRichTextParser *)self->_parser collectionDescription];
    v30 = [(CuratedCollectionDescriptionCellModel *)v27 initWithCollection:curatedCollection2 collectionDescription:collectionDescription];
    [(CuratedCollectionProvider *)self setDescriptionModel:v30];

    v116 = @"CollectionDescriptionSection";
    v31 = [NSArray arrayWithObjects:&v116 count:1];
    [v12 appendSectionsWithIdentifiers:v31];

    descriptionModel = [(CuratedCollectionProvider *)self descriptionModel];
    v115 = descriptionModel;
    v33 = [NSArray arrayWithObjects:&v115 count:1];
    v94 = v12;
    [v12 appendItemsWithIdentifiers:v33];

    v100 = +[CollectionManager sharedManager];
    v102 = +[NSMutableArray array];
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    obj = [(CuratedCollectionProvider *)self collectionItems];
    selfCopy = self;
    v104 = [obj countByEnumeratingWithState:&v106 objects:v114 count:16];
    if (v104)
    {
      v99 = *v107;
      do
      {
        for (i = 0; i != v104; i = i + 1)
        {
          if (*v107 != v99)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v106 + 1) + 8 * i);
          v36 = [MKMapItemIdentifier alloc];
          placeCollectionItem = [v35 placeCollectionItem];
          itemIdentifier = [placeCollectionItem itemIdentifier];
          v39 = [v36 initWithGEOMapItemIdentifier:itemIdentifier];

          collectionItemDescriptions = [(CuratedCollectionRichTextParser *)self->_parser collectionItemDescriptions];
          v41 = [collectionItemDescriptions objectForKeyedSubscript:v39];

          mapItem = [v35 mapItem];
          v43 = [v100 firstUserGuideContainingMapItem:mapItem requiresOrdering:0];
          v44 = v43 != 0;

          appClips = [(CuratedCollectionResolver *)self->_resolver appClips];
          placeCollectionItem2 = [v35 placeCollectionItem];
          itemIdentifier2 = [placeCollectionItem2 itemIdentifier];
          v48 = [appClips objectForKeyedSubscript:itemIdentifier2];

          v49 = [_TtC4Maps29LibraryDataOperationsProvider alloc];
          mapsSyncStore = [(CuratedCollectionProvider *)self mapsSyncStore];
          v51 = [(LibraryDataOperationsProvider *)v49 initWithMapsSyncStore:mapsSyncStore];

          v52 = [_TtC4Maps39CuratedCollectionItemLibraryCoordinator alloc];
          mapItem2 = [v35 mapItem];
          v54 = [(CuratedCollectionItemLibraryCoordinator *)v52 initWithInitialMapItem:mapItem2 dataOperationsProvider:v51];

          v55 = [CuratedCollectionItemCellModel alloc];
          publisherAttribution = [collectionCopy publisherAttribution];
          v57 = [(CuratedCollectionItemCellModel *)v55 initWithMKPlaceCollectionMapItem:v35 usingAttribution:publisherAttribution itemDescription:v41 itemInUserCollection:v44 libraryOperationsCoordinator:v54 appClip:v48];
          [v102 addObject:v57];

          self = selfCopy;
        }

        v104 = [obj countByEnumeratingWithState:&v106 objects:v114 count:16];
      }

      while (v104);
    }

    infoCopy = v97;
    mediaIntegration = [v97 mediaIntegration];
    v12 = v94;
    v11 = v95;
    if (mediaIntegration)
    {
      if ([v97 mediaIntegrationCollectionItemIndex] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v59 = [CuratedCollectionMediaIntegrationViewModel alloc];
        thirdPartyLinks = [v97 thirdPartyLinks];
        v61 = [(CuratedCollectionMediaIntegrationViewModel *)v59 initWithAppleMediaServicesResult:mediaIntegration thirdPartyLinks:thirdPartyLinks];
        [(CuratedCollectionProvider *)self setMediaIntegrationModel:v61];

        mediaIntegrationModel = [(CuratedCollectionProvider *)self mediaIntegrationModel];

        if (mediaIntegrationModel)
        {
          mediaIntegrationPosition = [v97 mediaIntegrationPosition];
          if (!mediaIntegrationPosition || mediaIntegrationPosition == 2)
          {
            mediaIntegrationCollectionItemIndex = [v97 mediaIntegrationCollectionItemIndex] + 1;
          }

          else if (mediaIntegrationPosition == 1)
          {
            mediaIntegrationCollectionItemIndex = [v97 mediaIntegrationCollectionItemIndex];
          }

          else
          {
            mediaIntegrationCollectionItemIndex = 0;
          }

          v65 = (mediaIntegrationCollectionItemIndex & ~(mediaIntegrationCollectionItemIndex >> 63));
          if (v65 >= [v102 count])
          {
            v65 = [v102 count];
          }

          mediaIntegrationModel2 = [(CuratedCollectionProvider *)self mediaIntegrationModel];
          [v102 insertObject:mediaIntegrationModel2 atIndex:v65];
        }
      }
    }

    v67 = [v102 copy];
    [(CuratedCollectionProvider *)self setModels:v67];

    v113 = @"CollectionItemSection";
    v68 = [NSArray arrayWithObjects:&v113 count:1];
    [v94 appendSectionsWithIdentifiers:v68];

    models = [(CuratedCollectionProvider *)self models];
    [v94 appendItemsWithIdentifiers:models];

    v70 = [NSMutableArray arrayWithCapacity:1];
    v71 = +[UIDevice currentDevice];
    v72 = [v71 userInterfaceIdiom] != 5;

    publisher = [collectionCopy publisher];
    v74 = [TwoLinesContentViewModelComposer cellModelForPublisher:publisher showDisclosureIndicator:v72];
    [v70 addObject:v74];

    v75 = [v70 copy];
    [(CuratedCollectionProvider *)self setPublisherModel:v75];

    v112 = @"CollectionPublisherItemSection";
    v76 = [NSArray arrayWithObjects:&v112 count:1];
    [v94 appendSectionsWithIdentifiers:v76];

    publisherModel = [(CuratedCollectionProvider *)self publisherModel];
    [v94 appendItemsWithIdentifiers:publisherModel];

    v78 = [CuratedCollectionFooterActionItem alloc];
    v79 = +[NSBundle mainBundle];
    v80 = [v79 localizedStringForKey:@"Report an Issue" value:@"localized string not found" table:0];
    v81 = [(CuratedCollectionFooterActionItem *)v78 initWithType:0 title:v80 glyph:@"exclamationmark.bubble.fill"];

    self = selfCopy;
    [(CuratedCollectionProvider *)selfCopy setFooterActionItems:&__NSArray0__struct];
    if (_MKRAPIsAvailable() && (sub_1007413D0() & 1) == 0)
    {
      footerActionItems = [(CuratedCollectionProvider *)selfCopy footerActionItems];
      v83 = [footerActionItems arrayByAddingObject:v81];
      [(CuratedCollectionProvider *)selfCopy setFooterActionItems:v83];
    }

    v111 = @"ActionsItemSection";
    v84 = [NSArray arrayWithObjects:&v111 count:1];
    [v94 appendSectionsWithIdentifiers:v84];

    footerActionItems2 = [(CuratedCollectionProvider *)selfCopy footerActionItems];
    [v94 appendItemsWithIdentifiers:footerActionItems2];

    tableView4 = [(DataSource *)selfCopy tableView];
    [tableView4 setScrollEnabled:1];

    v87 = +[UIColor separatorColor];
    tableView5 = [(DataSource *)selfCopy tableView];
    [tableView5 setSeparatorColor:v87];

    tableView6 = [(DataSource *)selfCopy tableView];
    [tableView6 setTableFooterView:0];

    v8 = v96;
    v17 = v100;
    tableView3 = v102;
  }

  dataSource = [(CuratedCollectionProvider *)self dataSource];
  v105[0] = _NSConcreteStackBlock;
  v105[1] = 3221225472;
  v105[2] = sub_100E1520C;
  v105[3] = &unk_101661B18;
  v105[4] = self;
  [dataSource applySnapshot:v12 animatingDifferences:0 completion:v105];

  delegate2 = [(DataSource *)self delegate];
  [delegate2 dataSourceUpdated:self];

  v92 = sub_100E12F44();
  v93 = v92;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v92))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v93, OS_SIGNPOST_INTERVAL_END, v8, "ResolvedCollectionWithItems", "", buf, 2u);
  }
}

- (void)didResolveCollection:(id)collection resolverInfo:(id)info
{
  collectionCopy = collection;
  infoCopy = info;
  objc_initWeak(&location, self);
  v8 = [CuratedCollectionRichTextParser alloc];
  collectionItems = [infoCopy collectionItems];
  tableView = [(DataSource *)self tableView];
  traitCollection = [tableView traitCollection];
  v12 = [(CuratedCollectionRichTextParser *)v8 initWithCollection:collectionCopy collectionItems:collectionItems traitCollection:traitCollection];
  parser = self->_parser;
  self->_parser = v12;

  v14 = self->_parser;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100E15468;
  v17[3] = &unk_10165F3F0;
  objc_copyWeak(&v20, &location);
  v15 = collectionCopy;
  v18 = v15;
  v16 = infoCopy;
  v19 = v16;
  [(CuratedCollectionRichTextParser *)v14 parseRichTextDescriptionsWithCompletion:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)_updateSubheaderColors
{
  descriptionModel = [(CuratedCollectionProvider *)self descriptionModel];

  if (descriptionModel)
  {
    dataSource = self->_dataSource;
    descriptionModel2 = [(CuratedCollectionProvider *)self descriptionModel];
    v6 = [(UITableViewDiffableDataSource *)dataSource indexPathForItemIdentifier:descriptionModel2];

    if (v6)
    {
      tableView = [(DataSource *)self tableView];
      v8 = [tableView cellForRowAtIndexPath:v6];

      if (v8)
      {
        [(CuratedCollectionProvider *)self _updateDescriptionColorsInCell:v8 animated:1];
      }
    }
  }

  actionModel = [(CuratedCollectionProvider *)self actionModel];

  if (actionModel)
  {
    v10 = self->_dataSource;
    actionModel2 = [(CuratedCollectionProvider *)self actionModel];
    v15 = [(UITableViewDiffableDataSource *)v10 indexPathForItemIdentifier:actionModel2];

    v12 = v15;
    if (v15)
    {
      tableView2 = [(DataSource *)self tableView];
      v14 = [tableView2 cellForRowAtIndexPath:v15];

      if (v14)
      {
        [(CuratedCollectionProvider *)self _updateActionColorsInCell:v14 animated:1];
      }

      v12 = v15;
    }
  }
}

- (void)setSubheaderTransitionFraction:(double)fraction
{
  if (self->_subheaderTransitionFraction != fraction)
  {
    self->_subheaderTransitionFraction = fraction;
    [(CuratedCollectionProvider *)self _updateSubheaderColors];
  }
}

- (CGRect)subheaderFrame
{
  descriptionModel = [(CuratedCollectionProvider *)self descriptionModel];

  if (descriptionModel && (dataSource = self->_dataSource, [(CuratedCollectionProvider *)self descriptionModel], v5 = objc_claimAutoreleasedReturnValue(), [(UITableViewDiffableDataSource *)dataSource indexPathForItemIdentifier:v5], v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    tableView = [(DataSource *)self tableView];
    [tableView rectForRowAtIndexPath:v6];
    x = v8;
    y = v10;
    width = v12;
    height = v14;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)_updateKeyCommandsAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(DataSource *)self tableView];
  v6 = sub_10000FA08(tableView);

  v7 = &__NSArray0__struct;
  if (pathCopy && v6 != 5)
  {
    v8 = pathCopy;
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"KeyCommand_AddTo" value:@"localized string not found" table:0];
    v19[0] = @"row";
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 row]);
    v19[1] = @"section";
    v20[0] = v11;
    section = [v8 section];

    v13 = [NSNumber numberWithInteger:section];
    v20[1] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v15 = [UIKeyCommand commandWithTitle:v10 image:0 action:"addToUserCollection:" input:@"a" modifierFlags:0x100000 propertyList:v14];

    v18 = v15;
    v7 = [NSArray arrayWithObjects:&v18 count:1];
  }

  v16 = [v7 copy];
  keyCommands = self->_keyCommands;
  self->_keyCommands = v16;
}

- (void)addToUserCollection:(id)collection
{
  collectionCopy = collection;
  tableView = [(DataSource *)self tableView];
  cell_IndexPath = [collectionCopy cell_IndexPath];
  v6 = [tableView cellForRowAtIndexPath:cell_IndexPath];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 addToUserCollection:collectionCopy];
  }
}

- (void)startResolvingCollection
{
  [(CuratedCollectionResolver *)self->_resolver setShouldResolveAppClips:MapsFeature_IsEnabled_Maps269()];
  resolver = self->_resolver;

  [(CuratedCollectionResolver *)resolver resolveCollection];
}

- (void)_commonInitWithTableView:(id)view
{
  v30[0] = objc_opt_class();
  v30[1] = objc_opt_class();
  v4 = [NSArray arrayWithObjects:v30 count:2];
  storeSubscriptionTypes = self->_storeSubscriptionTypes;
  self->_storeSubscriptionTypes = v4;

  v6 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  [(CuratedCollectionProvider *)self setMapsSyncStore:v6];

  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    mapsSyncStore = [(CuratedCollectionProvider *)self mapsSyncStore];
    [mapsSyncStore subscribe:self];
  }

  else
  {
    mapsSyncStore = +[CollectionManager sharedManager];
    [mapsSyncStore addObserver:self];
  }

  tableView = [(DataSource *)self tableView];
  [tableView setDelegate:self];

  tableView2 = [(DataSource *)self tableView];
  v10 = objc_opt_class();
  v11 = +[CuratedCollectionDescriptionTableViewCell reuseIdentifier];
  [tableView2 registerClass:v10 forCellReuseIdentifier:v11];

  tableView3 = [(DataSource *)self tableView];
  v13 = objc_opt_class();
  v14 = +[CuratedCollectionActionTableViewCell reuseIdentifier];
  [tableView3 registerClass:v13 forCellReuseIdentifier:v14];

  tableView4 = [(DataSource *)self tableView];
  v16 = objc_opt_class();
  v17 = +[CuratedCollectionItemTableViewCell reuseIdentifier];
  [tableView4 registerClass:v16 forCellReuseIdentifier:v17];

  tableView5 = [(DataSource *)self tableView];
  v19 = objc_opt_class();
  v20 = +[TwoLinesTableViewCell identifier];
  [tableView5 registerClass:v19 forCellReuseIdentifier:v20];

  tableView6 = [(DataSource *)self tableView];
  [tableView6 registerClass:objc_opt_class() forCellReuseIdentifier:@"FooterActionsItemRowIdentifier"];

  tableView7 = [(DataSource *)self tableView];
  v23 = objc_opt_class();
  v24 = +[CuratedCollectionMediaIntegrationTableViewCell reuseIdentifier];
  [tableView7 registerClass:v23 forCellReuseIdentifier:v24];

  v25 = [UITableViewDiffableDataSource alloc];
  tableView8 = [(DataSource *)self tableView];
  v27 = sub_10009ACF0(self);
  v28 = [v25 initWithTableView:tableView8 cellProvider:v27];
  dataSource = self->_dataSource;
  self->_dataSource = v28;
}

- (void)dealloc
{
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    mapsSyncStore = [(CuratedCollectionProvider *)self mapsSyncStore];
    [mapsSyncStore unsubscribe:self];
  }

  v4.receiver = self;
  v4.super_class = CuratedCollectionProvider;
  [(CuratedCollectionProvider *)&v4 dealloc];
}

- (CuratedCollectionProvider)initWithTableView:(id)view fullyClientizedCuratedCollection:(id)collection
{
  viewCopy = view;
  collectionCopy = collection;
  v12.receiver = self;
  v12.super_class = CuratedCollectionProvider;
  v8 = [(DataSource *)&v12 initWithTableView:viewCopy updateLocation:1];
  if (v8)
  {
    v9 = [[CuratedCollectionResolver alloc] initWithFullyClientizedCuratedCollection:collectionCopy delegate:v8];
    resolver = v8->_resolver;
    v8->_resolver = v9;

    [(CuratedCollectionProvider *)v8 _commonInitWithTableView:viewCopy];
  }

  return v8;
}

- (CuratedCollectionProvider)initWithTableView:(id)view curatedCollectionIdentifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = CuratedCollectionProvider;
  v8 = [(DataSource *)&v12 initWithTableView:viewCopy updateLocation:1];
  if (v8)
  {
    v9 = [[CuratedCollectionResolver alloc] initWithCuratedCollectionIdentifier:identifierCopy delegate:v8];
    resolver = v8->_resolver;
    v8->_resolver = v9;

    [(CuratedCollectionProvider *)v8 _commonInitWithTableView:viewCopy];
  }

  return v8;
}

@end
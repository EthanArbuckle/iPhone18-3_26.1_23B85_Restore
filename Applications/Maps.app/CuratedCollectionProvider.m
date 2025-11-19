@interface CuratedCollectionProvider
- (CGRect)subheaderFrame;
- (CuratedCollectionProvider)initWithTableView:(id)a3 curatedCollectionIdentifier:(id)a4;
- (CuratedCollectionProvider)initWithTableView:(id)a3 fullyClientizedCuratedCollection:(id)a4;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 itemIdentifier:(id)a5;
- (void)_commonInitWithTableView:(id)a3;
- (void)_openURL:(id)a3;
- (void)_punchoutToViewModel:(id)a3;
- (void)_reconfigureSnapshot:(id)a3 updatedModels:(id)a4;
- (void)_updateKeyCommandsAtIndexPath:(id)a3;
- (void)_updateLibraryStatusForModels;
- (void)_updateSnapshotWithCollection:(id)a3 resolverInfo:(id)a4;
- (void)_updateSubheaderColors;
- (void)addToUserCollection:(id)a3;
- (void)cellExpansionOccured:(id)a3;
- (void)cellPublisherLogoTapped:(id)a3;
- (void)collectionManager:(id)a3 contentDidChange:(id)a4;
- (void)dealloc;
- (void)didFailToResolveCollectionWithError:(id)a3 withFetchedCollection:(id)a4;
- (void)didResolveCollection:(id)a3 resolverInfo:(id)a4;
- (void)didSelectAddOrRemoveFromLibrary:(BOOL)a3 forModel:(id)a4;
- (void)didSelectAddToUserCollection:(id)a3 forMapItem:(id)a4 sourceView:(id)a5 onSaveCompletion:(id)a6;
- (void)mediaIntegrationCell:(id)a3 didSelectChildLink:(id)a4;
- (void)mediaIntegrationCellDidDisplayChildLinks:(id)a3;
- (void)openAppClip:(id)a3;
- (void)refresh;
- (void)setSubheaderTransitionFraction:(double)a3;
- (void)startResolvingCollection;
- (void)storeDidChange:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)willPunchOutToPublisherWebpageForPlaceCollectionItem:(id)a3;
@end

@implementation CuratedCollectionProvider

- (void)storeDidChange:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E129B0;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_punchoutToViewModel:(id)a3
{
  v4 = a3;
  v5 = [(CuratedCollectionProvider *)self analyticsController];
  v6 = [v4 targetAppIdentifier];
  [v5 logPunchOutUsingAppWithIdentifier:v6];

  v7 = [(CuratedCollectionProvider *)self analyticsController];
  v8 = [v4 url];
  [v7 logPunchOutToURL:v8];

  v9 = [v4 url];

  [(CuratedCollectionProvider *)self _openURL:v9];
}

- (void)mediaIntegrationCell:(id)a3 didSelectChildLink:(id)a4
{
  v7 = a4;
  v5 = [(CuratedCollectionProvider *)self analyticsController];
  v6 = [v7 targetAppIdentifier];
  [v5 logTapMediaAppWithIdentifier:v6];

  [(CuratedCollectionProvider *)self _punchoutToViewModel:v7];
}

- (void)mediaIntegrationCellDidDisplayChildLinks:(id)a3
{
  v9 = a3;
  v4 = [(DataSource *)self tableView];
  v5 = [v4 indexPathForCell:v9];

  if (v5)
  {
    v6 = [(CuratedCollectionProvider *)self analyticsController];
    v7 = [v9 viewModel];
    [v6 logTapMediaIntegrationWithType:objc_msgSend(v7 verticalIndex:{"mediaType"), objc_msgSend(v5, "row")}];

    v8 = [(CuratedCollectionProvider *)self analyticsController];
    [v8 logShowMediaAppMenu];
  }
}

- (void)_reconfigureSnapshot:(id)a3 updatedModels:(id)a4
{
  v6 = a3;
  [v6 reconfigureItemsWithIdentifiers:a4];
  self->_isApplyingSnapshot = 1;
  dataSource = self->_dataSource;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100E12CB0;
  v8[3] = &unk_101661B18;
  v8[4] = self;
  [(UITableViewDiffableDataSource *)dataSource applySnapshotUsingReloadData:v6 completion:v8];
}

- (void)collectionManager:(id)a3 contentDidChange:(id)a4
{
  v5 = a3;
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    [(CuratedCollectionProvider *)self _updateLibraryStatusForModels];
  }

  else
  {
    v6 = [(CuratedCollectionProvider *)self dataSource];
    v7 = [v6 snapshot];

    if ([v7 indexOfSectionIdentifier:@"CollectionItemSection"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = sub_100E12F44();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [(CuratedCollectionProvider *)self curatedCollection];
        v10 = [(CuratedCollectionProvider *)self curatedCollection];
        if ([v10 isSuppressed])
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        v12 = v11;
        v13 = [(CuratedCollectionProvider *)self curatedCollection];
        if ([v13 isBlocked])
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }

        v15 = v14;
        v16 = [v7 sectionIdentifiers];
        v17 = [v7 itemIdentifiers];
        *buf = 138413314;
        v21 = v9;
        v22 = 2112;
        v23 = v12;
        v24 = 2112;
        v25 = v15;
        v26 = 2112;
        v27 = v16;
        v28 = 2112;
        v29 = v17;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to find collection items section during contentDidChange.                         Collection: %@. isSuppressed/isBlocked: %@/%@. Sections: %@. Identifiers: %@", buf, 0x34u);
      }
    }

    else
    {
      v8 = [v7 itemIdentifiersInSectionWithIdentifier:@"CollectionItemSection"];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100E12F98;
      v18[3] = &unk_101655960;
      v19 = v5;
      [v8 enumerateObjectsUsingBlock:v18];
      [(CuratedCollectionProvider *)self _reconfigureSnapshot:v7 updatedModels:v8];
    }
  }
}

- (void)_updateLibraryStatusForModels
{
  v3 = [(CuratedCollectionProvider *)self dataSource];
  v4 = [v3 snapshot];

  if ([v4 indexOfSectionIdentifier:@"CollectionItemSection"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = dispatch_group_create();
    v6 = [v4 itemIdentifiersInSectionWithIdentifier:@"CollectionItemSection"];
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
    v10 = v4;
    v11 = v6;
    v8 = v6;
    dispatch_group_notify(v7, &_dispatch_main_q, v9);
  }
}

- (void)refresh
{
  v3 = +[UIColor separatorColor];
  v4 = [(DataSource *)self tableView];
  [v4 setSeparatorColor:v3];

  resolver = self->_resolver;

  [(CuratedCollectionResolver *)resolver resolveCollection];
}

- (void)cellExpansionOccured:(id)a3
{
  v4 = [a3 expanded];
  v5 = [(CuratedCollectionProvider *)self analyticsController];
  v6 = v5;
  if (v4)
  {
    [v5 logTapShowMoreDescription];
  }

  else
  {
    [v5 logTapShowLessDescription];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100E13448;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)cellPublisherLogoTapped:(id)a3
{
  v6 = [(DataSource *)self delegate];
  v4 = [(CuratedCollectionProvider *)self curatedCollection];
  v5 = [v4 publisher];
  [v6 showPublisherView:v5];
}

- (void)openAppClip:(id)a3
{
  v4 = a3;
  v5 = [(DataSource *)self delegate];
  [v5 dataSource:self openAppClip:v4];
}

- (void)willPunchOutToPublisherWebpageForPlaceCollectionItem:(id)a3
{
  v4 = a3;
  v5 = [(DataSource *)self delegate];
  [v5 dataSource:self willPunchOuToPublisherWebpageForPlaceCollectionItem:v4];
}

- (void)didSelectAddToUserCollection:(id)a3 forMapItem:(id)a4 sourceView:(id)a5 onSaveCompletion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(DataSource *)self delegate];
  [v14 dataSource:self addToUserCollection:v13 forMapItem:v12 sourceView:v11 onSaveCompletion:v10];
}

- (void)didSelectAddOrRemoveFromLibrary:(BOOL)a3 forModel:(id)a4
{
  v4 = a3;
  v6 = a4;
  v8 = [(DataSource *)self delegate];
  v7 = [v6 libraryOperationsCoordinator];

  if (v4)
  {
    [v8 dataSource:self addPlaceToLibraryUsingCoordinator:v7];
  }

  else
  {
    [v8 dataSource:self removePlaceFromLibraryUsingCoordinator:v7];
  }
}

- (void)_openURL:(id)a3
{
  v3 = a3;
  v4 = +[UIApplication sharedApplication];
  [v4 _maps_openURL:v3 options:0 completionHandler:0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [(CuratedCollectionProvider *)self dataSource];
  v8 = [v7 snapshot];

  v9 = [v8 sectionIdentifiers];
  v10 = [v9 objectAtIndex:{objc_msgSend(v6, "section")}];

  if (![v10 isEqualToString:@"CollectionItemSection"])
  {
    if ([v10 isEqualToString:@"ActionsItemSection"])
    {
      [v19 deselectRowAtIndexPath:v6 animated:1];
      v15 = [(CuratedCollectionProvider *)self footerActionItems];
      v12 = [v15 objectAtIndex:{objc_msgSend(v6, "row")}];

      if ([v12 type])
      {
        goto LABEL_13;
      }

      v13 = [v19 cellForRowAtIndexPath:v6];
      v16 = [(DataSource *)self delegate];
      [v16 presentRAPWithSourceView:v13];
    }

    else
    {
      if (![v10 isEqualToString:@"CollectionPublisherItemSection"])
      {
        goto LABEL_14;
      }

      [v19 deselectRowAtIndexPath:v6 animated:1];
      v12 = [(DataSource *)self delegate];
      v13 = [(CuratedCollectionProvider *)self curatedCollection];
      v16 = [v13 publisher];
      [v12 showPublisherView:v16];
    }

    goto LABEL_12;
  }

  v11 = [(CuratedCollectionProvider *)self models];
  v12 = [v11 objectAtIndex:{objc_msgSend(v6, "row")}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 collectionItem];
    v14 = [(DataSource *)self delegate];
    [v14 dataSource:self itemTapped:v13];

LABEL_12:
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v19 deselectRowAtIndexPath:v6 animated:1];
    v17 = [(CuratedCollectionProvider *)self analyticsController];
    v18 = [(CuratedCollectionProvider *)self mediaIntegrationModel];
    [v17 logTapMediaIntegrationWithType:objc_msgSend(v18 verticalIndex:{"mediaType"), objc_msgSend(v6, "row")}];

    v13 = [(CuratedCollectionProvider *)self mediaIntegrationModel];
    [(CuratedCollectionProvider *)self _punchoutToViewModel:v13];
    goto LABEL_12;
  }

LABEL_13:

LABEL_14:
}

- (void)tableView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v17 = a3;
  v7 = [a4 nextFocusedItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v17 indexPathForCell:v7];
    if (v8)
    {
      v9 = [(CuratedCollectionProvider *)self dataSource];
      v10 = [v9 snapshot];

      v11 = [v10 sectionIdentifiers];
      v12 = [v11 objectAtIndex:{objc_msgSend(v8, "section")}];

      if ([v12 isEqualToString:@"CollectionItemSection"])
      {
        v13 = [(CuratedCollectionProvider *)self models];
        v14 = [v13 objectAtIndex:{objc_msgSend(v8, "row")}];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 collectionItem];
          v16 = [(DataSource *)self delegate];
          [v16 dataSource:self itemFocused:v15];

          [(CuratedCollectionProvider *)self _updateKeyCommandsAtIndexPath:v8];
          goto LABEL_10;
        }
      }
    }
  }

  [(CuratedCollectionProvider *)self _updateKeyCommandsAtIndexPath:0];
  v8 = [(DataSource *)self delegate];
  [v8 dataSource:self itemFocused:0];
LABEL_10:
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v18 = a4;
  v7 = a5;
  v8 = [(CuratedCollectionProvider *)self dataSource];
  v9 = [v8 snapshot];

  v10 = [v9 sectionIdentifiers];
  v11 = [v7 section];

  v12 = [v10 objectAtIndex:v11];

  if ([v12 isEqualToString:@"CollectionActionSection"])
  {
    v13 = v18;
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

    v16 = v18;
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

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CuratedCollectionProvider *)self dataSource];
  v7 = [v6 snapshot];

  v8 = [v7 sectionIdentifiers];
  v9 = [v5 section];

  v10 = [v8 objectAtIndex:v9];

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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4 itemIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CuratedCollectionProvider *)self dataSource];
  v12 = [v11 snapshot];

  v13 = [v12 sectionIdentifiers];
  v14 = [v13 objectAtIndex:{objc_msgSend(v9, "section")}];

  if ([v14 isEqualToString:@"CollectionActionSection"])
  {
    v15 = +[CuratedCollectionActionTableViewCell reuseIdentifier];
    v16 = [v8 dequeueReusableCellWithIdentifier:v15 forIndexPath:v9];

    [v16 configureWithModel:v10];
    [(CuratedCollectionProvider *)self _updateActionColorsInCell:v16 animated:0];
    goto LABEL_21;
  }

  if ([v14 isEqualToString:@"CollectionDescriptionSection"])
  {
    v17 = +[CuratedCollectionDescriptionTableViewCell reuseIdentifier];
    v16 = [v8 dequeueReusableCellWithIdentifier:v17 forIndexPath:v9];

    [v16 setDelegate:self];
    [v16 bounds];
    [v16 setSeparatorInset:{0.0, CGRectGetWidth(v45), 0.0, 0.0}];
    [v16 configureWithModel:v10];
    [(CuratedCollectionProvider *)self _updateDescriptionColorsInCell:v16 animated:0];
    goto LABEL_21;
  }

  if ([v14 isEqualToString:@"CollectionItemSection"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v10;
      v19 = [(DataSource *)self currentLocation];
      [v18 setCurrentLocation:v19];

      v20 = +[CuratedCollectionItemTableViewCell reuseIdentifier];
      v16 = [v8 dequeueReusableCellWithIdentifier:v20 forIndexPath:v9];

      [v16 setDelegate:self];
      [v16 configureWithModel:v18];
      v21 = [v9 row];
      v22 = [(CuratedCollectionProvider *)self resolverInfo];
      if (v21 == [v22 mediaIntegrationCollectionItemIndex])
      {
        v23 = [(CuratedCollectionProvider *)self resolverInfo];
        v24 = [v23 mediaIntegrationPosition];

        if (v24 == 2)
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
      v16 = [v8 dequeueReusableCellWithIdentifier:v26 forIndexPath:v9];

      [v16 setViewModel:v10];
      v27 = [(CuratedCollectionProvider *)self resolverInfo];
      [v16 setPosition:{objc_msgSend(v27, "mediaIntegrationPosition")}];

      [v16 setDelegate:self];
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if ([v14 isEqualToString:@"CollectionPublisherItemSection"])
  {
    v18 = v10;
    v25 = +[TwoLinesTableViewCell identifier];
    v16 = [v8 dequeueReusableCellWithIdentifier:v25];

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

  v43 = v10;
  v16 = [v8 dequeueReusableCellWithIdentifier:@"FooterActionsItemRowIdentifier" forIndexPath:v9];
  v28 = +[UIColor clearColor];
  [v16 setBackgroundColor:v28];

  v29 = +[UIListContentConfiguration cellConfiguration];
  v30 = [v43 title];
  v42 = v29;
  [v29 setText:v30];

  v31 = +[UIColor linkColor];
  v32 = [v29 textProperties];
  [v32 setColor:v31];

  v41 = [v43 glyph];
  v33 = [UIImage systemImageNamed:v41];
  v34 = [v33 imageWithRenderingMode:2];
  [v42 setImage:v34];

  v35 = +[UIColor linkColor];
  v36 = [v42 imageProperties];
  [v36 setTintColor:v35];

  [v16 setContentConfiguration:v42];
  v37 = [v9 row];
  v38 = [(CuratedCollectionProvider *)self footerActionItems];
  v39 = [v38 count] - 1;

  if (v37 == v39)
  {
    [v16 bounds];
    [v16 setSeparatorInset:{0.0, CGRectGetWidth(v47), 0.0, 0.0}];
  }

LABEL_21:

  return v16;
}

- (void)didFailToResolveCollectionWithError:(id)a3 withFetchedCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100E12F44();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v17 = 138412290;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to resolve collection with error %@", &v17, 0xCu);
  }

  v9 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v10 = [(DataSource *)self tableView];
  [v10 setTableFooterView:v9];

  v11 = [(DataSource *)self tableView];
  [v11 setScrollEnabled:0];

  v12 = +[UIColor clearColor];
  v13 = [(DataSource *)self tableView];
  [v13 setSeparatorColor:v12];

  v14 = [(DataSource *)self delegate];
  v15 = v7;
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

  [v14 dataSource:self didFailWithErrorState:v16];
}

- (void)_updateSnapshotWithCollection:(id)a3 resolverInfo:(id)a4
{
  v103 = a3;
  v6 = a4;
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
  [(CuratedCollectionProvider *)self setCuratedCollection:v103];
  [(CuratedCollectionProvider *)self setResolverInfo:v6];
  v13 = [v6 collectionItems];
  [(CuratedCollectionProvider *)self setCollectionItems:v13];

  if ([v103 isSuppressed] & 1) != 0 || (objc_msgSend(v103, "isBlocked"))
  {
    v14 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v15 = [(DataSource *)self tableView];
    [v15 setTableFooterView:v14];

    v16 = [(DataSource *)self tableView];
    [v16 setScrollEnabled:0];

    v17 = +[UIColor clearColor];
    v18 = [(DataSource *)self tableView];
    [v18 setSeparatorColor:v17];
  }

  else
  {
    v95 = v8 - 1;
    v96 = v8;
    v97 = v6;
    v19 = [CuratedCollectionActionCellModel alloc];
    v20 = [(CuratedCollectionProvider *)self curatedCollection];
    v21 = [(CuratedCollectionActionCellModel *)v19 initWithCollection:v20];
    [(CuratedCollectionProvider *)self setActionModel:v21];

    v22 = [(DataSource *)self delegate];
    v23 = [(CuratedCollectionProvider *)self actionModel];
    [v23 setActionDelegate:v22];

    v118 = @"CollectionActionSection";
    v24 = [NSArray arrayWithObjects:&v118 count:1];
    [v12 appendSectionsWithIdentifiers:v24];

    v25 = [(CuratedCollectionProvider *)self actionModel];
    v117 = v25;
    v26 = [NSArray arrayWithObjects:&v117 count:1];
    [v12 appendItemsWithIdentifiers:v26];

    v27 = [CuratedCollectionDescriptionCellModel alloc];
    v28 = [(CuratedCollectionProvider *)self curatedCollection];
    v29 = [(CuratedCollectionRichTextParser *)self->_parser collectionDescription];
    v30 = [(CuratedCollectionDescriptionCellModel *)v27 initWithCollection:v28 collectionDescription:v29];
    [(CuratedCollectionProvider *)self setDescriptionModel:v30];

    v116 = @"CollectionDescriptionSection";
    v31 = [NSArray arrayWithObjects:&v116 count:1];
    [v12 appendSectionsWithIdentifiers:v31];

    v32 = [(CuratedCollectionProvider *)self descriptionModel];
    v115 = v32;
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
    v101 = self;
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
          v37 = [v35 placeCollectionItem];
          v38 = [v37 itemIdentifier];
          v39 = [v36 initWithGEOMapItemIdentifier:v38];

          v40 = [(CuratedCollectionRichTextParser *)self->_parser collectionItemDescriptions];
          v41 = [v40 objectForKeyedSubscript:v39];

          v42 = [v35 mapItem];
          v43 = [v100 firstUserGuideContainingMapItem:v42 requiresOrdering:0];
          v44 = v43 != 0;

          v45 = [(CuratedCollectionResolver *)self->_resolver appClips];
          v46 = [v35 placeCollectionItem];
          v47 = [v46 itemIdentifier];
          v48 = [v45 objectForKeyedSubscript:v47];

          v49 = [_TtC4Maps29LibraryDataOperationsProvider alloc];
          v50 = [(CuratedCollectionProvider *)self mapsSyncStore];
          v51 = [(LibraryDataOperationsProvider *)v49 initWithMapsSyncStore:v50];

          v52 = [_TtC4Maps39CuratedCollectionItemLibraryCoordinator alloc];
          v53 = [v35 mapItem];
          v54 = [(CuratedCollectionItemLibraryCoordinator *)v52 initWithInitialMapItem:v53 dataOperationsProvider:v51];

          v55 = [CuratedCollectionItemCellModel alloc];
          v56 = [v103 publisherAttribution];
          v57 = [(CuratedCollectionItemCellModel *)v55 initWithMKPlaceCollectionMapItem:v35 usingAttribution:v56 itemDescription:v41 itemInUserCollection:v44 libraryOperationsCoordinator:v54 appClip:v48];
          [v102 addObject:v57];

          self = v101;
        }

        v104 = [obj countByEnumeratingWithState:&v106 objects:v114 count:16];
      }

      while (v104);
    }

    v6 = v97;
    v58 = [v97 mediaIntegration];
    v12 = v94;
    v11 = v95;
    if (v58)
    {
      if ([v97 mediaIntegrationCollectionItemIndex] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v59 = [CuratedCollectionMediaIntegrationViewModel alloc];
        v60 = [v97 thirdPartyLinks];
        v61 = [(CuratedCollectionMediaIntegrationViewModel *)v59 initWithAppleMediaServicesResult:v58 thirdPartyLinks:v60];
        [(CuratedCollectionProvider *)self setMediaIntegrationModel:v61];

        v62 = [(CuratedCollectionProvider *)self mediaIntegrationModel];

        if (v62)
        {
          v63 = [v97 mediaIntegrationPosition];
          if (!v63 || v63 == 2)
          {
            v64 = [v97 mediaIntegrationCollectionItemIndex] + 1;
          }

          else if (v63 == 1)
          {
            v64 = [v97 mediaIntegrationCollectionItemIndex];
          }

          else
          {
            v64 = 0;
          }

          v65 = (v64 & ~(v64 >> 63));
          if (v65 >= [v102 count])
          {
            v65 = [v102 count];
          }

          v66 = [(CuratedCollectionProvider *)self mediaIntegrationModel];
          [v102 insertObject:v66 atIndex:v65];
        }
      }
    }

    v67 = [v102 copy];
    [(CuratedCollectionProvider *)self setModels:v67];

    v113 = @"CollectionItemSection";
    v68 = [NSArray arrayWithObjects:&v113 count:1];
    [v94 appendSectionsWithIdentifiers:v68];

    v69 = [(CuratedCollectionProvider *)self models];
    [v94 appendItemsWithIdentifiers:v69];

    v70 = [NSMutableArray arrayWithCapacity:1];
    v71 = +[UIDevice currentDevice];
    v72 = [v71 userInterfaceIdiom] != 5;

    v73 = [v103 publisher];
    v74 = [TwoLinesContentViewModelComposer cellModelForPublisher:v73 showDisclosureIndicator:v72];
    [v70 addObject:v74];

    v75 = [v70 copy];
    [(CuratedCollectionProvider *)self setPublisherModel:v75];

    v112 = @"CollectionPublisherItemSection";
    v76 = [NSArray arrayWithObjects:&v112 count:1];
    [v94 appendSectionsWithIdentifiers:v76];

    v77 = [(CuratedCollectionProvider *)self publisherModel];
    [v94 appendItemsWithIdentifiers:v77];

    v78 = [CuratedCollectionFooterActionItem alloc];
    v79 = +[NSBundle mainBundle];
    v80 = [v79 localizedStringForKey:@"Report an Issue" value:@"localized string not found" table:0];
    v81 = [(CuratedCollectionFooterActionItem *)v78 initWithType:0 title:v80 glyph:@"exclamationmark.bubble.fill"];

    self = v101;
    [(CuratedCollectionProvider *)v101 setFooterActionItems:&__NSArray0__struct];
    if (_MKRAPIsAvailable() && (sub_1007413D0() & 1) == 0)
    {
      v82 = [(CuratedCollectionProvider *)v101 footerActionItems];
      v83 = [v82 arrayByAddingObject:v81];
      [(CuratedCollectionProvider *)v101 setFooterActionItems:v83];
    }

    v111 = @"ActionsItemSection";
    v84 = [NSArray arrayWithObjects:&v111 count:1];
    [v94 appendSectionsWithIdentifiers:v84];

    v85 = [(CuratedCollectionProvider *)v101 footerActionItems];
    [v94 appendItemsWithIdentifiers:v85];

    v86 = [(DataSource *)v101 tableView];
    [v86 setScrollEnabled:1];

    v87 = +[UIColor separatorColor];
    v88 = [(DataSource *)v101 tableView];
    [v88 setSeparatorColor:v87];

    v89 = [(DataSource *)v101 tableView];
    [v89 setTableFooterView:0];

    v8 = v96;
    v17 = v100;
    v18 = v102;
  }

  v90 = [(CuratedCollectionProvider *)self dataSource];
  v105[0] = _NSConcreteStackBlock;
  v105[1] = 3221225472;
  v105[2] = sub_100E1520C;
  v105[3] = &unk_101661B18;
  v105[4] = self;
  [v90 applySnapshot:v12 animatingDifferences:0 completion:v105];

  v91 = [(DataSource *)self delegate];
  [v91 dataSourceUpdated:self];

  v92 = sub_100E12F44();
  v93 = v92;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v92))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v93, OS_SIGNPOST_INTERVAL_END, v8, "ResolvedCollectionWithItems", "", buf, 2u);
  }
}

- (void)didResolveCollection:(id)a3 resolverInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [CuratedCollectionRichTextParser alloc];
  v9 = [v7 collectionItems];
  v10 = [(DataSource *)self tableView];
  v11 = [v10 traitCollection];
  v12 = [(CuratedCollectionRichTextParser *)v8 initWithCollection:v6 collectionItems:v9 traitCollection:v11];
  parser = self->_parser;
  self->_parser = v12;

  v14 = self->_parser;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100E15468;
  v17[3] = &unk_10165F3F0;
  objc_copyWeak(&v20, &location);
  v15 = v6;
  v18 = v15;
  v16 = v7;
  v19 = v16;
  [(CuratedCollectionRichTextParser *)v14 parseRichTextDescriptionsWithCompletion:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)_updateSubheaderColors
{
  v3 = [(CuratedCollectionProvider *)self descriptionModel];

  if (v3)
  {
    dataSource = self->_dataSource;
    v5 = [(CuratedCollectionProvider *)self descriptionModel];
    v6 = [(UITableViewDiffableDataSource *)dataSource indexPathForItemIdentifier:v5];

    if (v6)
    {
      v7 = [(DataSource *)self tableView];
      v8 = [v7 cellForRowAtIndexPath:v6];

      if (v8)
      {
        [(CuratedCollectionProvider *)self _updateDescriptionColorsInCell:v8 animated:1];
      }
    }
  }

  v9 = [(CuratedCollectionProvider *)self actionModel];

  if (v9)
  {
    v10 = self->_dataSource;
    v11 = [(CuratedCollectionProvider *)self actionModel];
    v15 = [(UITableViewDiffableDataSource *)v10 indexPathForItemIdentifier:v11];

    v12 = v15;
    if (v15)
    {
      v13 = [(DataSource *)self tableView];
      v14 = [v13 cellForRowAtIndexPath:v15];

      if (v14)
      {
        [(CuratedCollectionProvider *)self _updateActionColorsInCell:v14 animated:1];
      }

      v12 = v15;
    }
  }
}

- (void)setSubheaderTransitionFraction:(double)a3
{
  if (self->_subheaderTransitionFraction != a3)
  {
    self->_subheaderTransitionFraction = a3;
    [(CuratedCollectionProvider *)self _updateSubheaderColors];
  }
}

- (CGRect)subheaderFrame
{
  v3 = [(CuratedCollectionProvider *)self descriptionModel];

  if (v3 && (dataSource = self->_dataSource, [(CuratedCollectionProvider *)self descriptionModel], v5 = objc_claimAutoreleasedReturnValue(), [(UITableViewDiffableDataSource *)dataSource indexPathForItemIdentifier:v5], v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    v7 = [(DataSource *)self tableView];
    [v7 rectForRowAtIndexPath:v6];
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

- (void)_updateKeyCommandsAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(DataSource *)self tableView];
  v6 = sub_10000FA08(v5);

  v7 = &__NSArray0__struct;
  if (v4 && v6 != 5)
  {
    v8 = v4;
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"KeyCommand_AddTo" value:@"localized string not found" table:0];
    v19[0] = @"row";
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 row]);
    v19[1] = @"section";
    v20[0] = v11;
    v12 = [v8 section];

    v13 = [NSNumber numberWithInteger:v12];
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

- (void)addToUserCollection:(id)a3
{
  v7 = a3;
  v4 = [(DataSource *)self tableView];
  v5 = [v7 cell_IndexPath];
  v6 = [v4 cellForRowAtIndexPath:v5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 addToUserCollection:v7];
  }
}

- (void)startResolvingCollection
{
  [(CuratedCollectionResolver *)self->_resolver setShouldResolveAppClips:MapsFeature_IsEnabled_Maps269()];
  resolver = self->_resolver;

  [(CuratedCollectionResolver *)resolver resolveCollection];
}

- (void)_commonInitWithTableView:(id)a3
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
    v7 = [(CuratedCollectionProvider *)self mapsSyncStore];
    [v7 subscribe:self];
  }

  else
  {
    v7 = +[CollectionManager sharedManager];
    [v7 addObserver:self];
  }

  v8 = [(DataSource *)self tableView];
  [v8 setDelegate:self];

  v9 = [(DataSource *)self tableView];
  v10 = objc_opt_class();
  v11 = +[CuratedCollectionDescriptionTableViewCell reuseIdentifier];
  [v9 registerClass:v10 forCellReuseIdentifier:v11];

  v12 = [(DataSource *)self tableView];
  v13 = objc_opt_class();
  v14 = +[CuratedCollectionActionTableViewCell reuseIdentifier];
  [v12 registerClass:v13 forCellReuseIdentifier:v14];

  v15 = [(DataSource *)self tableView];
  v16 = objc_opt_class();
  v17 = +[CuratedCollectionItemTableViewCell reuseIdentifier];
  [v15 registerClass:v16 forCellReuseIdentifier:v17];

  v18 = [(DataSource *)self tableView];
  v19 = objc_opt_class();
  v20 = +[TwoLinesTableViewCell identifier];
  [v18 registerClass:v19 forCellReuseIdentifier:v20];

  v21 = [(DataSource *)self tableView];
  [v21 registerClass:objc_opt_class() forCellReuseIdentifier:@"FooterActionsItemRowIdentifier"];

  v22 = [(DataSource *)self tableView];
  v23 = objc_opt_class();
  v24 = +[CuratedCollectionMediaIntegrationTableViewCell reuseIdentifier];
  [v22 registerClass:v23 forCellReuseIdentifier:v24];

  v25 = [UITableViewDiffableDataSource alloc];
  v26 = [(DataSource *)self tableView];
  v27 = sub_10009ACF0(self);
  v28 = [v25 initWithTableView:v26 cellProvider:v27];
  dataSource = self->_dataSource;
  self->_dataSource = v28;
}

- (void)dealloc
{
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v3 = [(CuratedCollectionProvider *)self mapsSyncStore];
    [v3 unsubscribe:self];
  }

  v4.receiver = self;
  v4.super_class = CuratedCollectionProvider;
  [(CuratedCollectionProvider *)&v4 dealloc];
}

- (CuratedCollectionProvider)initWithTableView:(id)a3 fullyClientizedCuratedCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CuratedCollectionProvider;
  v8 = [(DataSource *)&v12 initWithTableView:v6 updateLocation:1];
  if (v8)
  {
    v9 = [[CuratedCollectionResolver alloc] initWithFullyClientizedCuratedCollection:v7 delegate:v8];
    resolver = v8->_resolver;
    v8->_resolver = v9;

    [(CuratedCollectionProvider *)v8 _commonInitWithTableView:v6];
  }

  return v8;
}

- (CuratedCollectionProvider)initWithTableView:(id)a3 curatedCollectionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CuratedCollectionProvider;
  v8 = [(DataSource *)&v12 initWithTableView:v6 updateLocation:1];
  if (v8)
  {
    v9 = [[CuratedCollectionResolver alloc] initWithCuratedCollectionIdentifier:v7 delegate:v8];
    resolver = v8->_resolver;
    v8->_resolver = v9;

    [(CuratedCollectionProvider *)v8 _commonInitWithTableView:v6];
  }

  return v8;
}

@end
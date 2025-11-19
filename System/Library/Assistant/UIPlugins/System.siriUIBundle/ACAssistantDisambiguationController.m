@interface ACAssistantDisambiguationController
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (Class)footerViewClass;
- (double)desiredHeightForFooterView;
- (double)desiredHeightForWidth:(double)a3;
- (id)_picker;
- (id)_pickerController;
- (id)alternativeAceCommandsToPerformIfNotExposingViews;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (void)_configureContent;
- (void)_showPicker:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)configureReusableFooterView:(id)a3;
- (void)loadView;
- (void)pickerViewController:(id)a3 didDismissPicker:(id)a4;
- (void)pickerViewController:(id)a3 didRequestKeyboardWithVisibility:(BOOL)a4;
- (void)pickerViewController:(id)a3 didSelectObject:(id)a4 fromPicker:(id)a5;
- (void)pickerViewController:(id)a3 shouldPresentPicker:(id)a4 completion:(id)a5;
- (void)pickerViewController:(id)a3 willDismissPicker:(id)a4;
- (void)pickerViewController:(id)a3 willPresentPicker:(id)a4;
- (void)setAceObject:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setManageBackgroundColor:(BOOL)a3;
- (void)siriDidDeactivate;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ACAssistantDisambiguationController

- (void)setDelegate:(id)a3
{
  v4.receiver = self;
  v4.super_class = ACAssistantDisambiguationController;
  [(ACAssistantDisambiguationController *)&v4 setDelegate:a3];
  [(ACAssistantDisambiguationController *)self _configureContent];
}

- (void)setAceObject:(id)a3
{
  v4.receiver = self;
  v4.super_class = ACAssistantDisambiguationController;
  [(ACAssistantDisambiguationController *)&v4 setAceObject:a3];
  [(ACAssistantDisambiguationController *)self _configureContent];
}

- (void)_configureContent
{
  if ([(NSMutableArray *)self->_disambiguationItems count]|| [(NSMutableArray *)self->_disambiguationItemsList count])
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v48 = "[ACAssistantDisambiguationController _configureContent]";
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s Disambiguation content has already been configured, ignoring call to configureContent", buf, 0xCu);
    }
  }

  else
  {
    v4 = [(ACAssistantDisambiguationController *)self aceObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_isGroup = 0;
      objc_storeStrong(&self->_disambiguationList, v4);
      v5 = [(ACAssistantDisambiguationController *)self delegate];
      v6 = [(SAUIDisambiguationList *)self->_disambiguationList items];
      v7 = [v5 siriViewController:self filteredDisambiguationListItems:v6];
      filteredItems = self->_filteredItems;
      self->_filteredItems = v7;

      v9 = +[NSMutableArray array];
      disambiguationItems = self->_disambiguationItems;
      self->_disambiguationItems = v9;

      v11 = [(ACAssistantDisambiguationController *)self delegate];
      v12 = [v11 siriViewController:self listItemToPickInAutodisambiguationForListItems:self->_filteredItems];
      preferredListItem = self->_preferredListItem;
      self->_preferredListItem = v12;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_isGroup = 1;
        v41 = v4;
        objc_storeStrong(&self->_disambiguationGroup, v4);
        v14 = +[NSMutableArray array];
        disambiguationItemsList = self->_disambiguationItemsList;
        self->_disambiguationItemsList = v14;

        v16 = +[NSMutableArray array];
        filteredItemsList = self->_filteredItemsList;
        self->_filteredItemsList = v16;

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        obj = [(SAUIDisambiguationGroup *)self->_disambiguationGroup disambiguationLists];
        v18 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v44;
          do
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v44 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v43 + 1) + 8 * i);
              v23 = [(ACAssistantDisambiguationController *)self delegate];
              v24 = [v22 items];
              v25 = [v23 siriViewController:self filteredDisambiguationListItems:v24];

              v26 = [v22 groupTitle];
              v27 = [v26 length];

              if (!v27)
              {
                v28 = [(ACAssistantDisambiguationController *)self delegate];
                v29 = [v28 siriViewController:self listItemToPickInAutodisambiguationForListItems:v25];
                v30 = self->_preferredListItem;
                self->_preferredListItem = v29;
              }

              [(NSMutableArray *)self->_filteredItemsList addObject:v25];
              v31 = self->_disambiguationItemsList;
              v32 = +[NSMutableArray array];
              [(NSMutableArray *)v31 addObject:v32];
            }

            v19 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v19);
        }

        v4 = v41;
      }
    }

    if (!self->_preferredListItem)
    {
      disambiguationList = self->_disambiguationList;
      if (!disambiguationList)
      {
        disambiguationList = self->_disambiguationGroup;
      }

      v37 = [(SAUIDisambiguationList *)disambiguationList af_assistedSelectionItem];
      v38 = self->_preferredListItem;
      self->_preferredListItem = v37;

      if (self->_preferredListItem)
      {
        v39 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          v40 = self->_preferredListItem;
          *buf = 136315394;
          v48 = "[ACAssistantDisambiguationController _configureContent]";
          v49 = 2112;
          v50 = v40;
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%s Using assisted disambiguation with list item %@", buf, 0x16u);
        }
      }
    }

    v33 = +[AFUIDisambiguationAnalyticsManager sharedManager];
    v34 = v33;
    disambiguationGroup = self->_disambiguationList;
    if (!disambiguationGroup)
    {
      disambiguationGroup = self->_disambiguationGroup;
    }

    [v33 setDisambiguationAssistance:disambiguationGroup];
  }
}

- (void)loadView
{
  v69.receiver = self;
  v69.super_class = ACAssistantDisambiguationController;
  [(ACAssistantDisambiguationController *)&v69 loadView];
  [(ACAssistantDisambiguationController *)self setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  v3 = [(ACAssistantDisambiguationController *)self collectionView];
  v4 = [(ACAssistantDisambiguationController *)self cellClass];
  v5 = [(objc_class *)[(ACAssistantDisambiguationController *)self cellClass] reuseIdentifier];
  [v3 registerClass:v4 forCellWithReuseIdentifier:v5];

  v6 = objc_opt_class();
  v7 = [objc_opt_class() reuseIdentifier];
  v57 = v3;
  [v3 registerClass:v6 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v7];

  v56 = +[AFUIDisambiguationAnalyticsManager sharedManager];
  if (self->_isGroup)
  {
    if (![(NSMutableArray *)self->_filteredItemsList count])
    {
      goto LABEL_24;
    }

    v8 = 0;
    while (1)
    {
      v9 = [(NSMutableArray *)self->_filteredItemsList objectAtIndex:v8];
      v10 = [(SAUIDisambiguationGroup *)self->_disambiguationGroup disambiguationLists];
      v11 = [v10 objectAtIndex:v8];

      v59 = v8;
      v12 = [(NSMutableArray *)self->_disambiguationItemsList objectAtIndex:v8];
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      obj = v9;
      v13 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
      if (!v13)
      {
        goto LABEL_23;
      }

      v14 = v13;
      v15 = *v66;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v66 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v65 + 1) + 8 * i);
          [v17 sruif_setSelectionTextWithDisambiguationList:v11];
          v18 = [(ACAssistantDisambiguationController *)self delegate];
          v19 = [v11 disambiguationKey];
          v20 = [v18 siriViewController:self disambiguationItemForListItem:v17 disambiguationKey:v19];

          if (!v20)
          {
            v20 = +[SiriUIDisambiguationItem disambiguationItem];
            v21 = [v17 object];
            v22 = [NSString stringWithFormat:@"Missing %@ Disambig", objc_opt_class()];
            [v20 setTitle:v22];
          }

          v23 = [v20 title];
          v24 = [v23 length];

          if (!v24)
          {
            v25 = [v17 title];
            v26 = [v25 length];

            if (v26)
            {
              v27 = [v17 title];
            }

            else
            {
              v28 = [v17 selectionText];
              v29 = [v28 length];

              if (!v29)
              {
                goto LABEL_17;
              }

              v27 = [v17 selectionText];
            }

            v30 = v27;
            [v20 setTitle:v27];
          }

LABEL_17:
          v31 = [v20 title];

          if (!v31)
          {
            sub_C504(v17, a2, self);
          }

          if ([v20 showsFavoriteStar])
          {
            self->_hasFavoritesStarColumn = 1;
          }

          [v12 addObject:v20];
        }

        v14 = [obj countByEnumeratingWithState:&v65 objects:v72 count:16];
      }

      while (v14);
LABEL_23:

      v8 = v59 + 1;
      if (v59 + 1 >= [(NSMutableArray *)self->_filteredItemsList count])
      {
LABEL_24:
        filteredItemsList = self->_filteredItemsList;
        v33 = v56;
        [v56 setListItems:filteredItemsList];
        goto LABEL_46;
      }
    }
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v34 = self->_filteredItems;
  v35 = [(NSArray *)v34 countByEnumeratingWithState:&v61 objects:v71 count:16];
  if (!v35)
  {
    goto LABEL_44;
  }

  v36 = v35;
  v37 = *v62;
  do
  {
    for (j = 0; j != v36; j = j + 1)
    {
      if (*v62 != v37)
      {
        objc_enumerationMutation(v34);
      }

      v39 = *(*(&v61 + 1) + 8 * j);
      [v39 sruif_setSelectionTextWithDisambiguationList:self->_disambiguationList];
      v40 = [(ACAssistantDisambiguationController *)self delegate];
      v41 = [(SAUIDisambiguationList *)self->_disambiguationList disambiguationKey];
      v42 = [v40 siriViewController:self disambiguationItemForListItem:v39 disambiguationKey:v41];

      if (!v42)
      {
        v42 = +[SiriUIDisambiguationItem disambiguationItem];
        v43 = [v39 object];
        v44 = [NSString stringWithFormat:@"Missing %@ Disambig", objc_opt_class()];
        [v42 setTitle:v44];
      }

      v45 = [v42 title];
      v46 = [v45 length];

      if (!v46)
      {
        v47 = [v39 title];
        v48 = [v47 length];

        if (v48)
        {
          v49 = [v39 title];
        }

        else
        {
          v50 = [v39 selectionText];
          v51 = [v50 length];

          if (!v51)
          {
            goto LABEL_38;
          }

          v49 = [v39 selectionText];
        }

        v52 = v49;
        [v42 setTitle:v49];
      }

LABEL_38:
      v53 = [v42 title];

      if (!v53)
      {
        sub_C478(v39, a2, self);
      }

      if ([v42 showsFavoriteStar])
      {
        self->_hasFavoritesStarColumn = 1;
      }

      [(NSMutableArray *)self->_disambiguationItems addObject:v42];
    }

    v36 = [(NSArray *)v34 countByEnumeratingWithState:&v61 objects:v71 count:16];
  }

  while (v36);
LABEL_44:

  filteredItems = self->_filteredItems;
  v33 = v56;
  if (filteredItems)
  {
    v70 = filteredItems;
    v55 = [NSArray arrayWithObjects:&v70 count:1];
    [v56 setListItems:v55];
  }

LABEL_46:
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = ACAssistantDisambiguationController;
  [(ACAssistantDisambiguationController *)&v7 viewWillAppear:a3];
  if ([(ACAssistantDisambiguationController *)self isVirgin])
  {
    v4 = [(ACAssistantDisambiguationController *)self _picker];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(ACAssistantDisambiguationController *)self _picker];
      v6 = [v5 showImmediately];

      if (!v6)
      {
        return;
      }

      v4 = [(ACAssistantDisambiguationController *)self _pickerController];
      [v4 showPicker:0];
    }
  }
}

- (void)setManageBackgroundColor:(BOOL)a3
{
  self->_manageBackgroundColor = a3;
  v3 = [(ACAssistantDisambiguationController *)self collectionViewLayout];
  [v3 invalidateLayout];
}

- (double)desiredHeightForWidth:(double)a3
{
  if (([(ACAssistantDisambiguationController *)self isViewLoaded]& 1) == 0)
  {
    [(ACAssistantDisambiguationController *)self loadView];
  }

  v4 = [(ACAssistantDisambiguationController *)self collectionView];
  v5 = [v4 collectionViewLayout];
  [v5 collectionViewContentSize];
  v7 = v6;

  return v7;
}

- (id)alternativeAceCommandsToPerformIfNotExposingViews
{
  preferredListItem = self->_preferredListItem;
  if (!preferredListItem)
  {
    if (!self->_isGroup)
    {
      if (![(NSArray *)self->_filteredItems count])
      {
        goto LABEL_11;
      }

      if (!self->_isGroup)
      {
LABEL_10:
        v12 = 0;
        goto LABEL_12;
      }
    }

    if ([(NSMutableArray *)self->_filteredItemsList count])
    {
      v13 = [(NSMutableArray *)self->_filteredItemsList objectAtIndex:0];
      v14 = [v13 count];

      if (v14)
      {
        goto LABEL_10;
      }
    }

LABEL_11:
    v15 = SAResultCallbackAnyRestrictionCodeValue;
    v16 = +[AFAnalytics sharedAnalytics];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_706C;
    v18[3] = &unk_185B8;
    v18[4] = v15;
    [v16 logEventWithType:1426 contextProvider:v18];

    v12 = [(SAUIDisambiguationList *)self->_disambiguationList _systemPlugin_failureCommandsForCode:v15];
    goto LABEL_12;
  }

  v4 = [(SAUIListItem *)preferredListItem aceId];
  v5 = [v4 copy];

  v6 = [(SAUIListItem *)self->_preferredListItem title];
  v7 = [v6 copy];

  disambiguationList = self->_disambiguationList;
  if (!disambiguationList)
  {
    disambiguationList = self->_disambiguationGroup;
  }

  [(SAUIDisambiguationList *)disambiguationList af_saveItemSelection:self->_preferredListItem forType:2];
  v9 = +[AFAnalytics sharedAnalytics];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_6FE4;
  v19[3] = &unk_18598;
  v20 = v5;
  v21 = v7;
  v10 = v7;
  v11 = v5;
  [v9 logEventWithType:1426 contextProvider:v19];

  v12 = [(SAUIListItem *)self->_preferredListItem commands];

LABEL_12:

  return v12;
}

- (void)siriDidDeactivate
{
  v2 = +[AFUIDisambiguationAnalyticsManager sharedManager];
  [v2 logDisambiguationDismissedEvent];
  [v2 setListItems:0];
  [v2 setDisambiguationAssistance:0];
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  if (self->_isGroup)
  {
    if ([(NSMutableArray *)self->_filteredItemsList count]<= a4)
    {
      return 0;
    }

    else
    {
      v6 = [(NSMutableArray *)self->_filteredItemsList objectAtIndex:a4];
      v7 = [v6 count];

      return v7;
    }
  }

  else
  {
    filteredItems = self->_filteredItems;

    return [(NSArray *)filteredItems count:a3];
  }
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  if (self->_isGroup)
  {
    return [(NSMutableArray *)self->_filteredItemsList count];
  }

  else
  {
    return 1;
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(objc_class *)[(ACAssistantDisambiguationController *)self cellClass] reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  [v9 setHasStarColumn:self->_hasFavoritesStarColumn];
  if (self->_isGroup)
  {
    v10 = -[NSMutableArray objectAtIndex:](self->_filteredItemsList, "objectAtIndex:", [v6 section]);
    v11 = -[NSMutableArray objectAtIndex:](self->_disambiguationItemsList, "objectAtIndex:", [v6 section]);
    v12 = [(ACAssistantDisambiguationController *)self _picker];

    if (!v12)
    {
      [v9 setLastRow:{objc_msgSend(v6, "row") == objc_msgSend(v10, "count") - 1}];
    }

    v13 = [v11 objectAtIndex:{objc_msgSend(v6, "row")}];
    [v9 setItem:v13];

    goto LABEL_9;
  }

  v14 = [(ACAssistantDisambiguationController *)self _picker];

  if (!v14)
  {
    [v9 setLastRow:{objc_msgSend(v6, "row") == -[NSArray count](self->_filteredItems, "count") - 1}];
  }

  if ([(NSMutableArray *)self->_disambiguationItems count])
  {
    v10 = -[NSMutableArray objectAtIndex:](self->_disambiguationItems, "objectAtIndex:", [v6 row]);
    [v9 setItem:v10];
LABEL_9:

    goto LABEL_10;
  }

  v17 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_C590(&self->_disambiguationItems, v17);
  }

LABEL_10:
  if (self->_manageBackgroundColor)
  {
    v15 = +[UIColor siriui_snippetBackgroundColor];
    [v9 setBackgroundColor:v15];
  }

  return v9;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (UICollectionElementKindSectionHeader != v10)
  {
    sub_C620(self, a2, v10, v11);
  }

  v12 = [objc_opt_class() reuseIdentifier];
  v13 = [v9 dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v12 forIndexPath:v11];

  if (self->_isGroup)
  {
    v14 = [(SAUIDisambiguationGroup *)self->_disambiguationGroup disambiguationLists];
    v15 = [v14 objectAtIndex:{objc_msgSend(v11, "section")}];

    v16 = [v15 groupTitle];
    v17 = [v16 length];

    if (v17)
    {
      v18 = [v15 groupTitle];
      [v13 setText:v18];
    }
  }

  return v13;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  if (self->_isGroup)
  {
    v7 = [(SAUIDisambiguationGroup *)self->_disambiguationGroup disambiguationLists:a3];
    v8 = [v7 objectAtIndex:a5];

    v9 = [v8 groupTitle];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [(ACAssistantDisambiguationController *)self delegate];
      [v11 siriViewControllerExpectedWidth:self];
      v13 = v12;
      v14 = [v8 groupTitle];
      [SiriUIPlatterSectionHeaderCollectionViewCell sizeThatFits:v14 text:v13, 1.79769313e308];
      width = v15;
      height = v17;
    }

    else
    {
      width = CGSizeZero.width;
      height = CGSizeZero.height;
    }
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  v19 = width;
  v20 = height;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectItemAtIndexPath:v6 animated:1];
  if (self->_isGroup)
  {
    v7 = -[NSMutableArray objectAtIndex:](self->_filteredItemsList, "objectAtIndex:", [v6 section]);
  }

  else
  {
    v7 = self->_filteredItems;
  }

  v8 = v7;
  v9 = -[NSArray objectAtIndex:](v7, "objectAtIndex:", [v6 row]);
  v10 = [v9 commands];
  v11 = [v9 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v13 = objc_alloc_init(SAUIDisambiguationItemSelected);
    v14 = +[NSUUID UUID];
    v15 = [v14 UUIDString];
    [v13 setAceId:v15];

    v16 = [v9 aceId];
    [v13 setSelectedAceId:v16];

    v21 = v13;
    v17 = [NSArray arrayWithObjects:&v21 count:1];
    v18 = [v10 arrayByAddingObjectsFromArray:v17];

    v10 = v18;
  }

  v19 = [(ACAssistantDisambiguationController *)self delegate];
  [v19 siriViewController:self addSelectionResponse:v9];

  v20 = [(ACAssistantDisambiguationController *)self delegate];
  [v20 siriViewController:self performAceCommands:v10];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v7 = a3;
  v8 = a5;
  +[ACAssistantDisambiguationCell defaultHeight];
  v10 = v9;
  if (self->_isGroup)
  {
    v11 = -[NSMutableArray objectAtIndex:](self->_disambiguationItemsList, "objectAtIndex:", [v8 section]);
    v12 = [v11 objectAtIndex:{objc_msgSend(v8, "row")}];
  }

  else
  {
    v13 = [(NSMutableArray *)self->_disambiguationItems count];
    if (v13 <= [v8 row])
    {
      v14 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_C6D0(&self->_disambiguationItems, v14, v8);
      }

      v12 = 0;
    }

    else
    {
      v12 = -[NSMutableArray objectAtIndex:](self->_disambiguationItems, "objectAtIndex:", [v8 row]);
    }
  }

  v15 = [v12 imageView];

  if (v15)
  {
    +[ACAssistantDisambiguationCell defaultHeightWithImageView];
    goto LABEL_14;
  }

  v17 = [v12 subtitle];
  if (v17)
  {

LABEL_13:
    +[ACAssistantDisambiguationCell defaultHeightWithSubtitle];
    goto LABEL_14;
  }

  v18 = [v12 extraDisambiguationSubText];

  if (v18)
  {
    goto LABEL_13;
  }

  v23 = [v12 headingText];

  if (!v23)
  {
    goto LABEL_15;
  }

  +[ACAssistantDisambiguationCell defaultHeightWithHeading];
LABEL_14:
  v10 = v16;
LABEL_15:
  [v7 size];
  v20 = v19;

  v21 = v20;
  v22 = v10;
  result.height = v22;
  result.width = v21;
  return result;
}

- (id)_picker
{
  if (self->_isGroup)
  {
    v2 = [(SAUIDisambiguationGroup *)self->_disambiguationGroup disambiguationLists];
    v3 = [v2 firstObject];
    v4 = [v3 domainObjectPicker];
  }

  else
  {
    v4 = [(SAUIDisambiguationList *)self->_disambiguationList domainObjectPicker];
  }

  return v4;
}

- (Class)footerViewClass
{
  v2 = [(ACAssistantDisambiguationController *)self _picker];

  if (v2)
  {
    v3 = objc_opt_class();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_pickerController
{
  pickerController = self->_pickerController;
  if (!pickerController)
  {
    v4 = [(ACAssistantDisambiguationController *)self _picker];
    v5 = [SiriUIObjectPickerViewController pickerControllerWithPicker:v4];
    v6 = self->_pickerController;
    self->_pickerController = v5;

    [(SiriUIObjectPickerViewController *)self->_pickerController setPickerDelegate:self];
    pickerController = self->_pickerController;
  }

  return pickerController;
}

- (void)configureReusableFooterView:(id)a3
{
  v4 = a3;
  v5 = [v4 subviews];
  [v5 makeObjectsPerformSelector:"removeFromSuperview"];

  v7 = objc_alloc_init(SiriUIObjectPickerButtonView);
  v6 = [v7 button];
  [v6 addTarget:self action:"_showPicker:" forControlEvents:64];

  [v7 setAutoresizingMask:18];
  [v4 bounds];
  [v7 setFrame:?];
  [v4 addSubview:v7];
}

- (void)_showPicker:(id)a3
{
  v3 = [(ACAssistantDisambiguationController *)self _pickerController];
  [v3 showPicker:0];
}

- (double)desiredHeightForFooterView
{
  v2 = [(ACAssistantDisambiguationController *)self _picker];
  if (v2)
  {
    +[SiriUIObjectPickerButtonView defaultHeight];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

- (void)pickerViewController:(id)a3 shouldPresentPicker:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(ACAssistantDisambiguationController *)self delegate];
  [v9 siriSnippetViewController:self shouldPresentPicker:v8 completion:v7];
}

- (void)pickerViewController:(id)a3 willPresentPicker:(id)a4
{
  v5 = a4;
  v6 = [(ACAssistantDisambiguationController *)self delegate];
  [v6 cancelRequestForSiriSnippetViewController:self];

  v7 = [(ACAssistantDisambiguationController *)self delegate];
  [v7 siriSnippetViewController:self setStatusViewHidden:1];

  v8 = [(ACAssistantDisambiguationController *)self _privateDelegate];
  [v8 siriSnippetViewController:self willPresentViewController:v5];
}

- (void)pickerViewController:(id)a3 didSelectObject:(id)a4 fromPicker:(id)a5
{
  v6 = a4;
  v7 = [(ACAssistantDisambiguationController *)self delegate];
  v10 = v6;
  v8 = [NSArray arrayWithObjects:&v10 count:1];

  [v7 siriViewController:self performAceCommands:v8];
  v9 = [(ACAssistantDisambiguationController *)self delegate];
  [v9 siriSnippetViewController:self setStatusViewHidden:0];
}

- (void)pickerViewController:(id)a3 willDismissPicker:(id)a4
{
  v5 = a4;
  v6 = [(ACAssistantDisambiguationController *)self _privateDelegate];
  [v6 siriSnippetViewController:self willDismissViewController:v5];
}

- (void)pickerViewController:(id)a3 didDismissPicker:(id)a4
{
  v5 = [(ACAssistantDisambiguationController *)self delegate:a3];
  [v5 siriSnippetViewController:self setStatusViewHidden:0];
}

- (void)pickerViewController:(id)a3 didRequestKeyboardWithVisibility:(BOOL)a4
{
  v4 = a4;
  v6 = [(ACAssistantDisambiguationController *)self _privateDelegate];
  [v6 siriSnippetViewController:self didRequestKeyboardWithVisibility:v4];
}

@end
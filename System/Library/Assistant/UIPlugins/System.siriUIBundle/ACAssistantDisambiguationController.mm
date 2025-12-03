@interface ACAssistantDisambiguationController
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (Class)footerViewClass;
- (double)desiredHeightForFooterView;
- (double)desiredHeightForWidth:(double)width;
- (id)_picker;
- (id)_pickerController;
- (id)alternativeAceCommandsToPerformIfNotExposingViews;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)_configureContent;
- (void)_showPicker:(id)picker;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)configureReusableFooterView:(id)view;
- (void)loadView;
- (void)pickerViewController:(id)controller didDismissPicker:(id)picker;
- (void)pickerViewController:(id)controller didRequestKeyboardWithVisibility:(BOOL)visibility;
- (void)pickerViewController:(id)controller didSelectObject:(id)object fromPicker:(id)picker;
- (void)pickerViewController:(id)controller shouldPresentPicker:(id)picker completion:(id)completion;
- (void)pickerViewController:(id)controller willDismissPicker:(id)picker;
- (void)pickerViewController:(id)controller willPresentPicker:(id)picker;
- (void)setAceObject:(id)object;
- (void)setDelegate:(id)delegate;
- (void)setManageBackgroundColor:(BOOL)color;
- (void)siriDidDeactivate;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ACAssistantDisambiguationController

- (void)setDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = ACAssistantDisambiguationController;
  [(ACAssistantDisambiguationController *)&v4 setDelegate:delegate];
  [(ACAssistantDisambiguationController *)self _configureContent];
}

- (void)setAceObject:(id)object
{
  v4.receiver = self;
  v4.super_class = ACAssistantDisambiguationController;
  [(ACAssistantDisambiguationController *)&v4 setAceObject:object];
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
    aceObject = [(ACAssistantDisambiguationController *)self aceObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_isGroup = 0;
      objc_storeStrong(&self->_disambiguationList, aceObject);
      delegate = [(ACAssistantDisambiguationController *)self delegate];
      items = [(SAUIDisambiguationList *)self->_disambiguationList items];
      v7 = [delegate siriViewController:self filteredDisambiguationListItems:items];
      filteredItems = self->_filteredItems;
      self->_filteredItems = v7;

      v9 = +[NSMutableArray array];
      disambiguationItems = self->_disambiguationItems;
      self->_disambiguationItems = v9;

      delegate2 = [(ACAssistantDisambiguationController *)self delegate];
      v12 = [delegate2 siriViewController:self listItemToPickInAutodisambiguationForListItems:self->_filteredItems];
      preferredListItem = self->_preferredListItem;
      self->_preferredListItem = v12;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_isGroup = 1;
        v41 = aceObject;
        objc_storeStrong(&self->_disambiguationGroup, aceObject);
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
              delegate3 = [(ACAssistantDisambiguationController *)self delegate];
              items2 = [v22 items];
              v25 = [delegate3 siriViewController:self filteredDisambiguationListItems:items2];

              groupTitle = [v22 groupTitle];
              v27 = [groupTitle length];

              if (!v27)
              {
                delegate4 = [(ACAssistantDisambiguationController *)self delegate];
                v29 = [delegate4 siriViewController:self listItemToPickInAutodisambiguationForListItems:v25];
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

        aceObject = v41;
      }
    }

    if (!self->_preferredListItem)
    {
      disambiguationList = self->_disambiguationList;
      if (!disambiguationList)
      {
        disambiguationList = self->_disambiguationGroup;
      }

      af_assistedSelectionItem = [(SAUIDisambiguationList *)disambiguationList af_assistedSelectionItem];
      v38 = self->_preferredListItem;
      self->_preferredListItem = af_assistedSelectionItem;

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
  collectionView = [(ACAssistantDisambiguationController *)self collectionView];
  cellClass = [(ACAssistantDisambiguationController *)self cellClass];
  reuseIdentifier = [(objc_class *)[(ACAssistantDisambiguationController *)self cellClass] reuseIdentifier];
  [collectionView registerClass:cellClass forCellWithReuseIdentifier:reuseIdentifier];

  v6 = objc_opt_class();
  reuseIdentifier2 = [objc_opt_class() reuseIdentifier];
  v57 = collectionView;
  [collectionView registerClass:v6 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:reuseIdentifier2];

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
      disambiguationLists = [(SAUIDisambiguationGroup *)self->_disambiguationGroup disambiguationLists];
      v11 = [disambiguationLists objectAtIndex:v8];

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
          delegate = [(ACAssistantDisambiguationController *)self delegate];
          disambiguationKey = [v11 disambiguationKey];
          v20 = [delegate siriViewController:self disambiguationItemForListItem:v17 disambiguationKey:disambiguationKey];

          if (!v20)
          {
            v20 = +[SiriUIDisambiguationItem disambiguationItem];
            object = [v17 object];
            v22 = [NSString stringWithFormat:@"Missing %@ Disambig", objc_opt_class()];
            [v20 setTitle:v22];
          }

          title = [v20 title];
          v24 = [title length];

          if (!v24)
          {
            title2 = [v17 title];
            v26 = [title2 length];

            if (v26)
            {
              title3 = [v17 title];
            }

            else
            {
              selectionText = [v17 selectionText];
              v29 = [selectionText length];

              if (!v29)
              {
                goto LABEL_17;
              }

              title3 = [v17 selectionText];
            }

            v30 = title3;
            [v20 setTitle:title3];
          }

LABEL_17:
          title4 = [v20 title];

          if (!title4)
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
      delegate2 = [(ACAssistantDisambiguationController *)self delegate];
      disambiguationKey2 = [(SAUIDisambiguationList *)self->_disambiguationList disambiguationKey];
      v42 = [delegate2 siriViewController:self disambiguationItemForListItem:v39 disambiguationKey:disambiguationKey2];

      if (!v42)
      {
        v42 = +[SiriUIDisambiguationItem disambiguationItem];
        object2 = [v39 object];
        v44 = [NSString stringWithFormat:@"Missing %@ Disambig", objc_opt_class()];
        [v42 setTitle:v44];
      }

      title5 = [v42 title];
      v46 = [title5 length];

      if (!v46)
      {
        title6 = [v39 title];
        v48 = [title6 length];

        if (v48)
        {
          title7 = [v39 title];
        }

        else
        {
          selectionText2 = [v39 selectionText];
          v51 = [selectionText2 length];

          if (!v51)
          {
            goto LABEL_38;
          }

          title7 = [v39 selectionText];
        }

        v52 = title7;
        [v42 setTitle:title7];
      }

LABEL_38:
      title8 = [v42 title];

      if (!title8)
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

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = ACAssistantDisambiguationController;
  [(ACAssistantDisambiguationController *)&v7 viewWillAppear:appear];
  if ([(ACAssistantDisambiguationController *)self isVirgin])
  {
    _picker = [(ACAssistantDisambiguationController *)self _picker];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _picker2 = [(ACAssistantDisambiguationController *)self _picker];
      showImmediately = [_picker2 showImmediately];

      if (!showImmediately)
      {
        return;
      }

      _picker = [(ACAssistantDisambiguationController *)self _pickerController];
      [_picker showPicker:0];
    }
  }
}

- (void)setManageBackgroundColor:(BOOL)color
{
  self->_manageBackgroundColor = color;
  collectionViewLayout = [(ACAssistantDisambiguationController *)self collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (double)desiredHeightForWidth:(double)width
{
  if (([(ACAssistantDisambiguationController *)self isViewLoaded]& 1) == 0)
  {
    [(ACAssistantDisambiguationController *)self loadView];
  }

  collectionView = [(ACAssistantDisambiguationController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
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
        commands = 0;
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

    commands = [(SAUIDisambiguationList *)self->_disambiguationList _systemPlugin_failureCommandsForCode:v15];
    goto LABEL_12;
  }

  aceId = [(SAUIListItem *)preferredListItem aceId];
  v5 = [aceId copy];

  title = [(SAUIListItem *)self->_preferredListItem title];
  v7 = [title copy];

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

  commands = [(SAUIListItem *)self->_preferredListItem commands];

LABEL_12:

  return commands;
}

- (void)siriDidDeactivate
{
  v2 = +[AFUIDisambiguationAnalyticsManager sharedManager];
  [v2 logDisambiguationDismissedEvent];
  [v2 setListItems:0];
  [v2 setDisambiguationAssistance:0];
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  if (self->_isGroup)
  {
    if ([(NSMutableArray *)self->_filteredItemsList count]<= section)
    {
      return 0;
    }

    else
    {
      v6 = [(NSMutableArray *)self->_filteredItemsList objectAtIndex:section];
      v7 = [v6 count];

      return v7;
    }
  }

  else
  {
    filteredItems = self->_filteredItems;

    return [(NSArray *)filteredItems count:view];
  }
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
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

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  reuseIdentifier = [(objc_class *)[(ACAssistantDisambiguationController *)self cellClass] reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:pathCopy];

  [v9 setHasStarColumn:self->_hasFavoritesStarColumn];
  if (self->_isGroup)
  {
    v10 = -[NSMutableArray objectAtIndex:](self->_filteredItemsList, "objectAtIndex:", [pathCopy section]);
    v11 = -[NSMutableArray objectAtIndex:](self->_disambiguationItemsList, "objectAtIndex:", [pathCopy section]);
    _picker = [(ACAssistantDisambiguationController *)self _picker];

    if (!_picker)
    {
      [v9 setLastRow:{objc_msgSend(pathCopy, "row") == objc_msgSend(v10, "count") - 1}];
    }

    v13 = [v11 objectAtIndex:{objc_msgSend(pathCopy, "row")}];
    [v9 setItem:v13];

    goto LABEL_9;
  }

  _picker2 = [(ACAssistantDisambiguationController *)self _picker];

  if (!_picker2)
  {
    [v9 setLastRow:{objc_msgSend(pathCopy, "row") == -[NSArray count](self->_filteredItems, "count") - 1}];
  }

  if ([(NSMutableArray *)self->_disambiguationItems count])
  {
    v10 = -[NSMutableArray objectAtIndex:](self->_disambiguationItems, "objectAtIndex:", [pathCopy row]);
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

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if (UICollectionElementKindSectionHeader != kindCopy)
  {
    sub_C620(self, a2, kindCopy, pathCopy);
  }

  reuseIdentifier = [objc_opt_class() reuseIdentifier];
  v13 = [viewCopy dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:reuseIdentifier forIndexPath:pathCopy];

  if (self->_isGroup)
  {
    disambiguationLists = [(SAUIDisambiguationGroup *)self->_disambiguationGroup disambiguationLists];
    v15 = [disambiguationLists objectAtIndex:{objc_msgSend(pathCopy, "section")}];

    groupTitle = [v15 groupTitle];
    v17 = [groupTitle length];

    if (v17)
    {
      groupTitle2 = [v15 groupTitle];
      [v13 setText:groupTitle2];
    }
  }

  return v13;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  if (self->_isGroup)
  {
    v7 = [(SAUIDisambiguationGroup *)self->_disambiguationGroup disambiguationLists:view];
    v8 = [v7 objectAtIndex:section];

    groupTitle = [v8 groupTitle];
    v10 = [groupTitle length];

    if (v10)
    {
      delegate = [(ACAssistantDisambiguationController *)self delegate];
      [delegate siriViewControllerExpectedWidth:self];
      v13 = v12;
      groupTitle2 = [v8 groupTitle];
      [SiriUIPlatterSectionHeaderCollectionViewCell sizeThatFits:groupTitle2 text:v13, 1.79769313e308];
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectItemAtIndexPath:pathCopy animated:1];
  if (self->_isGroup)
  {
    v7 = -[NSMutableArray objectAtIndex:](self->_filteredItemsList, "objectAtIndex:", [pathCopy section]);
  }

  else
  {
    v7 = self->_filteredItems;
  }

  v8 = v7;
  v9 = -[NSArray objectAtIndex:](v7, "objectAtIndex:", [pathCopy row]);
  commands = [v9 commands];
  object = [v9 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v13 = objc_alloc_init(SAUIDisambiguationItemSelected);
    v14 = +[NSUUID UUID];
    uUIDString = [v14 UUIDString];
    [v13 setAceId:uUIDString];

    aceId = [v9 aceId];
    [v13 setSelectedAceId:aceId];

    v21 = v13;
    v17 = [NSArray arrayWithObjects:&v21 count:1];
    v18 = [commands arrayByAddingObjectsFromArray:v17];

    commands = v18;
  }

  delegate = [(ACAssistantDisambiguationController *)self delegate];
  [delegate siriViewController:self addSelectionResponse:v9];

  delegate2 = [(ACAssistantDisambiguationController *)self delegate];
  [delegate2 siriViewController:self performAceCommands:commands];
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  +[ACAssistantDisambiguationCell defaultHeight];
  v10 = v9;
  if (self->_isGroup)
  {
    v11 = -[NSMutableArray objectAtIndex:](self->_disambiguationItemsList, "objectAtIndex:", [pathCopy section]);
    v12 = [v11 objectAtIndex:{objc_msgSend(pathCopy, "row")}];
  }

  else
  {
    v13 = [(NSMutableArray *)self->_disambiguationItems count];
    if (v13 <= [pathCopy row])
    {
      v14 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        sub_C6D0(&self->_disambiguationItems, v14, pathCopy);
      }

      v12 = 0;
    }

    else
    {
      v12 = -[NSMutableArray objectAtIndex:](self->_disambiguationItems, "objectAtIndex:", [pathCopy row]);
    }
  }

  imageView = [v12 imageView];

  if (imageView)
  {
    +[ACAssistantDisambiguationCell defaultHeightWithImageView];
    goto LABEL_14;
  }

  subtitle = [v12 subtitle];
  if (subtitle)
  {

LABEL_13:
    +[ACAssistantDisambiguationCell defaultHeightWithSubtitle];
    goto LABEL_14;
  }

  extraDisambiguationSubText = [v12 extraDisambiguationSubText];

  if (extraDisambiguationSubText)
  {
    goto LABEL_13;
  }

  headingText = [v12 headingText];

  if (!headingText)
  {
    goto LABEL_15;
  }

  +[ACAssistantDisambiguationCell defaultHeightWithHeading];
LABEL_14:
  v10 = v16;
LABEL_15:
  [viewCopy size];
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
    disambiguationLists = [(SAUIDisambiguationGroup *)self->_disambiguationGroup disambiguationLists];
    firstObject = [disambiguationLists firstObject];
    domainObjectPicker = [firstObject domainObjectPicker];
  }

  else
  {
    domainObjectPicker = [(SAUIDisambiguationList *)self->_disambiguationList domainObjectPicker];
  }

  return domainObjectPicker;
}

- (Class)footerViewClass
{
  _picker = [(ACAssistantDisambiguationController *)self _picker];

  if (_picker)
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
    _picker = [(ACAssistantDisambiguationController *)self _picker];
    v5 = [SiriUIObjectPickerViewController pickerControllerWithPicker:_picker];
    v6 = self->_pickerController;
    self->_pickerController = v5;

    [(SiriUIObjectPickerViewController *)self->_pickerController setPickerDelegate:self];
    pickerController = self->_pickerController;
  }

  return pickerController;
}

- (void)configureReusableFooterView:(id)view
{
  viewCopy = view;
  subviews = [viewCopy subviews];
  [subviews makeObjectsPerformSelector:"removeFromSuperview"];

  v7 = objc_alloc_init(SiriUIObjectPickerButtonView);
  button = [v7 button];
  [button addTarget:self action:"_showPicker:" forControlEvents:64];

  [v7 setAutoresizingMask:18];
  [viewCopy bounds];
  [v7 setFrame:?];
  [viewCopy addSubview:v7];
}

- (void)_showPicker:(id)picker
{
  _pickerController = [(ACAssistantDisambiguationController *)self _pickerController];
  [_pickerController showPicker:0];
}

- (double)desiredHeightForFooterView
{
  _picker = [(ACAssistantDisambiguationController *)self _picker];
  if (_picker)
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

- (void)pickerViewController:(id)controller shouldPresentPicker:(id)picker completion:(id)completion
{
  completionCopy = completion;
  pickerCopy = picker;
  delegate = [(ACAssistantDisambiguationController *)self delegate];
  [delegate siriSnippetViewController:self shouldPresentPicker:pickerCopy completion:completionCopy];
}

- (void)pickerViewController:(id)controller willPresentPicker:(id)picker
{
  pickerCopy = picker;
  delegate = [(ACAssistantDisambiguationController *)self delegate];
  [delegate cancelRequestForSiriSnippetViewController:self];

  delegate2 = [(ACAssistantDisambiguationController *)self delegate];
  [delegate2 siriSnippetViewController:self setStatusViewHidden:1];

  _privateDelegate = [(ACAssistantDisambiguationController *)self _privateDelegate];
  [_privateDelegate siriSnippetViewController:self willPresentViewController:pickerCopy];
}

- (void)pickerViewController:(id)controller didSelectObject:(id)object fromPicker:(id)picker
{
  objectCopy = object;
  delegate = [(ACAssistantDisambiguationController *)self delegate];
  v10 = objectCopy;
  v8 = [NSArray arrayWithObjects:&v10 count:1];

  [delegate siriViewController:self performAceCommands:v8];
  delegate2 = [(ACAssistantDisambiguationController *)self delegate];
  [delegate2 siriSnippetViewController:self setStatusViewHidden:0];
}

- (void)pickerViewController:(id)controller willDismissPicker:(id)picker
{
  pickerCopy = picker;
  _privateDelegate = [(ACAssistantDisambiguationController *)self _privateDelegate];
  [_privateDelegate siriSnippetViewController:self willDismissViewController:pickerCopy];
}

- (void)pickerViewController:(id)controller didDismissPicker:(id)picker
{
  v5 = [(ACAssistantDisambiguationController *)self delegate:controller];
  [v5 siriSnippetViewController:self setStatusViewHidden:0];
}

- (void)pickerViewController:(id)controller didRequestKeyboardWithVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  _privateDelegate = [(ACAssistantDisambiguationController *)self _privateDelegate];
  [_privateDelegate siriSnippetViewController:self didRequestKeyboardWithVisibility:visibilityCopy];
}

@end
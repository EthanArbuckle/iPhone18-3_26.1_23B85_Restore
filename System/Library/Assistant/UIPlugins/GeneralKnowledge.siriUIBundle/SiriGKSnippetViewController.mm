@interface SiriGKSnippetViewController
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (Class)transparentHeaderViewClass;
- (SiriGKSnippetViewController)initWithSnippet:(id)snippet;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index;
- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index;
- (double)desiredHeightForTransparentHeaderView;
- (double)desiredHeightForWidth:(double)width;
- (id)_podForSection:(int64_t)section;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)dragItemForIndexPath:(id)path;
- (id)navigationTitle;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_disambiguationHeaderTapped;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)configureReusableTransparentHeaderView:(id)view;
- (void)loadView;
- (void)setManageBackgroundColor:(BOOL)color;
@end

@implementation SiriGKSnippetViewController

- (SiriGKSnippetViewController)initWithSnippet:(id)snippet
{
  snippetCopy = snippet;
  v5 = objc_alloc_init(GKCollectionViewFlowLayout);
  v15.receiver = self;
  v15.super_class = SiriGKSnippetViewController;
  v6 = [(SiriGKSnippetViewController *)&v15 initWithCollectionViewLayout:v5];

  if (v6)
  {
    [(SiriGKSnippetViewController *)v6 setSnippet:snippetCopy];
    collectionViewLayout = [(SiriGKSnippetViewController *)v6 collectionViewLayout];
    [collectionViewLayout setPodList:v6->_podArray];
    [collectionViewLayout setDelegate:v6];
    title = [snippetCopy title];

    if (title)
    {
      title2 = [snippetCopy title];
      [(SiriGKSnippetViewController *)v6 setTitle:title2];
    }

    subtitle = [snippetCopy subtitle];

    if (subtitle)
    {
      subtitle2 = [snippetCopy subtitle];
      [(SiriGKSnippetViewController *)v6 setSubtitle:subtitle2];
    }

    [(SiriGKSnippetViewController *)v6 setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    v12 = +[NSMutableArray array];
    podArray = v6->_podArray;
    v6->_podArray = v12;
  }

  return v6;
}

- (void)_disambiguationHeaderTapped
{
  v6 = [NSIndexPath indexPathForRow:0 inSection:[(NSMutableArray *)self->_podArray indexOfObject:self->_bottomAlternateResultsPod]];
  collectionView = [(SiriGKSnippetViewController *)self collectionView];
  v4 = [collectionView layoutAttributesForItemAtIndexPath:v6];

  delegate = [(SiriGKSnippetViewController *)self delegate];
  [v4 frame];
  [delegate siriViewController:self setContentOffset:CGRectGetMinY(v8)];
}

- (void)setManageBackgroundColor:(BOOL)color
{
  self->_manageBackgroundColor = color;
  collectionViewLayout = [(SiriGKSnippetViewController *)self collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (void)loadView
{
  v49.receiver = self;
  v49.super_class = SiriGKSnippetViewController;
  [(SiriGKSnippetViewController *)&v49 loadView];
  snippet = [(SiriGKSnippetViewController *)self snippet];
  appPunchOut = [snippet appPunchOut];
  bundleId = [appPunchOut bundleId];
  v6 = [bundleId isEqualToString:@"com.apple.AppStore"];

  if (v6)
  {
    punchOutUri = 0;
  }

  else
  {
    appPunchOut2 = [snippet appPunchOut];
    punchOutUri = [appPunchOut2 punchOutUri];
  }

  delegate = [(SiriGKSnippetViewController *)self delegate];
  v10 = [delegate persistentDataStoreForSiriViewController:self];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [snippet pods];
  v11 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v46;
    v43 = v10;
    do
    {
      v14 = 0;
      do
      {
        if (*v46 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v45 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [[SiriGKWebLinkPod alloc] initWithPod:v15 safariBackURL:punchOutUri];
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = SiriGKImagePod;
LABEL_15:
          v16 = [[v17 alloc] initWithPod:v15 safariBackURL:punchOutUri usingPersistentStore:v10];
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = SiriGKVideoPod;
          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = [[SiriGKAlternateResultsPod alloc] initWithPod:v15];
          [(NSMutableArray *)self->_podArray addObject:v19];
          bottomAlternateResultsPod = self->_bottomAlternateResultsPod;
          self->_bottomAlternateResultsPod = &v19->super;
          goto LABEL_17;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          title = [snippet title];
          if ([title length])
          {
            subtitle = [snippet subtitle];
            v22 = [subtitle length];

            if (v22)
            {
              subtitle2 = [snippet subtitle];
              goto LABEL_33;
            }
          }

          else
          {
          }

          title2 = [snippet title];
          v25 = [title2 length];

          if (v25)
          {
            subtitle2 = [snippet title];
LABEL_33:
            bottomAlternateResultsPod = subtitle2;
          }

          else
          {
            bottomAlternateResultsPod = 0;
          }

          v27 = [SiriGKMapPod alloc];
          if ([snippet sirigk_isMapOnlySnippet])
          {
            v28 = 261.0;
          }

          else
          {
            v28 = 175.0;
          }

          v29 = [(SiriGKMapPod *)v27 initWithMapPod:v15 snippetTitle:bottomAlternateResultsPod mapHeight:v28, v43];
          [(NSMutableArray *)self->_podArray addObject:v29];
          self->_containMKMapView = 1;

          v10 = v43;
          goto LABEL_17;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [[SiriGKPropertyPod alloc] initWithPropertyPod:v15];
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [[SiriGKSummaryPod alloc] initWithPod:v15 usingPersistentStore:v10];
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = [[SiriGKDisambiguationPod alloc] initWithDisambiguationPod:v15];
          bottomAlternateResultsPod = self->_disambiguationPod;
          self->_disambiguationPod = v26;
          goto LABEL_17;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [[SiriGKSourceLinkPod alloc] initWithSourceLinkPod:v15];
LABEL_16:
          bottomAlternateResultsPod = v16;
          [(NSMutableArray *)self->_podArray addObject:v16, v43];
LABEL_17:
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v30 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      v12 = v30;
    }

    while (v30);
  }

  appPunchOut3 = [snippet appPunchOut];

  if (appPunchOut3)
  {
    appPunchOut4 = [snippet appPunchOut];
    [(SiriGKSnippetViewController *)self setHeaderPunchOut:appPunchOut4];

    [(SiriGKSnippetViewController *)self setShowHeaderChevron:0];
    v33 = [SiriGKAttributionPod alloc];
    appPunchOut5 = [snippet appPunchOut];
    v35 = [(SiriGKAttributionPod *)v33 initWithPunchOut:appPunchOut5 usingPersistentStore:v10];

    [(NSMutableArray *)self->_podArray addObject:v35];
  }

  collectionView = [(SiriGKSnippetViewController *)self collectionView];
  v37 = objc_opt_class();
  v38 = +[SiriUIContentCollectionViewCell reuseIdentifier];
  [collectionView registerClass:v37 forCellWithReuseIdentifier:v38];

  v39 = objc_opt_class();
  v40 = +[SiriGKReusableSupplementaryView reuseIdentifier];
  [collectionView registerClass:v39 forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:v40];

  v41 = objc_opt_class();
  v42 = +[SiriGKReusableSupplementaryView reuseIdentifier];
  [collectionView registerClass:v41 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v42];
}

- (double)desiredHeightForWidth:(double)width
{
  if (([(SiriGKSnippetViewController *)self isViewLoaded]& 1) == 0)
  {
    [(SiriGKSnippetViewController *)self loadView];
  }

  collectionViewLayout = [(SiriGKSnippetViewController *)self collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
  v6 = v5;

  return v6;
}

- (Class)transparentHeaderViewClass
{
  if (self->_disambiguationPod)
  {
    v3 = objc_opt_class();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)configureReusableTransparentHeaderView:(id)view
{
  viewCopy = view;
  disambiguationPod = self->_disambiguationPod;
  if (disambiguationPod)
  {
    v9 = viewCopy;
    title = [(SiriGKDisambiguationPod *)disambiguationPod title];
    subtitle = [(SiriGKDisambiguationPod *)self->_disambiguationPod subtitle];
    [v9 configureWithTitle:title subtitle:subtitle];

    headerButton = [v9 headerButton];
    [headerButton addTarget:self action:"_disambiguationHeaderTapped" forControlEvents:64];
  }

  _objc_release_x1();
}

- (double)desiredHeightForTransparentHeaderView
{
  if (self->_disambiguationPod)
  {
    v2 = objc_opt_class();

    [v2 defaultHeight];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = SiriGKSnippetViewController;
    [(SiriGKSnippetViewController *)&v4 desiredHeightForTransparentHeaderView];
  }

  return result;
}

- (id)navigationTitle
{
  snippet = [(SiriGKSnippetViewController *)self snippet];
  sirigk_isMapOnlySnippet = [snippet sirigk_isMapOnlySnippet];

  if (sirigk_isMapOnlySnippet)
  {
    title = SiriGKLocalizedString(@"MAP_POD_NAVIGATION_TITLE");
  }

  else
  {
    snippet2 = [(SiriGKSnippetViewController *)self snippet];
    title = [snippet2 title];
  }

  return title;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  collectionView = [(SiriGKSnippetViewController *)self collectionView];
  v9 = +[SiriUIContentCollectionViewCell reuseIdentifier];
  v10 = [collectionView dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:pathCopy];

  v11 = -[SiriGKSnippetViewController _podForSection:](self, "_podForSection:", [pathCopy section]);
  if (v11)
  {
    v28 = viewCopy;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    contentView = [v10 contentView];
    subviews = [contentView subviews];

    v14 = [subviews countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(subviews);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v18 removeFromSuperview];
          }
        }

        v15 = [subviews countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v15);
    }

    section = [pathCopy section];
    viewCopy = v28;
    if (section == [(SiriGKSnippetViewController *)self numberOfSectionsInCollectionView:v28]- 1)
    {
      v20 = 0;
    }

    else
    {
      v21 = -[SiriGKSnippetViewController _podForSection:](self, "_podForSection:", [pathCopy section] + 1);
      headerView = [v21 headerView];

      v20 = headerView == 0;
    }

    v23 = [pathCopy row];
    if (v23 != -[SiriGKSnippetViewController collectionView:numberOfItemsInSection:](self, "collectionView:numberOfItemsInSection:", v28, [pathCopy section]) - 1 || v20)
    {
      keylineType = [v11 keylineType];
    }

    else
    {
      keylineType = 0;
    }

    [v10 setKeylineType:keylineType];
    [v10 setHasChevron:0];
    v25 = [v11 viewAtIndex:{objc_msgSend(pathCopy, "item")}];
    [v10 setCustomView:v25];
    [v25 edgeInsets];
    [v10 setCustomViewEdgeInsets:?];
    if (self->_manageBackgroundColor)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v26 = +[UIColor siriui_snippetBackgroundColor];
        [v10 setBackgroundColor:v26];
      }
    }
  }

  return v10;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  pathCopy = path;
  v9 = -[SiriGKSnippetViewController _podForSection:](self, "_podForSection:", [pathCopy section]);
  collectionView = [(SiriGKSnippetViewController *)self collectionView];
  v11 = +[SiriGKReusableSupplementaryView reuseIdentifier];
  v12 = [collectionView dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v11 forIndexPath:pathCopy];

  if ([kindCopy isEqualToString:UICollectionElementKindSectionHeader])
  {
    headerView = [v9 headerView];
    if (!headerView)
    {
      goto LABEL_12;
    }

LABEL_11:
    [v12 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [v9 headerInsets];
    [headerView setFrame:{v16 + v26, v18 + v23, v20 - (v26 + v24), v22 - (v23 + v25)}];
    [v12 setSubview:headerView];

    goto LABEL_12;
  }

  if ([kindCopy isEqualToString:UICollectionElementKindSectionFooter])
  {
    if ((-[SiriGKSnippetViewController _podForSection:](self, "_podForSection:", [pathCopy section] + 1), v14 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass())) && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      headerView = 0;
    }

    else
    {
      headerView = [v9 footerView];
    }

    if (headerView)
    {
      goto LABEL_11;
    }
  }

LABEL_12:

  return v12;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(SiriGKSnippetViewController *)self _podForSection:section];
  viewCount = [v4 viewCount];

  return viewCount;
}

- (double)collectionView:(id)view layout:(id)layout minimumInteritemSpacingForSectionAtIndex:(int64_t)index
{
  layout = [(SiriGKSnippetViewController *)self _podForSection:index, layout];
  [layout minimumInteritemSpacing];
  v7 = v6;

  return v7;
}

- (double)collectionView:(id)view layout:(id)layout minimumLineSpacingForSectionAtIndex:(int64_t)index
{
  layout = [(SiriGKSnippetViewController *)self _podForSection:index, layout];
  [layout minimumLineSpacing];
  v7 = v6;

  return v7;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  layout = [(SiriGKSnippetViewController *)self _podForSection:index, layout];
  [layout edgeInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  layout = [(SiriGKSnippetViewController *)self _podForSection:section, layout];
  headerView = [layout headerView];
  delegate = [(SiriGKSnippetViewController *)self delegate];
  [delegate siriViewControllerExpectedWidth:self];
  [headerView sizeThatFits:?];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForFooterInSection:(int64_t)section
{
  layout = [(SiriGKSnippetViewController *)self _podForSection:section, layout];
  footerView = [layout footerView];
  delegate = [(SiriGKSnippetViewController *)self delegate];
  [delegate siriViewControllerExpectedWidth:self];
  [footerView sizeThatFits:?];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(SiriGKSnippetViewController *)self delegate];
  [delegate siriViewControllerExpectedWidth:self];
  width = v8;

  v10 = -[SiriGKSnippetViewController _podForSection:](self, "_podForSection:", [pathCopy section]);
  viewCount = [v10 viewCount];
  if (viewCount <= [pathCopy item])
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    v12 = [v10 viewAtIndex:{objc_msgSend(pathCopy, "item")}];
    [v12 sizeThatFits:{width, 1.79769313e308}];
    v14 = v13;
    height = v15;
    if (![v12 isFullWidth])
    {
      width = v14;
    }
  }

  v17 = width;
  v18 = height;
  result.height = v18;
  result.width = v17;
  return result;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = -[SiriGKSnippetViewController _podForSection:](self, "_podForSection:", [pathCopy section]);
  item = [pathCopy item];

  v8 = [v6 viewAtIndex:item];
  LOBYTE(item) = [v8 isSelectable];

  return item;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = -[SiriGKSnippetViewController _podForSection:](self, "_podForSection:", [pathCopy section]);
  v9 = [v8 viewAtIndex:{objc_msgSend(pathCopy, "item")}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    imageResource = [v9 imageResource];

    if (imageResource)
    {
      imageResource2 = [v9 imageResource];
      if (imageResource2)
      {
        link = [v9 link];
        displayName = [v9 displayName];
        v12 = objc_alloc_init(SAUIImageView);
        [v12 setImage:imageResource2];
        command = [v9 command];
        [command setPunchOutUri:link];
        [command setSubtitle:displayName];
        v30 = command;
        v14 = [NSArray arrayWithObjects:&v30 count:1];
        [v12 setCommands:v14];

        delegate = [(SiriGKSnippetViewController *)self delegate];
        v29 = v12;
        v16 = [NSArray arrayWithObjects:&v29 count:1];
        [delegate siriSnippetViewController:self pushSirilandSnippets:v16];
      }

      goto LABEL_15;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mapViewSnippet = [v9 mapViewSnippet];

    if (mapViewSnippet)
    {
      imageResource2 = [(SiriGKSnippetViewController *)self delegate];
      mapViewSnippet2 = [v9 mapViewSnippet];
      v28 = mapViewSnippet2;
      v19 = [NSArray arrayWithObjects:&v28 count:1];
      [imageResource2 siriSnippetViewController:self pushSirilandSnippets:v19];
LABEL_14:

LABEL_15:
      goto LABEL_16;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 openInMaps];
    self->_containMKMapView = 1;
  }

  else
  {
    command2 = [v9 command];

    if (command2)
    {
      selectionResponseTitle = [v9 selectionResponseTitle];

      if (selectionResponseTitle)
      {
        v22 = objc_alloc_init(SAUIListItem);
        selectionResponseTitle2 = [v9 selectionResponseTitle];
        [v22 setSelectionText:selectionResponseTitle2];

        delegate2 = [(SiriGKSnippetViewController *)self delegate];
        [delegate2 siriViewController:self addSelectionResponse:v22];
      }

      imageResource2 = [(SiriGKSnippetViewController *)self delegate];
      mapViewSnippet2 = [v9 command];
      v27 = mapViewSnippet2;
      v19 = [NSArray arrayWithObjects:&v27 count:1];
      [imageResource2 siriViewController:self performAceCommands:v19];
      goto LABEL_14;
    }
  }

LABEL_16:
  [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  session = [(SiriGKSnippetViewController *)self dragItemForIndexPath:path, session];
  v6 = session;
  if (session)
  {
    v9 = session;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  return v7;
}

- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  v6 = [(SiriGKSnippetViewController *)self dragItemForIndexPath:path, session, point.x, point.y];
  v7 = v6;
  if (v6)
  {
    v10 = v6;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (id)dragItemForIndexPath:(id)path
{
  pathCopy = path;
  v5 = -[SiriGKSnippetViewController _podForSection:](self, "_podForSection:", [pathCopy section]);
  item = [pathCopy item];

  v7 = [v5 viewAtIndex:item];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    imageResource = [v8 imageResource];
    v10 = imageResource;
    if (imageResource)
    {
      imageData = [imageResource imageData];

      if (imageData)
      {
        imageData2 = [v10 imageData];
        image = [UIImage imageWithData:imageData2];
      }

      else
      {
        resourceUrl = [v10 resourceUrl];

        if (resourceUrl)
        {
          v22 = [AFUIRemoteImageRepresentation alloc];
          imageData2 = [v10 resourceUrl];
          image = [v22 initWithImageURL:imageData2];
        }

        else
        {
          imageData2 = [v8 imageView];
          image = [imageData2 image];
        }
      }

      punchoutURL2 = image;

      v20 = [NSItemProvider alloc];
    }

    else
    {
      punchoutURL = [v8 punchoutURL];

      if (!punchoutURL)
      {
LABEL_16:

        goto LABEL_17;
      }

      v18 = [NSItemProvider alloc];
      punchoutURL2 = [v8 punchoutURL];
      v20 = v18;
    }

    v23 = [v20 initWithObject:punchoutURL2];

    punchoutURL = [[UIDragItem alloc] initWithItemProvider:v23];
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v7 punchoutURL], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
  {
    punchoutURL = 0;
    goto LABEL_18;
  }

  v15 = [NSItemProvider alloc];
  punchoutURL3 = [v7 punchoutURL];
  v8 = [v15 initWithObject:punchoutURL3];

  punchoutURL = [[UIDragItem alloc] initWithItemProvider:v8];
LABEL_17:

LABEL_18:

  return punchoutURL;
}

- (id)_podForSection:(int64_t)section
{
  if ([(NSMutableArray *)self->_podArray count]<= section)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_podArray objectAtIndex:section];
  }

  return v5;
}

@end
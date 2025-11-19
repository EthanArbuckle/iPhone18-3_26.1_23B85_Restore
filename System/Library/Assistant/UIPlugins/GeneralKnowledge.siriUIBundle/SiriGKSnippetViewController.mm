@interface SiriGKSnippetViewController
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (Class)transparentHeaderViewClass;
- (SiriGKSnippetViewController)initWithSnippet:(id)a3;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5;
- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5;
- (double)desiredHeightForTransparentHeaderView;
- (double)desiredHeightForWidth:(double)a3;
- (id)_podForSection:(int64_t)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)dragItemForIndexPath:(id)a3;
- (id)navigationTitle;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_disambiguationHeaderTapped;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)configureReusableTransparentHeaderView:(id)a3;
- (void)loadView;
- (void)setManageBackgroundColor:(BOOL)a3;
@end

@implementation SiriGKSnippetViewController

- (SiriGKSnippetViewController)initWithSnippet:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(GKCollectionViewFlowLayout);
  v15.receiver = self;
  v15.super_class = SiriGKSnippetViewController;
  v6 = [(SiriGKSnippetViewController *)&v15 initWithCollectionViewLayout:v5];

  if (v6)
  {
    [(SiriGKSnippetViewController *)v6 setSnippet:v4];
    v7 = [(SiriGKSnippetViewController *)v6 collectionViewLayout];
    [v7 setPodList:v6->_podArray];
    [v7 setDelegate:v6];
    v8 = [v4 title];

    if (v8)
    {
      v9 = [v4 title];
      [(SiriGKSnippetViewController *)v6 setTitle:v9];
    }

    v10 = [v4 subtitle];

    if (v10)
    {
      v11 = [v4 subtitle];
      [(SiriGKSnippetViewController *)v6 setSubtitle:v11];
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
  v3 = [(SiriGKSnippetViewController *)self collectionView];
  v4 = [v3 layoutAttributesForItemAtIndexPath:v6];

  v5 = [(SiriGKSnippetViewController *)self delegate];
  [v4 frame];
  [v5 siriViewController:self setContentOffset:CGRectGetMinY(v8)];
}

- (void)setManageBackgroundColor:(BOOL)a3
{
  self->_manageBackgroundColor = a3;
  v3 = [(SiriGKSnippetViewController *)self collectionViewLayout];
  [v3 invalidateLayout];
}

- (void)loadView
{
  v49.receiver = self;
  v49.super_class = SiriGKSnippetViewController;
  [(SiriGKSnippetViewController *)&v49 loadView];
  v3 = [(SiriGKSnippetViewController *)self snippet];
  v4 = [v3 appPunchOut];
  v5 = [v4 bundleId];
  v6 = [v5 isEqualToString:@"com.apple.AppStore"];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v3 appPunchOut];
    v7 = [v8 punchOutUri];
  }

  v9 = [(SiriGKSnippetViewController *)self delegate];
  v10 = [v9 persistentDataStoreForSiriViewController:self];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [v3 pods];
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
          v16 = [[SiriGKWebLinkPod alloc] initWithPod:v15 safariBackURL:v7];
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = SiriGKImagePod;
LABEL_15:
          v16 = [[v17 alloc] initWithPod:v15 safariBackURL:v7 usingPersistentStore:v10];
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
          v20 = [v3 title];
          if ([v20 length])
          {
            v21 = [v3 subtitle];
            v22 = [v21 length];

            if (v22)
            {
              v23 = [v3 subtitle];
              goto LABEL_33;
            }
          }

          else
          {
          }

          v24 = [v3 title];
          v25 = [v24 length];

          if (v25)
          {
            v23 = [v3 title];
LABEL_33:
            bottomAlternateResultsPod = v23;
          }

          else
          {
            bottomAlternateResultsPod = 0;
          }

          v27 = [SiriGKMapPod alloc];
          if ([v3 sirigk_isMapOnlySnippet])
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

  v31 = [v3 appPunchOut];

  if (v31)
  {
    v32 = [v3 appPunchOut];
    [(SiriGKSnippetViewController *)self setHeaderPunchOut:v32];

    [(SiriGKSnippetViewController *)self setShowHeaderChevron:0];
    v33 = [SiriGKAttributionPod alloc];
    v34 = [v3 appPunchOut];
    v35 = [(SiriGKAttributionPod *)v33 initWithPunchOut:v34 usingPersistentStore:v10];

    [(NSMutableArray *)self->_podArray addObject:v35];
  }

  v36 = [(SiriGKSnippetViewController *)self collectionView];
  v37 = objc_opt_class();
  v38 = +[SiriUIContentCollectionViewCell reuseIdentifier];
  [v36 registerClass:v37 forCellWithReuseIdentifier:v38];

  v39 = objc_opt_class();
  v40 = +[SiriGKReusableSupplementaryView reuseIdentifier];
  [v36 registerClass:v39 forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:v40];

  v41 = objc_opt_class();
  v42 = +[SiriGKReusableSupplementaryView reuseIdentifier];
  [v36 registerClass:v41 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v42];
}

- (double)desiredHeightForWidth:(double)a3
{
  if (([(SiriGKSnippetViewController *)self isViewLoaded]& 1) == 0)
  {
    [(SiriGKSnippetViewController *)self loadView];
  }

  v4 = [(SiriGKSnippetViewController *)self collectionViewLayout];
  [v4 collectionViewContentSize];
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

- (void)configureReusableTransparentHeaderView:(id)a3
{
  v4 = a3;
  disambiguationPod = self->_disambiguationPod;
  if (disambiguationPod)
  {
    v9 = v4;
    v6 = [(SiriGKDisambiguationPod *)disambiguationPod title];
    v7 = [(SiriGKDisambiguationPod *)self->_disambiguationPod subtitle];
    [v9 configureWithTitle:v6 subtitle:v7];

    v8 = [v9 headerButton];
    [v8 addTarget:self action:"_disambiguationHeaderTapped" forControlEvents:64];
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
  v3 = [(SiriGKSnippetViewController *)self snippet];
  v4 = [v3 sirigk_isMapOnlySnippet];

  if (v4)
  {
    v5 = SiriGKLocalizedString(@"MAP_POD_NAVIGATION_TITLE");
  }

  else
  {
    v6 = [(SiriGKSnippetViewController *)self snippet];
    v5 = [v6 title];
  }

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SiriGKSnippetViewController *)self collectionView];
  v9 = +[SiriUIContentCollectionViewCell reuseIdentifier];
  v10 = [v8 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v7];

  v11 = -[SiriGKSnippetViewController _podForSection:](self, "_podForSection:", [v7 section]);
  if (v11)
  {
    v28 = v6;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = [v10 contentView];
    v13 = [v12 subviews];

    v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v18 removeFromSuperview];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v15);
    }

    v19 = [v7 section];
    v6 = v28;
    if (v19 == [(SiriGKSnippetViewController *)self numberOfSectionsInCollectionView:v28]- 1)
    {
      v20 = 0;
    }

    else
    {
      v21 = -[SiriGKSnippetViewController _podForSection:](self, "_podForSection:", [v7 section] + 1);
      v22 = [v21 headerView];

      v20 = v22 == 0;
    }

    v23 = [v7 row];
    if (v23 != -[SiriGKSnippetViewController collectionView:numberOfItemsInSection:](self, "collectionView:numberOfItemsInSection:", v28, [v7 section]) - 1 || v20)
    {
      v24 = [v11 keylineType];
    }

    else
    {
      v24 = 0;
    }

    [v10 setKeylineType:v24];
    [v10 setHasChevron:0];
    v25 = [v11 viewAtIndex:{objc_msgSend(v7, "item")}];
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

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = -[SiriGKSnippetViewController _podForSection:](self, "_podForSection:", [v8 section]);
  v10 = [(SiriGKSnippetViewController *)self collectionView];
  v11 = +[SiriGKReusableSupplementaryView reuseIdentifier];
  v12 = [v10 dequeueReusableSupplementaryViewOfKind:v7 withReuseIdentifier:v11 forIndexPath:v8];

  if ([v7 isEqualToString:UICollectionElementKindSectionHeader])
  {
    v13 = [v9 headerView];
    if (!v13)
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
    [v13 setFrame:{v16 + v26, v18 + v23, v20 - (v26 + v24), v22 - (v23 + v25)}];
    [v12 setSubview:v13];

    goto LABEL_12;
  }

  if ([v7 isEqualToString:UICollectionElementKindSectionFooter])
  {
    if ((-[SiriGKSnippetViewController _podForSection:](self, "_podForSection:", [v8 section] + 1), v14 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass())) && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v13 = 0;
    }

    else
    {
      v13 = [v9 footerView];
    }

    if (v13)
    {
      goto LABEL_11;
    }
  }

LABEL_12:

  return v12;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(SiriGKSnippetViewController *)self _podForSection:a4];
  v5 = [v4 viewCount];

  return v5;
}

- (double)collectionView:(id)a3 layout:(id)a4 minimumInteritemSpacingForSectionAtIndex:(int64_t)a5
{
  v5 = [(SiriGKSnippetViewController *)self _podForSection:a5, a4];
  [v5 minimumInteritemSpacing];
  v7 = v6;

  return v7;
}

- (double)collectionView:(id)a3 layout:(id)a4 minimumLineSpacingForSectionAtIndex:(int64_t)a5
{
  v5 = [(SiriGKSnippetViewController *)self _podForSection:a5, a4];
  [v5 minimumLineSpacing];
  v7 = v6;

  return v7;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v5 = [(SiriGKSnippetViewController *)self _podForSection:a5, a4];
  [v5 edgeInsets];
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

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  v6 = [(SiriGKSnippetViewController *)self _podForSection:a5, a4];
  v7 = [v6 headerView];
  v8 = [(SiriGKSnippetViewController *)self delegate];
  [v8 siriViewControllerExpectedWidth:self];
  [v7 sizeThatFits:?];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForFooterInSection:(int64_t)a5
{
  v6 = [(SiriGKSnippetViewController *)self _podForSection:a5, a4];
  v7 = [v6 footerView];
  v8 = [(SiriGKSnippetViewController *)self delegate];
  [v8 siriViewControllerExpectedWidth:self];
  [v7 sizeThatFits:?];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(SiriGKSnippetViewController *)self delegate];
  [v7 siriViewControllerExpectedWidth:self];
  width = v8;

  v10 = -[SiriGKSnippetViewController _podForSection:](self, "_podForSection:", [v6 section]);
  v11 = [v10 viewCount];
  if (v11 <= [v6 item])
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    v12 = [v10 viewAtIndex:{objc_msgSend(v6, "item")}];
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

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[SiriGKSnippetViewController _podForSection:](self, "_podForSection:", [v5 section]);
  v7 = [v5 item];

  v8 = [v6 viewAtIndex:v7];
  LOBYTE(v7) = [v8 isSelectable];

  return v7;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[SiriGKSnippetViewController _podForSection:](self, "_podForSection:", [v7 section]);
  v9 = [v8 viewAtIndex:{objc_msgSend(v7, "item")}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 imageResource];

    if (v10)
    {
      v11 = [v9 imageResource];
      if (v11)
      {
        v26 = [v9 link];
        v25 = [v9 displayName];
        v12 = objc_alloc_init(SAUIImageView);
        [v12 setImage:v11];
        v13 = [v9 command];
        [v13 setPunchOutUri:v26];
        [v13 setSubtitle:v25];
        v30 = v13;
        v14 = [NSArray arrayWithObjects:&v30 count:1];
        [v12 setCommands:v14];

        v15 = [(SiriGKSnippetViewController *)self delegate];
        v29 = v12;
        v16 = [NSArray arrayWithObjects:&v29 count:1];
        [v15 siriSnippetViewController:self pushSirilandSnippets:v16];
      }

      goto LABEL_15;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v9 mapViewSnippet];

    if (v17)
    {
      v11 = [(SiriGKSnippetViewController *)self delegate];
      v18 = [v9 mapViewSnippet];
      v28 = v18;
      v19 = [NSArray arrayWithObjects:&v28 count:1];
      [v11 siriSnippetViewController:self pushSirilandSnippets:v19];
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
    v20 = [v9 command];

    if (v20)
    {
      v21 = [v9 selectionResponseTitle];

      if (v21)
      {
        v22 = objc_alloc_init(SAUIListItem);
        v23 = [v9 selectionResponseTitle];
        [v22 setSelectionText:v23];

        v24 = [(SiriGKSnippetViewController *)self delegate];
        [v24 siriViewController:self addSelectionResponse:v22];
      }

      v11 = [(SiriGKSnippetViewController *)self delegate];
      v18 = [v9 command];
      v27 = v18;
      v19 = [NSArray arrayWithObjects:&v27 count:1];
      [v11 siriViewController:self performAceCommands:v19];
      goto LABEL_14;
    }
  }

LABEL_16:
  [v6 deselectItemAtIndexPath:v7 animated:1];
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v5 = [(SiriGKSnippetViewController *)self dragItemForIndexPath:a5, a4];
  v6 = v5;
  if (v5)
  {
    v9 = v5;
    v7 = [NSArray arrayWithObjects:&v9 count:1];
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  return v7;
}

- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6
{
  v6 = [(SiriGKSnippetViewController *)self dragItemForIndexPath:a5, a4, a6.x, a6.y];
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

- (id)dragItemForIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[SiriGKSnippetViewController _podForSection:](self, "_podForSection:", [v4 section]);
  v6 = [v4 item];

  v7 = [v5 viewAtIndex:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v8 imageResource];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 imageData];

      if (v11)
      {
        v12 = [v10 imageData];
        v13 = [UIImage imageWithData:v12];
      }

      else
      {
        v21 = [v10 resourceUrl];

        if (v21)
        {
          v22 = [AFUIRemoteImageRepresentation alloc];
          v12 = [v10 resourceUrl];
          v13 = [v22 initWithImageURL:v12];
        }

        else
        {
          v12 = [v8 imageView];
          v13 = [v12 image];
        }
      }

      v19 = v13;

      v20 = [NSItemProvider alloc];
    }

    else
    {
      v17 = [v8 punchoutURL];

      if (!v17)
      {
LABEL_16:

        goto LABEL_17;
      }

      v18 = [NSItemProvider alloc];
      v19 = [v8 punchoutURL];
      v20 = v18;
    }

    v23 = [v20 initWithObject:v19];

    v17 = [[UIDragItem alloc] initWithItemProvider:v23];
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v7 punchoutURL], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
  {
    v17 = 0;
    goto LABEL_18;
  }

  v15 = [NSItemProvider alloc];
  v16 = [v7 punchoutURL];
  v8 = [v15 initWithObject:v16];

  v17 = [[UIDragItem alloc] initWithItemProvider:v8];
LABEL_17:

LABEL_18:

  return v17;
}

- (id)_podForSection:(int64_t)a3
{
  if ([(NSMutableArray *)self->_podArray count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_podArray objectAtIndex:a3];
  }

  return v5;
}

@end
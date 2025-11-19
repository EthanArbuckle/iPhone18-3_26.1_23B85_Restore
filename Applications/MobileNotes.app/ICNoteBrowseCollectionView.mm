@interface ICNoteBrowseCollectionView
- (BOOL)hasTagSection;
- (BOOL)shouldShowFolderAndOrAccountName;
- (ICNoteBrowseCollectionView)initWithPresentingViewController:(id)a3 legacyManagedObjectContext:(id)a4 modernManagedObjectContext:(id)a5 viewControllerManager:(id)a6;
- (id)_layoutBoundaryWithElementKind:(id)a3 alignment:(int64_t)a4 estimatedHeight:(double)a5;
- (id)accessibilityValue;
- (id)createLayout;
- (id)notesGallerySectionForSectionIndex:(int64_t)a3 layoutEnvironment:(id)a4;
- (id)notesListSectionForSectionIndex:(int64_t)a3 layoutEnvironment:(id)a4;
- (id)notesSectionForSectionIndex:(int64_t)a3 layoutEnvironment:(id)a4;
- (int64_t)noteListSectionHeaderModeForSectionIndex:(unint64_t)a3;
- (unint64_t)adjustedNumberOfGalleryColumnsForWidth:(double)a3;
- (unint64_t)wideModeNumberOfColumns;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)reloadLayoutAnimated:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setShouldShowRecentlyDeletedHeader:(BOOL)a3;
- (void)setShouldShowSummaryFooter:(BOOL)a3;
- (void)setWideModeNumberOfColumns:(unint64_t)a3 animated:(BOOL)a4;
@end

@implementation ICNoteBrowseCollectionView

- (id)createLayout
{
  objc_initWeak(&location, self);
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000AD63C;
  v14 = &unk_1006480B8;
  objc_copyWeak(&v15, &location);
  v3 = objc_retainBlock(&v11);
  v4 = objc_alloc_init(UICollectionViewCompositionalLayoutConfiguration);
  v5 = [NSMutableArray array:v11];
  if ([(ICNoteBrowseCollectionView *)self shouldShowRecentlyDeletedHeader])
  {
    [ICRecentlyDeletedHeaderView heightForSuperview:self];
    v6 = [(ICNoteBrowseCollectionView *)self headerLayoutItemWithEstimatedHeight:?];
    [v5 addObject:v6];
  }

  if ([(ICNoteBrowseCollectionView *)self shouldShowSummaryFooter])
  {
    v7 = [(ICNoteBrowseCollectionView *)self footerLayoutItemWithEstimatedHeight:100.0];
    [v5 addObject:v7];
  }

  if ([v5 count])
  {
    v8 = [v5 copy];
    [v4 setBoundarySupplementaryItems:v8];
  }

  v9 = [[UICollectionViewCompositionalLayout alloc] initWithSectionProvider:v3 configuration:v4];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v9;
}

- (ICNoteBrowseCollectionView)initWithPresentingViewController:(id)a3 legacyManagedObjectContext:(id)a4 modernManagedObjectContext:(id)a5 viewControllerManager:(id)a6
{
  v12.receiver = self;
  v12.super_class = ICNoteBrowseCollectionView;
  v6 = [(ICCollectionView *)&v12 initWithPresentingViewController:a3 legacyManagedObjectContext:a4 modernManagedObjectContext:a5 viewControllerManager:a6];
  v7 = v6;
  if (v6)
  {
    numberOfColumnsAdjustmentWidths = v6->_numberOfColumnsAdjustmentWidths;
    v6->_numberOfColumnsAdjustmentWidths = &off_10066E2F0;

    if (qword_1006CB2E0 != -1)
    {
      sub_1004DCB0C();
    }

    [(ICNoteBrowseCollectionView *)v7 setPreservesSuperviewLayoutMargins:1];
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v7 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

    v10 = +[NSUserDefaults standardUserDefaults];
    [v10 ic_addObserver:v7 forKeyPath:@"ICNoteBrowseCollectionViewGalleryWideModeNumberOfColumnsKey" context:&off_1006BB0C0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 ic_removeObserver:self forKeyPath:@"ICNoteBrowseCollectionViewGalleryWideModeNumberOfColumnsKey" context:&off_1006BB0C0];

  v5.receiver = self;
  v5.super_class = ICNoteBrowseCollectionView;
  [(ICNoteBrowseCollectionView *)&v5 dealloc];
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  if ([(ICNoteBrowseCollectionView *)self shouldShowRecentlyDeletedHeader]|| [(ICNoteBrowseCollectionView *)self hasTagSection])
  {
    v4 = [(ICNoteBrowseCollectionView *)self createLayout];
    [(ICNoteBrowseCollectionView *)self setCollectionViewLayout:v4];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(ICNoteBrowseCollectionView *)self frame];
  v9 = v8;
  v11.receiver = self;
  v11.super_class = ICNoteBrowseCollectionView;
  [(ICNoteBrowseCollectionView *)&v11 setFrame:x, y, width, height];
  if (v9 != width)
  {
    if ([(ICNoteBrowseCollectionView *)self shouldShowRecentlyDeletedHeader])
    {
      v10 = [(ICNoteBrowseCollectionView *)self createLayout];
      [(ICNoteBrowseCollectionView *)self setCollectionViewLayout:v10];
    }
  }
}

- (void)setShouldShowRecentlyDeletedHeader:(BOOL)a3
{
  if (self->_shouldShowRecentlyDeletedHeader != a3)
  {
    self->_shouldShowRecentlyDeletedHeader = a3;
    v5 = [(ICNoteBrowseCollectionView *)self createLayout];
    [(ICNoteBrowseCollectionView *)self setCollectionViewLayout:v5];
  }
}

- (void)setShouldShowSummaryFooter:(BOOL)a3
{
  if (self->_shouldShowSummaryFooter != a3)
  {
    self->_shouldShowSummaryFooter = a3;
    v5 = [(ICNoteBrowseCollectionView *)self createLayout];
    [(ICNoteBrowseCollectionView *)self setCollectionViewLayout:v5];
  }
}

- (id)notesSectionForSectionIndex:(int64_t)a3 layoutEnvironment:(id)a4
{
  v6 = a4;
  v7 = [(ICNoteBrowseCollectionView *)self noteContainerViewMode];
  if (v7 == -1)
  {
    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1004D7E74(v10);
    }

LABEL_9:
    v9 = [(ICNoteBrowseCollectionView *)self notesListSectionForSectionIndex:a3 layoutEnvironment:v6];
    goto LABEL_10;
  }

  if (v7 != 1)
  {
    if (v7)
    {
      v8 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v9 = [(ICNoteBrowseCollectionView *)self notesGallerySectionForSectionIndex:a3 layoutEnvironment:v6];
LABEL_10:
  v8 = v9;
LABEL_11:

  return v8;
}

- (unint64_t)adjustedNumberOfGalleryColumnsForWidth:(double)a3
{
  v5 = [(ICCollectionView *)self viewControllerManager];
  if ([v5 hasCompactWidth])
  {

    v6 = ICAccessibilityAccessibilityLargerTextSizesEnabled();
    goto LABEL_3;
  }

  if ((+[UIDevice ic_isVision]& 1) != 0)
  {
    v9 = [(ICCollectionView *)self viewControllerManager];
    v10 = [v9 isMainSplitViewDisplayModeSecondaryOnly];

    v6 = ICAccessibilityAccessibilityLargerTextSizesEnabled();
    if (v10)
    {
LABEL_3:
      if (v6)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }

      goto LABEL_6;
    }
  }

  else
  {

    ICAccessibilityAccessibilityLargerTextSizesEnabled();
  }

  v7 = [(ICNoteBrowseCollectionView *)self wideModeNumberOfColumns];
  v11 = [(ICNoteBrowseCollectionView *)self numberOfColumnsAdjustmentWidths];
  v12 = [v11 count];

  if (+[UIDevice ic_isVision]&& v12)
  {
    v13 = 0;
    v14 = v12 + 1;
    while (1)
    {
      v15 = [(ICNoteBrowseCollectionView *)self numberOfColumnsAdjustmentWidths];
      v16 = [v15 objectAtIndexedSubscript:v13];
      [v16 floatValue];
      v18 = v17;

      if (v18 > a3)
      {
        break;
      }

      ++v13;
      if (--v14 == 1)
      {
        goto LABEL_6;
      }
    }

    v7 -= v14;
  }

LABEL_6:
  if (v7 <= 3)
  {
    return 3;
  }

  else
  {
    return v7;
  }
}

- (id)notesGallerySectionForSectionIndex:(int64_t)a3 layoutEnvironment:(id)a4
{
  v55 = a4;
  v5 = [(ICCollectionView *)self diffableDataSource];
  v57 = [v5 snapshot];

  v52 = [v57 sectionIdentifiers];
  v56 = [v52 objectAtIndexedSubscript:a3];
  v6 = [(ICCollectionView *)self diffableDataSource];
  v54 = [v6 snapshotForSection:v56];

  v51 = [v54 items];
  v50 = [v51 lastObject];
  v7 = [v57 sectionIdentifiers];
  v45 = [v7 count];

  v8 = [v57 numberOfItemsInSection:v56];
  if (v50)
  {
    v9 = [v54 parentOfChildItem:?];
    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v55 container];
  [v11 effectiveContentSize];
  v13 = v12;

  v14 = [(ICNoteBrowseCollectionView *)self adjustedNumberOfGalleryColumnsForWidth:v13];
  [(ICNoteBrowseCollectionView *)self directionalLayoutMargins];
  v16 = v15;
  [(ICNoteBrowseCollectionView *)self ic_directionalSafeAreaInsets];
  v18 = v17;
  [(ICNoteBrowseCollectionView *)self directionalLayoutMargins];
  [(ICNoteBrowseCollectionView *)self ic_directionalSafeAreaInsets];
  v19 = 0.0;
  if (v13 >= 1.0)
  {
    v19 = (v13 + (v14 - 1) * -16.0) / (v13 * v14);
  }

  if (v19 == 0.0)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = v19;
  }

  v49 = [NSCollectionLayoutDimension fractionalWidthDimension:v20];
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v21 = [v55 traitCollection];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_1000AE11C;
  v58[3] = &unk_1006480E0;
  *&v58[6] = v20;
  *&v58[7] = v13;
  v58[4] = self;
  v58[5] = &v59;
  [v21 performAsCurrentTraitCollection:v58];

  v44 = [NSCollectionLayoutDimension absoluteDimension:v60[3]];
  v43 = [NSCollectionLayoutSize sizeWithWidthDimension:v49 heightDimension:?];
  v47 = [NSCollectionLayoutItem itemWithLayoutSize:?];
  v48 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v42 = [NSCollectionLayoutDimension absoluteDimension:v60[3]];
  v46 = [NSCollectionLayoutSize sizeWithWidthDimension:v48 heightDimension:?];
  v63 = v47;
  v22 = [NSArray arrayWithObjects:&v63 count:1];
  v23 = [NSCollectionLayoutGroup horizontalGroupWithLayoutSize:v46 subitems:v22];

  v24 = [NSCollectionLayoutSpacing flexibleSpacing:0.0];
  [v23 setInterItemSpacing:v24];

  if (v10)
  {
    v41 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    v25 = [NSCollectionLayoutDimension estimatedDimension:44.0];
    v40 = [NSCollectionLayoutSize sizeWithWidthDimension:v41 heightDimension:?];
    v26 = [NSCollectionLayoutItem itemWithLayoutSize:?];
    v27 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
    v28 = [NSCollectionLayoutDimension estimatedDimension:v60[3] + 60.0];
    v29 = [NSCollectionLayoutSize sizeWithWidthDimension:v27 heightDimension:v28];
    v30 = [NSMutableArray arrayWithObject:v26];
    if (v8 <= 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = v8;
    }

    v32 = v25;
    do
    {
      [v30 addObject:v23];
      --v31;
    }

    while (v31);
    v33 = [v30 copy];
    v34 = [NSCollectionLayoutGroup verticalGroupWithLayoutSize:v29 subitems:v33];

    v35 = [NSCollectionLayoutSection sectionWithGroup:v34];
  }

  else
  {
    v35 = [NSCollectionLayoutSection sectionWithGroup:v23];
  }

  [v35 setInterGroupSpacing:16.0];
  v36 = [UIColor colorWithDynamicProvider:&stru_100648120];
  [(ICNoteBrowseCollectionView *)self setBackgroundColor:v36];

  v37 = v16 - v18;
  if (v45 == 1)
  {
    v38 = v37 + -2.0;
  }

  else
  {
    v38 = 0.0;
  }

  if (v45 - 1 != a3)
  {
    [v35 contentInsets];
  }

  [v35 setContentInsets:{v38, v37}];

  _Block_object_dispose(&v59, 8);

  return v35;
}

- (BOOL)shouldShowFolderAndOrAccountName
{
  if ([(ICNoteBrowseCollectionView *)self shouldShowFolderName])
  {
    return 1;
  }

  return [(ICNoteBrowseCollectionView *)self shouldShowAccountName];
}

- (id)notesListSectionForSectionIndex:(int64_t)a3 layoutEnvironment:(id)a4
{
  v6 = a4;
  v7 = [(ICNoteBrowseCollectionView *)self ic_behavior];
  v8 = +[UIDevice ic_isVision];
  if (_UISolariumEnabled())
  {
    v9 = [v6 traitCollection];
    v11 = [v9 splitViewControllerLayoutEnvironment] == 1 || v7 == 1;

    v12 = 2;
    if (v11)
    {
      v12 = 4;
    }
  }

  else
  {
    v11 = 0;
    v12 = 2;
  }

  if (v8)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  v14 = [[UICollectionLayoutListConfiguration alloc] initWithAppearance:v13];
  if (v11)
  {
    if (v7 == 1)
    {
      +[UIColor clearColor];
    }

    else
    {
      +[UIColor systemBackgroundColor];
    }
    v15 = ;
    [v14 setBackgroundColor:v15];
    [(ICNoteBrowseCollectionView *)self setBackgroundColor:v15];

    [v14 setHeaderMode:{-[ICNoteBrowseCollectionView noteListSectionHeaderModeForSectionIndex:](self, "noteListSectionHeaderModeForSectionIndex:", a3)}];
    objc_initWeak(&location, self);
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_1000AE4EC;
    v26 = &unk_100648148;
    objc_copyWeak(&v27, &location);
    [v14 setItemSeparatorHandler:&v23];
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  else
  {
    [v14 setHeaderMode:{-[ICNoteBrowseCollectionView noteListSectionHeaderModeForSectionIndex:](self, "noteListSectionHeaderModeForSectionIndex:", a3)}];
  }

  v16 = [(ICCollectionView *)self leadingSwipeActionsConfigurationProvider:v23];
  [v14 setLeadingSwipeActionsConfigurationProvider:v16];

  v17 = [(ICCollectionView *)self trailingSwipeActionsConfigurationProvider];
  [v14 setTrailingSwipeActionsConfigurationProvider:v17];

  v18 = [NSCollectionLayoutSection sectionWithListConfiguration:v14 layoutEnvironment:v6];
  [v18 contentInsets];
  if (v8)
  {
    v21 = 12.0;
    v20 = 0.0;
    v19 = 12.0;
  }

  [v18 setContentInsets:{0.0, v19, v20, v21}];

  return v18;
}

- (int64_t)noteListSectionHeaderModeForSectionIndex:(unint64_t)a3
{
  v5 = [(ICCollectionView *)self diffableDataSource];
  v6 = [v5 snapshot];
  v7 = [v6 sectionIdentifiers];

  if ([v7 count] <= a3)
  {
    v10 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndexedSubscript:a3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 sectionType];
      v10 = 0;
      if (v9 <= 7)
      {
        if (((1 << v9) & 0xEE) != 0)
        {
          v10 = 2;
        }

        else if (v9 == 4)
        {
          if ([(ICNoteBrowseCollectionView *)self hasTagSection])
          {
            v12 = 2;
          }

          else
          {
            v12 = 1;
          }

          v10 = 2 * ([v7 count] > v12);
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)_layoutBoundaryWithElementKind:(id)a3 alignment:(int64_t)a4 estimatedHeight:(double)a5
{
  v7 = a3;
  v8 = [NSCollectionLayoutDimension fractionalWidthDimension:1.0];
  v9 = [NSCollectionLayoutDimension estimatedDimension:a5];
  v10 = [NSCollectionLayoutSize sizeWithWidthDimension:v8 heightDimension:v9];
  v11 = [NSCollectionLayoutBoundarySupplementaryItem boundarySupplementaryItemWithLayoutSize:v10 elementKind:v7 alignment:a4];

  return v11;
}

- (id)accessibilityValue
{
  v2 = [(ICNoteBrowseCollectionView *)self noteContainerViewMode];
  if (!v2)
  {
    v3 = @"List";
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = @"Gallery";
LABEL_5:
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:&stru_100661CF0 table:0];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  if (([(ICNoteBrowseCollectionView *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/UI/Note/Browse/Views/ICNoteBrowseCollectionView.m"]& 1) != 0)
  {
    v13 = [(ICNoteBrowseCollectionView *)self ic_shouldIgnoreObserveValue:v10 ofObject:v11 forKeyPath:v12];

    if (a6 == &off_1006BB0C0 && (v13 & 1) == 0)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000AEA4C;
      block[3] = &unk_100645E30;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = ICNoteBrowseCollectionView;
    [(ICNoteBrowseCollectionView *)&v15 observeValueForKeyPath:v12 ofObject:v11 change:v10 context:a6];
  }
}

- (BOOL)hasTagSection
{
  v2 = [(ICCollectionView *)self diffableDataSource];
  v3 = [v2 snapshot];
  v4 = [v3 sectionIdentifiers];
  v5 = [v4 ic_containsObjectPassingTest:&stru_100648168];

  return v5;
}

- (unint64_t)wideModeNumberOfColumns
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 integerForKey:@"ICNoteBrowseCollectionViewGalleryWideModeNumberOfColumnsKey"];

  return v3;
}

- (void)setWideModeNumberOfColumns:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = +[NSUserDefaults standardUserDefaults];
  [v7 setInteger:a3 forKey:@"ICNoteBrowseCollectionViewGalleryWideModeNumberOfColumnsKey"];

  [(ICNoteBrowseCollectionView *)self reloadLayoutAnimated:v4];
}

- (void)reloadLayoutAnimated:(BOOL)a3
{
  v3 = a3;
  v6 = [(ICNoteBrowseCollectionView *)self createLayout];
  if (v3)
  {
    v5 = +[ICNoteBrowseCollectionViewAnimator animator];
    [(ICNoteBrowseCollectionView *)self setCollectionViewLayout:v6 withAnimator:v5];
  }

  else
  {
    [(ICNoteBrowseCollectionView *)self setCollectionViewLayout:v6];
  }
}

@end
@interface BKTOCContentViewController
- (AEAssetSharingConnectionClient)assetSharingConnectionClient;
- (AEMinimalTemplate)template;
- (BKActivityIndicatorOverlayView)activityIndicatorOverlayView;
- (BKTOCContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (BKTOCImageCache2)imageCache;
- (BKTOCWebViewCellLoadQueue)requestQueue;
- (BOOL)p_willUseWebViewForCellWithChapter:(id)a3;
- (BOOL)shareItemAtIndexPath:(id)a3;
- (BOOL)showRowForCurrentLocation;
- (UIToolbar)editingToolbar;
- (double)calculateFontSize;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_bkTableView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)_indexPathForRowNearestPageNumber:(int64_t)a3 pageNumberForObjectSelector:(SEL)a4 isExactPageMatch:(BOOL *)a5;
- (id)author;
- (id)bookSharingRequestClient:(id)a3 annotationAtIndex:(unint64_t)a4;
- (id)bookSharingRequestClient:(id)a3 selectedAnnotationAtIndex:(unint64_t)a4;
- (id)bookTitle;
- (id)bookmarksFetchedResultsController;
- (id)currentLocation;
- (id)dateFormatter;
- (id)deleteSwipeAction:(id)a3;
- (id)editToolbarFooterTextWithCount:(unint64_t)a3;
- (id)fetchedResultsController;
- (id)fontFamily;
- (id)fontForChapter:(id)a3;
- (id)highlightedTextLabelFont;
- (id)indexPathOfLastRow;
- (id)p_annotationForIndexPath:(id)a3;
- (id)p_annotationsForRowItems:(id)a3;
- (id)p_selectedAnnotations;
- (id)pageTitleForAnnotation:(id)a3;
- (id)pageTitleForChapter:(id)a3;
- (id)reuseIdentifier;
- (id)reuseIdentifierForCellType:(unint64_t)a3;
- (id)shareSwipeAction:(id)a3;
- (id)storeURL;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tocIndexPathForRowNearestPageNumber:(int64_t)a3;
- (int)assetSharingConnectionTypeForClient:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)pageNumberForCurrentLocation;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (int64_t)tableViewSeparatorStyle;
- (unint64_t)bookSharingRequestNumberOfAnnotations:(id)a3;
- (unint64_t)bookSharingRequestNumberOfSelectedAnnotations:(id)a3;
- (void)_configureAnnotationCell:(id)a3 forAnnotation:(id)a4 forRowAtIndexPath:(id)a5;
- (void)_configurePointAnnotationCell:(id)a3 forRowAtIndexPath:(id)a4;
- (void)_configureRangeAnnotationCell:(id)a3 forRowAtIndexPath:(id)a4;
- (void)_configureTOCCell:(id)a3 forRowAtIndexPath:(id)a4;
- (void)_configureWebTOCCell:(id)a3 forRowAtIndexPath:(id)a4;
- (void)_dumpCachedWebContentAndReload;
- (void)_hideActivityIndicator;
- (void)_notifyDelegateContentDidChange;
- (void)_showActivityIndicator;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateColors;
- (void)_updateContentInsets;
- (void)assetSharingConnectionClient:(id)a3 performRequest:(int)a4;
- (void)beginAssetSharingConnectionWithClient:(id)a3;
- (void)beginEditingIfNeeded;
- (void)beginEditingMode;
- (void)beginSelectionStartingWithIndexPath:(id)a3;
- (void)configureCell:(id)a3 atIndexPath:(id)a4;
- (void)contentBeganLoadingForRequest:(id)a3;
- (void)contentFinishedLoadingForRequest:(id)a3 preferredHeight:(double)a4 error:(id)a5;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controller:(id)a3 didChangeSection:(id)a4 atIndex:(unint64_t)a5 forChangeType:(unint64_t)a6;
- (void)controllerDidChangeContent:(id)a3;
- (void)controllerWillChangeContent:(id)a3;
- (void)dealloc;
- (void)deleteAnnotationAtIndexPath:(id)a3;
- (void)deleteFromToolbar;
- (void)deleteSelectedAnnotations;
- (void)endAssetSharingConnectionWithClient:(id)a3;
- (void)endEditingIfNeeded;
- (void)endEditingMode;
- (void)installEditModeToolbar;
- (void)notifyBookSharingClientSelectionChanged;
- (void)releaseViews;
- (void)reload;
- (void)removeEditModeToolbar;
- (void)removeHighlightFromCurrentLocation;
- (void)scrollViewDidScroll:(id)a3;
- (void)selectAll:(id)a3;
- (void)selectNone:(id)a3;
- (void)setBook:(id)a3;
- (void)setCellLoadingOperationCount:(int64_t)a3;
- (void)setNeedsRestyle;
- (void)setSharedWebView:(id)a3;
- (void)setTheme:(id)a3;
- (void)shareFromToolbar;
- (void)shareSelectedAnnotationsFromSourceView:(id)a3;
- (void)tableView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 performPrimaryActionForRowAtIndexPath:(id)a4;
- (void)updateToolbarContent;
- (void)updateView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BKTOCContentViewController

- (BKTOCContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = BKTOCContentViewController;
  v4 = [(BKTOCViewController *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = +[UITraitCollection bc_allAPITraits];
    v6 = [(BKTOCContentViewController *)v4 registerForTraitChanges:v5 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v4;
}

- (void)releaseViews
{
  [*(&self->super._verticalCenteringInsets.right + 4) setDelegate:0];
  [*(&self->super._verticalCenteringInsets.right + 4) setDataSource:0];
  [*(&self->super._verticalCenteringInsets.right + 4) setDragDelegate:0];
  v3 = *(&self->super._verticalCenteringInsets.right + 4);
  *(&self->super._verticalCenteringInsets.right + 4) = 0.0;

  [(BKTOCContentViewController *)self setRecenteredIndexPath:0];
  v4.receiver = self;
  v4.super_class = BKTOCContentViewController;
  [(BKTOCViewController *)&v4 releaseViews];
}

- (void)dealloc
{
  [(BKTOCContentViewController *)self releaseViews];
  v3.receiver = self;
  v3.super_class = BKTOCContentViewController;
  [(BKTOCViewController *)&v3 dealloc];
}

- (id)dateFormatter
{
  v3 = (&self->_tableView + 4);
  if (!*(&self->_tableView + 4))
  {
    v4 = objc_alloc_init(NSDateFormatter);
    v5 = *v3;
    *v3 = v4;

    [*v3 setDateStyle:4];
    [*v3 setTimeStyle:0];
    [*v3 setDoesRelativeDateFormatting:1];
  }

  v6 = (&self->_dateFormatter + 4);
  if (!*(&self->_dateFormatter + 4))
  {
    v7 = objc_alloc_init(NSDateFormatter);
    v8 = *v6;
    *v6 = v7;

    [*v6 setDateStyle:2];
    [*v6 setTimeStyle:0];
    [*v6 setDoesRelativeDateFormatting:1];
  }

  if ([(BKTOCViewController *)self usesPopoverStyle])
  {
    v9 = [(BKTOCContentViewController *)self traitCollection];
    v10 = [v9 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v10);

    if (IsAccessibilityCategory)
    {
      v3 = v6;
    }
  }

  v12 = *v3;

  return v12;
}

- (int64_t)tableViewSeparatorStyle
{
  if (![(BKTOCViewController *)self usesPopoverStyle])
  {
    return 1;
  }

  result = [(BKTOCViewController *)self tocContentType];
  if (result)
  {
    return 1;
  }

  return result;
}

- (void)viewDidLoad
{
  v32.receiver = self;
  v32.super_class = BKTOCContentViewController;
  [(BKContentViewController *)&v32 viewDidLoad];
  v3 = [(BKTOCContentViewController *)self view];
  [v3 bounds];
  v8 = [[UITableView alloc] initWithFrame:0 style:{v4, v5, v6, v7}];
  v9 = *(&self->super._verticalCenteringInsets.right + 4);
  *(&self->super._verticalCenteringInsets.right + 4) = v8;

  [*(&self->super._verticalCenteringInsets.right + 4) setClipsToBounds:0];
  [*(&self->super._verticalCenteringInsets.right + 4) setDelegate:self];
  [*(&self->super._verticalCenteringInsets.right + 4) setDataSource:self];
  [*(&self->super._verticalCenteringInsets.right + 4) setSeparatorStyle:{-[BKTOCContentViewController tableViewSeparatorStyle](self, "tableViewSeparatorStyle")}];
  [*(&self->super._verticalCenteringInsets.right + 4) setCellLayoutMarginsFollowReadableWidth:0];
  [*(&self->super._verticalCenteringInsets.right + 4) setDragDelegate:self];
  [*(&self->super._verticalCenteringInsets.right + 4) setAllowsMultipleSelectionDuringEditing:1];
  [*(&self->super._verticalCenteringInsets.right + 4) setAutomaticallyAdjustsScrollIndicatorInsets:0];
  [v3 addSubview:*(&self->super._verticalCenteringInsets.right + 4)];
  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"preferredContentSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

  [*(&self->super._verticalCenteringInsets.right + 4) bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [*(&self->super._verticalCenteringInsets.right + 4) safeAreaInsets];
  v20 = v14 + v19;
  v23 = v16 - (v21 + v22);
  v33.size.height = v18 - (v19 + v24);
  v33.origin.x = v12 + v21;
  v33.origin.y = v20;
  v33.size.width = v23;
  v25 = [BEWebViewFactory viewConfiguredForWebTOC:0.0, 0.0, CGRectGetWidth(v33), 52.0];
  [(BKTOCContentViewController *)self setSharedWebView:v25];

  v26 = objc_alloc_init(NSMutableDictionary);
  [(BKTOCContentViewController *)self setRequestToIndexPath:v26];

  v27 = objc_alloc_init(NSMutableDictionary);
  [(BKTOCContentViewController *)self setCachedRowContents:v27];

  [*(&self->super._verticalCenteringInsets.right + 4) registerClass:objc_opt_class() forCellReuseIdentifier:@"tocCell + webView"];
  [*(&self->super._verticalCenteringInsets.right + 4) registerClass:objc_opt_class() forCellReuseIdentifier:@"tocCell"];
  [*(&self->super._verticalCenteringInsets.right + 4) registerClass:objc_opt_class() forCellReuseIdentifier:@"bookmarkCell"];
  [*(&self->super._verticalCenteringInsets.right + 4) registerClass:objc_opt_class() forCellReuseIdentifier:@"noteCell"];
  v28 = objc_alloc_init(_UIScrollPocketCollectorInteraction);
  v29 = *(&self->_descriptionView + 4);
  *(&self->_descriptionView + 4) = v28;

  v30 = [[_UIScrollPocketContainerInteraction alloc] initWithScrollView:0 edge:4];
  v31 = *(&self->_scrollPocketCollector + 4);
  *(&self->_scrollPocketCollector + 4) = v30;

  [*(&self->_scrollPocketCollector + 4) _setCollectorInteraction:*(&self->_descriptionView + 4)];
  [(BKTOCContentViewController *)self _updateColors];
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  [(BKTOCContentViewController *)self _updateColors:a3];
  [*(&self->super._verticalCenteringInsets.right + 4) reloadData];

  [(BKTOCContentViewController *)self _notifyDelegateContentDidChange];
}

- (void)setSharedWebView:(id)a3
{
  v4 = a3;
  v5 = *(&self->_requestQueue + 4);
  if (v5)
  {
    [v5 removeFromSuperview];
  }

  v6 = *(&self->_requestQueue + 4);
  *(&self->_requestQueue + 4) = v4;
  v7 = v4;

  v8 = +[UIColor clearColor];
  [*(&self->_requestQueue + 4) setBackgroundColor:v8];

  v9 = +[UIColor clearColor];
  v10 = [*(&self->_requestQueue + 4) scrollView];
  [v10 setBackgroundColor:v9];

  [*(&self->_requestQueue + 4) setOpaque:0];
  [*(&self->_requestQueue + 4) setAutoresizingMask:0];
  [*(&self->_requestQueue + 4) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(&self->_requestQueue + 4) setUserInteractionEnabled:0];
  v11 = [(BKTOCContentViewController *)self view];
  [v11 addSubview:*(&self->_requestQueue + 4)];

  v12 = [(BKTOCContentViewController *)self view];
  [v12 sendSubviewToBack:*(&self->_requestQueue + 4)];

  [*(&self->_requestQueue + 4) frame];
  [*(&self->_requestQueue + 4) setFrame:{-CGRectGetWidth(v16), v16.origin.y, v16.size.width, v16.size.height}];
  v13 = *(&self->_requestQueue + 4);
  v14 = [(BKTOCContentViewController *)self requestQueue];
  [v14 setWebView:v13];
}

- (void)_updateColors
{
  v13 = [(BKTOCContentViewController *)self themePage];
  v3 = +[UIColor clearColor];
  v4 = [(BKTOCContentViewController *)self viewIfLoaded];
  [v4 setBackgroundColor:v3];

  [*(&self->super._verticalCenteringInsets.right + 4) setBackgroundColor:v3];
  v5 = [v13 tableViewSeparatorColor];
  [*(&self->super._verticalCenteringInsets.right + 4) setSeparatorColor:v5];

  v6 = [v13 primaryTextColor];
  v7 = [*(&self->_sharedWebView + 4) titleLabel];
  [v7 setTextColor:v6];

  v8 = [v13 secondaryTextColor];
  v9 = [*(&self->_sharedWebView + 4) descriptionLabel];
  [v9 setTextColor:v8];

  v10 = [v13 primaryTextColor];
  v11 = [(BKTOCContentViewController *)self view];
  [v11 setTintColor:v10];

  v12 = [v13 secondaryTextColor];
  [*(&self->super._verticalCenteringInsets.right + 4) setTintColor:v12];
}

- (void)setTheme:(id)a3
{
  v4.receiver = self;
  v4.super_class = BKTOCContentViewController;
  [(BKTOCViewController *)&v4 setTheme:a3];
  [(BKTOCContentViewController *)self _updateColors];
  [(BKTOCContentViewController *)self _dumpCachedWebContentAndReload];
  [*(&self->super._verticalCenteringInsets.right + 4) reloadData];
  [(BKTOCContentViewController *)self _notifyDelegateContentDidChange];
}

- (BKTOCWebViewCellLoadQueue)requestQueue
{
  v3 = *(&self->_template + 4);
  if (!v3)
  {
    v4 = objc_opt_new();
    v5 = *(&self->_template + 4);
    *(&self->_template + 4) = v4;

    v6 = [(BKTOCContentViewController *)self imageCache];
    [*(&self->_template + 4) setImageCache:v6];

    v3 = *(&self->_template + 4);
  }

  return v3;
}

- (AEMinimalTemplate)template
{
  v3 = *(&self->_imageCache + 4);
  if (!v3)
  {
    v4 = AEBundle();
    v5 = [v4 URLForResource:@"toc_web_cell.html" withExtension:@"tmpl"];

    v10 = 0;
    v6 = [[AEMinimalTemplate alloc] initWithURL:v5 error:&v10];
    v7 = v10;
    v8 = *(&self->_imageCache + 4);
    *(&self->_imageCache + 4) = v6;

    v3 = *(&self->_imageCache + 4);
  }

  return v3;
}

- (BKTOCImageCache2)imageCache
{
  v3 = *(&self->_requestToIndexPath + 4);
  if (!v3)
  {
    v4 = objc_opt_new();
    v5 = *(&self->_requestToIndexPath + 4);
    *(&self->_requestToIndexPath + 4) = v4;

    v3 = *(&self->_requestToIndexPath + 4);
  }

  return v3;
}

- (id)_bkTableView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(BKContentViewController *)self book];
  v8 = [v7 sampleContent];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    goto LABEL_6;
  }

  v10 = [(BKTOCContentViewController *)self fetchedResultsController];
  v11 = [v10 objectAtIndexPath:v6];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = v11;
  if ([v12 annotationIsBookmark])
  {

LABEL_5:
LABEL_6:
    v13 = &__NSArray0__struct;
    goto LABEL_7;
  }

  v15 = [AEAnnotationDragItemProvider itemProviderWithAnnotation:v12 propertyProvider:self];
  v16 = [[NSItemProvider alloc] initWithObject:v15];
  v17 = [[UIDragItem alloc] initWithItemProvider:v16];

  if (!v17)
  {
    goto LABEL_6;
  }

  v18 = v17;
  v13 = [NSArray arrayWithObjects:&v18 count:1];

LABEL_7:

  return v13;
}

- (void)_updateContentInsets
{
  v3 = [(BKContentViewController *)self layoutDelegate];

  if (v3)
  {
    v4 = [(BKContentViewController *)self layoutDelegate];
    [v4 edgeInsetsForContentViewController:self];
    [(BKContentViewController *)self setContentInsets:?];

    v5 = [(BKContentViewController *)self layoutDelegate];
    [v5 separatorInsetsForContentViewController:self];
    [(BKContentViewController *)self setSeparatorInsets:?];
  }

  else if (_UISolariumEnabled())
  {

    [(BKContentViewController *)self setSeparatorInsets:0.0, 25.0, 0.0, 25.0];
  }
}

- (void)updateView
{
  if (![(BKTOCContentViewController *)self isViewLoaded]|| ![(BKTOCContentViewController *)self isVisible])
  {
    return;
  }

  [(BKTOCContentViewController *)self _updateContentInsets];
  v3 = [(BKTOCContentViewController *)self view];
  [v3 bounds];
  [*(&self->super._verticalCenteringInsets.right + 4) setFrame:?];

  [(BKContentViewController *)self separatorInsets];
  [*(&self->super._verticalCenteringInsets.right + 4) setSeparatorInset:?];
  v4 = [(BKTOCContentViewController *)self editingToolbar];
  [v4 frame];
  [*(&self->super._verticalCenteringInsets.right + 4) setContentInset:{0.0, 0.0, v5, 0.0}];

  v6 = [(BKTOCContentViewController *)self editingToolbar];
  [v6 frame];
  v8 = v7;
  v9 = [(BKTOCContentViewController *)self view];
  [v9 safeAreaInsets];
  [*(&self->super._verticalCenteringInsets.right + 4) setScrollIndicatorInsets:{0.0, 0.0, v8 + v10, 0.0}];

  v11 = [(BKTOCContentViewController *)self view];
  v51 = [v11 viewWithTag:9999];

  [v51 removeFromSuperview];
  [*(&self->super._verticalCenteringInsets.right + 4) setAlpha:1.0];
  if ([(BKTOCViewController *)self tocContentType])
  {
    v12 = [(BKTOCContentViewController *)self fetchedResultsController];
    v13 = [v12 fetchedObjects];
    v14 = [v13 count];

    if (!v14)
    {
      [*(&self->_sharedWebView + 4) removeFromSuperview];
      v15 = objc_alloc_init(BKTOCBookmarksDescription);
      v16 = +[UIColor clearColor];
      [(BKTOCBookmarksDescription *)v15 setBackgroundColor:v16];

      v50 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2];
      v49 = [v50 fontDescriptorWithDesign:UIFontDescriptorSystemDesignSerif];
      v17 = [UIFont fontWithDescriptor:0.0 size:?];
      v18 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
      v19 = [(BKTOCBookmarksDescription *)v15 titleLabel];
      [v19 setFont:v17];

      v20 = [(BKTOCBookmarksDescription *)v15 descriptionLabel];
      [v20 setFont:v18];

      if ([(BKTOCViewController *)self tocContentType]== &dword_0 + 1)
      {
        v21 = @"Tap a page you want to bookmark, tap the menu icon, then tap the bookmark button.";
        v22 = @"No Bookmarks";
      }

      else
      {
        if ([(BKTOCViewController *)self tocContentType]!= &dword_0 + 2)
        {
          v26 = 0;
          v24 = 0;
          goto LABEL_12;
        }

        v21 = @"Tap and hold on a word. You can extend the selection to include an entire passage. Then tap “Highlight” or “Note”. You can add notes to highlighted passages later by tapping the highlight and then “Note”.";
        v22 = @"No Highlights or Notes";
      }

      v23 = AEBundle();
      v24 = [v23 localizedStringForKey:v22 value:&stru_1E7188 table:0];

      v25 = AEBundle();
      v26 = [v25 localizedStringForKey:v21 value:&stru_1E7188 table:0];

LABEL_12:
      v27 = [(BKTOCBookmarksDescription *)v15 titleLabel];
      [v27 setText:v24];

      v28 = [(BKTOCBookmarksDescription *)v15 descriptionLabel];
      [v28 setText:v26];

      v29 = [(BKTOCContentViewController *)self themePage];
      v30 = [v29 secondaryTextColor];

      v31 = [(BKTOCBookmarksDescription *)v15 titleLabel];
      [v31 setTextColor:v30];

      v32 = [(BKTOCBookmarksDescription *)v15 descriptionLabel];
      [v32 setTextColor:v30];

      v33 = [(BKTOCContentViewController *)self view];
      [v33 bounds];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;
      [(BKContentViewController *)self contentInsets];
      [(BKTOCBookmarksDescription *)v15 setFrame:v35 + v45, v37 + v42, v39 - (v45 + v43), v41 - (v42 + v44)];

      [(BKTOCBookmarksDescription *)v15 setTag:9999];
      v46 = *(&self->_sharedWebView + 4);
      *(&self->_sharedWebView + 4) = v15;
      v47 = v15;

      v48 = [(BKTOCContentViewController *)self view];
      [v48 addSubview:v47];

      [*(&self->super._verticalCenteringInsets.right + 4) setAlpha:0.0];
    }
  }

  [(BKTOCContentViewController *)self showRowForCurrentLocation];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = BKTOCContentViewController;
  [(BKTOCViewController *)&v5 viewWillAppear:a3];
  [(BKTOCContentViewController *)self updateView];
  [(BKTOCContentViewController *)self reload];
  if (([*(&self->super._verticalCenteringInsets.right + 4) isEditing] & 1) == 0)
  {
    v4 = [*(&self->super._verticalCenteringInsets.right + 4) indexPathForSelectedRow];
    [*(&self->super._verticalCenteringInsets.right + 4) deselectRowAtIndexPath:v4 animated:0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = BKTOCContentViewController;
  [(BKTOCViewController *)&v6 viewDidAppear:a3];
  v4 = [NSDate dateWithTimeIntervalSinceNow:0.5];
  v5 = *(&self->_isProgrammaticScrolling + 4);
  *(&self->_isProgrammaticScrolling + 4) = v4;

  [*(&self->super._verticalCenteringInsets.right + 4) flashScrollIndicators];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((BYTE4(self->_recenteredIndexPath) & 1) == 0)
  {
    v4 = *(&self->_isProgrammaticScrolling + 4);
    if (v4)
    {
      v7 = v5;
      v4 = [v4 timeIntervalSinceNow];
      v5 = v7;
      if (v6 <= 0.0)
      {
        BYTE4(self->_readyForUserScrollDate) = 1;
      }
    }
  }

  _objc_release_x1(v4, v5);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = BKTOCContentViewController;
  v7 = a4;
  [(BKTOCViewController *)&v10 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(BKTOCContentViewController *)self _dumpCachedWebContentAndReload];
  v8[4] = self;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_7907C;
  v9[3] = &unk_1E2A60;
  v9[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_79148;
  v8[3] = &unk_1E2A60;
  [v7 animateAlongsideTransition:v9 completion:v8];
}

- (void)_dumpCachedWebContentAndReload
{
  v3 = [(BKTOCContentViewController *)self requestToIndexPath];
  [v3 removeAllObjects];

  v4 = [(BKTOCContentViewController *)self cachedRowContents];
  [v4 removeAllObjects];

  v5 = [(BKTOCContentViewController *)self imageCache];
  [v5 removeAllObjects];
}

- (void)viewDidLayoutSubviews
{
  [(BKTOCContentViewController *)self updateView];
  v3.receiver = self;
  v3.super_class = BKTOCContentViewController;
  [(BKTOCContentViewController *)&v3 viewDidLayoutSubviews];
}

- (int64_t)pageNumberForCurrentLocation
{
  v3 = [(BKDirectoryContent *)self directoryDelegate];
  v4 = [v3 tocViewControllerCurrentLocation:self];

  if (v4)
  {
    v5 = [(BKDirectoryContent *)self directoryDelegate];
    v6 = [v5 directoryContent:self pageNumberForLocation:v4];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (id)indexPathOfLastRow
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [*(&self->super._paginationController + 4) sections];
  v4 = [v3 reverseObjectEnumerator];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 objects];
        v12 = [v11 count];

        if (v12)
        {
          v13 = [*(&self->super._paginationController + 4) sections];
          v14 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v12 - 1, [v13 indexOfObject:v10]);

          v7 = v14;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tocIndexPathForRowNearestPageNumber:(int64_t)a3
{
  v5 = 0;
  v3 = [(BKTOCContentViewController *)self _indexPathForRowNearestPageNumber:a3 pageNumberForObjectSelector:"tocViewController:pageNumberForChapter:" isExactPageMatch:&v5];

  return v3;
}

- (id)_indexPathForRowNearestPageNumber:(int64_t)a3 pageNumberForObjectSelector:(SEL)a4 isExactPageMatch:(BOOL *)a5
{
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [*(&self->super._paginationController + 4) sections];
  v25 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v25)
  {
    v24 = *v33;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v7;
        v8 = *(*(&v32 + 1) + 8 * v7);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v9 = [v8 objects];
        v10 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v29;
LABEL_8:
          v13 = 0;
          while (1)
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v28 + 1) + 8 * v13);
            v15 = [(BKDirectoryContent *)self directoryDelegate];
            v16 = [v15 a4];

            if (v16 >= a3)
            {
              v17 = [v8 objects];
              v18 = [v17 indexOfObject:v14];

              if (v16 == a3)
              {
                *a5 = 1;
                goto LABEL_21;
              }

              if (v16 > a3)
              {
                break;
              }
            }

            if (v11 == ++v13)
            {
              v11 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
              if (v11)
              {
                goto LABEL_8;
              }

              goto LABEL_16;
            }
          }

          if (v18)
          {
            --v18;
          }

          else
          {
            v18 = 0;
          }

LABEL_21:
          v19 = [*(&self->super._paginationController + 4) sections];
          v20 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v18, [v19 indexOfObject:v8]);

          if (!v20)
          {
            goto LABEL_22;
          }

          goto LABEL_26;
        }

LABEL_16:

LABEL_22:
        v7 = v26 + 1;
      }

      while ((v26 + 1) != v25);
      v25 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  v20 = [(BKTOCContentViewController *)self indexPathOfLastRow];
LABEL_26:

  return v20;
}

- (BOOL)showRowForCurrentLocation
{
  v11 = 0;
  v3 = [*(&self->super._paginationController + 4) fetchedObjects];
  if (![v3 count])
  {

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v4 = [*(&self->super._verticalCenteringInsets.right + 4) numberOfSections];

  if (v4 < 1)
  {
    goto LABEL_8;
  }

  v5 = [(BKTOCContentViewController *)self pageNumberForCurrentLocation];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  v6 = v5;
  if ([(BKTOCViewController *)self tocContentType])
  {
    v7 = [(BKTOCContentViewController *)self annotationIndexPathForRowNearestPageNumber:v6 isExactPageMatch:&v11];
    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = [(BKTOCContentViewController *)self tocIndexPathForRowNearestPageNumber:v6];
    v11 = 1;
  }

  v7 = v7;
  if (!v7)
  {
LABEL_9:
    v8 = 0;
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (([*(&self->super._verticalCenteringInsets.right + 4) isEditing] & 1) == 0)
  {
    v10 = BKTOCCVCLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Highlighting row at %@", buf, 0xCu);
    }

    [*(&self->super._verticalCenteringInsets.right + 4) selectRowAtIndexPath:v7 animated:1 scrollPosition:0];
  }

  v8 = v7;
LABEL_10:
  if ((BYTE4(self->_readyForUserScrollDate) & 1) == 0)
  {
    BYTE4(self->_recenteredIndexPath) = 1;
    [*(&self->super._verticalCenteringInsets.right + 4) scrollToRowAtIndexPath:v7 atScrollPosition:2 animated:0];
    BYTE4(self->_recenteredIndexPath) = 0;
  }

LABEL_12:

  return v7 != 0;
}

- (void)removeHighlightFromCurrentLocation
{
  v3 = [*(&self->super._verticalCenteringInsets.right + 4) indexPathsForSelectedRows];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v14;
    *&v5 = 138412290;
    v12 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [*(&self->super._verticalCenteringInsets.right + 4) cellForRowAtIndexPath:{v9, v12}];
        v11 = BKTOCCVCLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = v12;
          v18 = v9;
          _os_log_debug_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "Removing highlight from cell at:%@", buf, 0xCu);
        }

        [v10 setSelected:0 animated:1];
      }

      v6 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }
}

- (BKActivityIndicatorOverlayView)activityIndicatorOverlayView
{
  v3 = *(&self->_cellLoadingOperationCount + 4);
  if (!v3)
  {
    v4 = [BKActivityIndicatorOverlayView alloc];
    v5 = [(BKTOCContentViewController *)self theme];
    v6 = [v5 contentTextColor];
    v7 = [v6 colorWithAlphaComponent:0.7];
    v8 = [(BKTOCContentViewController *)self theme];
    v9 = [v8 backgroundColorForTraitEnvironment:self];
    v10 = [(BKActivityIndicatorOverlayView *)v4 initWithBackgroundColor:v7 foregroundColor:v9];
    v11 = *(&self->_cellLoadingOperationCount + 4);
    *(&self->_cellLoadingOperationCount + 4) = v10;

    v3 = *(&self->_cellLoadingOperationCount + 4);
  }

  return v3;
}

- (void)setCellLoadingOperationCount:(int64_t)a3
{
  *(&self->_preferredFontSize + 4) = a3 & ~(a3 >> 63);
  if (a3 < 1)
  {
    [(BKTOCContentViewController *)self _hideActivityIndicator];
  }

  else
  {
    [(BKTOCContentViewController *)self _showActivityIndicator];
  }
}

- (void)_showActivityIndicator
{
  v4 = [(BKTOCContentViewController *)self activityIndicatorOverlayView];
  v3 = [*(&self->super._verticalCenteringInsets.right + 4) superview];
  [v4 showIndicatorCenteredInView:v3 animated:1 animationDelay:0.0];
}

- (void)_hideActivityIndicator
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 250000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_79D08;
  v3[3] = &unk_1E4920;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, &_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (id)fontFamily
{
  v2 = [UIFont systemFontOfSize:17.0];
  v3 = [v2 familyName];

  return v3;
}

- (id)pageTitleForChapter:(id)a3
{
  v4 = a3;
  if (v4 && (BYTE4(self->super._fetchedResultsController) & 2) != 0)
  {
    v6 = [(BKDirectoryContent *)self directoryDelegate];
    v5 = [v6 tocViewController:self pageTitleForChapter:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)pageTitleForAnnotation:(id)a3
{
  if ((BYTE4(self->super._fetchedResultsController) & 4) != 0)
  {
    v5 = a3;
    v6 = [(BKDirectoryContent *)self directoryDelegate];
    v3 = [v6 tocViewController:self pageTitleForAnnotation:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)calculateFontSize
{
  [(BKTOCContentViewController *)self preferredFontSize];
  if (v3 == 0.0)
  {
    v5.receiver = self;
    v5.super_class = BKTOCContentViewController;
    [(BKTOCViewController *)&v5 calculateFontSize];
  }

  else
  {

    [(BKTOCContentViewController *)self preferredFontSize];
  }

  return result;
}

- (id)fontForChapter:(id)a3
{
  v4 = a3;
  [(BKTOCViewController *)self establishChapterFonts];
  v5 = [v4 indentationLevel];

  v6 = [v5 integerValue];
  if (v6)
  {
    [(BKTOCViewController *)self chapterSubLevelFont];
  }

  else
  {
    [(BKTOCViewController *)self chapterTopLevelFont];
  }
  v7 = ;

  return v7;
}

- (BOOL)p_willUseWebViewForCellWithChapter:(id)a3
{
  v3 = [a3 htmlName];
  if ([v3 length])
  {
    v4 = [NSRegularExpression regularExpressionWithPattern:@"<[^/s]" options:0 error:0];
    v5 = [v4 numberOfMatchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_configureTOCCell:(id)a3 forRowAtIndexPath:(id)a4
{
  v62 = a3;
  v6 = a4;
  v7 = [(BKTOCContentViewController *)self fetchedResultsController];
  v8 = [v7 fetchedObjects];

  if (v8)
  {
    v9 = [(BKTOCContentViewController *)self fetchedResultsController];
    v10 = [v9 objectAtIndexPath:v6];
  }

  else
  {
    v10 = 0;
  }

  if ([v10 isExcludedFromSample])
  {
    v11 = 0;
  }

  else
  {
    v11 = [(BKTOCContentViewController *)self pageTitleForChapter:v10];
  }

  [(BKContentViewController *)self contentInsets];
  v13 = v12;
  [(BKContentViewController *)self contentInsets];
  [v62 setContentInsets:{0.0, v13, 0.0}];
  v14 = [v10 name];
  v15 = [v14 length];
  if (v15)
  {
    v16 = [v10 name];
  }

  else
  {
    v16 = @" ";
  }

  v17 = [v62 textLabel];
  [v17 setText:v16];

  if (v15)
  {
  }

  v18 = [(BKTOCContentViewController *)self fontForChapter:v10];
  v19 = [v62 textLabel];
  [v19 setFont:v18];

  v20 = [v62 textLabel];
  [v20 setLineBreakMode:0];

  if ([v10 isExcludedFromSample])
  {
    v21 = 0.5;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = [v62 textLabel];
  [v22 setAlpha:v21];

  [v62 setBkaxIsExcludedFromSample:{objc_msgSend(v10, "isExcludedFromSample")}];
  v23 = [v62 textLabel];
  [v23 setNumberOfLines:0];

  v24 = [v10 indentationLevel];
  [v62 setIndentationLevel:{objc_msgSend(v24, "integerValue")}];

  [v62 setIndentationWidth:16.0];
  v25 = [v62 effectiveUserInterfaceLayoutDirection];
  [(BKContentViewController *)self separatorInsets];
  v27 = v26;
  v28 = [v62 indentationLevel];
  [v62 indentationWidth];
  v30 = v27 + v28 * v29;
  [(BKContentViewController *)self separatorInsets];
  if (v25 == &dword_0 + 1)
  {
    v32 = v30;
  }

  else
  {
    v32 = v31;
  }

  if (v25 == &dword_0 + 1)
  {
    v33 = v31;
  }

  else
  {
    v33 = v30;
  }

  [v62 setSeparatorInset:{0.0, v33, 0.0, v32}];
  if ([(BKTOCContentViewController *)self p_willUseWebViewForCellWithChapter:v10])
  {
    [*(&self->super._verticalCenteringInsets.right + 4) bounds];
    Width = CGRectGetWidth(v64);
    [(BKContentViewController *)self contentInsets];
    v37 = Width - (v35 + v36);
    v38 = [v10 indentationLevel];
    v39 = [v38 intValue];
    v40 = [v62 textLabel];
    [v40 font];
    v61 = v11;
    v41 = v8;
    v43 = v42 = v6;
    [BKTOCTableViewCell maxSpanForTextWithIndentation:v39 font:v43 width:v37];

    v44 = [(BKContentViewController *)self book];
    v45 = [v44 tocPageHref];
    v46 = [v44 urlForHref:v45];

    v47 = BEURLHandleriBooksImgUrlFromiBooksURL();

    v48 = [v10 htmlName];
    v49 = [v62 textLabel];
    v50 = [v49 font];
    v51 = [v50 fontName];
    [(BKTOCContentViewController *)self calculateFontSize];
    [v62 displayHTMLWithContents:v48 fontFamily:v51 fontSize:v47 maxSpan:? baseURL:?];

    v6 = v42;
    v8 = v41;
    v11 = v61;
  }

  v52 = [v62 pageLabel];
  v53 = v52;
  if (v11)
  {
    [v52 setText:v11];
    v54 = [(BKTOCViewController *)self pageLabelFont];
    [v53 setFont:v54];
  }

  [v53 setHidden:v11 == 0];
  v55 = [(BKTOCContentViewController *)self themePage];
  [v62 configureSelectedBackgroundView];
  v56 = [*(&self->super._verticalCenteringInsets.right + 4) backgroundColor];
  [v62 setBackgroundColor:v56];

  v57 = [v55 primaryTextColor];
  v58 = [v62 textLabel];
  [v58 setTextColor:v57];

  v59 = [v55 tocPageNumberTextColor];
  v60 = [v62 pageLabel];
  [v60 setTextColor:v59];
}

- (void)_configureWebTOCCell:(id)a3 forRowAtIndexPath:(id)a4
{
  v85 = a3;
  v6 = a4;
  v7 = [(BKTOCContentViewController *)self imageCache];
  [v85 setImageCache:v7];

  v8 = [*(&self->super._verticalCenteringInsets.right + 4) backgroundColor];
  [v85 setBackgroundColor:v8];

  v9 = [(BKTOCContentViewController *)self fetchedResultsController];
  v10 = [v9 fetchedObjects];

  v82 = v10;
  if (v10)
  {
    v11 = [(BKTOCContentViewController *)self fetchedResultsController];
    v12 = [v11 objectAtIndexPath:v6];
  }

  else
  {
    v12 = 0;
  }

  if ([v12 isExcludedFromSample])
  {
    v13 = 0;
  }

  else
  {
    v13 = [(BKTOCContentViewController *)self pageTitleForChapter:v12];
  }

  v83 = v6;
  [(BKContentViewController *)self separatorInsets];
  v15 = v14;
  v16 = [v85 indentationLevel];
  [v85 indentationWidth];
  v18 = v15 + v16 * v17;
  [(BKContentViewController *)self separatorInsets];
  v20 = v19;
  v21 = [v85 effectiveUserInterfaceLayoutDirection];
  if (v21 == &dword_0 + 1)
  {
    v22 = v18;
  }

  else
  {
    v22 = v20;
  }

  if (v21 == &dword_0 + 1)
  {
    v23 = v20;
  }

  else
  {
    v23 = v18;
  }

  [v85 setSeparatorInset:{0.0, v23, 0.0, v22}];
  v24 = [v85 pageLabel];
  v25 = [v13 length];
  if (v25)
  {
    [v24 setText:v13];
    v26 = [(BKTOCViewController *)self pageLabelFont];
    [v24 setFont:v26];
  }

  v80 = v13;
  [v24 setHidden:v25 == 0];
  v27 = [(BKTOCContentViewController *)self themePage];
  v28 = [v27 tocPageNumberTextColor];
  v79 = v24;
  [v24 setTextColor:v28];

  v78 = v27;
  v84 = [v27 primaryTextColor];
  v29 = [(BKTOCContentViewController *)self fontForChapter:v12];
  v30 = [v85 textLabel];
  [v30 setFont:v29];

  [*(&self->super._verticalCenteringInsets.right + 4) bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  [*(&self->super._verticalCenteringInsets.right + 4) safeAreaInsets];
  v40 = v34 + v39;
  v43 = v36 - (v41 + v42);
  v87.size.height = v38 - (v39 + v44);
  v87.origin.x = v32 + v41;
  v87.origin.y = v40;
  v87.size.width = v43;
  Width = CGRectGetWidth(v87);
  [(BKContentViewController *)self contentInsets];
  v48 = Width - (v46 + v47);
  v49 = [v12 indentationLevel];
  v50 = [v49 intValue];
  v51 = [v85 textLabel];
  v52 = [v51 font];
  [BKTOCTableViewCell maxSpanForTextWithIndentation:v50 font:v52 width:v48];

  v53 = [v85 pageLabel];
  [v53 sizeToFit];

  v54 = [v85 pageLabel];
  [v54 frame];
  CGRectGetWidth(v88);

  v55 = [(BKContentViewController *)self book];
  v56 = [v55 tocPageHref];
  v77 = v55;
  v57 = [v55 urlForHref:v56];

  v58 = BEURLHandleriBooksImgUrlFromiBooksURL();

  v59 = +[UIColor clearColor];
  v60 = [v85 contentView];
  [v60 setBackgroundColor:v59];

  v81 = v12;
  v61 = [v12 htmlName];
  v62 = v61;
  if (v61)
  {
    v63 = v61;
  }

  else
  {
    v63 = &stru_1E7188;
  }

  v64 = [(BKTOCContentViewController *)self template];
  v65 = [v85 textLabel];
  v66 = [v65 font];
  v67 = [v66 fontName];
  [(BKTOCContentViewController *)self calculateFontSize];
  v68 = [BKTOCWebViewCellLoadRequest loadRequestWithContents:"loadRequestWithContents:template:fontFamily:fontSize:maxSpan:textColor:selectedColor:backgroundColor:baseURL:forObject:" template:v63 fontFamily:v64 fontSize:v67 maxSpan:v84 textColor:v84 selectedColor:v59 backgroundColor:v58 baseURL:self forObject:?];

  v69 = [(BKTOCContentViewController *)self cachedRowContents];
  v70 = [v69 objectForKeyedSubscript:v83];

  if (!v70 || (-[BKTOCContentViewController imageCache](self, "imageCache"), v71 = objc_claimAutoreleasedReturnValue(), v72 = [v71 entryForRequest:v68], v71, (v72 & 1) == 0))
  {
    v73 = [(BKTOCContentViewController *)self requestToIndexPath];
    v74 = [v68 cacheKey];
    [v73 setObject:v83 forKeyedSubscript:v74];

    v75 = [(BKTOCContentViewController *)self requestQueue];
    [v75 enqueueRequest:v68];
  }

  v76 = [v70 cacheKey];
  [v85 setCacheKey:v76];
}

- (id)highlightedTextLabelFont
{
  if ([(BKTOCViewController *)self usesPopoverStyle])
  {
    +[BKTOCRangeAnnotationTableCell highlightedTextSizeInPopover];
  }

  else
  {
    +[BKTOCRangeAnnotationTableCell pageNumberAndHighlightedTextFontSize];
  }

  v4 = v3;
  v5 = [(BKTOCContentViewController *)self fontFamily];
  v6 = [UIFont fontWithName:v5 size:v4];

  return v6;
}

- (void)_configureRangeAnnotationCell:(id)a3 forRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKTOCContentViewController *)self fetchedResultsController];
  v9 = [v8 fetchedObjects];
  v10 = [v9 count];

  if ([v7 row] >= v10)
  {
    v17 = BKTOCCVCLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_138108(v7, v10, v17);
    }
  }

  else
  {
    v11 = [(BKTOCContentViewController *)self fetchedResultsController];
    v12 = [v11 objectAtIndexPath:v7];

    [(BKTOCContentViewController *)self _configureAnnotationCell:v6 forAnnotation:v12 forRowAtIndexPath:v7];
    v13 = [v12 annotationNote];
    v14 = [v6 noteLabel];
    [v14 setText:v13];

    if ([(BKTOCViewController *)self usesPopoverStyle])
    {
      v15 = [objc_opt_class() noteFontForPopover];
      v16 = [v6 noteLabel];
      [v16 setFont:v15];
    }

    else
    {
      v15 = objc_alloc_init(AEAnnotationTheme);
      v16 = [v15 noteTextFontInTable];
      v18 = [v6 noteLabel];
      [v18 setFont:v16];
    }

    v19 = [v6 noteLabel];
    [v19 setLineBreakMode:4];

    v20 = [v6 highlightedTextLabel];
    [v20 setAnnotation:v12];
    v21 = [(BKTOCContentViewController *)self highlightedTextLabelFont];
    [v20 setFont:v21];

    [v20 setNeedsLayout];
    v22 = [(BKTOCContentViewController *)self themePage];
    v23 = [*(&self->super._verticalCenteringInsets.right + 4) backgroundColor];
    [v6 configureSelectedBackgroundView];
    [v6 setBackgroundColor:v23];
    v24 = [v22 primaryTextColor];
    v25 = [v6 textLabel];
    [v25 setTextColor:v24];

    v26 = [v6 noteLabel];
    [v26 setTextColor:v24];

    [v20 setTextColor:v24];
    [v20 setHighlightedTextColor:v24];
    [v20 setBackgroundColor:v23];
    [v20 setShouldInvertContent:{objc_msgSend(v22, "shouldInvertContent")}];
    [v20 setAnnotationBlendMode:{objc_msgSend(v22, "annotationBlendMode")}];
    [v20 setHighlightedAnnotationBlendMode:{objc_msgSend(v22, "highlightedAnnotationBlendMode")}];
    [v20 setPageTheme:{objc_msgSend(v22, "annotationPageTheme")}];
    if ([(BKTOCViewController *)self usesPopoverStyle])
    {
      [v22 secondaryTextColor];
    }

    else
    {
      [v22 tocPageNumberTextColor];
    }
    v27 = ;
    v28 = [v6 pageLabel];
    [v28 setTextColor:v27];

    v29 = [v6 dateLabel];
    [v29 setTextColor:v27];
  }
}

- (void)_configurePointAnnotationCell:(id)a3 forRowAtIndexPath:(id)a4
{
  v27 = a3;
  v6 = a4;
  [(BKContentViewController *)self contentInsets];
  v8 = v7;
  [(BKContentViewController *)self contentInsets];
  [v27 setContentInsets:{0.0, v8, 0.0}];
  v9 = [(BKTOCContentViewController *)self fetchedResultsController];
  v10 = [v9 objectAtIndexPath:v6];

  [(BKTOCContentViewController *)self _configureAnnotationCell:v27 forAnnotation:v10 forRowAtIndexPath:v6];
  if ((BYTE4(self->super._fetchedResultsController) & 8) != 0)
  {
    v12 = [(BKDirectoryContent *)self directoryDelegate];
    v11 = [v12 tocViewController:self chapterTitleForAnnotation:v10];
  }

  else
  {
    v11 = 0;
  }

  if (![v11 length])
  {
    v13 = AEBundle();
    v14 = [v13 localizedStringForKey:@"No title" value:&stru_1E7188 table:0];

    v11 = v14;
  }

  if ([(BKTOCViewController *)self usesPopoverStyle])
  {
    v15 = [objc_opt_class() chapterFontForPopover];
    v16 = [v27 noteLabel];
    [v16 bkSetText:v11 font:v15 lineBreakMode:0];

    v17 = [v27 noteLabel];
    [v17 setNumberOfLines:2];
  }

  else
  {
    [objc_opt_class() titleFontSize];
    v15 = [UIFont systemFontOfSize:?];
    v18 = [v27 noteLabel];
    [v18 bkSetText:v11 font:v15 lineBreakMode:5];

    v19 = [v27 noteLabel];
    [v19 setNumberOfLines:1];

    v17 = [v27 noteLabel];
    [v17 setLineBreakMode:5];
  }

  v20 = [(BKTOCContentViewController *)self themePage];
  [v27 configureSelectedBackgroundView];
  v21 = [*(&self->super._verticalCenteringInsets.right + 4) backgroundColor];
  [v27 setBackgroundColor:v21];

  v22 = [v20 primaryTextColor];
  v23 = [v27 noteLabel];
  [v23 setTextColor:v22];

  v24 = [v20 secondaryTextColor];
  v25 = [v27 pageLabel];
  [v25 setTextColor:v24];

  v26 = [v27 dateLabel];
  [v26 setTextColor:v24];
}

- (void)_configureAnnotationCell:(id)a3 forAnnotation:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a4;
  v8 = a3;
  v14 = [(BKTOCContentViewController *)self pageTitleForAnnotation:v7];
  v9 = [(BKTOCContentViewController *)self dateFormatter];
  v10 = [v7 annotationCreationDate];

  v11 = [v9 stringFromDate:v10];

  [(BKContentViewController *)self contentInsets];
  v13 = v12;
  [(BKContentViewController *)self contentInsets];
  [v8 configureWithPageString:v14 dateString:v11 insets:{0.0, v13, 0.0}];
}

- (void)configureCell:(id)a3 atIndexPath:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    [v7 setVertical:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(BKTOCContentViewController *)self _configurePointAnnotationCell:v7 forRowAtIndexPath:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(BKTOCContentViewController *)self _configureRangeAnnotationCell:v7 forRowAtIndexPath:v6];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(BKTOCContentViewController *)self _configureWebTOCCell:v7 forRowAtIndexPath:v6];
        }

        else
        {
          [(BKTOCContentViewController *)self _configureTOCCell:v7 forRowAtIndexPath:v6];
        }
      }
    }

    [v7 setNeedsLayout];
  }
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(BKTOCViewController *)self tocContentType]== &dword_0 + 2)
  {
    v6 = [(BKTOCContentViewController *)self deleteSwipeAction:v5];
    v13[0] = v6;
    v7 = [(BKTOCContentViewController *)self shareSwipeAction:v5];
    v13[1] = v7;
    v8 = [NSArray arrayWithObjects:v13 count:2];
  }

  else
  {
    if ([(BKTOCViewController *)self tocContentType]!= &dword_0 + 1)
    {
      v10 = BKTOCCVCLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1381A0(v10);
      }

      v8 = 0;
      goto LABEL_10;
    }

    v6 = [(BKTOCContentViewController *)self deleteSwipeAction:v5];
    v12 = v6;
    v8 = [NSArray arrayWithObjects:&v12 count:1];
  }

  if (v8)
  {
    v9 = [UISwipeActionsConfiguration configurationWithActions:v8];
    [v9 setPerformsFirstActionWithFullSwipe:0];
    goto LABEL_11;
  }

LABEL_10:
  v9 = 0;
LABEL_11:

  return v9;
}

- (id)shareSwipeAction:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_7B760;
  v10[3] = &unk_1E4948;
  objc_copyWeak(&v12, &location);
  v5 = v4;
  v11 = v5;
  v6 = [UIContextualAction contextualActionWithStyle:0 title:0 handler:v10];
  v7 = [UIImage systemImageNamed:@"square.and.arrow.up"];
  [v6 setImage:v7];

  v8 = +[UIColor systemBlueColor];
  [v6 setBackgroundColor:v8];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

- (id)deleteSwipeAction:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_7B918;
  v9[3] = &unk_1E4948;
  objc_copyWeak(&v11, &location);
  v5 = v4;
  v10 = v5;
  v6 = [UIContextualAction contextualActionWithStyle:1 title:0 handler:v9];
  v7 = [UIImage systemImageNamed:@"trash.fill"];
  [v6 setImage:v7];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(BKTOCContentViewController *)self fetchedResultsController];
  v4 = [v3 sections];
  v5 = [v4 count];

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(BKTOCContentViewController *)self fetchedResultsController];
  v6 = [v5 sections];
  v7 = [v6 objectAtIndex:a4];

  v8 = [v7 numberOfObjects];
  return v8;
}

- (id)reuseIdentifier
{
  v3 = [(BKTOCViewController *)self tocContentType];

  return [(BKTOCContentViewController *)self reuseIdentifierForCellType:v3];
}

- (id)reuseIdentifierForCellType:(unint64_t)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E4A08[a3];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKTOCViewController *)self tocContentType];
  v9 = v8 == 2;
  if (!v8)
  {
    v10 = [(BKTOCContentViewController *)self fetchedResultsController];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 fetchedObjects];

      if (v12)
      {
        objc_opt_class();
        v13 = [(BKTOCContentViewController *)self fetchedResultsController];
        v14 = [v13 objectAtIndexPath:v6];
        v12 = BUDynamicCast();
      }
    }

    else
    {
      v12 = 0;
    }

    if ([(BKTOCContentViewController *)self p_willUseWebViewForCellWithChapter:v12])
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }
  }

  v15 = [(BKTOCContentViewController *)self reuseIdentifierForCellType:v9];
  v16 = [v7 dequeueReusableCellWithIdentifier:v15];

  [v16 setUsesPopoverStyle:{-[BKTOCViewController usesPopoverStyle](self, "usesPopoverStyle")}];
  [(BKTOCContentViewController *)self configureCell:v16 atIndexPath:v6];

  return v16;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v4 = [(BKTOCViewController *)self tocContentType:a3];
  result = 67.0;
  if (!v4)
  {
    return 52.0;
  }

  return result;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BKTOCViewController *)self usesPopoverStyle])
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 52.0;
  }

  height = CGSizeZero.height;
  [*(&self->super._verticalCenteringInsets.right + 4) bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(BKContentViewController *)self contentInsets];
  v19 = v13 + v18;
  v22 = v15 - (v20 + v21);
  v128.size.height = v17 - (v18 + v23);
  v128.origin.x = v11 + v20;
  v128.origin.y = v19;
  v128.size.width = v22;
  Width = CGRectGetWidth(v128);
  v25 = [*(&self->super._verticalCenteringInsets.right + 4) readableContentGuide];
  [v25 layoutFrame];
  v26 = CGRectGetWidth(v129);

  if (Width >= v26)
  {
    Width = v26;
  }

  v27 = [(BKTOCViewController *)self tocContentType];
  if (v27 == 1)
  {
    v8 = 73.0;
    if (![(BKTOCViewController *)self usesPopoverStyle])
    {
      goto LABEL_37;
    }

    if (Width <= 0.0)
    {
      goto LABEL_37;
    }

    v34 = [v7 row];
    v35 = [(BKTOCContentViewController *)self fetchedResultsController];
    v36 = [v35 fetchedObjects];
    v37 = [v36 count];

    if (v34 >= v37)
    {
      goto LABEL_37;
    }

    v38 = [(BKTOCContentViewController *)self fetchedResultsController];
    v33 = [v38 objectAtIndexPath:v7];

    v39 = [(BKDirectoryContent *)self directoryDelegate];
    v40 = [v39 tocViewController:self chapterTitleForAnnotation:v33];

    v41 = [(BKTOCContentViewController *)self dateFormatter];
    v42 = [v33 annotationCreationDate];
    v43 = [v41 stringFromDate:v42];

    v44 = [(BKTOCContentViewController *)self pageTitleForAnnotation:v33];
    [BKTOCPointAnnotationTableCell cellHeightForCellWidth:v40 chapterString:v43 dateString:v44 pageString:[(BKViewController *)self layoutDirection] layoutDirection:Width];
    v8 = v45;
  }

  else if (v27)
  {
    if ([v6 isEditing])
    {
      v46 = 38.0;
    }

    else
    {
      v46 = 0.0;
    }

    v47 = [v7 row];
    v48 = [(BKTOCContentViewController *)self fetchedResultsController];
    v49 = [v48 fetchedObjects];
    v50 = [v49 count];

    if (v47 >= v50)
    {
      v8 = 67.0;
      goto LABEL_37;
    }

    v125 = Width - v46;
    y = CGRectZero.origin.y;
    v51 = [(BKTOCContentViewController *)self fetchedResultsController];
    v33 = [v51 objectAtIndexPath:v7];

    v52 = objc_alloc_init(AEAnnotationTheme);
    v53 = [(BKTOCContentViewController *)self pageTitleForAnnotation:v33];
    v54 = [(BKTOCContentViewController *)self dateFormatter];
    v55 = [v33 annotationCreationDate];
    v56 = [v54 stringFromDate:v55];

    if ([(BKTOCViewController *)self usesPopoverStyle])
    {
      v57 = [(BKTOCContentViewController *)self highlightedTextLabelFont];
      [BKTOCRangeAnnotationTableCell cellHeightInPopoverForBounds:v57 highlightFont:v33 annotation:v56 dateString:v53 pageString:[(BKViewController *)self layoutDirection] layoutDirection:CGRectZero.origin.x, y, v125, 67.0];
      height = v58;
    }

    else
    {
      +[BKTOCRangeAnnotationTableCell pageNumberAndHighlightedTextFontSize];
      v69 = v68;
      v70 = [(BKTOCContentViewController *)self fontFamily];
      v71 = [UIFont fontWithName:v70 size:v69];

      if (!v71)
      {
        v71 = [UIFont systemFontOfSize:v69];
      }

      v57 = v71;
      [(BKTOCTableViewCell *)BKTOCRangeAnnotationTableCell pageLabelFrameForString:v53 font:v57 bounds:[(BKViewController *)self layoutDirection] layoutDirection:CGRectZero.origin.x, y, v125, 67.0];
      v114 = v72;
      v74 = v73;
      v76 = v75;
      v78 = v77;
      [BKTOCRangeAnnotationTableCell highlightedTextFrameForAnnotation:v33 font:v57 bounds:[(BKViewController *)self layoutDirection] pageLabelFrame:CGRectZero.origin.x layoutDirection:y, v125, 67.0, v72, v73, v75, v77];
      v80 = v79;
      v82 = v81;
      v84 = v83;
      v86 = v85;
      v124 = v52;
      v87 = [v52 noteTextFontInTable];
      v88 = [v33 annotationNote];
      v121 = v82;
      v122 = v80;
      r2 = v86;
      v120 = v84;
      v123 = v87;
      [BKTOCRangeAnnotationTableCell noteTextFrameForString:v88 font:v87 bounds:CGRectZero.origin.x highlightedTextFrame:y pageLabelFrame:v125, 67.0, v80, v82, v84, v86, *&v114, *&v74, *&v76, *&v78];
      v90 = v89;
      v92 = v91;
      v94 = v93;
      v96 = v95;

      +[(BKTOCAnnotationTableCell *)BKTOCRangeAnnotationTableCell];
      v98 = v97;
      v99 = [(BKTOCContentViewController *)self fontFamily];
      v100 = [UIFont fontWithName:v99 size:v98];

      if (!v100)
      {
        v100 = [UIFont systemFontOfSize:v98];
      }

      v131.origin.x = v90;
      v131.origin.y = v92;
      v131.size.width = v94;
      v131.size.height = v96;
      MaxY = CGRectGetMaxY(v131);
      v132.origin.x = v114;
      v132.origin.y = v74;
      v132.size.width = v76;
      v132.size.height = v78;
      v102 = CGRectGetMaxY(v132);
      if (MaxY >= v102)
      {
        v102 = MaxY;
      }

      v116 = v92;
      v115 = v94;
      [BKTOCRangeAnnotationTableCell dateLabelFrameForString:v56 font:v100 bounds:[(BKViewController *)self layoutDirection] minY:CGRectZero.origin.x layoutDirection:y, v125, 67.0, v102];
      v117 = v104;
      v118 = v103;
      v106 = v105;
      v133.origin.y = y;
      v108 = v107;
      v133.origin.x = CGRectZero.origin.x;
      v133.size.width = v125;
      v133.size.height = 67.0;
      v138.origin.x = v114;
      v138.origin.y = v74;
      v138.size.width = v76;
      v138.size.height = v78;
      v134 = CGRectUnion(v133, v138);
      v139.origin.x = v122;
      v139.size.width = v120;
      v139.origin.y = v121;
      v139.size.height = r2;
      v135 = CGRectUnion(v134, v139);
      v140.origin.x = v90;
      v140.size.height = v96;
      v140.size.width = v115;
      v140.origin.y = v116;
      v136 = CGRectUnion(v135, v140);
      v141.size.height = v117;
      v141.origin.x = v118;
      v141.origin.y = v106;
      v141.size.width = v108;
      v137 = CGRectUnion(v136, v141);
      v109 = v137.size.height;
      [BKTOCRangeAnnotationTableCell bottomPadding:v137.origin.x];
      height = v109 + v110;

      v52 = v124;
    }

    v8 = 67.0;
  }

  else
  {
    if (Width <= 0.0)
    {
      goto LABEL_37;
    }

    v28 = [v7 row];
    v29 = [(BKTOCContentViewController *)self fetchedResultsController];
    v30 = [v29 fetchedObjects];
    v31 = [v30 count];

    if (v28 >= v31)
    {
      v33 = 0;
    }

    else
    {
      v32 = [(BKTOCContentViewController *)self fetchedResultsController];
      v33 = [v32 objectAtIndexPath:v7];
    }

    if ([(BKTOCContentViewController *)self p_willUseWebViewForCellWithChapter:v33])
    {
      v59 = [(BKTOCContentViewController *)self cachedRowContents];
      v60 = [v59 objectForKeyedSubscript:v7];
      [v60 height];
      v8 = v61;

      if (v8 < 52.0)
      {
        v8 = 52.0;
      }
    }

    else
    {
      v127 = [(BKTOCContentViewController *)self fontForChapter:v33];
      v62 = [(BKTOCViewController *)self pageLabelFont];
      v63 = [(BKTOCContentViewController *)self pageTitleForChapter:v33];
      [(BKTOCTableViewCell *)BKTOCRangeAnnotationTableCell pageLabelFrameForString:v63 font:v62 bounds:[(BKViewController *)self layoutDirection] layoutDirection:CGRectZero.origin.x, CGRectZero.origin.y, Width, v8];
      v64 = CGRectGetWidth(v130);
      v65 = [v33 name];
      v66 = [v33 indentationLevel];
      +[BKTOCTableViewCell cellHeightForCellWidth:pageLabelWidth:text:indentationLevel:indentationWidth:font:usesPopoverStyle:](BKTOCTableViewCell, "cellHeightForCellWidth:pageLabelWidth:text:indentationLevel:indentationWidth:font:usesPopoverStyle:", v65, [v66 integerValue], v127, -[BKTOCViewController usesPopoverStyle](self, "usesPopoverStyle"), Width, v64, 16.0);
      height = v67;
    }
  }

LABEL_37:
  v111 = ceil(height);
  if (v8 >= v111)
  {
    v112 = v8;
  }

  else
  {
    v112 = v111;
  }

  return v112;
}

- (void)tableView:(id)a3 performPrimaryActionForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = BKTOCCVCLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v18 = 134217984;
    v19 = [v5 row];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Performing primary action for row %ld", &v18, 0xCu);
  }

  v7 = [(BKTOCContentViewController *)self fetchedResultsController];
  v8 = [v7 objectAtIndexPath:v5];

  v9 = [(BKTOCViewController *)self tocContentType];
  if (v9 == 2)
  {
    v17 = v8;
    v10 = [v17 location];
    v15 = [v17 annotationUuid];

    [(BKDirectoryContent *)self didSelectHighlightForLocation:v10 annotationUUID:v15];
    goto LABEL_11;
  }

  if (v9 == 1)
  {
    v16 = v8;
    v10 = [v16 location];
    v15 = [v16 annotationUuid];

    [(BKDirectoryContent *)self didSelectBookmarkForLocation:v10 annotationUUID:v15];
    goto LABEL_11;
  }

  if (!v9 && (BYTE4(self->super._fetchedResultsController) & 1) != 0)
  {
    v10 = v8;
    v11 = [v10 href];
    v12 = [(BKContentViewController *)self book];
    v13 = [v12 tocPageHref];

    if (v11 == v13)
    {
LABEL_12:

      goto LABEL_13;
    }

    v14 = [(BKTOCViewController *)self eventEngagement];
    [v14 sendReaderEventNewSectionViaToC];

    v15 = [(BKDirectoryContent *)self directoryDelegate];
    [v15 tocViewController:self didSelectChapter:v10];
LABEL_11:

    goto LABEL_12;
  }

LABEL_13:
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  [(BKTOCContentViewController *)self notifyBookSharingClientSelectionChanged:a3];
  if ([*(&self->super._verticalCenteringInsets.right + 4) isEditing])
  {

    [(BKTOCContentViewController *)self updateToolbarContent];
  }
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  [(BKTOCContentViewController *)self notifyBookSharingClientSelectionChanged:a3];
  if ([*(&self->super._verticalCenteringInsets.right + 4) isEditing])
  {

    [(BKTOCContentViewController *)self updateToolbarContent];
  }
}

- (void)tableView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BKTOCCVCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1381E4();
  }

  v9 = [v7 isEditing];
  if ((v9 & 1) == 0)
  {
    [(BKTOCContentViewController *)self removeHighlightFromCurrentLocation];
    [*(&self->super._verticalCenteringInsets.right + 4) setEditing:1 animated:1];
  }

  v10 = [(BKDirectoryContent *)self directoryDelegate];
  [v10 tocViewControllerDidChangeEditing:1];

  [(BKTOCContentViewController *)self installEditModeToolbar];
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 isEditing])
  {
    v9 = 0;
  }

  else
  {
    v10 = [v7 cellForRowAtIndexPath:v8];
    if (v10)
    {
      v28 = v10;
      v11 = AEBundle();
      v12 = [v11 localizedStringForKey:@"Select" value:&stru_1E7188 table:0];
      v13 = [UIImage systemImageNamed:@"checkmark.circle"];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_7CD48;
      v40[3] = &unk_1E4970;
      v40[4] = self;
      v14 = v8;
      v41 = v14;
      v26 = [UIAction actionWithTitle:v12 image:v13 identifier:@"context.menu.select" handler:v40];

      v15 = AEBundle();
      v16 = [v15 localizedStringForKey:@"Share" value:&stru_1E7188 table:0];
      v17 = [UIImage systemImageNamed:@"square.and.arrow.up"];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_7CD54;
      v38[3] = &unk_1E4970;
      v38[4] = self;
      v18 = v14;
      v39 = v18;
      v27 = [UIAction actionWithTitle:v16 image:v17 identifier:@"context.menu.share" handler:v38];

      v19 = AEBundle();
      v20 = [v19 localizedStringForKey:@"Delete" value:&stru_1E7188 table:0];
      v21 = [UIImage systemImageNamed:@"trash"];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_7CD60;
      v36[3] = &unk_1E4970;
      v36[4] = self;
      v37 = v18;
      v22 = [UIAction actionWithTitle:v20 image:v21 identifier:@"context.menu.delete" handler:v36];

      [v22 setAttributes:{objc_msgSend(v22, "attributes") | 2}];
      v9 = 0;
      if ([(BKTOCViewController *)self tocContentType]== &dword_0 + 1)
      {
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_7CD6C;
        v33[3] = &unk_1E4998;
        v34 = v22;
        v35 = v26;
        v9 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v33];
      }

      if ([(BKTOCViewController *)self tocContentType]== &dword_0 + 2)
      {
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_7CE7C;
        v29[3] = &unk_1E49C0;
        v23 = v27;
        v30 = v27;
        v31 = v22;
        v32 = v26;
        v24 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v29];

        v9 = v24;
      }

      else
      {
        v23 = v27;
      }

      v10 = v28;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)beginSelectionStartingWithIndexPath:(id)a3
{
  v4 = a3;
  [(BKTOCContentViewController *)self removeHighlightFromCurrentLocation];
  [(BKTOCContentViewController *)self beginEditingMode];
  [*(&self->super._verticalCenteringInsets.right + 4) selectRowAtIndexPath:v4 animated:1 scrollPosition:0];

  [(BKTOCContentViewController *)self updateToolbarContent];
}

- (id)bookmarksFetchedResultsController
{
  v3 = *(&self->super._paginationController + 4);
  if (!v3)
  {
    v4 = [(BKContentViewController *)self book];
    v5 = [v4 annotationProvider];
    v6 = [v5 uiManagedObjectContext];

    if (!v6)
    {
LABEL_13:

      v3 = *(&self->super._paginationController + 4);
      goto LABEL_14;
    }

    v7 = objc_alloc_init(NSFetchRequest);
    if ([(BKTOCViewController *)self tocContentType]== &dword_0 + 1)
    {
      v8 = [v4 assetID];
      v9 = [AEAnnotation pageBookmarksPredicate:v8];
    }

    else
    {
      if ([(BKTOCViewController *)self tocContentType]!= &dword_0 + 2)
      {
LABEL_8:
        v11 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:v6];
        [v7 setEntity:v11];

        v12 = [[NSSortDescriptor alloc] initWithKey:@"annotationLocation" ascending:1 selector:"localizedStandardCompare:"];
        v13 = [[NSSortDescriptor alloc] initWithKey:@"annotationCreationDate" ascending:1];
        v14 = [[NSArray alloc] initWithObjects:{v12, v13, 0}];
        [v7 setSortDescriptors:v14];
        v15 = [[IMUbiquitousFetchedResultsController alloc] initWithFetchRequest:v7 managedObjectContext:v6 sectionNameKeyPath:0 cacheName:0];
        v16 = *(&self->super._paginationController + 4);
        *(&self->super._paginationController + 4) = v15;

        [*(&self->super._paginationController + 4) setDelegate:self];
        v17 = *(&self->super._paginationController + 4);
        v22 = 0;
        v18 = [v17 performFetch:&v22];
        v19 = v22;
        if ((v18 & 1) == 0)
        {
          v20 = BKTOCCVCLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            sub_13716C(self, v19, v20);
          }
        }

        goto LABEL_13;
      }

      v8 = [v4 assetID];
      v9 = [AEAnnotation highlightsPredicate:v8];
    }

    v10 = v9;
    [v7 setPredicate:v9];

    goto LABEL_8;
  }

LABEL_14:

  return v3;
}

- (id)fetchedResultsController
{
  v3 = [(BKTOCViewController *)self tocContentType];
  if ((v3 - 1) >= 2)
  {
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v6.receiver = self;
      v6.super_class = BKTOCContentViewController;
      v4 = [(BKTOCViewController *)&v6 fetchedResultsController];
    }
  }

  else
  {
    v4 = [(BKTOCContentViewController *)self bookmarksFetchedResultsController];
  }

  return v4;
}

- (int)assetSharingConnectionTypeForClient:(id)a3
{
  v4 = [(BKTOCViewController *)self tocContentType];
  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
    return 0;
  }

  v6 = [(BKTOCContentViewController *)self fetchedResultsController];
  v7 = [v6 fetchedObjects];
  v8 = [v7 count];

  if (v8)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)beginAssetSharingConnectionWithClient:(id)a3
{
  v4 = *(&self->super._verticalCenteringInsets.right + 4);
  v5 = a3;
  [v4 setEditing:0 animated:0];
  [*(&self->super._verticalCenteringInsets.right + 4) setAllowsMultipleSelectionDuringEditing:1];
  [*(&self->super._verticalCenteringInsets.right + 4) setEditing:1 animated:1];
  [*(&self->super._verticalCenteringInsets.right + 4) beginUpdates];
  [*(&self->super._verticalCenteringInsets.right + 4) endUpdates];
  [(BKTOCContentViewController *)self setAssetSharingConnectionClient:v5];
}

- (void)endAssetSharingConnectionWithClient:(id)a3
{
  [*(&self->super._verticalCenteringInsets.right + 4) setEditing:0 animated:1];
  [*(&self->super._verticalCenteringInsets.right + 4) setAllowsMultipleSelectionDuringEditing:0];
  [*(&self->super._verticalCenteringInsets.right + 4) beginUpdates];
  [*(&self->super._verticalCenteringInsets.right + 4) endUpdates];

  [(BKTOCContentViewController *)self setAssetSharingConnectionClient:0];
}

- (void)assetSharingConnectionClient:(id)a3 performRequest:(int)a4
{
  v6 = a3;
  v7 = v6;
  switch(a4)
  {
    case 3:
      v8 = v6;
      v6 = [(BKTOCContentViewController *)self deleteSelected:v6];
      break;
    case 2:
      v8 = v6;
      v6 = [(BKTOCContentViewController *)self selectNone:v6];
      break;
    case 1:
      v8 = v6;
      v6 = [(BKTOCContentViewController *)self selectAll:v6];
      break;
    default:
      goto LABEL_8;
  }

  v7 = v8;
LABEL_8:

  _objc_release_x1(v6, v7);
}

- (unint64_t)bookSharingRequestNumberOfSelectedAnnotations:(id)a3
{
  v3 = [*(&self->super._verticalCenteringInsets.right + 4) indexPathsForSelectedRows];
  v4 = [v3 count];

  return v4;
}

- (id)bookSharingRequestClient:(id)a3 selectedAnnotationAtIndex:(unint64_t)a4
{
  v6 = [*(&self->super._verticalCenteringInsets.right + 4) indexPathsForSelectedRows];
  v7 = [v6 objectAtIndex:a4];
  v8 = [*(&self->super._paginationController + 4) objectAtIndexPath:v7];

  return v8;
}

- (unint64_t)bookSharingRequestNumberOfAnnotations:(id)a3
{
  v3 = [*(&self->super._paginationController + 4) fetchedObjects];
  v4 = [v3 count];

  return v4;
}

- (id)bookSharingRequestClient:(id)a3 annotationAtIndex:(unint64_t)a4
{
  v5 = [*(&self->super._paginationController + 4) fetchedObjects];
  v6 = [v5 objectAtIndex:a4];

  return v6;
}

- (void)selectAll:(id)a3
{
  if ([*(&self->super._verticalCenteringInsets.right + 4) numberOfSections])
  {
    v4 = 0;
    do
    {
      if ([*(&self->super._verticalCenteringInsets.right + 4) numberOfRowsInSection:v4])
      {
        v5 = 0;
        do
        {
          v6 = *(&self->super._verticalCenteringInsets.right + 4);
          v7 = [NSIndexPath indexPathForRow:v5 inSection:v4];
          [v6 selectRowAtIndexPath:v7 animated:1 scrollPosition:0];

          ++v5;
        }

        while (v5 < [*(&self->super._verticalCenteringInsets.right + 4) numberOfRowsInSection:v4]);
      }

      ++v4;
    }

    while (v4 < [*(&self->super._verticalCenteringInsets.right + 4) numberOfSections]);
  }

  [(BKTOCContentViewController *)self notifyBookSharingClientSelectionChanged];
}

- (void)selectNone:(id)a3
{
  if ([*(&self->super._verticalCenteringInsets.right + 4) numberOfSections])
  {
    v4 = 0;
    do
    {
      if ([*(&self->super._verticalCenteringInsets.right + 4) numberOfRowsInSection:v4])
      {
        v5 = 0;
        do
        {
          v6 = *(&self->super._verticalCenteringInsets.right + 4);
          v7 = [NSIndexPath indexPathForRow:v5 inSection:v4];
          [v6 deselectRowAtIndexPath:v7 animated:1];

          ++v5;
        }

        while (v5 < [*(&self->super._verticalCenteringInsets.right + 4) numberOfRowsInSection:v4]);
      }

      ++v4;
    }

    while (v4 < [*(&self->super._verticalCenteringInsets.right + 4) numberOfSections]);
  }

  [(BKTOCContentViewController *)self notifyBookSharingClientSelectionChanged];
}

- (void)notifyBookSharingClientSelectionChanged
{
  v3 = [*(&self->super._verticalCenteringInsets.right + 4) indexPathsForSelectedRows];
  v4 = [v3 count];

  v5 = [(BKTOCContentViewController *)self assetSharingConnectionClient];
  [v5 assetSharingConnectionServer:self didChangeSelectedAnnotationsCount:v4];
}

- (void)controllerWillChangeContent:(id)a3
{
  if ((BYTE4(self->_macLargeTextDateFormatter) & 1) == 0)
  {
    [*(&self->super._verticalCenteringInsets.right + 4) beginUpdates];
  }
}

- (void)controller:(id)a3 didChangeSection:(id)a4 atIndex:(unint64_t)a5 forChangeType:(unint64_t)a6
{
  v14 = a3;
  v10 = a4;
  if (a6 == 2)
  {
    v13 = *(&self->super._verticalCenteringInsets.right + 4);
    v12 = [NSIndexSet indexSetWithIndex:a5];
    [v13 deleteSections:v12 withRowAnimation:0];
  }

  else
  {
    if (a6 != 1)
    {
      goto LABEL_6;
    }

    v11 = *(&self->super._verticalCenteringInsets.right + 4);
    v12 = [NSIndexSet indexSetWithIndex:a5];
    [v11 insertSections:v12 withRowAnimation:0];
  }

  [(BKTOCContentViewController *)self _notifyDelegateContentDidChange];
LABEL_6:
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v21 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if ((BYTE4(self->_macLargeTextDateFormatter) & 1) == 0)
  {
    if (a6 <= 2)
    {
      if (a6 != 1)
      {
        if (a6 != 2)
        {
          goto LABEL_13;
        }

        v15 = *(&self->super._verticalCenteringInsets.right + 4);
        v16 = [NSArray arrayWithObject:v13];
        [v15 deleteRowsAtIndexPaths:v16 withRowAnimation:0];
        goto LABEL_12;
      }

      v18 = *(&self->super._verticalCenteringInsets.right + 4);
LABEL_11:
      v16 = [NSArray arrayWithObject:v14];
      [v18 insertRowsAtIndexPaths:v16 withRowAnimation:0];
LABEL_12:

      [(BKTOCContentViewController *)self _notifyDelegateContentDidChange];
      goto LABEL_13;
    }

    if (a6 == 3)
    {
      v19 = *(&self->super._verticalCenteringInsets.right + 4);
      v20 = [NSArray arrayWithObject:v13];
      [v19 deleteRowsAtIndexPaths:v20 withRowAnimation:0];

      v18 = *(&self->super._verticalCenteringInsets.right + 4);
      goto LABEL_11;
    }

    if (a6 == 4)
    {
      v17 = [*(&self->super._verticalCenteringInsets.right + 4) cellForRowAtIndexPath:v13];
      [(BKTOCContentViewController *)self configureCell:v17 atIndexPath:v13];
    }
  }

LABEL_13:
}

- (void)controllerDidChangeContent:(id)a3
{
  if ((BYTE4(self->_macLargeTextDateFormatter) & 1) == 0)
  {
    [*(&self->super._verticalCenteringInsets.right + 4) endUpdates];
  }

  [(BKTOCContentViewController *)self updateView];
}

- (void)setNeedsRestyle
{
  v3.receiver = self;
  v3.super_class = BKTOCContentViewController;
  [(BKContentViewController *)&v3 setNeedsRestyle];
  [(BKTOCContentViewController *)self reload];
}

- (id)currentLocation
{
  v2 = [[BKLocation alloc] initWithOrdinal:[(BKTOCContentViewController *)self ordinal]];

  return v2;
}

- (void)_notifyDelegateContentDidChange
{
  if ((BYTE4(self->super._fetchedResultsController) & 0x10) != 0)
  {
    v4 = [(BKDirectoryContent *)self directoryDelegate];
    [v4 tocViewControllerContentDidChange:self];
  }
}

- (void)reload
{
  v13.receiver = self;
  v13.super_class = BKTOCContentViewController;
  [(BKTOCViewController *)&v13 reload];
  if ([*(&self->super._verticalCenteringInsets.right + 4) isEditing])
  {
    v3 = [*(&self->super._verticalCenteringInsets.right + 4) indexPathsForSelectedRows];
  }

  else
  {
    v3 = 0;
  }

  [*(&self->super._verticalCenteringInsets.right + 4) reloadData];
  [(BKTOCContentViewController *)self _notifyDelegateContentDidChange];
  if (v3 && [v3 count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(&self->super._verticalCenteringInsets.right + 4) selectRowAtIndexPath:*(*(&v9 + 1) + 8 * v8) animated:0 scrollPosition:{0, v9}];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setBook:(id)a3
{
  v3.receiver = self;
  v3.super_class = BKTOCContentViewController;
  [(BKContentViewController *)&v3 setBook:a3];
}

- (id)bookTitle
{
  v2 = [(BKContentViewController *)self book];
  v3 = [v2 bookTitle];

  return v3;
}

- (id)author
{
  v2 = [(BKContentViewController *)self book];
  v3 = [v2 bookAuthor];

  return v3;
}

- (id)storeURL
{
  v2 = [(BKContentViewController *)self book];
  v3 = [v2 storeId];

  if ([v3 length])
  {
    v4 = +[AEUserPublishing sharedInstance];
    v5 = [v4 storeShortURLForStoreId:v3 dataSource:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)contentBeganLoadingForRequest:(id)a3
{
  v4 = [(BKTOCContentViewController *)self cellLoadingOperationCount]+ 1;

  [(BKTOCContentViewController *)self setCellLoadingOperationCount:v4];
}

- (void)contentFinishedLoadingForRequest:(id)a3 preferredHeight:(double)a4 error:(id)a5
{
  v8 = a3;
  [(BKTOCContentViewController *)self setCellLoadingOperationCount:[(BKTOCContentViewController *)self cellLoadingOperationCount]- 1];
  v9 = [(BKTOCContentViewController *)self requestToIndexPath];
  v10 = [v8 cacheKey];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = [(BKTOCContentViewController *)self cachedRowContents];
    v13 = [v12 objectForKeyedSubscript:v11];

    if (!v13)
    {
      if (a5)
      {
        v14 = [(BKTOCContentViewController *)self cachedRowContents];
        [v14 removeObjectForKey:v11];
      }

      else
      {
        v15 = [v8 cacheKey];
        v16 = [BKTOCWebViewCellContent cellContentWithHeight:v15 cacheKey:a4];

        v17 = [(BKTOCContentViewController *)self cachedRowContents];
        [v17 setObject:v16 forKeyedSubscript:v11];

        v18 = *(&self->super._verticalCenteringInsets.right + 4);
        v20 = v11;
        v19 = [NSArray arrayWithObjects:&v20 count:1];
        [v18 reloadRowsAtIndexPaths:v19 withRowAnimation:100];
      }
    }
  }
}

- (id)p_selectedAnnotations
{
  v3 = [*(&self->super._verticalCenteringInsets.right + 4) indexPathsForSelectedRows];
  v4 = [(BKTOCContentViewController *)self p_annotationsForRowItems:v3];

  return v4;
}

- (id)p_annotationForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(BKTOCContentViewController *)self fetchedResultsController];
  v6 = [v5 objectAtIndexPath:v4];

  objc_opt_class();
  v7 = BUDynamicCast();

  return v7;
}

- (id)p_annotationsForRowItems:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(BKTOCContentViewController *)self p_annotationForIndexPath:*(*(&v13 + 1) + 8 * i), v13];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)deleteAnnotationAtIndexPath:(id)a3
{
  v4 = [(BKTOCContentViewController *)self p_annotationForIndexPath:a3];
  if (v4)
  {
    v6 = v4;
    v5 = [(BKContentViewController *)self book];
    [v5 deleteAnnotation:v6];

    v4 = v6;
  }
}

- (void)deleteSelectedAnnotations
{
  v3 = [(BKTOCContentViewController *)self p_selectedAnnotations];
  v4 = [(BKContentViewController *)self book];
  v5 = [v4 annotationProvider];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 deleteAnnotation:{*(*(&v12 + 1) + 8 * v10), v12}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = [*(&self->super._paginationController + 4) managedObjectContext];
  [v5 saveManagedObjectContext:v11];
}

- (void)shareSelectedAnnotationsFromSourceView:(id)a3
{
  v6 = a3;
  v4 = [(BKTOCContentViewController *)self p_selectedAnnotations];
  if ([v4 count])
  {
    v5 = [(BKDirectoryContent *)self directoryDelegate];
    [v5 tocViewController:self shareAnnotations:v4 sourceView:v6];
  }
}

- (BOOL)shareItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(BKTOCContentViewController *)self p_annotationForIndexPath:v4];
  if (v5)
  {
    v6 = [*(&self->super._verticalCenteringInsets.right + 4) cellForRowAtIndexPath:v4];
    v7 = [(BKDirectoryContent *)self directoryDelegate];
    v10 = v5;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
    [v7 tocViewController:self shareAnnotations:v8 sourceView:v6];
  }

  return v5 != 0;
}

- (void)beginEditingIfNeeded
{
  if (([*(&self->super._verticalCenteringInsets.right + 4) isEditing] & 1) == 0)
  {

    [(BKTOCContentViewController *)self beginEditingMode];
  }
}

- (void)endEditingIfNeeded
{
  if ([*(&self->super._verticalCenteringInsets.right + 4) isEditing])
  {

    [(BKTOCContentViewController *)self endEditingMode];
  }
}

- (void)beginEditingMode
{
  v3 = [(BKDirectoryContent *)self directoryDelegate];
  [v3 tocViewControllerDidChangeEditing:1];

  [*(&self->super._verticalCenteringInsets.right + 4) setEditing:1 animated:1];

  [(BKTOCContentViewController *)self installEditModeToolbar];
}

- (void)endEditingMode
{
  v3 = [(BKDirectoryContent *)self directoryDelegate];
  [v3 tocViewControllerDidChangeEditing:0];

  [*(&self->super._verticalCenteringInsets.right + 4) setEditing:0 animated:1];
  [(BKTOCContentViewController *)self removeEditModeToolbar];

  [(BKTOCContentViewController *)self showRowForCurrentLocation];
}

- (void)installEditModeToolbar
{
  v3 = [(BKTOCContentViewController *)self editingToolbar];
  v4 = [v3 superview];

  if (v4)
  {
    v5 = BKTOCCVCLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_138258(self, v5);
    }
  }

  else
  {
    v6 = [(BKTOCContentViewController *)self view];
    v7 = [(BKTOCContentViewController *)self editingToolbar];
    [v6 addSubview:v7];

    v8 = [(BKTOCContentViewController *)self editingToolbar];
    [v8 addInteraction:*(&self->_scrollPocketCollector + 4)];

    v9 = [(BKTOCContentViewController *)self view];
    [v9 addInteraction:*(&self->_descriptionView + 4)];

    v10 = [(BKTOCContentViewController *)self editingToolbar];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v35 = [(BKTOCContentViewController *)self editingToolbar];
    v33 = [v35 leadingAnchor];
    v34 = [(BKTOCContentViewController *)self view];
    v32 = [v34 leadingAnchor];
    v31 = [v33 constraintEqualToAnchor:v32];
    v36[0] = v31;
    v30 = [(BKTOCContentViewController *)self editingToolbar];
    v28 = [v30 trailingAnchor];
    v29 = [(BKTOCContentViewController *)self view];
    v11 = [v29 trailingAnchor];
    v12 = [v28 constraintEqualToAnchor:v11];
    v36[1] = v12;
    v13 = [(BKTOCContentViewController *)self editingToolbar];
    v14 = [v13 bottomAnchor];
    v15 = [(BKTOCContentViewController *)self view];
    v16 = [v15 safeAreaLayoutGuide];
    v17 = [v16 bottomAnchor];
    v18 = [v14 constraintEqualToAnchor:v17];
    v36[2] = v18;
    v19 = [NSArray arrayWithObjects:v36 count:3];
    [NSLayoutConstraint activateConstraints:v19];

    v20 = [(BKTOCContentViewController *)self view];
    [v20 setNeedsLayout];

    v21 = [(BKTOCContentViewController *)self view];
    [v21 layoutIfNeeded];

    v22 = [(BKTOCContentViewController *)self editingToolbar];
    [v22 frame];
    [*(&self->super._verticalCenteringInsets.right + 4) setContentInset:{0.0, 0.0, v23, 0.0}];

    v5 = [(BKTOCContentViewController *)self editingToolbar];
    [v5 frame];
    v25 = v24;
    v26 = [(BKTOCContentViewController *)self view];
    [v26 safeAreaInsets];
    [*(&self->super._verticalCenteringInsets.right + 4) setScrollIndicatorInsets:{0.0, 0.0, v25 + v27, 0.0}];
  }
}

- (void)removeEditModeToolbar
{
  v3 = BKTOCCVCLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_138304(v3);
  }

  v4 = [(BKTOCContentViewController *)self editingToolbar];
  [v4 removeFromSuperview];

  v5 = [(BKTOCContentViewController *)self editingToolbar];
  [v5 removeInteraction:*(&self->_scrollPocketCollector + 4)];

  v6 = [(BKTOCContentViewController *)self view];
  [v6 removeInteraction:*(&self->_descriptionView + 4)];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [*(&self->super._verticalCenteringInsets.right + 4) setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];
  [*(&self->super._verticalCenteringInsets.right + 4) setScrollIndicatorInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
  v10 = *(&self->_userDidScroll + 4);
  *(&self->_userDidScroll + 4) = 0;

  objc_storeWeak((&self->_editingToolbar + 4), 0);
}

- (UIToolbar)editingToolbar
{
  v3 = *(&self->_userDidScroll + 4);
  if (!v3)
  {
    v4 = [[UIToolbar alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = AEBundle();
    v6 = [v5 localizedStringForKey:@"Share" value:&stru_1E7188 table:0];
    v7 = [UIImage systemImageNamed:@"square.and.arrow.up"];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_7F214;
    v31[3] = &unk_1E49E8;
    v31[4] = self;
    v8 = [UIAction actionWithTitle:v6 image:v7 identifier:@"toolbar.share" handler:v31];

    v29 = [[UIBarButtonItem alloc] initWithPrimaryAction:v8];
    v9 = AEBundle();
    v10 = [v9 localizedStringForKey:@"Delete" value:&stru_1E7188 table:0];
    v11 = [UIImage systemImageNamed:@"trash"];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_7F21C;
    v30[3] = &unk_1E49E8;
    v30[4] = self;
    v12 = [UIAction actionWithTitle:v10 image:v11 identifier:@"toolbar.delete" handler:v30];

    [v12 setAttributes:{objc_msgSend(v12, "attributes") | 2}];
    v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:16 primaryAction:v12];
    v14 = +[UIBarButtonItem flexibleSpaceItem];
    v15 = [*(&self->super._verticalCenteringInsets.right + 4) indexPathsForSelectedRows];
    v16 = -[BKTOCContentViewController editToolbarFooterTextWithCount:](self, "editToolbarFooterTextWithCount:", [v15 count]);

    v28 = v16;
    v17 = [[UIBarButtonItem alloc] initWithTitle:v16 menu:0];
    [v17 _setPrefersNoPlatter:1];
    [v17 setEnabled:0];
    v34 = NSForegroundColorAttributeName;
    v18 = +[UIColor labelColor];
    v35 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    [v17 setTitleTextAttributes:v19 forState:2];

    objc_storeWeak((&self->_editingToolbar + 4), v17);
    v20 = *(&self->super._centeringInsets.right + 4);
    if (v20 == 2)
    {
      v21 = v29;
      v32[0] = v29;
      v32[1] = v14;
      v32[2] = v17;
      v32[3] = v14;
      v32[4] = v13;
      v23 = v32;
      v24 = 5;
    }

    else
    {
      v21 = v29;
      v22 = 0;
      if (v20 != 1)
      {
LABEL_7:
        [v4 setItems:v22 animated:1];
        v25 = *(&self->_userDidScroll + 4);
        *(&self->_userDidScroll + 4) = v4;
        v26 = v4;

        v3 = *(&self->_userDidScroll + 4);
        goto LABEL_8;
      }

      v33[0] = v14;
      v33[1] = v17;
      v33[2] = v14;
      v33[3] = v13;
      v23 = v33;
      v24 = 4;
    }

    v22 = [NSArray arrayWithObjects:v23 count:v24];
    goto LABEL_7;
  }

LABEL_8:

  return v3;
}

- (void)updateToolbarContent
{
  [(BKTOCContentViewController *)self installEditModeToolbar];
  v3 = [*(&self->super._verticalCenteringInsets.right + 4) indexPathsForSelectedRows];
  v4 = [v3 count];

  v5 = BKTOCCVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_138348();
  }

  v6 = [(BKTOCContentViewController *)self editToolbarFooterTextWithCount:v4];
  WeakRetained = objc_loadWeakRetained((&self->_editingToolbar + 4));
  [WeakRetained setTitle:v6];
}

- (id)editToolbarFooterTextWithCount:(unint64_t)a3
{
  v4 = *(&self->super._centeringInsets.right + 4);
  if (v4 == 1)
  {
    v5 = @"%lu Bookmark(s) Selected";
    goto LABEL_5;
  }

  if (v4 == 2)
  {
    v5 = @"%lu Highlight(s) Selected";
LABEL_5:
    v6 = AEBundle();
    v7 = [v6 localizedStringForKey:v5 value:&stru_1E7188 table:0];
    v8 = [NSString localizedStringWithFormat:v7, a3];

    goto LABEL_7;
  }

  v8 = @"Select";
LABEL_7:

  return v8;
}

- (void)deleteFromToolbar
{
  [(BKTOCContentViewController *)self deleteSelectedAnnotations];

  [(BKTOCContentViewController *)self endEditingMode];
}

- (void)shareFromToolbar
{
  [(BKTOCContentViewController *)self shareSelectedAnnotationsFromSourceView:*(&self->_userDidScroll + 4)];

  [(BKTOCContentViewController *)self endEditingMode];
}

- (AEAssetSharingConnectionClient)assetSharingConnectionClient
{
  WeakRetained = objc_loadWeakRetained((&self->_toolbarLabelItem + 4));

  return WeakRetained;
}

@end
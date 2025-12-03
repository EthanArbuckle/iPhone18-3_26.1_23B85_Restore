@interface BKTOCContentViewController
- (AEAssetSharingConnectionClient)assetSharingConnectionClient;
- (AEMinimalTemplate)template;
- (BKActivityIndicatorOverlayView)activityIndicatorOverlayView;
- (BKTOCContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (BKTOCImageCache2)imageCache;
- (BKTOCWebViewCellLoadQueue)requestQueue;
- (BOOL)p_willUseWebViewForCellWithChapter:(id)chapter;
- (BOOL)shareItemAtIndexPath:(id)path;
- (BOOL)showRowForCurrentLocation;
- (UIToolbar)editingToolbar;
- (double)calculateFontSize;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_bkTableView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)_indexPathForRowNearestPageNumber:(int64_t)number pageNumberForObjectSelector:(SEL)selector isExactPageMatch:(BOOL *)match;
- (id)author;
- (id)bookSharingRequestClient:(id)client annotationAtIndex:(unint64_t)index;
- (id)bookSharingRequestClient:(id)client selectedAnnotationAtIndex:(unint64_t)index;
- (id)bookTitle;
- (id)bookmarksFetchedResultsController;
- (id)currentLocation;
- (id)dateFormatter;
- (id)deleteSwipeAction:(id)action;
- (id)editToolbarFooterTextWithCount:(unint64_t)count;
- (id)fetchedResultsController;
- (id)fontFamily;
- (id)fontForChapter:(id)chapter;
- (id)highlightedTextLabelFont;
- (id)indexPathOfLastRow;
- (id)p_annotationForIndexPath:(id)path;
- (id)p_annotationsForRowItems:(id)items;
- (id)p_selectedAnnotations;
- (id)pageTitleForAnnotation:(id)annotation;
- (id)pageTitleForChapter:(id)chapter;
- (id)reuseIdentifier;
- (id)reuseIdentifierForCellType:(unint64_t)type;
- (id)shareSwipeAction:(id)action;
- (id)storeURL;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tocIndexPathForRowNearestPageNumber:(int64_t)number;
- (int)assetSharingConnectionTypeForClient:(id)client;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)pageNumberForCurrentLocation;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (int64_t)tableViewSeparatorStyle;
- (unint64_t)bookSharingRequestNumberOfAnnotations:(id)annotations;
- (unint64_t)bookSharingRequestNumberOfSelectedAnnotations:(id)annotations;
- (void)_configureAnnotationCell:(id)cell forAnnotation:(id)annotation forRowAtIndexPath:(id)path;
- (void)_configurePointAnnotationCell:(id)cell forRowAtIndexPath:(id)path;
- (void)_configureRangeAnnotationCell:(id)cell forRowAtIndexPath:(id)path;
- (void)_configureTOCCell:(id)cell forRowAtIndexPath:(id)path;
- (void)_configureWebTOCCell:(id)cell forRowAtIndexPath:(id)path;
- (void)_dumpCachedWebContentAndReload;
- (void)_hideActivityIndicator;
- (void)_notifyDelegateContentDidChange;
- (void)_showActivityIndicator;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateColors;
- (void)_updateContentInsets;
- (void)assetSharingConnectionClient:(id)client performRequest:(int)request;
- (void)beginAssetSharingConnectionWithClient:(id)client;
- (void)beginEditingIfNeeded;
- (void)beginEditingMode;
- (void)beginSelectionStartingWithIndexPath:(id)path;
- (void)configureCell:(id)cell atIndexPath:(id)path;
- (void)contentBeganLoadingForRequest:(id)request;
- (void)contentFinishedLoadingForRequest:(id)request preferredHeight:(double)height error:(id)error;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controller:(id)controller didChangeSection:(id)section atIndex:(unint64_t)index forChangeType:(unint64_t)type;
- (void)controllerDidChangeContent:(id)content;
- (void)controllerWillChangeContent:(id)content;
- (void)dealloc;
- (void)deleteAnnotationAtIndexPath:(id)path;
- (void)deleteFromToolbar;
- (void)deleteSelectedAnnotations;
- (void)endAssetSharingConnectionWithClient:(id)client;
- (void)endEditingIfNeeded;
- (void)endEditingMode;
- (void)installEditModeToolbar;
- (void)notifyBookSharingClientSelectionChanged;
- (void)releaseViews;
- (void)reload;
- (void)removeEditModeToolbar;
- (void)removeHighlightFromCurrentLocation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)selectAll:(id)all;
- (void)selectNone:(id)none;
- (void)setBook:(id)book;
- (void)setCellLoadingOperationCount:(int64_t)count;
- (void)setNeedsRestyle;
- (void)setSharedWebView:(id)view;
- (void)setTheme:(id)theme;
- (void)shareFromToolbar;
- (void)shareSelectedAnnotationsFromSourceView:(id)view;
- (void)tableView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view performPrimaryActionForRowAtIndexPath:(id)path;
- (void)updateToolbarContent;
- (void)updateView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BKTOCContentViewController

- (BKTOCContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = BKTOCContentViewController;
  v4 = [(BKTOCViewController *)&v8 initWithNibName:name bundle:bundle];
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
    traitCollection = [(BKTOCContentViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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
  view = [(BKTOCContentViewController *)self view];
  [view bounds];
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
  [view addSubview:*(&self->super._verticalCenteringInsets.right + 4)];
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

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  [(BKTOCContentViewController *)self _updateColors:change];
  [*(&self->super._verticalCenteringInsets.right + 4) reloadData];

  [(BKTOCContentViewController *)self _notifyDelegateContentDidChange];
}

- (void)setSharedWebView:(id)view
{
  viewCopy = view;
  v5 = *(&self->_requestQueue + 4);
  if (v5)
  {
    [v5 removeFromSuperview];
  }

  v6 = *(&self->_requestQueue + 4);
  *(&self->_requestQueue + 4) = viewCopy;
  v7 = viewCopy;

  v8 = +[UIColor clearColor];
  [*(&self->_requestQueue + 4) setBackgroundColor:v8];

  v9 = +[UIColor clearColor];
  scrollView = [*(&self->_requestQueue + 4) scrollView];
  [scrollView setBackgroundColor:v9];

  [*(&self->_requestQueue + 4) setOpaque:0];
  [*(&self->_requestQueue + 4) setAutoresizingMask:0];
  [*(&self->_requestQueue + 4) setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(&self->_requestQueue + 4) setUserInteractionEnabled:0];
  view = [(BKTOCContentViewController *)self view];
  [view addSubview:*(&self->_requestQueue + 4)];

  view2 = [(BKTOCContentViewController *)self view];
  [view2 sendSubviewToBack:*(&self->_requestQueue + 4)];

  [*(&self->_requestQueue + 4) frame];
  [*(&self->_requestQueue + 4) setFrame:{-CGRectGetWidth(v16), v16.origin.y, v16.size.width, v16.size.height}];
  v13 = *(&self->_requestQueue + 4);
  requestQueue = [(BKTOCContentViewController *)self requestQueue];
  [requestQueue setWebView:v13];
}

- (void)_updateColors
{
  themePage = [(BKTOCContentViewController *)self themePage];
  v3 = +[UIColor clearColor];
  viewIfLoaded = [(BKTOCContentViewController *)self viewIfLoaded];
  [viewIfLoaded setBackgroundColor:v3];

  [*(&self->super._verticalCenteringInsets.right + 4) setBackgroundColor:v3];
  tableViewSeparatorColor = [themePage tableViewSeparatorColor];
  [*(&self->super._verticalCenteringInsets.right + 4) setSeparatorColor:tableViewSeparatorColor];

  primaryTextColor = [themePage primaryTextColor];
  titleLabel = [*(&self->_sharedWebView + 4) titleLabel];
  [titleLabel setTextColor:primaryTextColor];

  secondaryTextColor = [themePage secondaryTextColor];
  descriptionLabel = [*(&self->_sharedWebView + 4) descriptionLabel];
  [descriptionLabel setTextColor:secondaryTextColor];

  primaryTextColor2 = [themePage primaryTextColor];
  view = [(BKTOCContentViewController *)self view];
  [view setTintColor:primaryTextColor2];

  secondaryTextColor2 = [themePage secondaryTextColor];
  [*(&self->super._verticalCenteringInsets.right + 4) setTintColor:secondaryTextColor2];
}

- (void)setTheme:(id)theme
{
  v4.receiver = self;
  v4.super_class = BKTOCContentViewController;
  [(BKTOCViewController *)&v4 setTheme:theme];
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

    imageCache = [(BKTOCContentViewController *)self imageCache];
    [*(&self->_template + 4) setImageCache:imageCache];

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

- (id)_bkTableView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  pathCopy = path;
  book = [(BKContentViewController *)self book];
  sampleContent = [book sampleContent];
  bOOLValue = [sampleContent BOOLValue];

  if (bOOLValue)
  {
    goto LABEL_6;
  }

  fetchedResultsController = [(BKTOCContentViewController *)self fetchedResultsController];
  v11 = [fetchedResultsController objectAtIndexPath:pathCopy];

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
  layoutDelegate = [(BKContentViewController *)self layoutDelegate];

  if (layoutDelegate)
  {
    layoutDelegate2 = [(BKContentViewController *)self layoutDelegate];
    [layoutDelegate2 edgeInsetsForContentViewController:self];
    [(BKContentViewController *)self setContentInsets:?];

    layoutDelegate3 = [(BKContentViewController *)self layoutDelegate];
    [layoutDelegate3 separatorInsetsForContentViewController:self];
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
  view = [(BKTOCContentViewController *)self view];
  [view bounds];
  [*(&self->super._verticalCenteringInsets.right + 4) setFrame:?];

  [(BKContentViewController *)self separatorInsets];
  [*(&self->super._verticalCenteringInsets.right + 4) setSeparatorInset:?];
  editingToolbar = [(BKTOCContentViewController *)self editingToolbar];
  [editingToolbar frame];
  [*(&self->super._verticalCenteringInsets.right + 4) setContentInset:{0.0, 0.0, v5, 0.0}];

  editingToolbar2 = [(BKTOCContentViewController *)self editingToolbar];
  [editingToolbar2 frame];
  v8 = v7;
  view2 = [(BKTOCContentViewController *)self view];
  [view2 safeAreaInsets];
  [*(&self->super._verticalCenteringInsets.right + 4) setScrollIndicatorInsets:{0.0, 0.0, v8 + v10, 0.0}];

  view3 = [(BKTOCContentViewController *)self view];
  v51 = [view3 viewWithTag:9999];

  [v51 removeFromSuperview];
  [*(&self->super._verticalCenteringInsets.right + 4) setAlpha:1.0];
  if ([(BKTOCViewController *)self tocContentType])
  {
    fetchedResultsController = [(BKTOCContentViewController *)self fetchedResultsController];
    fetchedObjects = [fetchedResultsController fetchedObjects];
    v14 = [fetchedObjects count];

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
      titleLabel = [(BKTOCBookmarksDescription *)v15 titleLabel];
      [titleLabel setFont:v17];

      descriptionLabel = [(BKTOCBookmarksDescription *)v15 descriptionLabel];
      [descriptionLabel setFont:v18];

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
      titleLabel2 = [(BKTOCBookmarksDescription *)v15 titleLabel];
      [titleLabel2 setText:v24];

      descriptionLabel2 = [(BKTOCBookmarksDescription *)v15 descriptionLabel];
      [descriptionLabel2 setText:v26];

      themePage = [(BKTOCContentViewController *)self themePage];
      secondaryTextColor = [themePage secondaryTextColor];

      titleLabel3 = [(BKTOCBookmarksDescription *)v15 titleLabel];
      [titleLabel3 setTextColor:secondaryTextColor];

      descriptionLabel3 = [(BKTOCBookmarksDescription *)v15 descriptionLabel];
      [descriptionLabel3 setTextColor:secondaryTextColor];

      view4 = [(BKTOCContentViewController *)self view];
      [view4 bounds];
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

      view5 = [(BKTOCContentViewController *)self view];
      [view5 addSubview:v47];

      [*(&self->super._verticalCenteringInsets.right + 4) setAlpha:0.0];
    }
  }

  [(BKTOCContentViewController *)self showRowForCurrentLocation];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = BKTOCContentViewController;
  [(BKTOCViewController *)&v5 viewWillAppear:appear];
  [(BKTOCContentViewController *)self updateView];
  [(BKTOCContentViewController *)self reload];
  if (([*(&self->super._verticalCenteringInsets.right + 4) isEditing] & 1) == 0)
  {
    indexPathForSelectedRow = [*(&self->super._verticalCenteringInsets.right + 4) indexPathForSelectedRow];
    [*(&self->super._verticalCenteringInsets.right + 4) deselectRowAtIndexPath:indexPathForSelectedRow animated:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = BKTOCContentViewController;
  [(BKTOCViewController *)&v6 viewDidAppear:appear];
  v4 = [NSDate dateWithTimeIntervalSinceNow:0.5];
  v5 = *(&self->_isProgrammaticScrolling + 4);
  *(&self->_isProgrammaticScrolling + 4) = v4;

  [*(&self->super._verticalCenteringInsets.right + 4) flashScrollIndicators];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  v5 = scrollCopy;
  if ((BYTE4(self->_recenteredIndexPath) & 1) == 0)
  {
    scrollCopy = *(&self->_isProgrammaticScrolling + 4);
    if (scrollCopy)
    {
      v7 = v5;
      scrollCopy = [scrollCopy timeIntervalSinceNow];
      v5 = v7;
      if (v6 <= 0.0)
      {
        BYTE4(self->_readyForUserScrollDate) = 1;
      }
    }
  }

  _objc_release_x1(scrollCopy, v5);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = BKTOCContentViewController;
  coordinatorCopy = coordinator;
  [(BKTOCViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
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
  [coordinatorCopy animateAlongsideTransition:v9 completion:v8];
}

- (void)_dumpCachedWebContentAndReload
{
  requestToIndexPath = [(BKTOCContentViewController *)self requestToIndexPath];
  [requestToIndexPath removeAllObjects];

  cachedRowContents = [(BKTOCContentViewController *)self cachedRowContents];
  [cachedRowContents removeAllObjects];

  imageCache = [(BKTOCContentViewController *)self imageCache];
  [imageCache removeAllObjects];
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
  directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
  v4 = [directoryDelegate tocViewControllerCurrentLocation:self];

  if (v4)
  {
    directoryDelegate2 = [(BKDirectoryContent *)self directoryDelegate];
    v6 = [directoryDelegate2 directoryContent:self pageNumberForLocation:v4];
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
  sections = [*(&self->super._paginationController + 4) sections];
  reverseObjectEnumerator = [sections reverseObjectEnumerator];

  obj = reverseObjectEnumerator;
  v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        objects = [v10 objects];
        v12 = [objects count];

        if (v12)
        {
          sections2 = [*(&self->super._paginationController + 4) sections];
          v14 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v12 - 1, [sections2 indexOfObject:v10]);

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

- (id)tocIndexPathForRowNearestPageNumber:(int64_t)number
{
  v5 = 0;
  v3 = [(BKTOCContentViewController *)self _indexPathForRowNearestPageNumber:number pageNumberForObjectSelector:"tocViewController:pageNumberForChapter:" isExactPageMatch:&v5];

  return v3;
}

- (id)_indexPathForRowNearestPageNumber:(int64_t)number pageNumberForObjectSelector:(SEL)selector isExactPageMatch:(BOOL *)match
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
        objects = [v8 objects];
        v10 = [objects countByEnumeratingWithState:&v28 objects:v36 count:16];
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
              objc_enumerationMutation(objects);
            }

            v14 = *(*(&v28 + 1) + 8 * v13);
            directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
            selector = [directoryDelegate selector];

            if (selector >= number)
            {
              objects2 = [v8 objects];
              v18 = [objects2 indexOfObject:v14];

              if (selector == number)
              {
                *match = 1;
                goto LABEL_21;
              }

              if (selector > number)
              {
                break;
              }
            }

            if (v11 == ++v13)
            {
              v11 = [objects countByEnumeratingWithState:&v28 objects:v36 count:16];
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
          sections = [*(&self->super._paginationController + 4) sections];
          indexPathOfLastRow = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v18, [sections indexOfObject:v8]);

          if (!indexPathOfLastRow)
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

  indexPathOfLastRow = [(BKTOCContentViewController *)self indexPathOfLastRow];
LABEL_26:

  return indexPathOfLastRow;
}

- (BOOL)showRowForCurrentLocation
{
  v11 = 0;
  fetchedObjects = [*(&self->super._paginationController + 4) fetchedObjects];
  if (![fetchedObjects count])
  {

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  numberOfSections = [*(&self->super._verticalCenteringInsets.right + 4) numberOfSections];

  if (numberOfSections < 1)
  {
    goto LABEL_8;
  }

  pageNumberForCurrentLocation = [(BKTOCContentViewController *)self pageNumberForCurrentLocation];
  if (pageNumberForCurrentLocation == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  v6 = pageNumberForCurrentLocation;
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
  indexPathsForSelectedRows = [*(&self->super._verticalCenteringInsets.right + 4) indexPathsForSelectedRows];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [indexPathsForSelectedRows countByEnumeratingWithState:&v13 objects:v19 count:16];
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
          objc_enumerationMutation(indexPathsForSelectedRows);
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

      v6 = [indexPathsForSelectedRows countByEnumeratingWithState:&v13 objects:v19 count:16];
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
    theme = [(BKTOCContentViewController *)self theme];
    contentTextColor = [theme contentTextColor];
    v7 = [contentTextColor colorWithAlphaComponent:0.7];
    theme2 = [(BKTOCContentViewController *)self theme];
    v9 = [theme2 backgroundColorForTraitEnvironment:self];
    v10 = [(BKActivityIndicatorOverlayView *)v4 initWithBackgroundColor:v7 foregroundColor:v9];
    v11 = *(&self->_cellLoadingOperationCount + 4);
    *(&self->_cellLoadingOperationCount + 4) = v10;

    v3 = *(&self->_cellLoadingOperationCount + 4);
  }

  return v3;
}

- (void)setCellLoadingOperationCount:(int64_t)count
{
  *(&self->_preferredFontSize + 4) = count & ~(count >> 63);
  if (count < 1)
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
  activityIndicatorOverlayView = [(BKTOCContentViewController *)self activityIndicatorOverlayView];
  superview = [*(&self->super._verticalCenteringInsets.right + 4) superview];
  [activityIndicatorOverlayView showIndicatorCenteredInView:superview animated:1 animationDelay:0.0];
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
  familyName = [v2 familyName];

  return familyName;
}

- (id)pageTitleForChapter:(id)chapter
{
  chapterCopy = chapter;
  if (chapterCopy && (BYTE4(self->super._fetchedResultsController) & 2) != 0)
  {
    directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
    v5 = [directoryDelegate tocViewController:self pageTitleForChapter:chapterCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)pageTitleForAnnotation:(id)annotation
{
  if ((BYTE4(self->super._fetchedResultsController) & 4) != 0)
  {
    annotationCopy = annotation;
    directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
    v3 = [directoryDelegate tocViewController:self pageTitleForAnnotation:annotationCopy];
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

- (id)fontForChapter:(id)chapter
{
  chapterCopy = chapter;
  [(BKTOCViewController *)self establishChapterFonts];
  indentationLevel = [chapterCopy indentationLevel];

  integerValue = [indentationLevel integerValue];
  if (integerValue)
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

- (BOOL)p_willUseWebViewForCellWithChapter:(id)chapter
{
  htmlName = [chapter htmlName];
  if ([htmlName length])
  {
    v4 = [NSRegularExpression regularExpressionWithPattern:@"<[^/s]" options:0 error:0];
    v5 = [v4 numberOfMatchesInString:htmlName options:0 range:{0, objc_msgSend(htmlName, "length")}] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_configureTOCCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  fetchedResultsController = [(BKTOCContentViewController *)self fetchedResultsController];
  fetchedObjects = [fetchedResultsController fetchedObjects];

  if (fetchedObjects)
  {
    fetchedResultsController2 = [(BKTOCContentViewController *)self fetchedResultsController];
    v10 = [fetchedResultsController2 objectAtIndexPath:pathCopy];
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
  [cellCopy setContentInsets:{0.0, v13, 0.0}];
  name = [v10 name];
  v15 = [name length];
  if (v15)
  {
    name2 = [v10 name];
  }

  else
  {
    name2 = @" ";
  }

  textLabel = [cellCopy textLabel];
  [textLabel setText:name2];

  if (v15)
  {
  }

  v18 = [(BKTOCContentViewController *)self fontForChapter:v10];
  textLabel2 = [cellCopy textLabel];
  [textLabel2 setFont:v18];

  textLabel3 = [cellCopy textLabel];
  [textLabel3 setLineBreakMode:0];

  if ([v10 isExcludedFromSample])
  {
    v21 = 0.5;
  }

  else
  {
    v21 = 1.0;
  }

  textLabel4 = [cellCopy textLabel];
  [textLabel4 setAlpha:v21];

  [cellCopy setBkaxIsExcludedFromSample:{objc_msgSend(v10, "isExcludedFromSample")}];
  textLabel5 = [cellCopy textLabel];
  [textLabel5 setNumberOfLines:0];

  indentationLevel = [v10 indentationLevel];
  [cellCopy setIndentationLevel:{objc_msgSend(indentationLevel, "integerValue")}];

  [cellCopy setIndentationWidth:16.0];
  effectiveUserInterfaceLayoutDirection = [cellCopy effectiveUserInterfaceLayoutDirection];
  [(BKContentViewController *)self separatorInsets];
  v27 = v26;
  indentationLevel2 = [cellCopy indentationLevel];
  [cellCopy indentationWidth];
  v30 = v27 + indentationLevel2 * v29;
  [(BKContentViewController *)self separatorInsets];
  if (effectiveUserInterfaceLayoutDirection == &dword_0 + 1)
  {
    v32 = v30;
  }

  else
  {
    v32 = v31;
  }

  if (effectiveUserInterfaceLayoutDirection == &dword_0 + 1)
  {
    v33 = v31;
  }

  else
  {
    v33 = v30;
  }

  [cellCopy setSeparatorInset:{0.0, v33, 0.0, v32}];
  if ([(BKTOCContentViewController *)self p_willUseWebViewForCellWithChapter:v10])
  {
    [*(&self->super._verticalCenteringInsets.right + 4) bounds];
    Width = CGRectGetWidth(v64);
    [(BKContentViewController *)self contentInsets];
    v37 = Width - (v35 + v36);
    indentationLevel3 = [v10 indentationLevel];
    intValue = [indentationLevel3 intValue];
    textLabel6 = [cellCopy textLabel];
    [textLabel6 font];
    v61 = v11;
    v41 = fetchedObjects;
    v43 = v42 = pathCopy;
    [BKTOCTableViewCell maxSpanForTextWithIndentation:intValue font:v43 width:v37];

    book = [(BKContentViewController *)self book];
    tocPageHref = [book tocPageHref];
    v46 = [book urlForHref:tocPageHref];

    v47 = BEURLHandleriBooksImgUrlFromiBooksURL();

    htmlName = [v10 htmlName];
    textLabel7 = [cellCopy textLabel];
    font = [textLabel7 font];
    fontName = [font fontName];
    [(BKTOCContentViewController *)self calculateFontSize];
    [cellCopy displayHTMLWithContents:htmlName fontFamily:fontName fontSize:v47 maxSpan:? baseURL:?];

    pathCopy = v42;
    fetchedObjects = v41;
    v11 = v61;
  }

  pageLabel = [cellCopy pageLabel];
  v53 = pageLabel;
  if (v11)
  {
    [pageLabel setText:v11];
    pageLabelFont = [(BKTOCViewController *)self pageLabelFont];
    [v53 setFont:pageLabelFont];
  }

  [v53 setHidden:v11 == 0];
  themePage = [(BKTOCContentViewController *)self themePage];
  [cellCopy configureSelectedBackgroundView];
  backgroundColor = [*(&self->super._verticalCenteringInsets.right + 4) backgroundColor];
  [cellCopy setBackgroundColor:backgroundColor];

  primaryTextColor = [themePage primaryTextColor];
  textLabel8 = [cellCopy textLabel];
  [textLabel8 setTextColor:primaryTextColor];

  tocPageNumberTextColor = [themePage tocPageNumberTextColor];
  pageLabel2 = [cellCopy pageLabel];
  [pageLabel2 setTextColor:tocPageNumberTextColor];
}

- (void)_configureWebTOCCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  imageCache = [(BKTOCContentViewController *)self imageCache];
  [cellCopy setImageCache:imageCache];

  backgroundColor = [*(&self->super._verticalCenteringInsets.right + 4) backgroundColor];
  [cellCopy setBackgroundColor:backgroundColor];

  fetchedResultsController = [(BKTOCContentViewController *)self fetchedResultsController];
  fetchedObjects = [fetchedResultsController fetchedObjects];

  v82 = fetchedObjects;
  if (fetchedObjects)
  {
    fetchedResultsController2 = [(BKTOCContentViewController *)self fetchedResultsController];
    v12 = [fetchedResultsController2 objectAtIndexPath:pathCopy];
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

  v83 = pathCopy;
  [(BKContentViewController *)self separatorInsets];
  v15 = v14;
  indentationLevel = [cellCopy indentationLevel];
  [cellCopy indentationWidth];
  v18 = v15 + indentationLevel * v17;
  [(BKContentViewController *)self separatorInsets];
  v20 = v19;
  effectiveUserInterfaceLayoutDirection = [cellCopy effectiveUserInterfaceLayoutDirection];
  if (effectiveUserInterfaceLayoutDirection == &dword_0 + 1)
  {
    v22 = v18;
  }

  else
  {
    v22 = v20;
  }

  if (effectiveUserInterfaceLayoutDirection == &dword_0 + 1)
  {
    v23 = v20;
  }

  else
  {
    v23 = v18;
  }

  [cellCopy setSeparatorInset:{0.0, v23, 0.0, v22}];
  pageLabel = [cellCopy pageLabel];
  v25 = [v13 length];
  if (v25)
  {
    [pageLabel setText:v13];
    pageLabelFont = [(BKTOCViewController *)self pageLabelFont];
    [pageLabel setFont:pageLabelFont];
  }

  v80 = v13;
  [pageLabel setHidden:v25 == 0];
  themePage = [(BKTOCContentViewController *)self themePage];
  tocPageNumberTextColor = [themePage tocPageNumberTextColor];
  v79 = pageLabel;
  [pageLabel setTextColor:tocPageNumberTextColor];

  v78 = themePage;
  primaryTextColor = [themePage primaryTextColor];
  v29 = [(BKTOCContentViewController *)self fontForChapter:v12];
  textLabel = [cellCopy textLabel];
  [textLabel setFont:v29];

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
  indentationLevel2 = [v12 indentationLevel];
  intValue = [indentationLevel2 intValue];
  textLabel2 = [cellCopy textLabel];
  font = [textLabel2 font];
  [BKTOCTableViewCell maxSpanForTextWithIndentation:intValue font:font width:v48];

  pageLabel2 = [cellCopy pageLabel];
  [pageLabel2 sizeToFit];

  pageLabel3 = [cellCopy pageLabel];
  [pageLabel3 frame];
  CGRectGetWidth(v88);

  book = [(BKContentViewController *)self book];
  tocPageHref = [book tocPageHref];
  v77 = book;
  v57 = [book urlForHref:tocPageHref];

  v58 = BEURLHandleriBooksImgUrlFromiBooksURL();

  v59 = +[UIColor clearColor];
  contentView = [cellCopy contentView];
  [contentView setBackgroundColor:v59];

  v81 = v12;
  htmlName = [v12 htmlName];
  v62 = htmlName;
  if (htmlName)
  {
    v63 = htmlName;
  }

  else
  {
    v63 = &stru_1E7188;
  }

  template = [(BKTOCContentViewController *)self template];
  textLabel3 = [cellCopy textLabel];
  font2 = [textLabel3 font];
  fontName = [font2 fontName];
  [(BKTOCContentViewController *)self calculateFontSize];
  v68 = [BKTOCWebViewCellLoadRequest loadRequestWithContents:"loadRequestWithContents:template:fontFamily:fontSize:maxSpan:textColor:selectedColor:backgroundColor:baseURL:forObject:" template:v63 fontFamily:template fontSize:fontName maxSpan:primaryTextColor textColor:primaryTextColor selectedColor:v59 backgroundColor:v58 baseURL:self forObject:?];

  cachedRowContents = [(BKTOCContentViewController *)self cachedRowContents];
  v70 = [cachedRowContents objectForKeyedSubscript:v83];

  if (!v70 || (-[BKTOCContentViewController imageCache](self, "imageCache"), v71 = objc_claimAutoreleasedReturnValue(), v72 = [v71 entryForRequest:v68], v71, (v72 & 1) == 0))
  {
    requestToIndexPath = [(BKTOCContentViewController *)self requestToIndexPath];
    cacheKey = [v68 cacheKey];
    [requestToIndexPath setObject:v83 forKeyedSubscript:cacheKey];

    requestQueue = [(BKTOCContentViewController *)self requestQueue];
    [requestQueue enqueueRequest:v68];
  }

  cacheKey2 = [v70 cacheKey];
  [cellCopy setCacheKey:cacheKey2];
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
  fontFamily = [(BKTOCContentViewController *)self fontFamily];
  v6 = [UIFont fontWithName:fontFamily size:v4];

  return v6;
}

- (void)_configureRangeAnnotationCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  fetchedResultsController = [(BKTOCContentViewController *)self fetchedResultsController];
  fetchedObjects = [fetchedResultsController fetchedObjects];
  v10 = [fetchedObjects count];

  if ([pathCopy row] >= v10)
  {
    v17 = BKTOCCVCLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_138108(pathCopy, v10, v17);
    }
  }

  else
  {
    fetchedResultsController2 = [(BKTOCContentViewController *)self fetchedResultsController];
    v12 = [fetchedResultsController2 objectAtIndexPath:pathCopy];

    [(BKTOCContentViewController *)self _configureAnnotationCell:cellCopy forAnnotation:v12 forRowAtIndexPath:pathCopy];
    annotationNote = [v12 annotationNote];
    noteLabel = [cellCopy noteLabel];
    [noteLabel setText:annotationNote];

    if ([(BKTOCViewController *)self usesPopoverStyle])
    {
      noteFontForPopover = [objc_opt_class() noteFontForPopover];
      noteLabel2 = [cellCopy noteLabel];
      [noteLabel2 setFont:noteFontForPopover];
    }

    else
    {
      noteFontForPopover = objc_alloc_init(AEAnnotationTheme);
      noteLabel2 = [noteFontForPopover noteTextFontInTable];
      noteLabel3 = [cellCopy noteLabel];
      [noteLabel3 setFont:noteLabel2];
    }

    noteLabel4 = [cellCopy noteLabel];
    [noteLabel4 setLineBreakMode:4];

    highlightedTextLabel = [cellCopy highlightedTextLabel];
    [highlightedTextLabel setAnnotation:v12];
    highlightedTextLabelFont = [(BKTOCContentViewController *)self highlightedTextLabelFont];
    [highlightedTextLabel setFont:highlightedTextLabelFont];

    [highlightedTextLabel setNeedsLayout];
    themePage = [(BKTOCContentViewController *)self themePage];
    backgroundColor = [*(&self->super._verticalCenteringInsets.right + 4) backgroundColor];
    [cellCopy configureSelectedBackgroundView];
    [cellCopy setBackgroundColor:backgroundColor];
    primaryTextColor = [themePage primaryTextColor];
    textLabel = [cellCopy textLabel];
    [textLabel setTextColor:primaryTextColor];

    noteLabel5 = [cellCopy noteLabel];
    [noteLabel5 setTextColor:primaryTextColor];

    [highlightedTextLabel setTextColor:primaryTextColor];
    [highlightedTextLabel setHighlightedTextColor:primaryTextColor];
    [highlightedTextLabel setBackgroundColor:backgroundColor];
    [highlightedTextLabel setShouldInvertContent:{objc_msgSend(themePage, "shouldInvertContent")}];
    [highlightedTextLabel setAnnotationBlendMode:{objc_msgSend(themePage, "annotationBlendMode")}];
    [highlightedTextLabel setHighlightedAnnotationBlendMode:{objc_msgSend(themePage, "highlightedAnnotationBlendMode")}];
    [highlightedTextLabel setPageTheme:{objc_msgSend(themePage, "annotationPageTheme")}];
    if ([(BKTOCViewController *)self usesPopoverStyle])
    {
      [themePage secondaryTextColor];
    }

    else
    {
      [themePage tocPageNumberTextColor];
    }
    v27 = ;
    pageLabel = [cellCopy pageLabel];
    [pageLabel setTextColor:v27];

    dateLabel = [cellCopy dateLabel];
    [dateLabel setTextColor:v27];
  }
}

- (void)_configurePointAnnotationCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  [(BKContentViewController *)self contentInsets];
  v8 = v7;
  [(BKContentViewController *)self contentInsets];
  [cellCopy setContentInsets:{0.0, v8, 0.0}];
  fetchedResultsController = [(BKTOCContentViewController *)self fetchedResultsController];
  v10 = [fetchedResultsController objectAtIndexPath:pathCopy];

  [(BKTOCContentViewController *)self _configureAnnotationCell:cellCopy forAnnotation:v10 forRowAtIndexPath:pathCopy];
  if ((BYTE4(self->super._fetchedResultsController) & 8) != 0)
  {
    directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
    v11 = [directoryDelegate tocViewController:self chapterTitleForAnnotation:v10];
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
    chapterFontForPopover = [objc_opt_class() chapterFontForPopover];
    noteLabel = [cellCopy noteLabel];
    [noteLabel bkSetText:v11 font:chapterFontForPopover lineBreakMode:0];

    noteLabel2 = [cellCopy noteLabel];
    [noteLabel2 setNumberOfLines:2];
  }

  else
  {
    [objc_opt_class() titleFontSize];
    chapterFontForPopover = [UIFont systemFontOfSize:?];
    noteLabel3 = [cellCopy noteLabel];
    [noteLabel3 bkSetText:v11 font:chapterFontForPopover lineBreakMode:5];

    noteLabel4 = [cellCopy noteLabel];
    [noteLabel4 setNumberOfLines:1];

    noteLabel2 = [cellCopy noteLabel];
    [noteLabel2 setLineBreakMode:5];
  }

  themePage = [(BKTOCContentViewController *)self themePage];
  [cellCopy configureSelectedBackgroundView];
  backgroundColor = [*(&self->super._verticalCenteringInsets.right + 4) backgroundColor];
  [cellCopy setBackgroundColor:backgroundColor];

  primaryTextColor = [themePage primaryTextColor];
  noteLabel5 = [cellCopy noteLabel];
  [noteLabel5 setTextColor:primaryTextColor];

  secondaryTextColor = [themePage secondaryTextColor];
  pageLabel = [cellCopy pageLabel];
  [pageLabel setTextColor:secondaryTextColor];

  dateLabel = [cellCopy dateLabel];
  [dateLabel setTextColor:secondaryTextColor];
}

- (void)_configureAnnotationCell:(id)cell forAnnotation:(id)annotation forRowAtIndexPath:(id)path
{
  annotationCopy = annotation;
  cellCopy = cell;
  v14 = [(BKTOCContentViewController *)self pageTitleForAnnotation:annotationCopy];
  dateFormatter = [(BKTOCContentViewController *)self dateFormatter];
  annotationCreationDate = [annotationCopy annotationCreationDate];

  v11 = [dateFormatter stringFromDate:annotationCreationDate];

  [(BKContentViewController *)self contentInsets];
  v13 = v12;
  [(BKContentViewController *)self contentInsets];
  [cellCopy configureWithPageString:v14 dateString:v11 insets:{0.0, v13, 0.0}];
}

- (void)configureCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  if (cellCopy)
  {
    [cellCopy setVertical:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(BKTOCContentViewController *)self _configurePointAnnotationCell:cellCopy forRowAtIndexPath:pathCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(BKTOCContentViewController *)self _configureRangeAnnotationCell:cellCopy forRowAtIndexPath:pathCopy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(BKTOCContentViewController *)self _configureWebTOCCell:cellCopy forRowAtIndexPath:pathCopy];
        }

        else
        {
          [(BKTOCContentViewController *)self _configureTOCCell:cellCopy forRowAtIndexPath:pathCopy];
        }
      }
    }

    [cellCopy setNeedsLayout];
  }
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(BKTOCViewController *)self tocContentType]== &dword_0 + 2)
  {
    v6 = [(BKTOCContentViewController *)self deleteSwipeAction:pathCopy];
    v13[0] = v6;
    v7 = [(BKTOCContentViewController *)self shareSwipeAction:pathCopy];
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

    v6 = [(BKTOCContentViewController *)self deleteSwipeAction:pathCopy];
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

- (id)shareSwipeAction:(id)action
{
  actionCopy = action;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_7B760;
  v10[3] = &unk_1E4948;
  objc_copyWeak(&v12, &location);
  v5 = actionCopy;
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

- (id)deleteSwipeAction:(id)action
{
  actionCopy = action;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_7B918;
  v9[3] = &unk_1E4948;
  objc_copyWeak(&v11, &location);
  v5 = actionCopy;
  v10 = v5;
  v6 = [UIContextualAction contextualActionWithStyle:1 title:0 handler:v9];
  v7 = [UIImage systemImageNamed:@"trash.fill"];
  [v6 setImage:v7];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  fetchedResultsController = [(BKTOCContentViewController *)self fetchedResultsController];
  sections = [fetchedResultsController sections];
  v5 = [sections count];

  return v5;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  fetchedResultsController = [(BKTOCContentViewController *)self fetchedResultsController];
  sections = [fetchedResultsController sections];
  v7 = [sections objectAtIndex:section];

  numberOfObjects = [v7 numberOfObjects];
  return numberOfObjects;
}

- (id)reuseIdentifier
{
  tocContentType = [(BKTOCViewController *)self tocContentType];

  return [(BKTOCContentViewController *)self reuseIdentifierForCellType:tocContentType];
}

- (id)reuseIdentifierForCellType:(unint64_t)type
{
  if (type > 3)
  {
    return 0;
  }

  else
  {
    return off_1E4A08[type];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  tocContentType = [(BKTOCViewController *)self tocContentType];
  v9 = tocContentType == 2;
  if (!tocContentType)
  {
    fetchedResultsController = [(BKTOCContentViewController *)self fetchedResultsController];
    v11 = fetchedResultsController;
    if (fetchedResultsController)
    {
      fetchedObjects = [fetchedResultsController fetchedObjects];

      if (fetchedObjects)
      {
        objc_opt_class();
        fetchedResultsController2 = [(BKTOCContentViewController *)self fetchedResultsController];
        v14 = [fetchedResultsController2 objectAtIndexPath:pathCopy];
        fetchedObjects = BUDynamicCast();
      }
    }

    else
    {
      fetchedObjects = 0;
    }

    if ([(BKTOCContentViewController *)self p_willUseWebViewForCellWithChapter:fetchedObjects])
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }
  }

  v15 = [(BKTOCContentViewController *)self reuseIdentifierForCellType:v9];
  v16 = [viewCopy dequeueReusableCellWithIdentifier:v15];

  [v16 setUsesPopoverStyle:{-[BKTOCViewController usesPopoverStyle](self, "usesPopoverStyle")}];
  [(BKTOCContentViewController *)self configureCell:v16 atIndexPath:pathCopy];

  return v16;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  v4 = [(BKTOCViewController *)self tocContentType:view];
  result = 67.0;
  if (!v4)
  {
    return 52.0;
  }

  return result;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
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
  readableContentGuide = [*(&self->super._verticalCenteringInsets.right + 4) readableContentGuide];
  [readableContentGuide layoutFrame];
  v26 = CGRectGetWidth(v129);

  if (Width >= v26)
  {
    Width = v26;
  }

  tocContentType = [(BKTOCViewController *)self tocContentType];
  if (tocContentType == 1)
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

    v34 = [pathCopy row];
    fetchedResultsController = [(BKTOCContentViewController *)self fetchedResultsController];
    fetchedObjects = [fetchedResultsController fetchedObjects];
    v37 = [fetchedObjects count];

    if (v34 >= v37)
    {
      goto LABEL_37;
    }

    fetchedResultsController2 = [(BKTOCContentViewController *)self fetchedResultsController];
    v33 = [fetchedResultsController2 objectAtIndexPath:pathCopy];

    directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
    v40 = [directoryDelegate tocViewController:self chapterTitleForAnnotation:v33];

    dateFormatter = [(BKTOCContentViewController *)self dateFormatter];
    annotationCreationDate = [v33 annotationCreationDate];
    v43 = [dateFormatter stringFromDate:annotationCreationDate];

    v44 = [(BKTOCContentViewController *)self pageTitleForAnnotation:v33];
    [BKTOCPointAnnotationTableCell cellHeightForCellWidth:v40 chapterString:v43 dateString:v44 pageString:[(BKViewController *)self layoutDirection] layoutDirection:Width];
    v8 = v45;
  }

  else if (tocContentType)
  {
    if ([viewCopy isEditing])
    {
      v46 = 38.0;
    }

    else
    {
      v46 = 0.0;
    }

    v47 = [pathCopy row];
    fetchedResultsController3 = [(BKTOCContentViewController *)self fetchedResultsController];
    fetchedObjects2 = [fetchedResultsController3 fetchedObjects];
    v50 = [fetchedObjects2 count];

    if (v47 >= v50)
    {
      v8 = 67.0;
      goto LABEL_37;
    }

    v125 = Width - v46;
    y = CGRectZero.origin.y;
    fetchedResultsController4 = [(BKTOCContentViewController *)self fetchedResultsController];
    v33 = [fetchedResultsController4 objectAtIndexPath:pathCopy];

    v52 = objc_alloc_init(AEAnnotationTheme);
    v53 = [(BKTOCContentViewController *)self pageTitleForAnnotation:v33];
    dateFormatter2 = [(BKTOCContentViewController *)self dateFormatter];
    annotationCreationDate2 = [v33 annotationCreationDate];
    v56 = [dateFormatter2 stringFromDate:annotationCreationDate2];

    if ([(BKTOCViewController *)self usesPopoverStyle])
    {
      highlightedTextLabelFont = [(BKTOCContentViewController *)self highlightedTextLabelFont];
      [BKTOCRangeAnnotationTableCell cellHeightInPopoverForBounds:highlightedTextLabelFont highlightFont:v33 annotation:v56 dateString:v53 pageString:[(BKViewController *)self layoutDirection] layoutDirection:CGRectZero.origin.x, y, v125, 67.0];
      height = v58;
    }

    else
    {
      +[BKTOCRangeAnnotationTableCell pageNumberAndHighlightedTextFontSize];
      v69 = v68;
      fontFamily = [(BKTOCContentViewController *)self fontFamily];
      v71 = [UIFont fontWithName:fontFamily size:v69];

      if (!v71)
      {
        v71 = [UIFont systemFontOfSize:v69];
      }

      highlightedTextLabelFont = v71;
      [(BKTOCTableViewCell *)BKTOCRangeAnnotationTableCell pageLabelFrameForString:v53 font:highlightedTextLabelFont bounds:[(BKViewController *)self layoutDirection] layoutDirection:CGRectZero.origin.x, y, v125, 67.0];
      v114 = v72;
      v74 = v73;
      v76 = v75;
      v78 = v77;
      [BKTOCRangeAnnotationTableCell highlightedTextFrameForAnnotation:v33 font:highlightedTextLabelFont bounds:[(BKViewController *)self layoutDirection] pageLabelFrame:CGRectZero.origin.x layoutDirection:y, v125, 67.0, v72, v73, v75, v77];
      v80 = v79;
      v82 = v81;
      v84 = v83;
      v86 = v85;
      v124 = v52;
      noteTextFontInTable = [v52 noteTextFontInTable];
      annotationNote = [v33 annotationNote];
      v121 = v82;
      v122 = v80;
      r2 = v86;
      v120 = v84;
      v123 = noteTextFontInTable;
      [BKTOCRangeAnnotationTableCell noteTextFrameForString:annotationNote font:noteTextFontInTable bounds:CGRectZero.origin.x highlightedTextFrame:y pageLabelFrame:v125, 67.0, v80, v82, v84, v86, *&v114, *&v74, *&v76, *&v78];
      v90 = v89;
      v92 = v91;
      v94 = v93;
      v96 = v95;

      +[(BKTOCAnnotationTableCell *)BKTOCRangeAnnotationTableCell];
      v98 = v97;
      fontFamily2 = [(BKTOCContentViewController *)self fontFamily];
      v100 = [UIFont fontWithName:fontFamily2 size:v98];

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

    v28 = [pathCopy row];
    fetchedResultsController5 = [(BKTOCContentViewController *)self fetchedResultsController];
    fetchedObjects3 = [fetchedResultsController5 fetchedObjects];
    v31 = [fetchedObjects3 count];

    if (v28 >= v31)
    {
      v33 = 0;
    }

    else
    {
      fetchedResultsController6 = [(BKTOCContentViewController *)self fetchedResultsController];
      v33 = [fetchedResultsController6 objectAtIndexPath:pathCopy];
    }

    if ([(BKTOCContentViewController *)self p_willUseWebViewForCellWithChapter:v33])
    {
      cachedRowContents = [(BKTOCContentViewController *)self cachedRowContents];
      v60 = [cachedRowContents objectForKeyedSubscript:pathCopy];
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
      pageLabelFont = [(BKTOCViewController *)self pageLabelFont];
      v63 = [(BKTOCContentViewController *)self pageTitleForChapter:v33];
      [(BKTOCTableViewCell *)BKTOCRangeAnnotationTableCell pageLabelFrameForString:v63 font:pageLabelFont bounds:[(BKViewController *)self layoutDirection] layoutDirection:CGRectZero.origin.x, CGRectZero.origin.y, Width, v8];
      v64 = CGRectGetWidth(v130);
      name = [v33 name];
      indentationLevel = [v33 indentationLevel];
      +[BKTOCTableViewCell cellHeightForCellWidth:pageLabelWidth:text:indentationLevel:indentationWidth:font:usesPopoverStyle:](BKTOCTableViewCell, "cellHeightForCellWidth:pageLabelWidth:text:indentationLevel:indentationWidth:font:usesPopoverStyle:", name, [indentationLevel integerValue], v127, -[BKTOCViewController usesPopoverStyle](self, "usesPopoverStyle"), Width, v64, 16.0);
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

- (void)tableView:(id)view performPrimaryActionForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = BKTOCCVCLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v18 = 134217984;
    v19 = [pathCopy row];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Performing primary action for row %ld", &v18, 0xCu);
  }

  fetchedResultsController = [(BKTOCContentViewController *)self fetchedResultsController];
  v8 = [fetchedResultsController objectAtIndexPath:pathCopy];

  tocContentType = [(BKTOCViewController *)self tocContentType];
  if (tocContentType == 2)
  {
    v17 = v8;
    location = [v17 location];
    annotationUuid = [v17 annotationUuid];

    [(BKDirectoryContent *)self didSelectHighlightForLocation:location annotationUUID:annotationUuid];
    goto LABEL_11;
  }

  if (tocContentType == 1)
  {
    v16 = v8;
    location = [v16 location];
    annotationUuid = [v16 annotationUuid];

    [(BKDirectoryContent *)self didSelectBookmarkForLocation:location annotationUUID:annotationUuid];
    goto LABEL_11;
  }

  if (!tocContentType && (BYTE4(self->super._fetchedResultsController) & 1) != 0)
  {
    location = v8;
    href = [location href];
    book = [(BKContentViewController *)self book];
    tocPageHref = [book tocPageHref];

    if (href == tocPageHref)
    {
LABEL_12:

      goto LABEL_13;
    }

    eventEngagement = [(BKTOCViewController *)self eventEngagement];
    [eventEngagement sendReaderEventNewSectionViaToC];

    annotationUuid = [(BKDirectoryContent *)self directoryDelegate];
    [annotationUuid tocViewController:self didSelectChapter:location];
LABEL_11:

    goto LABEL_12;
  }

LABEL_13:
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  [(BKTOCContentViewController *)self notifyBookSharingClientSelectionChanged:view];
  if ([*(&self->super._verticalCenteringInsets.right + 4) isEditing])
  {

    [(BKTOCContentViewController *)self updateToolbarContent];
  }
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  [(BKTOCContentViewController *)self notifyBookSharingClientSelectionChanged:view];
  if ([*(&self->super._verticalCenteringInsets.right + 4) isEditing])
  {

    [(BKTOCContentViewController *)self updateToolbarContent];
  }
}

- (void)tableView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = BKTOCCVCLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1381E4();
  }

  isEditing = [viewCopy isEditing];
  if ((isEditing & 1) == 0)
  {
    [(BKTOCContentViewController *)self removeHighlightFromCurrentLocation];
    [*(&self->super._verticalCenteringInsets.right + 4) setEditing:1 animated:1];
  }

  directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
  [directoryDelegate tocViewControllerDidChangeEditing:1];

  [(BKTOCContentViewController *)self installEditModeToolbar];
}

- (id)tableView:(id)view contextMenuConfigurationForRowAtIndexPath:(id)path point:(CGPoint)point
{
  viewCopy = view;
  pathCopy = path;
  if ([viewCopy isEditing])
  {
    v9 = 0;
  }

  else
  {
    v10 = [viewCopy cellForRowAtIndexPath:pathCopy];
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
      v14 = pathCopy;
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

- (void)beginSelectionStartingWithIndexPath:(id)path
{
  pathCopy = path;
  [(BKTOCContentViewController *)self removeHighlightFromCurrentLocation];
  [(BKTOCContentViewController *)self beginEditingMode];
  [*(&self->super._verticalCenteringInsets.right + 4) selectRowAtIndexPath:pathCopy animated:1 scrollPosition:0];

  [(BKTOCContentViewController *)self updateToolbarContent];
}

- (id)bookmarksFetchedResultsController
{
  v3 = *(&self->super._paginationController + 4);
  if (!v3)
  {
    book = [(BKContentViewController *)self book];
    annotationProvider = [book annotationProvider];
    uiManagedObjectContext = [annotationProvider uiManagedObjectContext];

    if (!uiManagedObjectContext)
    {
LABEL_13:

      v3 = *(&self->super._paginationController + 4);
      goto LABEL_14;
    }

    v7 = objc_alloc_init(NSFetchRequest);
    if ([(BKTOCViewController *)self tocContentType]== &dword_0 + 1)
    {
      assetID = [book assetID];
      v9 = [AEAnnotation pageBookmarksPredicate:assetID];
    }

    else
    {
      if ([(BKTOCViewController *)self tocContentType]!= &dword_0 + 2)
      {
LABEL_8:
        v11 = [NSEntityDescription entityForName:@"AEAnnotation" inManagedObjectContext:uiManagedObjectContext];
        [v7 setEntity:v11];

        v12 = [[NSSortDescriptor alloc] initWithKey:@"annotationLocation" ascending:1 selector:"localizedStandardCompare:"];
        v13 = [[NSSortDescriptor alloc] initWithKey:@"annotationCreationDate" ascending:1];
        v14 = [[NSArray alloc] initWithObjects:{v12, v13, 0}];
        [v7 setSortDescriptors:v14];
        v15 = [[IMUbiquitousFetchedResultsController alloc] initWithFetchRequest:v7 managedObjectContext:uiManagedObjectContext sectionNameKeyPath:0 cacheName:0];
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

      assetID = [book assetID];
      v9 = [AEAnnotation highlightsPredicate:assetID];
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
  tocContentType = [(BKTOCViewController *)self tocContentType];
  if ((tocContentType - 1) >= 2)
  {
    if (tocContentType)
    {
      fetchedResultsController = 0;
    }

    else
    {
      v6.receiver = self;
      v6.super_class = BKTOCContentViewController;
      fetchedResultsController = [(BKTOCViewController *)&v6 fetchedResultsController];
    }
  }

  else
  {
    fetchedResultsController = [(BKTOCContentViewController *)self bookmarksFetchedResultsController];
  }

  return fetchedResultsController;
}

- (int)assetSharingConnectionTypeForClient:(id)client
{
  tocContentType = [(BKTOCViewController *)self tocContentType];
  if (tocContentType < 2)
  {
    return 1;
  }

  if (tocContentType != 2)
  {
    return 0;
  }

  fetchedResultsController = [(BKTOCContentViewController *)self fetchedResultsController];
  fetchedObjects = [fetchedResultsController fetchedObjects];
  v8 = [fetchedObjects count];

  if (v8)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)beginAssetSharingConnectionWithClient:(id)client
{
  v4 = *(&self->super._verticalCenteringInsets.right + 4);
  clientCopy = client;
  [v4 setEditing:0 animated:0];
  [*(&self->super._verticalCenteringInsets.right + 4) setAllowsMultipleSelectionDuringEditing:1];
  [*(&self->super._verticalCenteringInsets.right + 4) setEditing:1 animated:1];
  [*(&self->super._verticalCenteringInsets.right + 4) beginUpdates];
  [*(&self->super._verticalCenteringInsets.right + 4) endUpdates];
  [(BKTOCContentViewController *)self setAssetSharingConnectionClient:clientCopy];
}

- (void)endAssetSharingConnectionWithClient:(id)client
{
  [*(&self->super._verticalCenteringInsets.right + 4) setEditing:0 animated:1];
  [*(&self->super._verticalCenteringInsets.right + 4) setAllowsMultipleSelectionDuringEditing:0];
  [*(&self->super._verticalCenteringInsets.right + 4) beginUpdates];
  [*(&self->super._verticalCenteringInsets.right + 4) endUpdates];

  [(BKTOCContentViewController *)self setAssetSharingConnectionClient:0];
}

- (void)assetSharingConnectionClient:(id)client performRequest:(int)request
{
  clientCopy = client;
  v7 = clientCopy;
  switch(request)
  {
    case 3:
      v8 = clientCopy;
      clientCopy = [(BKTOCContentViewController *)self deleteSelected:clientCopy];
      break;
    case 2:
      v8 = clientCopy;
      clientCopy = [(BKTOCContentViewController *)self selectNone:clientCopy];
      break;
    case 1:
      v8 = clientCopy;
      clientCopy = [(BKTOCContentViewController *)self selectAll:clientCopy];
      break;
    default:
      goto LABEL_8;
  }

  v7 = v8;
LABEL_8:

  _objc_release_x1(clientCopy, v7);
}

- (unint64_t)bookSharingRequestNumberOfSelectedAnnotations:(id)annotations
{
  indexPathsForSelectedRows = [*(&self->super._verticalCenteringInsets.right + 4) indexPathsForSelectedRows];
  v4 = [indexPathsForSelectedRows count];

  return v4;
}

- (id)bookSharingRequestClient:(id)client selectedAnnotationAtIndex:(unint64_t)index
{
  indexPathsForSelectedRows = [*(&self->super._verticalCenteringInsets.right + 4) indexPathsForSelectedRows];
  v7 = [indexPathsForSelectedRows objectAtIndex:index];
  v8 = [*(&self->super._paginationController + 4) objectAtIndexPath:v7];

  return v8;
}

- (unint64_t)bookSharingRequestNumberOfAnnotations:(id)annotations
{
  fetchedObjects = [*(&self->super._paginationController + 4) fetchedObjects];
  v4 = [fetchedObjects count];

  return v4;
}

- (id)bookSharingRequestClient:(id)client annotationAtIndex:(unint64_t)index
{
  fetchedObjects = [*(&self->super._paginationController + 4) fetchedObjects];
  v6 = [fetchedObjects objectAtIndex:index];

  return v6;
}

- (void)selectAll:(id)all
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

- (void)selectNone:(id)none
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
  indexPathsForSelectedRows = [*(&self->super._verticalCenteringInsets.right + 4) indexPathsForSelectedRows];
  v4 = [indexPathsForSelectedRows count];

  assetSharingConnectionClient = [(BKTOCContentViewController *)self assetSharingConnectionClient];
  [assetSharingConnectionClient assetSharingConnectionServer:self didChangeSelectedAnnotationsCount:v4];
}

- (void)controllerWillChangeContent:(id)content
{
  if ((BYTE4(self->_macLargeTextDateFormatter) & 1) == 0)
  {
    [*(&self->super._verticalCenteringInsets.right + 4) beginUpdates];
  }
}

- (void)controller:(id)controller didChangeSection:(id)section atIndex:(unint64_t)index forChangeType:(unint64_t)type
{
  controllerCopy = controller;
  sectionCopy = section;
  if (type == 2)
  {
    v13 = *(&self->super._verticalCenteringInsets.right + 4);
    v12 = [NSIndexSet indexSetWithIndex:index];
    [v13 deleteSections:v12 withRowAnimation:0];
  }

  else
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    v11 = *(&self->super._verticalCenteringInsets.right + 4);
    v12 = [NSIndexSet indexSetWithIndex:index];
    [v11 insertSections:v12 withRowAnimation:0];
  }

  [(BKTOCContentViewController *)self _notifyDelegateContentDidChange];
LABEL_6:
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  controllerCopy = controller;
  objectCopy = object;
  pathCopy = path;
  indexPathCopy = indexPath;
  if ((BYTE4(self->_macLargeTextDateFormatter) & 1) == 0)
  {
    if (type <= 2)
    {
      if (type != 1)
      {
        if (type != 2)
        {
          goto LABEL_13;
        }

        v15 = *(&self->super._verticalCenteringInsets.right + 4);
        v16 = [NSArray arrayWithObject:pathCopy];
        [v15 deleteRowsAtIndexPaths:v16 withRowAnimation:0];
        goto LABEL_12;
      }

      v18 = *(&self->super._verticalCenteringInsets.right + 4);
LABEL_11:
      v16 = [NSArray arrayWithObject:indexPathCopy];
      [v18 insertRowsAtIndexPaths:v16 withRowAnimation:0];
LABEL_12:

      [(BKTOCContentViewController *)self _notifyDelegateContentDidChange];
      goto LABEL_13;
    }

    if (type == 3)
    {
      v19 = *(&self->super._verticalCenteringInsets.right + 4);
      v20 = [NSArray arrayWithObject:pathCopy];
      [v19 deleteRowsAtIndexPaths:v20 withRowAnimation:0];

      v18 = *(&self->super._verticalCenteringInsets.right + 4);
      goto LABEL_11;
    }

    if (type == 4)
    {
      v17 = [*(&self->super._verticalCenteringInsets.right + 4) cellForRowAtIndexPath:pathCopy];
      [(BKTOCContentViewController *)self configureCell:v17 atIndexPath:pathCopy];
    }
  }

LABEL_13:
}

- (void)controllerDidChangeContent:(id)content
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
    directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
    [directoryDelegate tocViewControllerContentDidChange:self];
  }
}

- (void)reload
{
  v13.receiver = self;
  v13.super_class = BKTOCContentViewController;
  [(BKTOCViewController *)&v13 reload];
  if ([*(&self->super._verticalCenteringInsets.right + 4) isEditing])
  {
    indexPathsForSelectedRows = [*(&self->super._verticalCenteringInsets.right + 4) indexPathsForSelectedRows];
  }

  else
  {
    indexPathsForSelectedRows = 0;
  }

  [*(&self->super._verticalCenteringInsets.right + 4) reloadData];
  [(BKTOCContentViewController *)self _notifyDelegateContentDidChange];
  if (indexPathsForSelectedRows && [indexPathsForSelectedRows count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = indexPathsForSelectedRows;
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

- (void)setBook:(id)book
{
  v3.receiver = self;
  v3.super_class = BKTOCContentViewController;
  [(BKContentViewController *)&v3 setBook:book];
}

- (id)bookTitle
{
  book = [(BKContentViewController *)self book];
  bookTitle = [book bookTitle];

  return bookTitle;
}

- (id)author
{
  book = [(BKContentViewController *)self book];
  bookAuthor = [book bookAuthor];

  return bookAuthor;
}

- (id)storeURL
{
  book = [(BKContentViewController *)self book];
  storeId = [book storeId];

  if ([storeId length])
  {
    v4 = +[AEUserPublishing sharedInstance];
    v5 = [v4 storeShortURLForStoreId:storeId dataSource:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)contentBeganLoadingForRequest:(id)request
{
  v4 = [(BKTOCContentViewController *)self cellLoadingOperationCount]+ 1;

  [(BKTOCContentViewController *)self setCellLoadingOperationCount:v4];
}

- (void)contentFinishedLoadingForRequest:(id)request preferredHeight:(double)height error:(id)error
{
  requestCopy = request;
  [(BKTOCContentViewController *)self setCellLoadingOperationCount:[(BKTOCContentViewController *)self cellLoadingOperationCount]- 1];
  requestToIndexPath = [(BKTOCContentViewController *)self requestToIndexPath];
  cacheKey = [requestCopy cacheKey];
  v11 = [requestToIndexPath objectForKeyedSubscript:cacheKey];

  if (v11)
  {
    cachedRowContents = [(BKTOCContentViewController *)self cachedRowContents];
    v13 = [cachedRowContents objectForKeyedSubscript:v11];

    if (!v13)
    {
      if (error)
      {
        cachedRowContents2 = [(BKTOCContentViewController *)self cachedRowContents];
        [cachedRowContents2 removeObjectForKey:v11];
      }

      else
      {
        cacheKey2 = [requestCopy cacheKey];
        v16 = [BKTOCWebViewCellContent cellContentWithHeight:cacheKey2 cacheKey:height];

        cachedRowContents3 = [(BKTOCContentViewController *)self cachedRowContents];
        [cachedRowContents3 setObject:v16 forKeyedSubscript:v11];

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
  indexPathsForSelectedRows = [*(&self->super._verticalCenteringInsets.right + 4) indexPathsForSelectedRows];
  v4 = [(BKTOCContentViewController *)self p_annotationsForRowItems:indexPathsForSelectedRows];

  return v4;
}

- (id)p_annotationForIndexPath:(id)path
{
  pathCopy = path;
  fetchedResultsController = [(BKTOCContentViewController *)self fetchedResultsController];
  v6 = [fetchedResultsController objectAtIndexPath:pathCopy];

  objc_opt_class();
  v7 = BUDynamicCast();

  return v7;
}

- (id)p_annotationsForRowItems:(id)items
{
  itemsCopy = items;
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = itemsCopy;
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

- (void)deleteAnnotationAtIndexPath:(id)path
{
  v4 = [(BKTOCContentViewController *)self p_annotationForIndexPath:path];
  if (v4)
  {
    v6 = v4;
    book = [(BKContentViewController *)self book];
    [book deleteAnnotation:v6];

    v4 = v6;
  }
}

- (void)deleteSelectedAnnotations
{
  p_selectedAnnotations = [(BKTOCContentViewController *)self p_selectedAnnotations];
  book = [(BKContentViewController *)self book];
  annotationProvider = [book annotationProvider];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = p_selectedAnnotations;
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

        [annotationProvider deleteAnnotation:{*(*(&v12 + 1) + 8 * v10), v12}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  managedObjectContext = [*(&self->super._paginationController + 4) managedObjectContext];
  [annotationProvider saveManagedObjectContext:managedObjectContext];
}

- (void)shareSelectedAnnotationsFromSourceView:(id)view
{
  viewCopy = view;
  p_selectedAnnotations = [(BKTOCContentViewController *)self p_selectedAnnotations];
  if ([p_selectedAnnotations count])
  {
    directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
    [directoryDelegate tocViewController:self shareAnnotations:p_selectedAnnotations sourceView:viewCopy];
  }
}

- (BOOL)shareItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(BKTOCContentViewController *)self p_annotationForIndexPath:pathCopy];
  if (v5)
  {
    v6 = [*(&self->super._verticalCenteringInsets.right + 4) cellForRowAtIndexPath:pathCopy];
    directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
    v10 = v5;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
    [directoryDelegate tocViewController:self shareAnnotations:v8 sourceView:v6];
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
  directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
  [directoryDelegate tocViewControllerDidChangeEditing:1];

  [*(&self->super._verticalCenteringInsets.right + 4) setEditing:1 animated:1];

  [(BKTOCContentViewController *)self installEditModeToolbar];
}

- (void)endEditingMode
{
  directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
  [directoryDelegate tocViewControllerDidChangeEditing:0];

  [*(&self->super._verticalCenteringInsets.right + 4) setEditing:0 animated:1];
  [(BKTOCContentViewController *)self removeEditModeToolbar];

  [(BKTOCContentViewController *)self showRowForCurrentLocation];
}

- (void)installEditModeToolbar
{
  editingToolbar = [(BKTOCContentViewController *)self editingToolbar];
  superview = [editingToolbar superview];

  if (superview)
  {
    editingToolbar9 = BKTOCCVCLog();
    if (os_log_type_enabled(editingToolbar9, OS_LOG_TYPE_DEBUG))
    {
      sub_138258(self, editingToolbar9);
    }
  }

  else
  {
    view = [(BKTOCContentViewController *)self view];
    editingToolbar2 = [(BKTOCContentViewController *)self editingToolbar];
    [view addSubview:editingToolbar2];

    editingToolbar3 = [(BKTOCContentViewController *)self editingToolbar];
    [editingToolbar3 addInteraction:*(&self->_scrollPocketCollector + 4)];

    view2 = [(BKTOCContentViewController *)self view];
    [view2 addInteraction:*(&self->_descriptionView + 4)];

    editingToolbar4 = [(BKTOCContentViewController *)self editingToolbar];
    [editingToolbar4 setTranslatesAutoresizingMaskIntoConstraints:0];

    editingToolbar5 = [(BKTOCContentViewController *)self editingToolbar];
    leadingAnchor = [editingToolbar5 leadingAnchor];
    view3 = [(BKTOCContentViewController *)self view];
    leadingAnchor2 = [view3 leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v36[0] = v31;
    editingToolbar6 = [(BKTOCContentViewController *)self editingToolbar];
    trailingAnchor = [editingToolbar6 trailingAnchor];
    view4 = [(BKTOCContentViewController *)self view];
    trailingAnchor2 = [view4 trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v36[1] = v12;
    editingToolbar7 = [(BKTOCContentViewController *)self editingToolbar];
    bottomAnchor = [editingToolbar7 bottomAnchor];
    view5 = [(BKTOCContentViewController *)self view];
    safeAreaLayoutGuide = [view5 safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v36[2] = v18;
    v19 = [NSArray arrayWithObjects:v36 count:3];
    [NSLayoutConstraint activateConstraints:v19];

    view6 = [(BKTOCContentViewController *)self view];
    [view6 setNeedsLayout];

    view7 = [(BKTOCContentViewController *)self view];
    [view7 layoutIfNeeded];

    editingToolbar8 = [(BKTOCContentViewController *)self editingToolbar];
    [editingToolbar8 frame];
    [*(&self->super._verticalCenteringInsets.right + 4) setContentInset:{0.0, 0.0, v23, 0.0}];

    editingToolbar9 = [(BKTOCContentViewController *)self editingToolbar];
    [editingToolbar9 frame];
    v25 = v24;
    view8 = [(BKTOCContentViewController *)self view];
    [view8 safeAreaInsets];
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

  editingToolbar = [(BKTOCContentViewController *)self editingToolbar];
  [editingToolbar removeFromSuperview];

  editingToolbar2 = [(BKTOCContentViewController *)self editingToolbar];
  [editingToolbar2 removeInteraction:*(&self->_scrollPocketCollector + 4)];

  view = [(BKTOCContentViewController *)self view];
  [view removeInteraction:*(&self->_descriptionView + 4)];

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
    indexPathsForSelectedRows = [*(&self->super._verticalCenteringInsets.right + 4) indexPathsForSelectedRows];
    v16 = -[BKTOCContentViewController editToolbarFooterTextWithCount:](self, "editToolbarFooterTextWithCount:", [indexPathsForSelectedRows count]);

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
  indexPathsForSelectedRows = [*(&self->super._verticalCenteringInsets.right + 4) indexPathsForSelectedRows];
  v4 = [indexPathsForSelectedRows count];

  v5 = BKTOCCVCLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_138348();
  }

  v6 = [(BKTOCContentViewController *)self editToolbarFooterTextWithCount:v4];
  WeakRetained = objc_loadWeakRetained((&self->_editingToolbar + 4));
  [WeakRetained setTitle:v6];
}

- (id)editToolbarFooterTextWithCount:(unint64_t)count
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
    v8 = [NSString localizedStringWithFormat:v7, count];

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
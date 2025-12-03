@interface BKTOCViewController
- (BKTOCViewController)initWithNibName:(id)name bundle:(id)bundle;
- (BOOL)isLandscape;
- (BOOL)isThemeFlowingBook;
- (UIEdgeInsets)centeringInsets;
- (UIEdgeInsets)verticalCenteringInsets;
- (UIFont)pageLabelFont;
- (double)calculateFontSize;
- (id)title;
- (id)tocFetchedResultsController;
- (void)dealloc;
- (void)destroyFetchedResultsController;
- (void)establishChapterFonts;
- (void)preferredContentSizeChanged:(id)changed;
- (void)releaseViews;
- (void)setDirectoryDelegate:(id)delegate;
- (void)setTheme:(id)theme;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BKTOCViewController

- (void)releaseViews
{
  [(BKTOCViewController *)self destroyFetchedResultsController];
  v3.receiver = self;
  v3.super_class = BKTOCViewController;
  [(BKContentViewController *)&v3 releaseViews];
}

- (void)dealloc
{
  [(BKTOCViewController *)self releaseViews];
  v3.receiver = self;
  v3.super_class = BKTOCViewController;
  [(BKContentViewController *)&v3 dealloc];
}

- (BKTOCViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = BKTOCViewController;
  return [(BKViewController *)&v5 initWithNibName:name bundle:bundle];
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = BKTOCViewController;
  [(BKTOCViewController *)&v12 viewWillAppear:appear];
  fetchedResultsController = [(BKTOCViewController *)self fetchedResultsController];
  v11 = 0;
  v5 = [fetchedResultsController performFetch:&v11];
  v6 = v11;

  if ((v5 & 1) == 0)
  {
    v7 = BCIMLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_13716C(self, v6, v7);
    }
  }

  v8 = +[NSNotificationCenter defaultCenter];
  v9 = BKPaginationDataLoadedNotification;
  paginationController = [(BKTOCViewController *)self paginationController];
  [v8 addObserver:self selector:"paginationDataLoaded:" name:v9 object:paginationController];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = BKTOCViewController;
  [(BKContentViewController *)&v6 viewDidAppear:appear];
  v4 = *(&self->_tocFlags + 2);
  if (v4 == 1)
  {
    scrollView = [(BKTOCViewController *)self scrollView];
    [scrollView flashScrollIndicators];
  }

  [(BKTOCViewController *)self setScrollIndicatorsNeedToBeFlashed:v4 ^ 1u];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = BKTOCViewController;
  [(BKContentViewController *)&v7 viewWillDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = BKPaginationDataLoadedNotification;
  paginationController = [(BKTOCViewController *)self paginationController];
  [v4 removeObserver:self name:v5 object:paginationController];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BKTOCViewController;
  [(BKContentViewController *)&v4 viewDidDisappear:disappear];
  [(BKTOCViewController *)self destroyFetchedResultsController];
}

- (void)preferredContentSizeChanged:(id)changed
{
  [(BKTOCViewController *)self setChapterTopLevelFont:0];
  [(BKTOCViewController *)self setChapterSubLevelFont:0];
  [(BKTOCViewController *)self establishChapterFonts];

  [(BKTOCViewController *)self reload];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = BKTOCViewController;
  [(BKTOCViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  directoryDelegate = [(BKDirectoryContent *)self directoryDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    directoryDelegate2 = [(BKDirectoryContent *)self directoryDelegate];
    [directoryDelegate2 tocViewController:self willTransitionToSize:coordinatorCopy withTransitionCoordinator:{width, height}];
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_37A5C;
  v11[3] = &unk_1E2A60;
  v11[4] = self;
  [coordinatorCopy animateAlongsideTransition:0 completion:v11];
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  theme = [(BKTOCViewController *)self theme];
  v6 = [themeCopy isEqual:theme];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = BKTOCViewController;
    [(BKContentViewController *)&v7 setTheme:themeCopy];
    [(BKTOCViewController *)self invalidateFollowingThemeChange];
  }
}

- (id)title
{
  tocContentType = [(BKTOCViewController *)self tocContentType];
  v3 = AEBundle();
  v4 = v3;
  v5 = @"Notes";
  if (tocContentType == 1)
  {
    v5 = @"Bookmarks";
  }

  if (tocContentType)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"Contents";
  }

  v7 = [v3 localizedStringForKey:v6 value:&stru_1E7188 table:0];

  return v7;
}

- (BOOL)isThemeFlowingBook
{
  theme = [(BKTOCViewController *)self theme];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    theme2 = [(BKTOCViewController *)self theme];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)setDirectoryDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = BKTOCViewController;
  directoryDelegate = [(BKDirectoryContent *)&v11 directoryDelegate];

  if (directoryDelegate != delegateCopy)
  {
    v10.receiver = self;
    v10.super_class = BKTOCViewController;
    [(BKDirectoryContent *)&v10 setDirectoryDelegate:delegateCopy];
    BYTE4(self->_fetchedResultsController) = BYTE4(self->_fetchedResultsController) & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    BYTE4(self->_fetchedResultsController) = BYTE4(self->_fetchedResultsController) & 0xFD | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    BYTE4(self->_fetchedResultsController) = BYTE4(self->_fetchedResultsController) & 0xFB | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    BYTE4(self->_fetchedResultsController) = BYTE4(self->_fetchedResultsController) & 0xF7 | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    BYTE4(self->_fetchedResultsController) = BYTE4(self->_fetchedResultsController) & 0xEF | v9;
  }
}

- (id)tocFetchedResultsController
{
  v3 = *(&self->_paginationController + 4);
  if (!v3)
  {
    book = [(BKContentViewController *)self book];
    managedObjectContext = [book managedObjectContext];
    if (managedObjectContext)
    {
      v6 = objc_alloc_init(NSFetchRequest);
      objectID = [book objectID];
      v8 = [NSPredicate predicateWithFormat:@"bookInfo == %@", objectID, 0];

      [v6 setPredicate:v8];
      v9 = [NSEntityDescription entityForName:@"BKNavigationInfo" inManagedObjectContext:managedObjectContext];
      [v6 setEntity:v9];

      v10 = [NSArray alloc];
      v11 = [v10 initWithObjects:{BKNavigationInfoPropertyIndentationLevel, BKNavigationInfoPropertyName, BKNavigationInfoPropertyHref, BKNavigationInfoPropertyHTMLName, 0}];
      [v6 setPropertiesToFetch:v11];
      [v6 setReturnsObjectsAsFaults:0];
      v12 = [[NSSortDescriptor alloc] initWithKey:@"absoluteOrder" ascending:{-[BKTOCViewController fetchedResultsControllerAscendingOrder](self, "fetchedResultsControllerAscendingOrder")}];
      v13 = [[NSArray alloc] initWithObjects:{v12, 0}];
      [v6 setSortDescriptors:v13];
      v14 = [[NSFetchedResultsController alloc] initWithFetchRequest:v6 managedObjectContext:managedObjectContext sectionNameKeyPath:0 cacheName:0];
      v15 = *(&self->_paginationController + 4);
      *(&self->_paginationController + 4) = v14;

      [*(&self->_paginationController + 4) setDelegate:self];
      v16 = [managedObjectContext countEntity:@"BKNavigationInfo" withPredicate:v8];
      [v6 setFetchLimit:v16];
      [v6 setFetchBatchSize:v16];
    }

    v3 = *(&self->_paginationController + 4);
  }

  return v3;
}

- (void)destroyFetchedResultsController
{
  [*(&self->_paginationController + 4) setDelegate:0];
  v3 = *(&self->_paginationController + 4);
  *(&self->_paginationController + 4) = 0;
}

- (BOOL)isLandscape
{
  bc_windowForViewController = [(BKTOCViewController *)self bc_windowForViewController];
  windowScene = [bc_windowForViewController windowScene];
  v4 = [windowScene interfaceOrientation] - 3 < &dword_0 + 2;

  return v4;
}

- (double)calculateFontSize
{
  if (![(BKTOCViewController *)self isThemeFlowingBook])
  {
    v6 = isPad() == 0;
    result = 16.0;
    v7 = 17.0;
LABEL_7:
    if (!v6)
    {
      return v7;
    }

    return result;
  }

  if (![(BKTOCViewController *)self usesPopoverStyle]|| (v4 = [(BKTOCViewController *)self isVertical], result = 10.0, (v4 & 1) == 0))
  {
    isLandscape = [(BKTOCViewController *)self isLandscape];
    result = 14.0;
    if ((isLandscape & 1) == 0)
    {
      v6 = isPad() == 0;
      result = 14.0;
      v7 = 19.0;
      goto LABEL_7;
    }
  }

  return result;
}

- (void)establishChapterFonts
{
  if ([(BKTOCViewController *)self usesPopoverStyle])
  {
    chapterTopLevelFont = [(BKTOCViewController *)self chapterTopLevelFont];
    if (chapterTopLevelFont)
    {
      v4 = chapterTopLevelFont;
      chapterSubLevelFont = [(BKTOCViewController *)self chapterSubLevelFont];

      if (chapterSubLevelFont)
      {
        return;
      }
    }

    v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    [(BKTOCViewController *)self setChapterTopLevelFont:v6];

    v15 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody weight:UIFontWeightMedium];
    [(BKTOCViewController *)self setChapterSubLevelFont:?];
    goto LABEL_11;
  }

  [(BKTOCViewController *)self calculateFontSize];
  v8 = v7;
  [(BKTOCViewController *)self sizeOfCachedFonts];
  if (v9 != v8)
  {
    [(BKTOCViewController *)self setChapterTopLevelFont:0];
    [(BKTOCViewController *)self setChapterSubLevelFont:0];
    [(BKTOCViewController *)self setSizeOfCachedFonts:v8];
  }

  chapterTopLevelFont2 = [(BKTOCViewController *)self chapterTopLevelFont];
  if (!chapterTopLevelFont2 || (v11 = chapterTopLevelFont2, [(BKTOCViewController *)self chapterSubLevelFont], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12))
  {
    v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [v15 _scaledValueForValue:v8];
    v13 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
    [(BKTOCViewController *)self setChapterTopLevelFont:v13];

    [v15 _scaledValueForValue:v8];
    v14 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
    [(BKTOCViewController *)self setChapterSubLevelFont:v14];

LABEL_11:
  }
}

- (UIFont)pageLabelFont
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  if (![(BKTOCViewController *)self usesPopoverStyle])
  {
    [(BKTOCViewController *)self calculateFontSize];
    [v3 _scaledValueForValue:?];
    v4 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];

    v3 = v4;
  }

  return v3;
}

- (UIEdgeInsets)centeringInsets
{
  v2 = *(&self->_vertical + 4);
  v3 = *(&self->_centeringInsets.top + 4);
  v4 = *(&self->_centeringInsets.left + 4);
  v5 = *(&self->_centeringInsets.bottom + 4);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)verticalCenteringInsets
{
  v2 = *(&self->_sizeOfCachedFonts + 4);
  v3 = *(&self->_verticalCenteringInsets.top + 4);
  v4 = *(&self->_verticalCenteringInsets.left + 4);
  v5 = *(&self->_verticalCenteringInsets.bottom + 4);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

@end
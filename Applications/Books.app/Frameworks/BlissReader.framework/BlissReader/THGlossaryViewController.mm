@interface THGlossaryViewController
+ (id)newViewController;
- (BOOL)followAnchor:(id)anchor pulse:(BOOL)pulse;
- (BOOL)followGlossaryAnchor:(id)anchor;
- (BOOL)followLink:(id)link animated:(BOOL)animated;
- (BOOL)isGlossaryVisible;
- (BOOL)p_isCollapsed;
- (BOOL)p_isCompact;
- (CGRect)glossaryEntryLayoutViewFrame;
- (CGSize)glossaryEntryLayoutContentSize;
- (THGlossaryViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)glossaryEntryLayoutValueForDistance:(int)distance;
- (id)displayedEntry;
- (id)documentNavigatorForGlossaryDefinitionsViewController:(id)controller;
- (id)documentRoot;
- (id)glossaryEntryLayoutBackgroundColor;
- (id)glossaryEntryLayoutForegroundColor;
- (int)glossaryEntryLayoutFloatingStyle;
- (int64_t)layoutOrientation;
- (int64_t)overrideUserInterfaceStyle;
- (int64_t)p_interfaceOrientation;
- (void)_applyColors;
- (void)dealloc;
- (void)didScrollToEntry:(id)entry;
- (void)displayEntry:(id)entry whenCollapsed:(BOOL)collapsed;
- (void)displayEntryByPath:(id)path;
- (void)furtherInitWithGlossaryController:(id)controller;
- (void)handleDone:(id)done;
- (void)loadView;
- (void)p_configureToolbarsForCollapsed:(BOOL)collapsed;
- (void)p_setupChildViewControllers;
- (void)releaseChildViewControllers;
- (void)setTheme:(id)theme;
- (void)showEntry:(id)entry;
- (void)showEntryAtIndex:(unint64_t)index;
- (void)showEntryAtPath:(id)path;
- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode;
- (void)unload;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation THGlossaryViewController

+ (id)newViewController
{
  v2 = [THGlossaryViewController alloc];

  return [(THGlossaryViewController *)v2 initWithNibName:0 bundle:0];
}

- (THGlossaryViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = THGlossaryViewController;
  result = [(THGlossaryViewController *)&v5 initWithNibName:name bundle:bundle];
  if (result)
  {
    result->_targetOrientation = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (void)p_setupChildViewControllers
{
  v3 = +[THGlossaryTermsViewController newViewController];
  self->_termsViewController = v3;
  [(THGlossaryTermsViewController *)v3 setEdgesForExtendedLayout:15];
  [(THGlossaryTermsViewController *)self->_termsViewController setNavigationDelegate:self];
  [(THGlossaryTermsViewController *)self->_termsViewController setGlossaryController:self->_glossaryController];
  -[THGlossaryTermsViewController setTitle:](self->_termsViewController, "setTitle:", [THBundle() localizedStringForKey:@"Index" value:&stru_471858 table:0]);
  self->_masterNavigationController = [[UINavigationController alloc] initWithRootViewController:self->_termsViewController];
  v4 = [[THGlossaryDefinitionsViewController alloc] initWithNibName:0 bundle:0];
  self->_definitionsViewController = v4;
  [(THGlossaryDefinitionsViewController *)v4 setEdgesForExtendedLayout:14];
  [(THGlossaryDefinitionsViewController *)self->_definitionsViewController setDelegate:self];
  [(THGlossaryDefinitionsViewController *)self->_definitionsViewController setGlossaryViewController:self];
  [(THGlossaryDefinitionsViewController *)self->_definitionsViewController setGlossaryController:self->_glossaryController];
  -[THGlossaryDefinitionsViewController setTitle:](self->_definitionsViewController, "setTitle:", [THBundle() localizedStringForKey:@"Glossary" value:&stru_471858 table:0]);
  self->_detailNavigationController = [[UINavigationController alloc] initWithRootViewController:self->_definitionsViewController];
  self->_glossarySplitViewController = objc_alloc_init(UISplitViewController);
  detailNavigationController = self->_detailNavigationController;
  v6[0] = self->_masterNavigationController;
  v6[1] = detailNavigationController;
  [(UISplitViewController *)self->_glossarySplitViewController setViewControllers:[NSArray arrayWithObjects:v6 count:2]];
  [(UISplitViewController *)self->_glossarySplitViewController setMinimumPrimaryColumnWidth:320.0];
  [(UISplitViewController *)self->_glossarySplitViewController setDelegate:self];
}

- (void)releaseChildViewControllers
{
  [(THGlossaryViewController *)self setMasterNavigationController:0];
  [(THGlossaryViewController *)self setDetailNavigationController:0];
  [(THGlossaryTermsViewController *)[(THGlossaryViewController *)self termsViewController] setNavigationDelegate:0];
  [(THGlossaryViewController *)self setTermsViewController:0];
  [(THGlossaryDefinitionsViewController *)[(THGlossaryViewController *)self definitionsViewController] setDelegate:0];
  [(THGlossaryDefinitionsViewController *)[(THGlossaryViewController *)self definitionsViewController] setGlossaryViewController:0];
  [(THGlossaryViewController *)self setDefinitionsViewController:0];
  [(UISplitViewController *)[(THGlossaryViewController *)self glossarySplitViewController] setDelegate:0];

  [(THGlossaryViewController *)self setGlossarySplitViewController:0];
}

- (void)dealloc
{
  [(THGlossaryViewController *)self setLastDisplayedEntry:0];
  [(THGlossaryViewController *)self setGlossaryController:0];
  [(THGlossaryViewController *)self setGlossaryLinkResolver:0];
  [(THGlossaryViewController *)self releaseChildViewControllers];
  [(UIView *)self->_rotationSnapshot removeFromSuperview];

  v3.receiver = self;
  v3.super_class = THGlossaryViewController;
  [(THGlossaryViewController *)&v3 dealloc];
}

- (void)handleDone:(id)done
{
  bookViewController = self->_bookViewController;
  originalViewController = [(THGlossaryViewController *)self originalViewController];

  [(THBookViewController *)bookViewController hideGlossaryWithDestinationViewController:originalViewController];
}

- (int64_t)p_interfaceOrientation
{
  v2 = [-[THGlossaryViewController bc_windowForViewController](self "bc_windowForViewController")];

  return [v2 interfaceOrientation];
}

- (void)furtherInitWithGlossaryController:(id)controller
{
  [(THGlossaryViewController *)self setGlossaryController:?];
  v5 = [THGlossaryLinkResolver glossaryLinkResolverWithGlossaryController:controller];

  [(THGlossaryViewController *)self setGlossaryLinkResolver:v5];
}

- (id)documentRoot
{
  documentViewController = [(THBookViewController *)[(THGlossaryViewController *)self bookViewController] documentViewController];

  return [(THDocumentViewController *)documentViewController documentRoot];
}

- (BOOL)p_isCompact
{
  if ([(THGlossaryViewController *)self parentViewController])
  {
    if (([(THGlossaryViewController *)self im_isCompactWidth]& 1) == 0)
    {

      return [(THGlossaryViewController *)self im_isCompactHeight];
    }

    return 1;
  }

  if (([(THBookViewController *)[(THGlossaryViewController *)self bookViewController] im_isCompactHeight]& 1) != 0)
  {
    return 1;
  }

  bookViewController = [(THGlossaryViewController *)self bookViewController];

  return [(THBookViewController *)bookViewController im_isCompactWidth];
}

- (BOOL)p_isCollapsed
{
  glossarySplitViewController = [(THGlossaryViewController *)self glossarySplitViewController];

  return [(UISplitViewController *)glossarySplitViewController isCollapsed];
}

- (void)p_configureToolbarsForCollapsed:(BOOL)collapsed
{
  collapsedCopy = collapsed;
  v5 = [(IMTheme *)[(THGlossaryViewController *)self theme] backgroundColorForTraitEnvironment:self];
  if (!v5)
  {
    v5 = +[UIColor bc_booksBackground];
  }

  [-[UISplitViewController view](-[THGlossaryViewController glossarySplitViewController](self "glossarySplitViewController")];
  navigationItem = [(THGlossaryTermsViewController *)[(THGlossaryViewController *)self termsViewController] navigationItem];
  if (navigationItem)
  {
    v7 = navigationItem;
    if (collapsedCopy)
    {
      v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"handleDone:"];
      [v7 setRightBarButtonItem:v8];
    }

    else
    {
      [navigationItem setRightBarButtonItem:0];
    }
  }

  navigationItem2 = [(THGlossaryDefinitionsViewController *)[(THGlossaryViewController *)self definitionsViewController] navigationItem];
  if (navigationItem2)
  {
    v10 = navigationItem2;
    contentTextColor = [(IMTheme *)[(THGlossaryViewController *)self theme] contentTextColor];
    if (!contentTextColor)
    {
      contentTextColor = +[UIColor bc_booksLabelColor];
    }

    [v10 setLeftItemsSupplementBackButton:1];
    v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"handleDone:"];
    displayModeButtonItem = [(UISplitViewController *)[(THGlossaryViewController *)self glossarySplitViewController] displayModeButtonItem];
    [(UIBarButtonItem *)displayModeButtonItem setTintColor:contentTextColor];
    [v10 setLeftBarButtonItem:displayModeButtonItem];
    [v10 setRightBarButtonItem:v13];
  }
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = THGlossaryViewController;
  [(THGlossaryViewController *)&v3 loadView];
  [(THGlossaryViewController *)self p_setupChildViewControllers];
  [(THGlossaryViewController *)self addChildViewController:[(THGlossaryViewController *)self glossarySplitViewController]];
  [-[THGlossaryViewController view](self "view")];
  [(UISplitViewController *)[(THGlossaryViewController *)self glossarySplitViewController] didMoveToParentViewController:self];
  [(THGlossaryViewController *)self _applyColors];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = THGlossaryViewController;
  [(THGlossaryViewController *)&v4 viewDidAppear:appear];
  if ([(THGlossaryViewController *)self pendingShowFirstEntry])
  {
    [(THGlossaryViewController *)self showEntryAtIndex:0];
    [(THGlossaryViewController *)self setPendingShowFirstEntry:0];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (self->_shouldDismissAfterRotate)
  {
    self->_shouldDismissAfterRotate = 0;
    [(UIView *)[(THGlossaryViewController *)self rotationSnapshot] removeFromSuperview];
    [(THGlossaryViewController *)self setRotationSnapshot:0];
  }

  v5.receiver = self;
  v5.super_class = THGlossaryViewController;
  [(THGlossaryViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (int64_t)layoutOrientation
{
  if (self->_targetOrientation == 0x7FFFFFFFFFFFFFFFLL)
  {
    return [(THGlossaryViewController *)self p_interfaceOrientation];
  }

  else
  {
    return self->_targetOrientation;
  }
}

- (BOOL)isGlossaryVisible
{
  isViewLoaded = [(THGlossaryViewController *)self isViewLoaded];
  if (isViewLoaded)
  {
    LOBYTE(isViewLoaded) = [-[THGlossaryViewController view](self "view")] != 0;
  }

  return isViewLoaded;
}

- (void)setTheme:(id)theme
{
  if (([(IMTheme *)self->_theme isEqual:?]& 1) == 0)
  {
    themeCopy = theme;

    self->_theme = theme;

    [(THGlossaryViewController *)self _applyColors];
  }
}

- (void)_applyColors
{
  theme = [(THGlossaryViewController *)self theme];
  v4 = [(IMTheme *)theme backgroundColorForTraitEnvironment:self];
  if (!v4)
  {
    v4 = +[UIColor bc_booksBackground];
  }

  [-[THGlossaryViewController view](self "view")];
  keyColor = [(IMTheme *)theme keyColor];
  if (!keyColor)
  {
    keyColor = +[UIColor bc_booksKeyColor];
  }

  [-[THGlossaryViewController view](self "view")];
  [(THGlossaryViewController *)self p_configureToolbarsForCollapsed:[(THGlossaryViewController *)self p_isCollapsed]];
  [(THGlossaryTermsViewController *)self->_termsViewController setTheme:theme];
  [(THGlossaryDefinitionsViewController *)self->_definitionsViewController setTheme:theme];
  contentTextColor = [(IMTheme *)theme contentTextColor];
  if (!contentTextColor)
  {
    contentTextColor = +[UIColor bc_booksLabelColor];
  }

  masterNavigationController = self->_masterNavigationController;
  detailNavigationController = self->_detailNavigationController;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v21[0] = masterNavigationController;
  v21[1] = detailNavigationController;
  v9 = [NSArray arrayWithObjects:v21 count:2, 0];
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        [objc_msgSend(v14 "navigationBar")];
        v19 = NSForegroundColorAttributeName;
        v20 = contentTextColor;
        [objc_msgSend(v14 "navigationBar")];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v22 count:16];
    }

    while (v11);
  }
}

- (int64_t)overrideUserInterfaceStyle
{
  objc_opt_class();
  [(THGlossaryViewController *)self theme];
  result = [TSUDynamicCast() userInterfaceStyle];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (void)splitViewController:(id)controller willChangeToDisplayMode:(int64_t)mode
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_B9680;
  v4[3] = &unk_45AE58;
  v4[4] = self;
  v4[5] = controller;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)displayEntry:(id)entry whenCollapsed:(BOOL)collapsed
{
  if (entry)
  {
    collapsedCopy = collapsed;
    glossaryIndex = [(THGlossaryTermsViewController *)[(THGlossaryViewController *)self termsViewController] glossaryIndex];
    if ([(THGlossaryIndex *)glossaryIndex indexForEntry:entry]== 0x7FFFFFFFFFFFFFFFLL)
    {
      glossaryIndex = [THGlossaryIndex alphabeticalIndexForEntries:[NSArray arrayWithObject:entry]];
    }

    [(THGlossaryDefinitionsViewController *)[(THGlossaryViewController *)self definitionsViewController] displayIndex:glossaryIndex withEntry:entry animated:[(THGlossaryViewController *)self shouldAnimateShowEntry]];
    if (collapsedCopy)
    {
      if ([(THGlossaryViewController *)self p_isCollapsed])
      {
        masterNavigationController = [(THGlossaryViewController *)self masterNavigationController];
        detailNavigationController = [(THGlossaryViewController *)self detailNavigationController];
        if ([(UINavigationController *)masterNavigationController topViewController]!= detailNavigationController)
        {
          [(UINavigationController *)masterNavigationController pushViewController:detailNavigationController animated:1];
        }
      }
    }
  }

  [(THGlossaryViewController *)self setLastDisplayedEntry:entry, collapsed];
}

- (void)displayEntryByPath:(id)path
{
  v4 = [(THGlossaryController *)self->_glossaryController entryForPath:path];

  [(THGlossaryViewController *)self displayEntry:v4 whenCollapsed:1];
}

- (id)displayedEntry
{
  definitionsViewController = [(THGlossaryViewController *)self definitionsViewController];

  return [(THGlossaryDefinitionsViewController *)definitionsViewController displayedEntry];
}

- (void)didScrollToEntry:(id)entry
{
  [(THGlossaryTermsViewController *)[(THGlossaryViewController *)self termsViewController] selectEntry:entry scrollPosition:0 animated:1];

  [(THGlossaryViewController *)self setLastDisplayedEntry:entry];
}

- (void)showEntry:(id)entry
{
  [(THGlossaryDefinitionsViewController *)[(THGlossaryViewController *)self definitionsViewController] displayIndex:[(THGlossaryController *)self->_glossaryController alphabeticalTermIndex] withEntry:entry animated:0];
  [(THGlossaryTermsViewController *)[(THGlossaryViewController *)self termsViewController] clearSearch];
  [(THGlossaryTermsViewController *)[(THGlossaryViewController *)self termsViewController] selectEntry:entry scrollPosition:1 animated:0];

  [(THGlossaryViewController *)self setLastDisplayedEntry:entry];
}

- (void)showEntryAtPath:(id)path
{
  v4 = [(THGlossaryController *)self->_glossaryController entryForPath:path];

  [(THGlossaryViewController *)self showEntry:v4];
}

- (void)showEntryAtIndex:(unint64_t)index
{
  v4 = [-[THGlossaryController alphabeticalTermIndex](self->_glossaryController "alphabeticalTermIndex")];

  [(THGlossaryViewController *)self showEntry:v4];
}

- (void)unload
{
  definitionsViewController = [(THGlossaryViewController *)self definitionsViewController];

  [(THGlossaryDefinitionsViewController *)definitionsViewController unload];
}

- (BOOL)followGlossaryAnchor:(id)anchor
{
  if (![anchor glossaryEntry])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  glossaryEntry = [anchor glossaryEntry];
  if (glossaryEntry)
  {
    objc_opt_class();
    anchorCopy = TSUDynamicCast();
    if (!anchorCopy)
    {
      anchorCopy = anchor;
    }

    -[THGlossaryViewController showEntry:](self, "showEntry:", [anchorCopy glossaryEntry]);
  }

  return glossaryEntry != 0;
}

- (id)documentNavigatorForGlossaryDefinitionsViewController:(id)controller
{
  bookViewController = [(THGlossaryViewController *)self bookViewController];

  return [(THBookViewController *)bookViewController documentNavigator];
}

- (BOOL)followAnchor:(id)anchor pulse:(BOOL)pulse
{
  if (!anchor)
  {
    return 0;
  }

  pulseCopy = pulse;
  if ([anchor glossaryEntry])
  {

    return [(THGlossaryViewController *)self followGlossaryAnchor:anchor];
  }

  else
  {
    [(THBookViewController *)[(THGlossaryViewController *)self bookViewController] recordOutgoingMajorNavigationJump];
    v7 = [(THBookViewController *)[(THGlossaryViewController *)self bookViewController] followAnchor:anchor pulse:pulseCopy];
    [(THBookViewController *)[(THGlossaryViewController *)self bookViewController] recordCurrentLocationInHistory];
    [(THBookViewController *)[(THGlossaryViewController *)self bookViewController] updateNavigationAffordances];
    return v7;
  }
}

- (BOOL)followLink:(id)link animated:(BOOL)animated
{
  v7 = [(THGlossaryLinkResolver *)[(THGlossaryViewController *)self glossaryLinkResolver] anchorFromAbsoluteLink:link];
  if (v7)
  {

    return [(THGlossaryViewController *)self followAnchor:v7 pulse:1];
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    v10 = sub_B9CC4;
    v11 = &unk_45CEE0;
    selfCopy = self;
    linkCopy = link;
    animatedCopy = animated;
    if (+[NSThread isMainThread])
    {
      v10(block);
    }

    else
    {
      dispatch_async(&_dispatch_main_q, block);
    }

    return 1;
  }
}

- (int)glossaryEntryLayoutFloatingStyle
{
  if ([(THGlossaryViewController *)self p_isCompact])
  {
    return 2;
  }

  if ([(THGlossaryDefinitionsViewController *)[(THGlossaryViewController *)self definitionsViewController] im_isCompactWidth])
  {
    return 2;
  }

  return 1;
}

- (CGRect)glossaryEntryLayoutViewFrame
{
  if ([(THGlossaryDefinitionsViewController *)[(THGlossaryViewController *)self definitionsViewController] isViewLoaded])
  {
    view = [(THGlossaryDefinitionsViewController *)[(THGlossaryViewController *)self definitionsViewController] view];
    if (view)
    {
      [view frame];
      TSDRectWithSize();
      x = v4;
      y = v6;
      width = v8;
      height = v10;
    }

    else
    {
      x = CGRectZero.origin.x;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
    }

    [-[THGlossaryViewController view](self "view")];
    v17 = v16;
    [-[THGlossaryViewController view](self "view")];
    v12 = width - (v17 + v18);
  }

  else
  {
    [-[THBookViewController view](-[THGlossaryViewController bookViewController](self "bookViewController")];
    TSDRectWithSize();
    x = v13;
    y = v14;
    height = v15;
  }

  v19 = x;
  v20 = y;
  v21 = height;
  result.size.height = v21;
  result.size.width = v12;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGSize)glossaryEntryLayoutContentSize
{
  [(THGlossaryViewController *)self glossaryEntryLayoutViewFrame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (double)glossaryEntryLayoutValueForDistance:(int)distance
{
  v5 = [(THGlossaryViewController *)self layoutOrientation]- 3;
  if ([(THGlossaryViewController *)self p_isCompact])
  {
    result = 0.0;
    if (distance > 3)
    {
      if (distance == 6)
      {
        result = 8.0;
      }

      if (distance == 5)
      {
        result = 8.0;
      }

      if (distance == 4)
      {
        return 8.0;
      }
    }

    else
    {
      if (distance < 2)
      {
        return 15.0;
      }

      if (distance == 2)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_B9FE4;
    v10[3] = &unk_45CF08;
    v10[4] = self;
    v11 = v5 < 2;
    result = 0.0;
    if (distance > 1)
    {
      if (distance == 2)
      {
LABEL_22:
        v7 = v5 < 2;
        v8 = &unk_34A390;
        return v8[v7];
      }

      if (distance != 3)
      {
        return result;
      }

      if (v5 >= 2)
      {
        v9 = 33.0;
      }

      else
      {
        v9 = 0.0;
      }
    }

    else
    {
      if (distance)
      {
        if (distance != 1)
        {
          return result;
        }

        v7 = v5 < 2;
        v8 = dbl_34A3A0;
        return v8[v7];
      }

      v9 = dbl_34A3A0[v5 < 2];
    }

    return v9 + sub_B9FE4(v10);
  }

  return result;
}

- (id)glossaryEntryLayoutBackgroundColor
{
  v3 = [(IMTheme *)[(THGlossaryViewController *)self theme] backgroundColorForTraitEnvironment:self];
  if (!v3)
  {
    v3 = [+[UIColor bc_booksBackground](UIColor "bc_booksBackground")];
  }

  return [TSUColor colorWithUIColor:v3];
}

- (id)glossaryEntryLayoutForegroundColor
{
  contentTextColor = [(IMTheme *)[(THGlossaryViewController *)self theme] contentTextColor];
  if (!contentTextColor)
  {
    contentTextColor = +[UIColor bc_booksLabelColor];
  }

  v4 = [contentTextColor resolvedColorWithTraitCollection:{-[THGlossaryViewController traitCollection](self, "traitCollection")}];

  return [TSUColor colorWithUIColor:v4];
}

@end
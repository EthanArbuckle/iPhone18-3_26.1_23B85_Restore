@interface THGlossaryPopoverViewController
- (CGRect)glossaryEntryLayoutViewFrame;
- (CGSize)glossaryEntryLayoutContentSize;
- (THGlossaryPopoverViewController)initWithTerm:(id)term glossaryController:(id)controller;
- (TSKDocumentRoot)documentRoot;
- (double)glossaryEntryLayoutValueForDistance:(int)distance;
- (id)glossaryEntryLayoutBackgroundColor;
- (id)glossaryEntryLayoutForegroundColor;
- (id)p_glossaryEntryForTerm:(id)term;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)dealloc;
- (void)loadView;
- (void)p_cleanup;
- (void)p_insetScrollerContentEdges;
- (void)p_updateColors;
- (void)p_updateGlossaryDefinitionSynchronous:(BOOL)synchronous;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setTheme:(id)theme;
- (void)showDictionaryEntry;
- (void)showGlossaryIndex;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation THGlossaryPopoverViewController

- (THGlossaryPopoverViewController)initWithTerm:(id)term glossaryController:(id)controller
{
  v11.receiver = self;
  v11.super_class = THGlossaryPopoverViewController;
  v6 = [(THGlossaryPopoverViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    [(THGlossaryPopoverViewController *)v6 setTerm:term];
    [(THGlossaryPopoverViewController *)v7 setGlossaryController:controller];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    THCanvasCreateWithClass(v7, &v7->_icc, &v7->_cvc, v8, v9);
    [(THGlossaryInteractiveCanvasController *)[(THGlossaryPopoverViewController *)v7 icc] disableAllGestures];
    [(THGlossaryPopoverViewController *)v7 setTheme:[IMTheme themeWithIdentifier:kIMThemeIdentifierBlissClassicTheme]];
    [(THGlossaryPopoverViewController *)v7 p_updateGlossaryDefinitionSynchronous:1];
    [(THGlossaryPopoverViewController *)v7 registerForTraitChanges:+[UITraitCollection withAction:"bc_allAPITraits"], "_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v7;
}

- (id)p_glossaryEntryForTerm:(id)term
{
  glossary = [(THDocumentRoot *)[(THGlossaryController *)[(THGlossaryPopoverViewController *)self glossaryController] documentRoot] glossary];
  if ([(THModelGlossary *)glossary entryCount]< 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = [(THModelGlossary *)glossary entryAtIndex:v5];
    if (![term compare:objc_msgSend(v6 options:{"term"), 1}])
    {
      break;
    }

    if (++v5 >= [(THModelGlossary *)glossary entryCount])
    {
      return 0;
    }
  }

  return v6;
}

- (void)showGlossaryIndex
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_BF1DC;
  v2[3] = &unk_45AE58;
  selfCopy = self;
  bookViewController = [(THGlossaryPopoverViewController *)self bookViewController];
  [(THGlossaryPopoverViewController *)selfCopy dismissViewControllerAnimated:0 completion:v2];
}

- (TSKDocumentRoot)documentRoot
{
  glossaryController = [(THGlossaryPopoverViewController *)self glossaryController];

  return [(THGlossaryController *)glossaryController documentRoot];
}

- (void)loadView
{
  v3 = [[UIView alloc] initWithFrame:{0.0, 0.0, 320.0, 366.0}];
  [(THGlossaryPopoverViewController *)self setGlossaryRootView:v3];
  [v3 setAutoresizingMask:18];
  v4 = [[UILabel alloc] initWithFrame:{15.0, 94.0, 290.0, 30.0}];
  [(THGlossaryPopoverViewController *)self setNotFoundLabel:v4];
  [v4 setFont:{+[UIFont fontWithName:size:](UIFont, "fontWithName:size:", @"Baskerville-Italic", 24.0)}];
  [v4 setText:{objc_msgSend(THBundle(), "localizedStringForKey:value:table:", @"Not found.", &stru_471858, 0)}];
  [v4 setHidden:1];
  [v4 setAutoresizingMask:18];
  [v3 addSubview:v4];
  [v3 bounds];
  v6 = v5;
  v8 = v7 + -22.0;
  v10 = [[TSKScrollView alloc] initWithFrame:{v9, 22.0, v5, v7 + -22.0}];
  [(THGlossaryPopoverViewController *)self setDefinition:v10];
  [v10 setOpaque:0];
  [v10 setDelegate:self];
  [v10 setAutoresizingMask:18];
  [v3 addSubview:v10];
  v11 = [UIView alloc];
  [v10 bounds];
  v12 = [v11 initWithFrame:?];
  [(THGlossaryPopoverViewController *)self setContainer:v12];
  [v10 addSubview:v12];
  canvasView = [(THGlossaryInteractiveCanvasController *)[(THGlossaryPopoverViewController *)self icc] canvasView];
  [v12 addSubview:canvasView];
  [canvasView setFrame:{0.0, 22.0, v6, v8}];
  [canvasView setAutoresizingMask:0];
  [(THGlossaryPopoverViewController *)self setView:v3];

  [(THGlossaryPopoverViewController *)self setPreferredContentSize:320.0, 366.0];

  [(THGlossaryPopoverViewController *)self p_updateColors];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = THGlossaryPopoverViewController;
  [(THGlossaryPopoverViewController *)&v5 viewWillAppear:?];
  [(THGlossaryiOSCanvasViewController *)[(THGlossaryPopoverViewController *)self cvc] viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = THGlossaryPopoverViewController;
  [(THGlossaryPopoverViewController *)&v5 viewDidAppear:?];
  [(THGlossaryiOSCanvasViewController *)[(THGlossaryPopoverViewController *)self cvc] viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = THGlossaryPopoverViewController;
  [(THGlossaryPopoverViewController *)&v5 viewWillDisappear:?];
  [(THGlossaryiOSCanvasViewController *)[(THGlossaryPopoverViewController *)self cvc] viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = THGlossaryPopoverViewController;
  [(THGlossaryPopoverViewController *)&v5 viewDidDisappear:?];
  [(THGlossaryiOSCanvasViewController *)[(THGlossaryPopoverViewController *)self cvc] viewDidDisappear:disappearCopy];
}

- (void)dealloc
{
  [(THGlossaryPopoverViewController *)self p_cleanup];
  v3.receiver = self;
  v3.super_class = THGlossaryPopoverViewController;
  [(THGlossaryPopoverViewController *)&v3 dealloc];
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  [(THGlossaryPopoverViewController *)self p_updateColors:change];

  [(THGlossaryPopoverViewController *)self p_updateGlossaryDefinitionSynchronous:1];
}

- (void)setTheme:(id)theme
{
  v5.receiver = self;
  v5.super_class = THGlossaryPopoverViewController;
  [(THGlossaryPopoverViewController *)&v5 setTheme:?];
  [(THGlossaryiOSCanvasViewController *)[(THGlossaryPopoverViewController *)self cvc] setTheme:theme];
  [(THGlossaryPopoverViewController *)self p_updateColors];
}

- (void)p_insetScrollerContentEdges
{
  navigationController = [(THGlossaryPopoverViewController *)self navigationController];
  v4 = [objc_msgSend(objc_msgSend(-[THGlossaryPopoverViewController view](self "view")];
  v5 = 0.0;
  v6 = 0.0;
  if (([(THGlossaryPopoverViewController *)self _isInPopoverPresentation]& 1) == 0)
  {
    [v4 statusBarHeight];
    v6 = v7;
  }

  [objc_msgSend(navigationController "navigationBar")];
  v9 = v8;
  isNavigationBarHidden = [navigationController isNavigationBarHidden];
  if (([navigationController isToolbarHidden] & 1) == 0)
  {
    [objc_msgSend(navigationController "toolbar")];
    v5 = v11 + 0.0;
  }

  if (!isNavigationBarHidden)
  {
    v6 = v6 + v9;
  }

  [(UIScrollView *)[(THGlossaryPopoverViewController *)self definition] contentOffset];
  v13 = v12;
  v15 = v14;
  [(UIScrollView *)[(THGlossaryPopoverViewController *)self definition] setContentInset:v6, 0.0, v5, 0.0];
  [(UIScrollView *)[(THGlossaryPopoverViewController *)self definition] setScrollIndicatorInsets:v9, 0.0, v5, 0.0];
  if (v15 - v6 >= -v6)
  {
    v16 = v15 - v6;
  }

  else
  {
    v16 = -v6;
  }

  definition = [(THGlossaryPopoverViewController *)self definition];

  [(UIScrollView *)definition setContentOffset:v13, v16];
}

- (void)p_updateGlossaryDefinitionSynchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  term = [(THGlossaryPopoverViewController *)self term];
  if ([(NSString *)term length]&& (v6 = [(THGlossaryPopoverViewController *)self p_glossaryEntryForTerm:term]) != 0)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_BF998;
    v8[3] = &unk_45D020;
    v8[4] = self;
    if (synchronousCopy)
    {
      [v6 synchronouslyLoadInfoOnComplete:v8];
    }

    else
    {
      [v6 loadInfoOnComplete:v8];
    }
  }

  else
  {
    [(UILabel *)[(THGlossaryPopoverViewController *)self notFoundLabel] setHidden:0];
    definition = [(THGlossaryPopoverViewController *)self definition];

    [(UIScrollView *)definition setHidden:1];
  }
}

- (void)showDictionaryEntry
{
  glossaryPresenting = [(THGlossaryPopoverViewController *)self glossaryPresenting];
  if (glossaryPresenting)
  {
    v3 = glossaryPresenting;
    if (objc_opt_respondsToSelector())
    {
      selfCopy = self;
      [(THGlossaryPresenting *)v3 replaceGlossaryPopoverWithDictionaryForTerm:[(THGlossaryPopoverViewController *)self term]];
    }
  }
}

- (void)p_cleanup
{
  [(THGlossaryEntryLayout *)[(THGlossaryPopoverViewController *)self glossaryEntryLayout] setLayoutStyleProvider:0];
  [(UIButton *)[(THGlossaryPopoverViewController *)self textBubble] removeFromSuperview];
  [(UIScrollView *)[(THGlossaryPopoverViewController *)self definition] setDelegate:0];
  [(THGlossaryInteractiveCanvasController *)[(THGlossaryPopoverViewController *)self icc] setDelegate:0];
  [(THGlossaryInteractiveCanvasController *)[(THGlossaryPopoverViewController *)self icc] teardown];
  [(THGlossaryiOSCanvasViewController *)[(THGlossaryPopoverViewController *)self cvc] teardown];
  [(THGlossaryPopoverViewController *)self setGlossaryController:0];
  [(THGlossaryPopoverViewController *)self setGlossaryEntryLayout:0];
  [(THGlossaryPopoverViewController *)self setTextBubble:0];
  [(THGlossaryPopoverViewController *)self setIcc:0];
  [(THGlossaryPopoverViewController *)self setCvc:0];
  [(THGlossaryPopoverViewController *)self setNotFoundLabel:0];
  [(THGlossaryPopoverViewController *)self setTerm:0];
  [(THGlossaryPopoverViewController *)self setDefinition:0];
  [(THGlossaryPopoverViewController *)self setContainer:0];
  [(THGlossaryPopoverViewController *)self setGlossaryRootView:0];

  [(THGlossaryPopoverViewController *)self setBottomButtons:0];
}

- (void)p_updateColors
{
  themePage = [(THGlossaryPopoverViewController *)self themePage];
  if (themePage)
  {
    v4 = themePage;
    contentTextColor = [themePage contentTextColor];
    v6 = [v4 backgroundColorForTraitEnvironment:self];
  }

  else
  {
    contentTextColor = [UIColor colorWithRed:0.129411765 green:0.22745098 blue:0.411764706 alpha:1.0];
    v6 = [-[THGlossaryPopoverViewController glossaryEntryLayoutBackgroundColor](self "glossaryEntryLayoutBackgroundColor")];
  }

  v7 = v6;
  [(UIView *)[(THGlossaryPopoverViewController *)self glossaryRootView] setBackgroundColor:v6];
  notFoundLabel = [(THGlossaryPopoverViewController *)self notFoundLabel];
  [(UILabel *)notFoundLabel setBackgroundColor:v7];
  [(UILabel *)notFoundLabel setTextColor:contentTextColor];
  [(UIView *)[(THGlossaryPopoverViewController *)self container] setBackgroundColor:v7];
  canvasView = [(THGlossaryInteractiveCanvasController *)[(THGlossaryPopoverViewController *)self icc] canvasView];
  cGColor = [v7 CGColor];
  layer = [canvasView layer];

  [layer setBackgroundColor:cGColor];
}

- (void)scrollViewDidScroll:(id)scroll
{
  v4 = [(THGlossaryPopoverViewController *)self icc];

  [(THInteractiveCanvasController *)v4 scrollViewDidScroll:scroll];
}

- (CGRect)glossaryEntryLayoutViewFrame
{
  view = [(THGlossaryPopoverViewController *)self view];

  [view frame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGSize)glossaryEntryLayoutContentSize
{
  [(THGlossaryPopoverViewController *)self glossaryEntryLayoutViewFrame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (double)glossaryEntryLayoutValueForDistance:(int)distance
{
  result = 0.0;
  if (distance <= 2)
  {
    return dbl_34A4F0[distance];
  }

  return result;
}

- (id)glossaryEntryLayoutBackgroundColor
{
  v2 = [-[THGlossaryPopoverViewController theme](self "theme")];
  if (!v2)
  {
    v2 = +[UIColor whiteColor];
  }

  return [TSUColor colorWithUIColor:v2];
}

- (id)glossaryEntryLayoutForegroundColor
{
  v2 = [-[THGlossaryPopoverViewController theme](self "theme")];
  if (!v2)
  {
    v2 = +[UIColor blackColor];
  }

  return [TSUColor colorWithUIColor:v2];
}

@end
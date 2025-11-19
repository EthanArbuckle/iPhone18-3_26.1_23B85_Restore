@interface THGlossaryPopoverViewController
- (CGRect)glossaryEntryLayoutViewFrame;
- (CGSize)glossaryEntryLayoutContentSize;
- (THGlossaryPopoverViewController)initWithTerm:(id)a3 glossaryController:(id)a4;
- (TSKDocumentRoot)documentRoot;
- (double)glossaryEntryLayoutValueForDistance:(int)a3;
- (id)glossaryEntryLayoutBackgroundColor;
- (id)glossaryEntryLayoutForegroundColor;
- (id)p_glossaryEntryForTerm:(id)a3;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)dealloc;
- (void)loadView;
- (void)p_cleanup;
- (void)p_insetScrollerContentEdges;
- (void)p_updateColors;
- (void)p_updateGlossaryDefinitionSynchronous:(BOOL)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)setTheme:(id)a3;
- (void)showDictionaryEntry;
- (void)showGlossaryIndex;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation THGlossaryPopoverViewController

- (THGlossaryPopoverViewController)initWithTerm:(id)a3 glossaryController:(id)a4
{
  v11.receiver = self;
  v11.super_class = THGlossaryPopoverViewController;
  v6 = [(THGlossaryPopoverViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    [(THGlossaryPopoverViewController *)v6 setTerm:a3];
    [(THGlossaryPopoverViewController *)v7 setGlossaryController:a4];
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

- (id)p_glossaryEntryForTerm:(id)a3
{
  v4 = [(THDocumentRoot *)[(THGlossaryController *)[(THGlossaryPopoverViewController *)self glossaryController] documentRoot] glossary];
  if ([(THModelGlossary *)v4 entryCount]< 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = [(THModelGlossary *)v4 entryAtIndex:v5];
    if (![a3 compare:objc_msgSend(v6 options:{"term"), 1}])
    {
      break;
    }

    if (++v5 >= [(THModelGlossary *)v4 entryCount])
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
  v3 = self;
  v4 = [(THGlossaryPopoverViewController *)self bookViewController];
  [(THGlossaryPopoverViewController *)v3 dismissViewControllerAnimated:0 completion:v2];
}

- (TSKDocumentRoot)documentRoot
{
  v2 = [(THGlossaryPopoverViewController *)self glossaryController];

  return [(THGlossaryController *)v2 documentRoot];
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
  v13 = [(THGlossaryInteractiveCanvasController *)[(THGlossaryPopoverViewController *)self icc] canvasView];
  [v12 addSubview:v13];
  [v13 setFrame:{0.0, 22.0, v6, v8}];
  [v13 setAutoresizingMask:0];
  [(THGlossaryPopoverViewController *)self setView:v3];

  [(THGlossaryPopoverViewController *)self setPreferredContentSize:320.0, 366.0];

  [(THGlossaryPopoverViewController *)self p_updateColors];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = THGlossaryPopoverViewController;
  [(THGlossaryPopoverViewController *)&v5 viewWillAppear:?];
  [(THGlossaryiOSCanvasViewController *)[(THGlossaryPopoverViewController *)self cvc] viewWillAppear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = THGlossaryPopoverViewController;
  [(THGlossaryPopoverViewController *)&v5 viewDidAppear:?];
  [(THGlossaryiOSCanvasViewController *)[(THGlossaryPopoverViewController *)self cvc] viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = THGlossaryPopoverViewController;
  [(THGlossaryPopoverViewController *)&v5 viewWillDisappear:?];
  [(THGlossaryiOSCanvasViewController *)[(THGlossaryPopoverViewController *)self cvc] viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = THGlossaryPopoverViewController;
  [(THGlossaryPopoverViewController *)&v5 viewDidDisappear:?];
  [(THGlossaryiOSCanvasViewController *)[(THGlossaryPopoverViewController *)self cvc] viewDidDisappear:v3];
}

- (void)dealloc
{
  [(THGlossaryPopoverViewController *)self p_cleanup];
  v3.receiver = self;
  v3.super_class = THGlossaryPopoverViewController;
  [(THGlossaryPopoverViewController *)&v3 dealloc];
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  [(THGlossaryPopoverViewController *)self p_updateColors:a3];

  [(THGlossaryPopoverViewController *)self p_updateGlossaryDefinitionSynchronous:1];
}

- (void)setTheme:(id)a3
{
  v5.receiver = self;
  v5.super_class = THGlossaryPopoverViewController;
  [(THGlossaryPopoverViewController *)&v5 setTheme:?];
  [(THGlossaryiOSCanvasViewController *)[(THGlossaryPopoverViewController *)self cvc] setTheme:a3];
  [(THGlossaryPopoverViewController *)self p_updateColors];
}

- (void)p_insetScrollerContentEdges
{
  v3 = [(THGlossaryPopoverViewController *)self navigationController];
  v4 = [objc_msgSend(objc_msgSend(-[THGlossaryPopoverViewController view](self "view")];
  v5 = 0.0;
  v6 = 0.0;
  if (([(THGlossaryPopoverViewController *)self _isInPopoverPresentation]& 1) == 0)
  {
    [v4 statusBarHeight];
    v6 = v7;
  }

  [objc_msgSend(v3 "navigationBar")];
  v9 = v8;
  v10 = [v3 isNavigationBarHidden];
  if (([v3 isToolbarHidden] & 1) == 0)
  {
    [objc_msgSend(v3 "toolbar")];
    v5 = v11 + 0.0;
  }

  if (!v10)
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

  v17 = [(THGlossaryPopoverViewController *)self definition];

  [(UIScrollView *)v17 setContentOffset:v13, v16];
}

- (void)p_updateGlossaryDefinitionSynchronous:(BOOL)a3
{
  v3 = a3;
  v5 = [(THGlossaryPopoverViewController *)self term];
  if ([(NSString *)v5 length]&& (v6 = [(THGlossaryPopoverViewController *)self p_glossaryEntryForTerm:v5]) != 0)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_BF998;
    v8[3] = &unk_45D020;
    v8[4] = self;
    if (v3)
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
    v7 = [(THGlossaryPopoverViewController *)self definition];

    [(UIScrollView *)v7 setHidden:1];
  }
}

- (void)showDictionaryEntry
{
  v2 = [(THGlossaryPopoverViewController *)self glossaryPresenting];
  if (v2)
  {
    v3 = v2;
    if (objc_opt_respondsToSelector())
    {
      v4 = self;
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
  v3 = [(THGlossaryPopoverViewController *)self themePage];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 contentTextColor];
    v6 = [v4 backgroundColorForTraitEnvironment:self];
  }

  else
  {
    v5 = [UIColor colorWithRed:0.129411765 green:0.22745098 blue:0.411764706 alpha:1.0];
    v6 = [-[THGlossaryPopoverViewController glossaryEntryLayoutBackgroundColor](self "glossaryEntryLayoutBackgroundColor")];
  }

  v7 = v6;
  [(UIView *)[(THGlossaryPopoverViewController *)self glossaryRootView] setBackgroundColor:v6];
  v8 = [(THGlossaryPopoverViewController *)self notFoundLabel];
  [(UILabel *)v8 setBackgroundColor:v7];
  [(UILabel *)v8 setTextColor:v5];
  [(UIView *)[(THGlossaryPopoverViewController *)self container] setBackgroundColor:v7];
  v9 = [(THGlossaryInteractiveCanvasController *)[(THGlossaryPopoverViewController *)self icc] canvasView];
  v10 = [v7 CGColor];
  v11 = [v9 layer];

  [v11 setBackgroundColor:v10];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = [(THGlossaryPopoverViewController *)self icc];

  [(THInteractiveCanvasController *)v4 scrollViewDidScroll:a3];
}

- (CGRect)glossaryEntryLayoutViewFrame
{
  v2 = [(THGlossaryPopoverViewController *)self view];

  [v2 frame];
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

- (double)glossaryEntryLayoutValueForDistance:(int)a3
{
  result = 0.0;
  if (a3 <= 2)
  {
    return dbl_34A4F0[a3];
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
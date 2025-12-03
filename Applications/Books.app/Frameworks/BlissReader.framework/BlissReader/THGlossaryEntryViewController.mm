@interface THGlossaryEntryViewController
- (BOOL)allowCopy;
- (THDocumentRoot)documentRoot;
- (THGlossaryEntryViewController)initWithDocumentRoot:(id)root bookNavigator:(id)navigator;
- (void)_stylizeForTheme;
- (void)dealloc;
- (void)loadEntry:(id)entry withLayoutStyleProvider:(id)provider onComplete:(id)complete;
- (void)loadView;
- (void)p_didLayoutOnComplete:(id)complete;
- (void)p_layoutOnComplete:(id)complete;
- (void)p_setupCanvasForInfo:(id)info withLayoutStyleProvider:(id)provider onComplete:(id)complete;
- (void)p_unloadEntry;
- (void)scrollToLocation:(int)location animated:(BOOL)animated;
- (void)setTheme:(id)theme;
- (void)teardown;
- (void)unloadEntryOnComplete:(id)complete;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation THGlossaryEntryViewController

- (THGlossaryEntryViewController)initWithDocumentRoot:(id)root bookNavigator:(id)navigator
{
  v12.receiver = self;
  v12.super_class = THGlossaryEntryViewController;
  v6 = [(THGlossaryEntryViewController *)&v12 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    [(THGlossaryEntryViewController *)v6 set_documentRoot:root];
    v7->_bookNavigator = navigator;
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    THCanvasCreateWithClass(v7, &v7->mICC, &v7->mCVC, v8, v9);
    [(TSDInteractiveCanvasController *)[(THGlossaryEntryViewController *)v7 interactiveCanvasController] disableNormalGestures];
    interactiveCanvasController = [(THGlossaryEntryViewController *)v7 interactiveCanvasController];
    [(TSDInteractiveCanvasController *)interactiveCanvasController enableGestureKinds:[NSArray arrayWithObject:TSWPImmediateSingleTap]];
    [objc_msgSend(-[TSDInteractiveCanvasController layerHost](-[THGlossaryEntryViewController interactiveCanvasController](v7 "interactiveCanvasController")];
    [(THGlossaryEntryViewController *)v7 setExtendedLayoutIncludesOpaqueBars:1];
    [(THGlossaryEntryViewController *)v7 setEdgesForExtendedLayout:15];
    [(THGlossaryEntryViewController *)v7 registerForTraitChanges:+[UITraitCollection withAction:"bc_allAPITraits"], "_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v7;
}

- (void)teardown
{
  self->_bookNavigator = 0;
  [(THGlossaryInteractiveCanvasController *)self->mICC teardown];
  mCVC = self->mCVC;

  [(THGlossaryiOSCanvasViewController *)mCVC teardown];
}

- (void)dealloc
{
  if (self->mEntry)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THGlossaryEntryViewController *)self unloadEntryOnComplete:0];

  self->mICC = 0;
  self->mCVC = 0;
  [(TSKScrollView *)self->mScrollView setDelegate:0];

  self->mScrollView = 0;
  mUnloadCallback = self->mUnloadCallback;
  if (mUnloadCallback)
  {
    _Block_release(mUnloadCallback);
    self->mUnloadCallback = 0;
  }

  [(THGlossaryEntryViewController *)self set_documentRoot:0];

  self->_theme = 0;
  v4.receiver = self;
  v4.super_class = THGlossaryEntryViewController;
  [(THGlossaryEntryViewController *)&v4 dealloc];
}

- (THDocumentRoot)documentRoot
{
  if ([(THGlossaryEntryViewController *)self _documentRoot])
  {

    return [(THGlossaryEntryViewController *)self _documentRoot];
  }

  else
  {
    mEntry = self->mEntry;

    return [(THModelGlossaryEntry *)mEntry documentRoot];
  }
}

- (void)loadView
{
  v10.receiver = self;
  v10.super_class = THGlossaryEntryViewController;
  [(THGlossaryEntryViewController *)&v10 loadView];
  [-[THGlossaryEntryViewController view](self "view")];
  v4 = v3;
  v6 = v5;
  y = CGPointZero.y;
  v8 = [[TSKScrollView alloc] initWithFrame:{CGPointZero.x, y, v3, v5}];
  self->mScrollView = v8;
  [(TSKScrollView *)v8 setAutoresizingMask:18];
  [(TSKScrollView *)self->mScrollView setBackgroundColor:+[UIColor bc_booksBackground]];
  [(TSKScrollView *)self->mScrollView setDecelerationRate:UIScrollViewDecelerationRateFast];
  [-[THGlossaryEntryViewController view](self "view")];
  canvasView = [(THGlossaryInteractiveCanvasController *)self->mICC canvasView];
  [canvasView setAutoresizingMask:0];
  [canvasView setBackgroundColor:{+[UIColor bc_booksBackground](UIColor, "bc_booksBackground")}];
  [(TSKScrollView *)self->mScrollView addSubview:canvasView];
  [canvasView setFrame:{0.0, y, v4, v6}];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = THGlossaryEntryViewController;
  [(THGlossaryEntryViewController *)&v5 viewWillAppear:?];
  [(THGlossaryiOSCanvasViewController *)self->mCVC viewWillAppear:appearCopy];
  [(THGlossaryEntryViewController *)self _stylizeForTheme];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = THGlossaryEntryViewController;
  [(THGlossaryEntryViewController *)&v5 viewDidAppear:?];
  [(THGlossaryiOSCanvasViewController *)self->mCVC viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = THGlossaryEntryViewController;
  [(THGlossaryEntryViewController *)&v5 viewWillDisappear:?];
  [(THGlossaryiOSCanvasViewController *)self->mCVC viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = THGlossaryEntryViewController;
  [(THGlossaryEntryViewController *)&v5 viewDidDisappear:?];
  [(THGlossaryiOSCanvasViewController *)self->mCVC viewDidDisappear:disappearCopy];
}

- (void)setTheme:(id)theme
{
  if (([(IMTheme *)self->_theme isEqual:?]& 1) == 0)
  {
    themeCopy = theme;

    self->_theme = theme;

    [(THGlossaryEntryViewController *)self _stylizeForTheme];
  }
}

- (void)_stylizeForTheme
{
  v3 = [(IMTheme *)[(THGlossaryEntryViewController *)self theme] backgroundColorForTraitEnvironment:self];
  if (!v3)
  {
    v3 = +[UIColor bc_booksBackground];
  }

  if ([(THGlossaryEntryViewController *)self viewIfLoaded])
  {
    [(TSKScrollView *)[(THGlossaryEntryViewController *)self scrollView] setBackgroundColor:v3];
    [-[THGlossaryEntryViewController view](self "view")];
  }

  canvasView = [(THGlossaryInteractiveCanvasController *)self->mICC canvasView];

  [canvasView setBackgroundColor:v3];
}

- (void)p_didLayoutOnComplete:(id)complete
{
  if (self->mLoadCancelled)
  {
    [(THGlossaryEntryViewController *)self p_unloadEntry];
  }

  else
  {
    v5 = [(THGlossaryInteractiveCanvasController *)self->mICC layoutForInfo:self->mInfo];
    [v5 frame];
    [objc_msgSend(-[THGlossaryInteractiveCanvasController canvasView](self->mICC "canvasView")];
    [v5 frame];
    [(TSKScrollView *)self->mScrollView setContentSize:v8, v9];
    [(TSKScrollView *)self->mScrollView setDelegate:self->mICC];
  }

  [(THGlossaryEntryViewController *)self setLoading:0];
  v10 = *(complete + 2);

  v10(complete, self);
}

- (void)p_layoutOnComplete:(id)complete
{
  if (!self->mLoadCancelled)
  {
    accessController = [(THDocumentRoot *)[(THGlossaryController *)[(THGlossaryEntryViewController *)self glossaryController] documentRoot] accessController];
    v6 = accessController;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_C6B70;
    v8[3] = &unk_45AE00;
    v8[4] = self;
    [accessController performRead:v8];
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_C6B84;
  v7[3] = &unk_45AEA8;
  v7[4] = self;
  v7[5] = complete;
  [+[NSOperationQueue mainQueue](NSOperationQueue addOperation:"addOperation:", [NSBlockOperation blockOperationWithBlock:v7]];
}

- (void)p_setupCanvasForInfo:(id)info withLayoutStyleProvider:(id)provider onComplete:(id)complete
{
  if (self->mLoadCancelled)
  {
    [(THGlossaryEntryViewController *)self p_unloadEntry:info];
    [(THGlossaryEntryViewController *)self setLoading:0];
    v7 = *(complete + 2);

    v7(complete, self);
  }

  else
  {
    mEntry = self->mEntry;
    if (mEntry != [info entry])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    [(TSKScrollView *)self->mScrollView setContentOffset:CGPointZero.x, CGPointZero.y];
    self->mInfo = info;
    [(THGlossaryInteractiveCanvasController *)self->mICC setInfosToDisplay:[NSArray arrayWithObject:info]];
    [-[THGlossaryEntryViewController view](self "view")];
    v12 = v11;
    [provider glossaryEntryLayoutContentSize];
    [(THGlossaryInteractiveCanvasController *)self->mICC setViewScale:v12 / v13];
    [(THGlossaryInteractiveCanvasController *)self->mICC viewScale];
    if (v14 != 1.0)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    [(THGlossaryInteractiveCanvasController *)self->mICC recreateAllLayoutsAndReps];
    objc_opt_class();
    [(THGlossaryInteractiveCanvasController *)self->mICC layoutForInfo:self->mInfo];
    [TSUDynamicCast() setLayoutStyleProvider:provider];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_C6E40;
    v15[3] = &unk_45AEA8;
    v15[4] = self;
    v15[5] = complete;
    [+[NSOperationQueue mainQueue](NSOperationQueue addOperation:"addOperation:", [NSBlockOperation blockOperationWithBlock:v15]];
  }
}

- (void)loadEntry:(id)entry withLayoutStyleProvider:(id)provider onComplete:(id)complete
{
  mEntry = self->mEntry;
  if (mEntry == entry)
  {
    v11 = *(complete + 2);

    v11(complete, self);
  }

  else if (mEntry)
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"[THGlossaryEntryViewController loadEntry:withLayoutStyleProvider:onComplete:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THGlossaryEntryViewController.m"];

    [v8 handleFailureInFunction:v9 file:v10 lineNumber:365 description:@"Must unload a glossary entry before re-loading."];
  }

  else
  {
    [(THGlossaryEntryViewController *)self setLoading:1];
    self->mEntry = entry;
    [(THGlossaryInteractiveCanvasController *)self->mICC setDelegate:self];
    v14 = _Block_copy(complete);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_C6FE4;
    v15[3] = &unk_45D0D0;
    v15[4] = self;
    v15[5] = provider;
    v15[6] = v14;
    [entry loadInfoOnComplete:v15];
  }
}

- (void)p_unloadEntry
{
  self->mInfo = 0;
  if (self->mEntry)
  {
    [(THGlossaryInteractiveCanvasController *)self->mICC setInfosToDisplay:+[NSArray array]];
    self->mEntry = 0;
  }

  if ([(THGlossaryEntryViewController *)self unloadCallback])
  {
    unloadCallback = [(THGlossaryEntryViewController *)self unloadCallback];
    unloadCallback[2](unloadCallback, self);
    _Block_release(self->mUnloadCallback);
    self->mUnloadCallback = 0;
  }

  self->mLoadCancelled = 0;
}

- (void)unloadEntryOnComplete:(id)complete
{
  mUnloadCallback = self->mUnloadCallback;
  if (mUnloadCallback)
  {
    _Block_release(mUnloadCallback);
  }

  self->mUnloadCallback = _Block_copy(complete);
  if ([(THGlossaryEntryViewController *)self loading])
  {
    self->mLoadCancelled = 1;
  }

  else
  {

    [(THGlossaryEntryViewController *)self p_unloadEntry];
  }
}

- (void)scrollToLocation:(int)location animated:(BOOL)animated
{
  animatedCopy = animated;
  if (location != 2)
  {
    if (location != 1)
    {
      return;
    }

    p_mScrollView = &self->mScrollView;
    [(TSKScrollView *)self->mScrollView contentOffset];
    if (v7 == 0.0)
    {
      return;
    }

    v8 = v6;
    v9 = 0.0;
    goto LABEL_8;
  }

  p_mScrollView = &self->mScrollView;
  [(TSKScrollView *)self->mScrollView contentOffset];
  v8 = v10;
  v12 = v11;
  [(TSKScrollView *)*p_mScrollView contentSize];
  v14 = v13;
  [(TSKScrollView *)*p_mScrollView bounds];
  v9 = 0.0;
  if (v14 - v15 >= 0.0)
  {
    v9 = v14 - v15;
  }

  if (v12 != v9)
  {
LABEL_8:
    v16 = *p_mScrollView;

    [(TSKScrollView *)v16 setContentOffset:animatedCopy animated:v8, v9];
  }
}

- (BOOL)allowCopy
{
  bookDescription = [(THDocumentRoot *)[(THGlossaryController *)[(THGlossaryEntryViewController *)self glossaryController] documentRoot] bookDescription];

  return [(THBookDescription *)bookDescription allowCopy];
}

@end
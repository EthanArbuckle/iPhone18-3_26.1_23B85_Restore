@interface THGlossaryEntryViewController
- (BOOL)allowCopy;
- (THDocumentRoot)documentRoot;
- (THGlossaryEntryViewController)initWithDocumentRoot:(id)a3 bookNavigator:(id)a4;
- (void)_stylizeForTheme;
- (void)dealloc;
- (void)loadEntry:(id)a3 withLayoutStyleProvider:(id)a4 onComplete:(id)a5;
- (void)loadView;
- (void)p_didLayoutOnComplete:(id)a3;
- (void)p_layoutOnComplete:(id)a3;
- (void)p_setupCanvasForInfo:(id)a3 withLayoutStyleProvider:(id)a4 onComplete:(id)a5;
- (void)p_unloadEntry;
- (void)scrollToLocation:(int)a3 animated:(BOOL)a4;
- (void)setTheme:(id)a3;
- (void)teardown;
- (void)unloadEntryOnComplete:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation THGlossaryEntryViewController

- (THGlossaryEntryViewController)initWithDocumentRoot:(id)a3 bookNavigator:(id)a4
{
  v12.receiver = self;
  v12.super_class = THGlossaryEntryViewController;
  v6 = [(THGlossaryEntryViewController *)&v12 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    [(THGlossaryEntryViewController *)v6 set_documentRoot:a3];
    v7->_bookNavigator = a4;
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    THCanvasCreateWithClass(v7, &v7->mICC, &v7->mCVC, v8, v9);
    [(TSDInteractiveCanvasController *)[(THGlossaryEntryViewController *)v7 interactiveCanvasController] disableNormalGestures];
    v10 = [(THGlossaryEntryViewController *)v7 interactiveCanvasController];
    [(TSDInteractiveCanvasController *)v10 enableGestureKinds:[NSArray arrayWithObject:TSWPImmediateSingleTap]];
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
  v9 = [(THGlossaryInteractiveCanvasController *)self->mICC canvasView];
  [v9 setAutoresizingMask:0];
  [v9 setBackgroundColor:{+[UIColor bc_booksBackground](UIColor, "bc_booksBackground")}];
  [(TSKScrollView *)self->mScrollView addSubview:v9];
  [v9 setFrame:{0.0, y, v4, v6}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = THGlossaryEntryViewController;
  [(THGlossaryEntryViewController *)&v5 viewWillAppear:?];
  [(THGlossaryiOSCanvasViewController *)self->mCVC viewWillAppear:v3];
  [(THGlossaryEntryViewController *)self _stylizeForTheme];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = THGlossaryEntryViewController;
  [(THGlossaryEntryViewController *)&v5 viewDidAppear:?];
  [(THGlossaryiOSCanvasViewController *)self->mCVC viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = THGlossaryEntryViewController;
  [(THGlossaryEntryViewController *)&v5 viewWillDisappear:?];
  [(THGlossaryiOSCanvasViewController *)self->mCVC viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = THGlossaryEntryViewController;
  [(THGlossaryEntryViewController *)&v5 viewDidDisappear:?];
  [(THGlossaryiOSCanvasViewController *)self->mCVC viewDidDisappear:v3];
}

- (void)setTheme:(id)a3
{
  if (([(IMTheme *)self->_theme isEqual:?]& 1) == 0)
  {
    v5 = a3;

    self->_theme = a3;

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

  v4 = [(THGlossaryInteractiveCanvasController *)self->mICC canvasView];

  [v4 setBackgroundColor:v3];
}

- (void)p_didLayoutOnComplete:(id)a3
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
  v10 = *(a3 + 2);

  v10(a3, self);
}

- (void)p_layoutOnComplete:(id)a3
{
  if (!self->mLoadCancelled)
  {
    v5 = [(THDocumentRoot *)[(THGlossaryController *)[(THGlossaryEntryViewController *)self glossaryController] documentRoot] accessController];
    v6 = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_C6B70;
    v8[3] = &unk_45AE00;
    v8[4] = self;
    [v5 performRead:v8];
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_C6B84;
  v7[3] = &unk_45AEA8;
  v7[4] = self;
  v7[5] = a3;
  [+[NSOperationQueue mainQueue](NSOperationQueue addOperation:"addOperation:", [NSBlockOperation blockOperationWithBlock:v7]];
}

- (void)p_setupCanvasForInfo:(id)a3 withLayoutStyleProvider:(id)a4 onComplete:(id)a5
{
  if (self->mLoadCancelled)
  {
    [(THGlossaryEntryViewController *)self p_unloadEntry:a3];
    [(THGlossaryEntryViewController *)self setLoading:0];
    v7 = *(a5 + 2);

    v7(a5, self);
  }

  else
  {
    mEntry = self->mEntry;
    if (mEntry != [a3 entry])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    [(TSKScrollView *)self->mScrollView setContentOffset:CGPointZero.x, CGPointZero.y];
    self->mInfo = a3;
    [(THGlossaryInteractiveCanvasController *)self->mICC setInfosToDisplay:[NSArray arrayWithObject:a3]];
    [-[THGlossaryEntryViewController view](self "view")];
    v12 = v11;
    [a4 glossaryEntryLayoutContentSize];
    [(THGlossaryInteractiveCanvasController *)self->mICC setViewScale:v12 / v13];
    [(THGlossaryInteractiveCanvasController *)self->mICC viewScale];
    if (v14 != 1.0)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    [(THGlossaryInteractiveCanvasController *)self->mICC recreateAllLayoutsAndReps];
    objc_opt_class();
    [(THGlossaryInteractiveCanvasController *)self->mICC layoutForInfo:self->mInfo];
    [TSUDynamicCast() setLayoutStyleProvider:a4];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_C6E40;
    v15[3] = &unk_45AEA8;
    v15[4] = self;
    v15[5] = a5;
    [+[NSOperationQueue mainQueue](NSOperationQueue addOperation:"addOperation:", [NSBlockOperation blockOperationWithBlock:v15]];
  }
}

- (void)loadEntry:(id)a3 withLayoutStyleProvider:(id)a4 onComplete:(id)a5
{
  mEntry = self->mEntry;
  if (mEntry == a3)
  {
    v11 = *(a5 + 2);

    v11(a5, self);
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
    self->mEntry = a3;
    [(THGlossaryInteractiveCanvasController *)self->mICC setDelegate:self];
    v14 = _Block_copy(a5);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_C6FE4;
    v15[3] = &unk_45D0D0;
    v15[4] = self;
    v15[5] = a4;
    v15[6] = v14;
    [a3 loadInfoOnComplete:v15];
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
    v3 = [(THGlossaryEntryViewController *)self unloadCallback];
    v3[2](v3, self);
    _Block_release(self->mUnloadCallback);
    self->mUnloadCallback = 0;
  }

  self->mLoadCancelled = 0;
}

- (void)unloadEntryOnComplete:(id)a3
{
  mUnloadCallback = self->mUnloadCallback;
  if (mUnloadCallback)
  {
    _Block_release(mUnloadCallback);
  }

  self->mUnloadCallback = _Block_copy(a3);
  if ([(THGlossaryEntryViewController *)self loading])
  {
    self->mLoadCancelled = 1;
  }

  else
  {

    [(THGlossaryEntryViewController *)self p_unloadEntry];
  }
}

- (void)scrollToLocation:(int)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (a3 != 2)
  {
    if (a3 != 1)
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

    [(TSKScrollView *)v16 setContentOffset:v4 animated:v8, v9];
  }
}

- (BOOL)allowCopy
{
  v2 = [(THDocumentRoot *)[(THGlossaryController *)[(THGlossaryEntryViewController *)self glossaryController] documentRoot] bookDescription];

  return [(THBookDescription *)v2 allowCopy];
}

@end
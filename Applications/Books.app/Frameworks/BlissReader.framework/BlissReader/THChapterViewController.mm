@interface THChapterViewController
- (BOOL)p_updateVisibleInfos;
- (BOOL)widgetHostingAllowInteractionOnPageForRep:(id)a3;
- (CGRect)visibleScaledBoundsForClippingRepsOnCanvas:(id)a3;
- (CGSize)pageSizeForPagePositionController:(id)a3;
- (CGSize)widgetHostExpandedSize;
- (THChapterViewController)initWithDelegate:(id)a3 pageControlHeight:(double)a4 presentationType:(id)a5;
- (id)chapterViewTable:(id)a3 entryForIndex:(unint64_t)a4;
- (id)documentRootForSectionController:(id)a3;
- (id)reloadViewsAndShowThumbnail:(BOOL)a3;
- (id)transitionContentView;
- (unint64_t)chapterViewTableNumberOfEntries:(id)a3;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)chapterViewTable:(id)a3 selectedEntryWithIndex:(unint64_t)a4;
- (void)chapterViewTableDoneButtonPressed:(id)a3;
- (void)contentSizeCategoryDidChange;
- (void)dealloc;
- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)a3;
- (void)p_hideFallbackImageView;
- (void)p_releaseOutlets;
- (void)p_teardownCanvas;
- (void)p_updateVisibleInfosOrRevealCanvas;
- (void)presentRepExpanded:(id)a3;
- (void)sectionControllerInfosDidChange:(id)a3;
- (void)sectionControllerNeedsLayout:(id)a3;
- (void)showCorruptDocumentAlertForSectionController:(id)a3;
- (void)updateCanvasViewWithSize:(CGSize)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation THChapterViewController

- (THChapterViewController)initWithDelegate:(id)a3 pageControlHeight:(double)a4 presentationType:(id)a5
{
  v9 = THBundle();
  v16.receiver = self;
  v16.super_class = THChapterViewController;
  v10 = [(THChapterViewController *)&v16 initWithNibName:@"THChapterViewController" bundle:v9];
  v11 = v10;
  if (v10)
  {
    v10->mDelegate = a3;
    v10->mChapterIndex = 0x7FFFFFFFFFFFFFFFLL;
    v10->_pageControlHeight = a4;
    p_mPageSize = &v10->mPageSize;
    [a5 pageSize];
    *&p_mPageSize->width = v13;
    v11->mPageSize.height = v14;
    [(THChapterViewController *)v11 setSectionController:[[THSectionController alloc] initWithDelegate:v11 pagePositionController:[THPagePositionController presentationType:"paginatedPositionerWithDelegate:" paginatedPositionerWithDelegate:v11], a5]];
    [(THChapterViewController *)v11 registerForTraitChanges:+[UITraitCollection withAction:"bc_allAPITraits"], "_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v11;
}

- (void)dealloc
{
  [(THChapterViewController *)self p_releaseOutlets];

  v3.receiver = self;
  v3.super_class = THChapterViewController;
  [(THChapterViewController *)&v3 dealloc];
}

- (void)p_teardownCanvas
{
  [(THInteractiveCanvasController *)self->mInteractiveCanvasController teardown];
  [(THiOSCanvasViewController *)self->mCanvasViewController teardown];
  [(THSectionController *)self->mSectionController teardown];
  self->_torndown = 1;
}

- (void)p_releaseOutlets
{
  if (!self->_torndown)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if (!self->_torndown)
    {
      [(THChapterViewController *)self p_teardownCanvas];
    }
  }

  self->mInteractiveCanvasController = 0;
  self->mCanvasViewController = 0;

  self->mFallbackImageView = 0;
  self->_traitsCache = 0;
}

- (void)viewDidLayoutSubviews
{
  [-[THChapterViewController view](self "view")];

  [(THChapterViewController *)self updateCanvasViewWithSize:v3, v4];
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [(THChapterViewController *)self traitsCache:a3];
  v6 = [(THChapterViewController *)self traitCollection];

  [(THiOSTraitsCache *)v5 updateTraitsWithCollection:v6];
}

- (void)updateCanvasViewWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = 0.0;
  if ([(THChapterViewControllerDelegate *)self->mDelegate paginatedTOCShowsStatusBar])
  {
    [objc_msgSend(objc_msgSend(objc_msgSend(-[THChapterViewController view](self "view")];
    v6 = v7;
  }

  [(THSectionController *)self->mSectionController pageSize];
  v9 = v8;
  v11 = v10 - self->_pageControlHeight;
  v12 = height - v6;
  TSDScaleSizeWithinSize();
  TSDCenterOfRect();
  TSDRectWithCenterAndSize();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [-[THiOSCanvasViewController view](-[THChapterViewController canvasViewController](self "canvasViewController")];
  [(THInteractiveCanvasController *)[(THChapterViewController *)self interactiveCanvasController] setViewScale:THScaleNeededToFitSizeInSize(v9, v11, width, v12)];
  [(UIImageView *)self->mFallbackImageView setFrame:v14, v16, v18, v20];
  v21 = [(UIImageView *)self->mFallbackImageView image];
  if (v21)
  {
    v22 = v21;
    [(UIImage *)v21 size];
    v24 = v23;
    [(UIImage *)v22 size];
    v26 = v25;
    [(UIImageView *)self->mFallbackImageView frame];
    v28 = v27 / v24;
    [(UIImageView *)self->mFallbackImageView frame];
    if (v28 > v29 / v26)
    {
      [(UIImageView *)self->mFallbackImageView frame];
      v31 = -(v30 - v26 * v28) * 0.5;
      mFallbackImageView = self->mFallbackImageView;
      [(UIImageView *)mFallbackImageView frameY];
      v34 = v33 + v31;

      [(UIImageView *)mFallbackImageView setFrameY:v34];
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = THChapterViewController;
  [(THChapterViewController *)&v4 viewWillAppear:a3];
  [(THiOSTraitsCache *)[(THChapterViewController *)self traitsCache] updateTraitsWithCollection:[(THChapterViewController *)self traitCollection]];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"contentSizeCategoryDidChange" object:UIContentSizeCategoryDidChangeNotification, 0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = THChapterViewController;
  [(THChapterViewController *)&v4 viewDidDisappear:a3];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:UIContentSizeCategoryDidChangeNotification, 0];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = THChapterViewController;
  [(THChapterViewController *)&v10 viewDidLoad];
  v3 = objc_opt_new();
  [(THChapterViewController *)self setTraitsCache:v3];

  self->_torndown = 0;
  [-[THChapterViewController view](self "view")];
  [-[THChapterViewController view](self "view")];
  [(THChapterViewControllerDelegate *)self->mDelegate frameForChapterViewController:self];
  [-[THChapterViewController view](self "view")];
  [(THInteractiveCanvasController *)[(THChapterViewController *)self interactiveCanvasController] setDelegate:self];
  [(THiOSCanvasViewController *)[(THChapterViewController *)self canvasViewController] setTakeFirstResponderOnTap:0];
  v8 = [UIImageView alloc];
  [-[THInteractiveCanvasController canvasView](-[THChapterViewController interactiveCanvasController](self "interactiveCanvasController")];
  v9 = [v8 initWithFrame:?];
  self->mFallbackImageView = v9;
  [(UIImageView *)v9 setHidden:1];
  [-[THChapterViewController view](self "view")];
  [(THChapterViewController *)self reloadViewsAndShowThumbnail:1];
}

- (void)contentSizeCategoryDidChange
{
  v2 = [(THChapterViewController *)self chapterViewTableController];

  [(THChapterViewTableController *)v2 contentSizeCategoryDidChange];
}

- (CGRect)visibleScaledBoundsForClippingRepsOnCanvas:(id)a3
{
  v3 = [(THInteractiveCanvasController *)[(THChapterViewController *)self interactiveCanvasController] canvasView];

  [v3 bounds];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)p_hideFallbackImageView
{
  [(UIImageView *)self->mFallbackImageView setHidden:1];
  mFallbackImageView = self->mFallbackImageView;

  [(UIImageView *)mFallbackImageView setImage:0];
}

- (BOOL)p_updateVisibleInfos
{
  if (-[THChapterViewController tileModel](self, "tileModel") && -[THChapterViewController isViewLoaded](self, "isViewLoaded") && [-[THChapterViewController view](self "view")])
  {
    [-[THChapterViewController view](self "view")];
    [(THChapterViewController *)self updateCanvasViewWithSize:v3, v4];
    [(THSectionController *)[(THChapterViewController *)self sectionController] setCurrentNavigationUnit:[THNavigationUnit navigationUnitWithContext:[(THTOCTileModel *)[(THChapterViewController *)self tileModel] context] andModelNode:[(THTOCTileModel *)[(THChapterViewController *)self tileModel] browserPageNode]]];
    objc_opt_class();
    [(THSectionController *)[(THChapterViewController *)self sectionController] displaySectionInfoForRelativePageIndex:0];
    v5 = TSUDynamicCast();
    objc_opt_class();
    [-[THInteractiveCanvasController infosToDisplay](-[THChapterViewController interactiveCanvasController](self "interactiveCanvasController")];
    v6 = TSUDynamicCast();
    v7 = [objc_msgSend(v5 "pages")];
    if (v7 != [objc_msgSend(v6 "pages")])
    {
      v8 = [NSArray arrayWithObject:v5];
LABEL_8:
      [(THInteractiveCanvasController *)[(THChapterViewController *)self interactiveCanvasController] setInfosToDisplay:v8];
      LOBYTE(v9) = 1;
      return v9;
    }

    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = [-[THInteractiveCanvasController infosToDisplay](-[THChapterViewController interactiveCanvasController](self "interactiveCanvasController")];
    if (v9)
    {
      v8 = +[NSArray array];
      goto LABEL_8;
    }
  }

  return v9;
}

- (void)p_updateVisibleInfosOrRevealCanvas
{
  if (![(THChapterViewController *)self p_updateVisibleInfos])
  {
    [(THInteractiveCanvasController *)[(THChapterViewController *)self interactiveCanvasController] setAllowLayoutAndRenderOnThread:0];
    [(THInteractiveCanvasController *)[(THChapterViewController *)self interactiveCanvasController] setStaticLayoutAndRenderOnThread:0];
    v3 = [objc_msgSend(-[THInteractiveCanvasController canvas](-[THChapterViewController interactiveCanvasController](self "interactiveCanvasController")];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v11 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:"canvasDidLayoutAndRenderOnBackgroundThread"];
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    mTileModel = self->mTileModel;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_ADD94;
    v10[3] = &unk_45AE00;
    v10[4] = self;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_ADDAC;
    v9[3] = &unk_45C678;
    v9[4] = self;
    v9[5] = mTileModel;
    [UIView animateWithDuration:v10 animations:v9 completion:0.15];
  }
}

- (id)reloadViewsAndShowThumbnail:(BOOL)a3
{
  v3 = a3;
  if ([(THChapterViewController *)self isViewLoaded]&& self->mTileModel)
  {
    [-[THChapterViewController view](self "view")];
    v5 = [(THTOCTileModel *)[(THChapterViewController *)self tileModel] browserPageNode];
    if ([(THModelContentNode *)v5 nodeBodyExists])
    {
      [(THModelContentNode *)v5 startLoading];
      if ([(THTOCTileModel *)self->mTileModel tocThumb])
      {
        v6 = !v3;
      }

      else
      {
        v6 = 1;
      }

      if (v6)
      {
        [(THChapterViewController *)self p_hideFallbackImageView];
        [(THInteractiveCanvasController *)[(THChapterViewController *)self interactiveCanvasController] setStaticLayoutAndRenderOnThread:0];
        [(THInteractiveCanvasController *)[(THChapterViewController *)self interactiveCanvasController] setAllowLayoutAndRenderOnThread:0];
        [(THModelContentNode *)v5 waitUntilFinishedLoading];
        [(THChapterViewController *)self p_updateVisibleInfos];
      }

      else
      {
        v8 = [UIImage imageWithCGImage:[TSDBitmapImageProvider temporaryCGImageForImageData:[(THTOCTileModel *)self->mTileModel tocThumb]]];
        [(UIImage *)v8 size];
        v10 = v9;
        [(UIImage *)v8 size];
        v12 = v11;
        [(UIImageView *)self->mFallbackImageView frame];
        v14 = v13 / v10;
        [(UIImageView *)self->mFallbackImageView frame];
        mFallbackImageView = self->mFallbackImageView;
        if (v14 <= v15 / v12)
        {
          [(UIImageView *)mFallbackImageView setContentMode:1];
        }

        else
        {
          [(UIImageView *)mFallbackImageView setContentMode:2];
          [(UIImageView *)self->mFallbackImageView frame];
          v18 = -(v17 - v12 * v14) * 0.5;
          v19 = self->mFallbackImageView;
          [(UIImageView *)v19 frameY];
          [(UIImageView *)v19 setFrameY:v20 + v18];
        }

        [(UIImageView *)self->mFallbackImageView setImage:v8];
        [(UIImageView *)self->mFallbackImageView setHidden:0];
        [(UIImageView *)self->mFallbackImageView setAlpha:1.0];
        [(THInteractiveCanvasController *)[(THChapterViewController *)self interactiveCanvasController] setStaticLayoutAndRenderOnThread:1];
        [(THInteractiveCanvasController *)[(THChapterViewController *)self interactiveCanvasController] setAllowLayoutAndRenderOnThread:1];
        mTileModel = self->mTileModel;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_AE034;
        v22[3] = &unk_45AE58;
        v22[4] = self;
        v22[5] = mTileModel;
        [(THModelContentNode *)v5 performWhenFinishedLoading:v22 onError:&stru_45CDD8];
      }
    }

    else
    {
      [-[THChapterViewController view](self "view")];
    }
  }

  else
  {
    [-[THChapterViewController view](self "view")];
    return 0;
  }

  return v5;
}

- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)a3
{
  if (([(THInteractiveCanvasController *)[(THChapterViewController *)self interactiveCanvasController] currentlyWaitingOnThreadedLayoutAndRender]& 1) == 0)
  {

    [(THChapterViewController *)self p_updateVisibleInfosOrRevealCanvas];
  }
}

- (unint64_t)chapterViewTableNumberOfEntries:(id)a3
{
  v3 = [(THTOCTileModel *)[(THChapterViewController *)self tileModel] landscapeEntries];

  return [(NSArray *)v3 count];
}

- (id)chapterViewTable:(id)a3 entryForIndex:(unint64_t)a4
{
  v5 = [(THTOCTileModel *)[(THChapterViewController *)self tileModel] landscapeEntries];
  if ([(NSArray *)v5 count]<= a4)
  {
    return 0;
  }

  return [(NSArray *)v5 objectAtIndexedSubscript:a4];
}

- (void)chapterViewTable:(id)a3 selectedEntryWithIndex:(unint64_t)a4
{
  if (self->_chapterViewTableController == a3)
  {
    v6 = [(THTOCTileModel *)[(THChapterViewController *)self tileModel] landscapeEntries];
    if ([(NSArray *)v6 count]<= a4)
    {
      v7 = 0;
    }

    else
    {
      v7 = [(NSArray *)v6 objectAtIndexedSubscript:a4];
    }

    -[THChapterViewControllerDelegate chapterViewController:followLink:](self->mDelegate, "chapterViewController:followLink:", self, [v7 modelLink]);
    [(THChapterViewTableController *)self->_chapterViewTableController dismissAnimated:+[UIView completion:"areAnimationsEnabled"], 0];

    [(THChapterViewController *)self setChapterViewTableController:0];
  }
}

- (void)chapterViewTableDoneButtonPressed:(id)a3
{
  chapterViewTableController = self->_chapterViewTableController;
  if (chapterViewTableController == a3)
  {
    [(THChapterViewTableController *)chapterViewTableController dismissAnimated:+[UIView completion:"areAnimationsEnabled"], 0];

    [(THChapterViewController *)self setChapterViewTableController:0];
  }
}

- (void)presentRepExpanded:(id)a3
{
  if ([(NSArray *)[(THTOCTileModel *)[(THChapterViewController *)self tileModel] landscapeEntries] count])
  {
    if (!self->_chapterViewTableController)
    {
      self->_chapterViewTableController = [[THChapterViewTableController alloc] initWithChapterTitle:[(THTOCTileModel *)[(THChapterViewController *)self tileModel] frontTitleText] delegate:self];
    }

    v4 = [(THChapterViewController *)self chapterViewTableController];
    v5 = [(THChapterViewControllerDelegate *)self->mDelegate presentingViewControllerForChapterViewController:self];
    v6 = +[UIView areAnimationsEnabled];

    [(THChapterViewTableController *)v4 presentOnViewController:v5 animated:v6 completion:0];
  }
}

- (CGSize)widgetHostExpandedSize
{
  [-[THChapterViewController view](self "view")];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (BOOL)widgetHostingAllowInteractionOnPageForRep:(id)a3
{
  if (([(THChapterViewController *)self im_isCompactWidth]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return [(THChapterViewController *)self im_isCompactHeight]^ 1;
  }
}

- (id)documentRootForSectionController:(id)a3
{
  objc_opt_class();
  [(THTOCTileModel *)[(THChapterViewController *)self tileModel] documentRoot];

  return TSUDynamicCast();
}

- (void)sectionControllerNeedsLayout:(id)a3
{
  v3 = [(THChapterViewController *)self interactiveCanvasController];

  [(THInteractiveCanvasController *)v3 layoutInvalidated];
}

- (void)showCorruptDocumentAlertForSectionController:(id)a3
{
  v4 = [THBundle() localizedStringForKey:@"This book is either missing content or contains invalid content." value:&stru_471858 table:0];
  v5 = +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", v4, [THBundle() localizedStringForKey:@"Try downloading the book again" value:&stru_471858 table:0], 1);
  -[UIAlertController addAction:](v5, "addAction:", +[UIAlertAction actionWithTitle:style:handler:](UIAlertAction, "actionWithTitle:style:handler:", [THBundle() localizedStringForKey:@"OK" value:&stru_471858 table:0], 1, 0));
  v6 = +[UIView areAnimationsEnabled];

  [(THChapterViewController *)self presentViewController:v5 animated:v6 completion:0];
}

- (void)sectionControllerInfosDidChange:(id)a3
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THChapterViewController sectionControllerInfosDidChange:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THChapterViewController.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:579 description:@"unsupported"];
}

- (CGSize)pageSizeForPagePositionController:(id)a3
{
  width = self->mPageSize.width;
  height = self->mPageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)transitionContentView
{
  v2 = [(THChapterViewController *)self canvasViewController];

  return [(THiOSCanvasViewController *)v2 view];
}

@end
@interface THChapterViewController
- (BOOL)p_updateVisibleInfos;
- (BOOL)widgetHostingAllowInteractionOnPageForRep:(id)rep;
- (CGRect)visibleScaledBoundsForClippingRepsOnCanvas:(id)canvas;
- (CGSize)pageSizeForPagePositionController:(id)controller;
- (CGSize)widgetHostExpandedSize;
- (THChapterViewController)initWithDelegate:(id)delegate pageControlHeight:(double)height presentationType:(id)type;
- (id)chapterViewTable:(id)table entryForIndex:(unint64_t)index;
- (id)documentRootForSectionController:(id)controller;
- (id)reloadViewsAndShowThumbnail:(BOOL)thumbnail;
- (id)transitionContentView;
- (unint64_t)chapterViewTableNumberOfEntries:(id)entries;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)chapterViewTable:(id)table selectedEntryWithIndex:(unint64_t)index;
- (void)chapterViewTableDoneButtonPressed:(id)pressed;
- (void)contentSizeCategoryDidChange;
- (void)dealloc;
- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)thread;
- (void)p_hideFallbackImageView;
- (void)p_releaseOutlets;
- (void)p_teardownCanvas;
- (void)p_updateVisibleInfosOrRevealCanvas;
- (void)presentRepExpanded:(id)expanded;
- (void)sectionControllerInfosDidChange:(id)change;
- (void)sectionControllerNeedsLayout:(id)layout;
- (void)showCorruptDocumentAlertForSectionController:(id)controller;
- (void)updateCanvasViewWithSize:(CGSize)size;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation THChapterViewController

- (THChapterViewController)initWithDelegate:(id)delegate pageControlHeight:(double)height presentationType:(id)type
{
  v9 = THBundle();
  v16.receiver = self;
  v16.super_class = THChapterViewController;
  v10 = [(THChapterViewController *)&v16 initWithNibName:@"THChapterViewController" bundle:v9];
  v11 = v10;
  if (v10)
  {
    v10->mDelegate = delegate;
    v10->mChapterIndex = 0x7FFFFFFFFFFFFFFFLL;
    v10->_pageControlHeight = height;
    p_mPageSize = &v10->mPageSize;
    [type pageSize];
    *&p_mPageSize->width = v13;
    v11->mPageSize.height = v14;
    [(THChapterViewController *)v11 setSectionController:[[THSectionController alloc] initWithDelegate:v11 pagePositionController:[THPagePositionController presentationType:"paginatedPositionerWithDelegate:" paginatedPositionerWithDelegate:v11], type]];
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

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  v5 = [(THChapterViewController *)self traitsCache:change];
  traitCollection = [(THChapterViewController *)self traitCollection];

  [(THiOSTraitsCache *)v5 updateTraitsWithCollection:traitCollection];
}

- (void)updateCanvasViewWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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
  image = [(UIImageView *)self->mFallbackImageView image];
  if (image)
  {
    v22 = image;
    [(UIImage *)image size];
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = THChapterViewController;
  [(THChapterViewController *)&v4 viewWillAppear:appear];
  [(THiOSTraitsCache *)[(THChapterViewController *)self traitsCache] updateTraitsWithCollection:[(THChapterViewController *)self traitCollection]];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:self name:"contentSizeCategoryDidChange" object:UIContentSizeCategoryDidChangeNotification, 0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = THChapterViewController;
  [(THChapterViewController *)&v4 viewDidDisappear:disappear];
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
  chapterViewTableController = [(THChapterViewController *)self chapterViewTableController];

  [(THChapterViewTableController *)chapterViewTableController contentSizeCategoryDidChange];
}

- (CGRect)visibleScaledBoundsForClippingRepsOnCanvas:(id)canvas
{
  canvasView = [(THInteractiveCanvasController *)[(THChapterViewController *)self interactiveCanvasController] canvasView];

  [canvasView bounds];
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

- (id)reloadViewsAndShowThumbnail:(BOOL)thumbnail
{
  thumbnailCopy = thumbnail;
  if ([(THChapterViewController *)self isViewLoaded]&& self->mTileModel)
  {
    [-[THChapterViewController view](self "view")];
    browserPageNode = [(THTOCTileModel *)[(THChapterViewController *)self tileModel] browserPageNode];
    if ([(THModelContentNode *)browserPageNode nodeBodyExists])
    {
      [(THModelContentNode *)browserPageNode startLoading];
      if ([(THTOCTileModel *)self->mTileModel tocThumb])
      {
        v6 = !thumbnailCopy;
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
        [(THModelContentNode *)browserPageNode waitUntilFinishedLoading];
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
        [(THModelContentNode *)browserPageNode performWhenFinishedLoading:v22 onError:&stru_45CDD8];
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

  return browserPageNode;
}

- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)thread
{
  if (([(THInteractiveCanvasController *)[(THChapterViewController *)self interactiveCanvasController] currentlyWaitingOnThreadedLayoutAndRender]& 1) == 0)
  {

    [(THChapterViewController *)self p_updateVisibleInfosOrRevealCanvas];
  }
}

- (unint64_t)chapterViewTableNumberOfEntries:(id)entries
{
  landscapeEntries = [(THTOCTileModel *)[(THChapterViewController *)self tileModel] landscapeEntries];

  return [(NSArray *)landscapeEntries count];
}

- (id)chapterViewTable:(id)table entryForIndex:(unint64_t)index
{
  landscapeEntries = [(THTOCTileModel *)[(THChapterViewController *)self tileModel] landscapeEntries];
  if ([(NSArray *)landscapeEntries count]<= index)
  {
    return 0;
  }

  return [(NSArray *)landscapeEntries objectAtIndexedSubscript:index];
}

- (void)chapterViewTable:(id)table selectedEntryWithIndex:(unint64_t)index
{
  if (self->_chapterViewTableController == table)
  {
    landscapeEntries = [(THTOCTileModel *)[(THChapterViewController *)self tileModel] landscapeEntries];
    if ([(NSArray *)landscapeEntries count]<= index)
    {
      v7 = 0;
    }

    else
    {
      v7 = [(NSArray *)landscapeEntries objectAtIndexedSubscript:index];
    }

    -[THChapterViewControllerDelegate chapterViewController:followLink:](self->mDelegate, "chapterViewController:followLink:", self, [v7 modelLink]);
    [(THChapterViewTableController *)self->_chapterViewTableController dismissAnimated:+[UIView completion:"areAnimationsEnabled"], 0];

    [(THChapterViewController *)self setChapterViewTableController:0];
  }
}

- (void)chapterViewTableDoneButtonPressed:(id)pressed
{
  chapterViewTableController = self->_chapterViewTableController;
  if (chapterViewTableController == pressed)
  {
    [(THChapterViewTableController *)chapterViewTableController dismissAnimated:+[UIView completion:"areAnimationsEnabled"], 0];

    [(THChapterViewController *)self setChapterViewTableController:0];
  }
}

- (void)presentRepExpanded:(id)expanded
{
  if ([(NSArray *)[(THTOCTileModel *)[(THChapterViewController *)self tileModel] landscapeEntries] count])
  {
    if (!self->_chapterViewTableController)
    {
      self->_chapterViewTableController = [[THChapterViewTableController alloc] initWithChapterTitle:[(THTOCTileModel *)[(THChapterViewController *)self tileModel] frontTitleText] delegate:self];
    }

    chapterViewTableController = [(THChapterViewController *)self chapterViewTableController];
    v5 = [(THChapterViewControllerDelegate *)self->mDelegate presentingViewControllerForChapterViewController:self];
    v6 = +[UIView areAnimationsEnabled];

    [(THChapterViewTableController *)chapterViewTableController presentOnViewController:v5 animated:v6 completion:0];
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

- (BOOL)widgetHostingAllowInteractionOnPageForRep:(id)rep
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

- (id)documentRootForSectionController:(id)controller
{
  objc_opt_class();
  [(THTOCTileModel *)[(THChapterViewController *)self tileModel] documentRoot];

  return TSUDynamicCast();
}

- (void)sectionControllerNeedsLayout:(id)layout
{
  interactiveCanvasController = [(THChapterViewController *)self interactiveCanvasController];

  [(THInteractiveCanvasController *)interactiveCanvasController layoutInvalidated];
}

- (void)showCorruptDocumentAlertForSectionController:(id)controller
{
  v4 = [THBundle() localizedStringForKey:@"This book is either missing content or contains invalid content." value:&stru_471858 table:0];
  v5 = +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", v4, [THBundle() localizedStringForKey:@"Try downloading the book again" value:&stru_471858 table:0], 1);
  -[UIAlertController addAction:](v5, "addAction:", +[UIAlertAction actionWithTitle:style:handler:](UIAlertAction, "actionWithTitle:style:handler:", [THBundle() localizedStringForKey:@"OK" value:&stru_471858 table:0], 1, 0));
  v6 = +[UIView areAnimationsEnabled];

  [(THChapterViewController *)self presentViewController:v5 animated:v6 completion:0];
}

- (void)sectionControllerInfosDidChange:(id)change
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THChapterViewController sectionControllerInfosDidChange:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THChapterViewController.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:579 description:@"unsupported"];
}

- (CGSize)pageSizeForPagePositionController:(id)controller
{
  width = self->mPageSize.width;
  height = self->mPageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)transitionContentView
{
  canvasViewController = [(THChapterViewController *)self canvasViewController];

  return [(THiOSCanvasViewController *)canvasViewController view];
}

@end
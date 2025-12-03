@interface DisplayFilterSettingsPreviewPageViewController
- (DisplayFilterPageControllerDelegate)displayFilterPageDelegate;
- (DisplayFilterSettingsPreviewPageViewController)initWithTransitionStyle:(int64_t)style navigationOrientation:(int64_t)orientation options:(id)options;
- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController;
- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController;
- (id)viewControllerAtIndex:(unint64_t)index;
- (int64_t)currentPage;
- (int64_t)indexOfViewController:(id)controller;
- (void)_setControllers;
- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed;
- (void)setCurrentPage:(int64_t)page;
- (void)setPageHeight:(double)height;
- (void)viewDidLoad;
@end

@implementation DisplayFilterSettingsPreviewPageViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = DisplayFilterSettingsPreviewPageViewController;
  [(DisplayFilterSettingsPreviewPageViewController *)&v4 viewDidLoad];
  view = [(DisplayFilterSettingsPreviewPageViewController *)self view];
  [view setFrame:{0.0, 0.0, 200.0, 200.0}];
}

- (DisplayFilterSettingsPreviewPageViewController)initWithTransitionStyle:(int64_t)style navigationOrientation:(int64_t)orientation options:(id)options
{
  v7.receiver = self;
  v7.super_class = DisplayFilterSettingsPreviewPageViewController;
  v5 = [(DisplayFilterSettingsPreviewPageViewController *)&v7 initWithTransitionStyle:1 navigationOrientation:0 options:options];
  [(DisplayFilterSettingsPreviewPageViewController *)v5 setDataSource:v5];
  [(DisplayFilterSettingsPreviewPageViewController *)v5 setDelegate:v5];
  [(DisplayFilterSettingsPreviewPageViewController *)v5 _setControllers];
  return v5;
}

- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed
{
  v7 = [(DisplayFilterSettingsPreviewPageViewController *)self viewControllers:controller];
  firstObject = [v7 firstObject];

  v8 = [(DisplayFilterSettingsPreviewPageViewController *)self indexOfViewController:firstObject];
  displayFilterPageDelegate = [(DisplayFilterSettingsPreviewPageViewController *)self displayFilterPageDelegate];
  [displayFilterPageDelegate didSelectDisplayFilterPage:v8];
}

- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController
{
  v5 = [(DisplayFilterSettingsPreviewPageViewController *)self indexOfViewController:viewController];
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [(DisplayFilterSettingsPreviewPageViewController *)self viewControllerAtIndex:v6];

  return v7;
}

- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController
{
  v5 = [(DisplayFilterSettingsPreviewPageViewController *)self indexOfViewController:viewController];
  if (v5 == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 + 1;
  }

  v7 = [(DisplayFilterSettingsPreviewPageViewController *)self viewControllerAtIndex:v6];

  return v7;
}

- (void)_setControllers
{
  v3 = [(DisplayFilterSettingsPreviewPageViewController *)self viewControllerAtIndex:0];
  v5 = v3;
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  [(DisplayFilterSettingsPreviewPageViewController *)self setViewControllers:v4 direction:0 animated:0 completion:0];
}

- (void)setCurrentPage:(int64_t)page
{
  v4 = [(DisplayFilterSettingsPreviewPageViewController *)self viewControllerAtIndex:page];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [(DisplayFilterSettingsPreviewPageViewController *)self setViewControllers:v5 direction:0 animated:0 completion:0];
}

- (int64_t)currentPage
{
  viewControllers = [(DisplayFilterSettingsPreviewPageViewController *)self viewControllers];
  firstObject = [viewControllers firstObject];
  v5 = [(DisplayFilterSettingsPreviewPageViewController *)self indexOfViewController:firstObject];

  return v5;
}

- (int64_t)indexOfViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pageIndex = [controllerCopy pageIndex];
  }

  else
  {
    pageIndex = 0;
  }

  return pageIndex;
}

- (void)setPageHeight:(double)height
{
  self->_pageHeight = height;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  viewControllers = [(DisplayFilterSettingsPreviewPageViewController *)self viewControllers];
  v5 = [viewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(viewControllers);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 setPageHeight:height];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [viewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)viewControllerAtIndex:(unint64_t)index
{
  if (index == 2)
  {
    v5 = [DisplayFilterPageImageViewController alloc];
    v6 = @"colorFilterPreview";
    v7 = 1;
  }

  else
  {
    if (index)
    {
      v8 = objc_alloc_init(DisplayFilterPageGridViewController);
      goto LABEL_7;
    }

    v5 = [DisplayFilterPageImageViewController alloc];
    v6 = @"coloredPencils";
    v7 = 0;
  }

  v8 = [(DisplayFilterPageImageViewController *)v5 initWithImageName:v6 stretchHorizontal:v7];
LABEL_7:
  v9 = v8;
  [(DisplayFilterPageViewController *)v8 setPageIndex:index];
  [(DisplayFilterSettingsPreviewPageViewController *)self pageHeight];
  [(DisplayFilterPageGridViewController *)v9 setPageHeight:?];

  return v9;
}

- (DisplayFilterPageControllerDelegate)displayFilterPageDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_displayFilterPageDelegate);

  return WeakRetained;
}

@end
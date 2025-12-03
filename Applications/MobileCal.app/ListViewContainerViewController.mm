@interface ListViewContainerViewController
- (Class)childViewControllerClassForTraits:(id)traits;
- (id)childViewControllerForCompactWidthRegularHeight;
- (id)currentChildViewController;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation ListViewContainerViewController

- (void)viewIsAppearing:(BOOL)appearing
{
  v7.receiver = self;
  v7.super_class = ListViewContainerViewController;
  [(ListViewContainerViewController *)&v7 viewIsAppearing:appearing];
  if (CalSolariumEnabled())
  {
    navigationController = [(ListViewContainerViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];

    standardAppearance = [navigationBar standardAppearance];
    [navigationBar setScrollEdgeAppearance:standardAppearance];
  }
}

- (id)currentChildViewController
{
  v4.receiver = self;
  v4.super_class = ListViewContainerViewController;
  currentChildViewController = [(MainViewControllerContainer *)&v4 currentChildViewController];

  return currentChildViewController;
}

- (id)childViewControllerForCompactWidthRegularHeight
{
  v3 = *(&self->super._animatingViewTransition + 1);
  if (!v3)
  {
    v4 = [CompactListViewController alloc];
    model = [(MainViewController *)self model];
    window = [(MainViewController *)self window];
    v7 = [(ListViewController *)v4 initWithModel:model window:window];
    v8 = *(&self->super._animatingViewTransition + 1);
    *(&self->super._animatingViewTransition + 1) = v7;

    [*(&self->super._animatingViewTransition + 1) setOverrideExtendedEdges:CalCanvasPocketEnabled() ^ 1];
    [*(&self->super._animatingViewTransition + 1) setAllowExtendedHeightCells:1];
    v3 = *(&self->super._animatingViewTransition + 1);
  }

  return v3;
}

- (Class)childViewControllerClassForTraits:(id)traits
{
  [traits horizontalSizeClass];
  v3 = objc_opt_class();

  return v3;
}

@end
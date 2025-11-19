@interface ListViewContainerViewController
- (Class)childViewControllerClassForTraits:(id)a3;
- (id)childViewControllerForCompactWidthRegularHeight;
- (id)currentChildViewController;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation ListViewContainerViewController

- (void)viewIsAppearing:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = ListViewContainerViewController;
  [(ListViewContainerViewController *)&v7 viewIsAppearing:a3];
  if (CalSolariumEnabled())
  {
    v4 = [(ListViewContainerViewController *)self navigationController];
    v5 = [v4 navigationBar];

    v6 = [v5 standardAppearance];
    [v5 setScrollEdgeAppearance:v6];
  }
}

- (id)currentChildViewController
{
  v4.receiver = self;
  v4.super_class = ListViewContainerViewController;
  v2 = [(MainViewControllerContainer *)&v4 currentChildViewController];

  return v2;
}

- (id)childViewControllerForCompactWidthRegularHeight
{
  v3 = *(&self->super._animatingViewTransition + 1);
  if (!v3)
  {
    v4 = [CompactListViewController alloc];
    v5 = [(MainViewController *)self model];
    v6 = [(MainViewController *)self window];
    v7 = [(ListViewController *)v4 initWithModel:v5 window:v6];
    v8 = *(&self->super._animatingViewTransition + 1);
    *(&self->super._animatingViewTransition + 1) = v7;

    [*(&self->super._animatingViewTransition + 1) setOverrideExtendedEdges:CalCanvasPocketEnabled() ^ 1];
    [*(&self->super._animatingViewTransition + 1) setAllowExtendedHeightCells:1];
    v3 = *(&self->super._animatingViewTransition + 1);
  }

  return v3;
}

- (Class)childViewControllerClassForTraits:(id)a3
{
  [a3 horizontalSizeClass];
  v3 = objc_opt_class();

  return v3;
}

@end
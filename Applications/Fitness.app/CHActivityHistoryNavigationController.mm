@interface CHActivityHistoryNavigationController
- (CHActivityHistoryNavigationController)initWithDateCache:(id)cache pauseRingsCoordinator:(id)coordinator;
- (void)attachPaletteWithHeight:(double)height;
- (void)detachPalette;
- (void)reattachPaletteIfNeededExpanded:(BOOL)expanded;
- (void)scrollToTop;
@end

@implementation CHActivityHistoryNavigationController

- (CHActivityHistoryNavigationController)initWithDateCache:(id)cache pauseRingsCoordinator:(id)coordinator
{
  cacheCopy = cache;
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = CHActivityHistoryNavigationController;
  v9 = [(CHActivityHistoryNavigationController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dateCache, cache);
    objc_storeStrong(&v10->_pauseRingsCoordinator, coordinator);
  }

  return v10;
}

- (void)attachPaletteWithHeight:(double)height
{
  if (!self->_palette)
  {
    view = [(CHActivityHistoryNavigationController *)self view];
    [view bounds];
    v7 = v6;

    height = [(CHActivityHistoryNavigationController *)self paletteForEdge:2 size:v7, height];
    palette = self->_palette;
    self->_palette = height;

    paletteVC = self->_paletteVC;
    if (!paletteVC)
    {
      v11 = objc_alloc_init(CHPaletteViewControllerSizingDelegate);
      [(CHPaletteViewControllerSizingDelegate *)v11 setView:self->_palette];
      v12 = [[PaletteViewController alloc] initWithSizingDelegate:v11 dateProvider:self->_dateCache pauseRingsCoordinator:self->_pauseRingsCoordinator];
      v13 = self->_paletteVC;
      self->_paletteVC = v12;

      paletteVC = self->_paletteVC;
    }

    v14 = self->_palette;
    view2 = [(PaletteViewController *)paletteVC view];
    [(_UINavigationControllerPalette *)v14 addSubview:view2];

    view3 = [(PaletteViewController *)self->_paletteVC view];
    [view3 setFrame:{0.0, 0.0, v7, height}];

    v17 = self->_palette;

    [(CHActivityHistoryNavigationController *)self attachPalette:v17 isPinned:1];
  }
}

- (void)reattachPaletteIfNeededExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  if (self->_palette)
  {
    [(CHActivityHistoryNavigationController *)self detachPalette:?];
    palette = self->_palette;
    self->_palette = 0;
  }

  v6 = 70.0;
  if (!expandedCopy)
  {
    v6 = 20.0;
  }

  [(CHActivityHistoryNavigationController *)self attachPaletteWithHeight:v6];

  [(CHActivityHistoryNavigationController *)self setPaletteExpanded:expandedCopy];
}

- (void)detachPalette
{
  [(CHActivityHistoryNavigationController *)self detachPalette:self->_palette];
  palette = self->_palette;
  self->_palette = 0;
}

- (void)scrollToTop
{
  topViewController = [(CHActivityHistoryNavigationController *)self topViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    topViewController2 = [(CHActivityHistoryNavigationController *)self topViewController];
    [topViewController2 performSelector:"scrollToTop"];
  }
}

@end
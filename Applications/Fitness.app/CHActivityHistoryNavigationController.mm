@interface CHActivityHistoryNavigationController
- (CHActivityHistoryNavigationController)initWithDateCache:(id)a3 pauseRingsCoordinator:(id)a4;
- (void)attachPaletteWithHeight:(double)a3;
- (void)detachPalette;
- (void)reattachPaletteIfNeededExpanded:(BOOL)a3;
- (void)scrollToTop;
@end

@implementation CHActivityHistoryNavigationController

- (CHActivityHistoryNavigationController)initWithDateCache:(id)a3 pauseRingsCoordinator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CHActivityHistoryNavigationController;
  v9 = [(CHActivityHistoryNavigationController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dateCache, a3);
    objc_storeStrong(&v10->_pauseRingsCoordinator, a4);
  }

  return v10;
}

- (void)attachPaletteWithHeight:(double)a3
{
  if (!self->_palette)
  {
    v5 = [(CHActivityHistoryNavigationController *)self view];
    [v5 bounds];
    v7 = v6;

    v8 = [(CHActivityHistoryNavigationController *)self paletteForEdge:2 size:v7, a3];
    palette = self->_palette;
    self->_palette = v8;

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
    v15 = [(PaletteViewController *)paletteVC view];
    [(_UINavigationControllerPalette *)v14 addSubview:v15];

    v16 = [(PaletteViewController *)self->_paletteVC view];
    [v16 setFrame:{0.0, 0.0, v7, a3}];

    v17 = self->_palette;

    [(CHActivityHistoryNavigationController *)self attachPalette:v17 isPinned:1];
  }
}

- (void)reattachPaletteIfNeededExpanded:(BOOL)a3
{
  v3 = a3;
  if (self->_palette)
  {
    [(CHActivityHistoryNavigationController *)self detachPalette:?];
    palette = self->_palette;
    self->_palette = 0;
  }

  v6 = 70.0;
  if (!v3)
  {
    v6 = 20.0;
  }

  [(CHActivityHistoryNavigationController *)self attachPaletteWithHeight:v6];

  [(CHActivityHistoryNavigationController *)self setPaletteExpanded:v3];
}

- (void)detachPalette
{
  [(CHActivityHistoryNavigationController *)self detachPalette:self->_palette];
  palette = self->_palette;
  self->_palette = 0;
}

- (void)scrollToTop
{
  v3 = [(CHActivityHistoryNavigationController *)self topViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CHActivityHistoryNavigationController *)self topViewController];
    [v5 performSelector:"scrollToTop"];
  }
}

@end
@interface AddShortcutViewController
- (ActionCoordination)delegate;
- (AddShortcutViewController)initWithShortcutEditSession:(id)a3;
- (BOOL)searchDataSource:(id)a3 shouldFilterItem:(id)a4;
- (ShortcutEditSessionController)sessionController;
- (int64_t)shortcutType;
- (void)didDismissByGesture;
- (void)handleDismissAction:(id)a3;
- (void)saveMapItem:(id)a3;
- (void)saveShortcut:(id)a3;
@end

@implementation AddShortcutViewController

- (ActionCoordination)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ShortcutEditSessionController)sessionController
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionController);

  return WeakRetained;
}

- (int64_t)shortcutType
{
  v3 = [(ShortcutEditSession *)self->_shortcutEditSession shortcut];
  if ([v3 type] == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(ShortcutEditSession *)self->_shortcutEditSession shortcut];
    v4 = [v5 type];
  }

  return v4;
}

- (void)didDismissByGesture
{
  v2.receiver = self;
  v2.super_class = AddShortcutViewController;
  [(ContaineeViewController *)&v2 didDismissByGesture];
}

- (void)handleDismissAction:(id)a3
{
  v4 = a3;
  v5 = [(AddShortcutViewController *)self dismissActionHandler];

  if (v5)
  {
    v6 = [(AddShortcutViewController *)self dismissActionHandler];
    v6[2]();

    [(AddShortcutViewController *)self setDismissActionHandler:0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AddShortcutViewController;
    [(ContaineeViewController *)&v7 handleDismissAction:v4];
  }
}

- (void)saveShortcut:(id)a3
{
  v9 = a3;
  if ([v9 type] == 6)
  {
    [v9 setIsHidden:0];
    v4 = [ShortcutEditSession addSessionWithShortcut:v9];
    [v4 setMoveToPreferredIndexInFavorites:1];
    v5 = [(AddShortcutViewController *)self sessionController];
    [v5 addFavoriteButtonShortcut:v4];
  }

  else if (sub_10000FA08(self) == 5 || [(ShortcutEditSession *)self->_shortcutEditSession alreadySaved])
  {
    v6 = [MKMapItem alloc];
    v7 = [v9 geoMapItem];
    v4 = [v6 initWithGeoMapItem:v7 isPlaceHolderPlace:0];

    [(AddShortcutViewController *)self saveMapItem:v4];
  }

  else
  {
    v4 = [ShortcutEditSession addSessionWithShortcut:v9];
    v8 = [(AddShortcutViewController *)self delegate];
    [v8 viewController:self editShortcut:v4];
  }
}

- (void)saveMapItem:(id)a3
{
  [(ShortcutEditSession *)self->_shortcutEditSession setMapItem:a3];
  v4 = [(AddShortcutViewController *)self sessionController];
  [v4 viewController:self didEditMapItemInSession:self->_shortcutEditSession];
}

- (BOOL)searchDataSource:(id)a3 shouldFilterItem:(id)a4
{
  v6 = a4;
  v9.receiver = self;
  v9.super_class = AddShortcutViewController;
  if ([(AddFromACViewController *)&v9 searchDataSource:a3 shouldFilterItem:v6])
  {
    v7 = 1;
  }

  else
  {
    v7 = [(ShortcutEditSession *)self->_shortcutEditSession shortcutsContainItem:v6];
  }

  return v7;
}

- (AddShortcutViewController)initWithShortcutEditSession:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AddShortcutViewController;
  v6 = [(AddFromACViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shortcutEditSession, a3);
  }

  return v7;
}

@end
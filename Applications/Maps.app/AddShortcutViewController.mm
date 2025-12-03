@interface AddShortcutViewController
- (ActionCoordination)delegate;
- (AddShortcutViewController)initWithShortcutEditSession:(id)session;
- (BOOL)searchDataSource:(id)source shouldFilterItem:(id)item;
- (ShortcutEditSessionController)sessionController;
- (int64_t)shortcutType;
- (void)didDismissByGesture;
- (void)handleDismissAction:(id)action;
- (void)saveMapItem:(id)item;
- (void)saveShortcut:(id)shortcut;
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
  shortcut = [(ShortcutEditSession *)self->_shortcutEditSession shortcut];
  if ([shortcut type] == 1)
  {
    type = 0;
  }

  else
  {
    shortcut2 = [(ShortcutEditSession *)self->_shortcutEditSession shortcut];
    type = [shortcut2 type];
  }

  return type;
}

- (void)didDismissByGesture
{
  v2.receiver = self;
  v2.super_class = AddShortcutViewController;
  [(ContaineeViewController *)&v2 didDismissByGesture];
}

- (void)handleDismissAction:(id)action
{
  actionCopy = action;
  dismissActionHandler = [(AddShortcutViewController *)self dismissActionHandler];

  if (dismissActionHandler)
  {
    dismissActionHandler2 = [(AddShortcutViewController *)self dismissActionHandler];
    dismissActionHandler2[2]();

    [(AddShortcutViewController *)self setDismissActionHandler:0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AddShortcutViewController;
    [(ContaineeViewController *)&v7 handleDismissAction:actionCopy];
  }
}

- (void)saveShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  if ([shortcutCopy type] == 6)
  {
    [shortcutCopy setIsHidden:0];
    v4 = [ShortcutEditSession addSessionWithShortcut:shortcutCopy];
    [v4 setMoveToPreferredIndexInFavorites:1];
    sessionController = [(AddShortcutViewController *)self sessionController];
    [sessionController addFavoriteButtonShortcut:v4];
  }

  else if (sub_10000FA08(self) == 5 || [(ShortcutEditSession *)self->_shortcutEditSession alreadySaved])
  {
    v6 = [MKMapItem alloc];
    geoMapItem = [shortcutCopy geoMapItem];
    v4 = [v6 initWithGeoMapItem:geoMapItem isPlaceHolderPlace:0];

    [(AddShortcutViewController *)self saveMapItem:v4];
  }

  else
  {
    v4 = [ShortcutEditSession addSessionWithShortcut:shortcutCopy];
    delegate = [(AddShortcutViewController *)self delegate];
    [delegate viewController:self editShortcut:v4];
  }
}

- (void)saveMapItem:(id)item
{
  [(ShortcutEditSession *)self->_shortcutEditSession setMapItem:item];
  sessionController = [(AddShortcutViewController *)self sessionController];
  [sessionController viewController:self didEditMapItemInSession:self->_shortcutEditSession];
}

- (BOOL)searchDataSource:(id)source shouldFilterItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = AddShortcutViewController;
  if ([(AddFromACViewController *)&v9 searchDataSource:source shouldFilterItem:itemCopy])
  {
    v7 = 1;
  }

  else
  {
    v7 = [(ShortcutEditSession *)self->_shortcutEditSession shortcutsContainItem:itemCopy];
  }

  return v7;
}

- (AddShortcutViewController)initWithShortcutEditSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = AddShortcutViewController;
  v6 = [(AddFromACViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shortcutEditSession, session);
  }

  return v7;
}

@end
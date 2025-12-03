@interface ICMainSplitViewController
+ (UICommand)openInNewWindowCommand;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)requiresNotificationForSecondaryColumnSize:(CGSize)size;
- (BOOL)shouldDisplaceColumn;
- (ICMainSplitViewController)initWithStyle:(int64_t)style viewControllerManager:(id)manager;
- (ICViewControllerManager)viewControllerManager;
- (double)nonDisplacedColumnWidth;
- (double)preferredDisplacedColumnWidth;
- (id)selectedLegacyNote;
- (id)selectedNote;
- (int64_t)preferredDisplacedColumn;
- (void)openInNewWindow:(id)window;
- (void)registerForTraitChanges;
- (void)updateStateForTrailingSidebarVisible:(BOOL)visible;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ICMainSplitViewController

- (void)registerForTraitChanges
{
  viewControllerManager = [(ICMainSplitViewController *)self viewControllerManager];
  behavior = [viewControllerManager behavior];

  if (behavior == 1)
  {
    objc_initWeak(&location, self);
    viewControllerManager2 = [(ICMainSplitViewController *)self viewControllerManager];
    noteEditorViewController = [viewControllerManager2 noteEditorViewController];
    v12 = objc_opt_class();
    v7 = [NSArray arrayWithObjects:&v12 count:1];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100156830;
    v9[3] = &unk_100646240;
    objc_copyWeak(&v10, &location);
    v8 = [noteEditorViewController registerForTraitChanges:v7 withHandler:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (ICViewControllerManager)viewControllerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerManager);

  return WeakRetained;
}

- (int64_t)preferredDisplacedColumn
{
  viewControllerManager = [(ICMainSplitViewController *)self viewControllerManager];
  noteContainerViewMode = [viewControllerManager noteContainerViewMode];

  if (noteContainerViewMode == -1)
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1004E2240(v7);
    }

    return 0;
  }

  if (noteContainerViewMode)
  {
    return 0;
  }

  viewControllerManager2 = [(ICMainSplitViewController *)self viewControllerManager];
  v6 = ([viewControllerManager2 canTilePrimaryContent] & 1) == 0 && -[ICMainSplitViewController style](self, "style") != 1;

  return v6;
}

- (ICMainSplitViewController)initWithStyle:(int64_t)style viewControllerManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = ICMainSplitViewController;
  v7 = [(ICMainSplitViewController *)&v10 initWithStyle:style];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_viewControllerManager, managerCopy);
    [(ICMainSplitViewController *)v8 registerForTraitChanges];
  }

  return v8;
}

- (void)updateStateForTrailingSidebarVisible:(BOOL)visible
{
  visibleCopy = visible;
  objc_opt_class();
  viewControllerManager = [(ICMainSplitViewController *)self viewControllerManager];
  trailingSidebarViewController = [viewControllerManager trailingSidebarViewController];
  v7 = ICDynamicCast();

  if (v7)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100156A0C;
    v11[3] = &unk_1006462D8;
    v13 = visibleCopy;
    v11[4] = self;
    v8 = v7;
    v12 = v8;
    v9 = objc_retainBlock(v11);
    v10 = v9;
    if (visibleCopy)
    {
      (v9[2])(v9);
    }

    else
    {
      [v8 ic_performBlockAfterActiveTransition:v9];
    }
  }
}

- (BOOL)shouldDisplaceColumn
{
  v2 = [(ICMainSplitViewController *)self viewControllerForColumn:[(ICMainSplitViewController *)self preferredDisplacedColumn]];
  ic_isViewVisible = [v2 ic_isViewVisible];

  return ic_isViewVisible;
}

- (double)preferredDisplacedColumnWidth
{
  if (![(ICMainSplitViewController *)self isDisplacingColumn]&& [(ICMainSplitViewController *)self displayMode]== 1)
  {
    view = [(ICMainSplitViewController *)self view];
    [view frame];
    v5 = v4;
    view2 = [(ICMainSplitViewController *)self view];
    [view2 frame];
    v8 = v7;

    if (v5 < v8)
    {
      return 0.0;
    }
  }

  if ([(ICMainSplitViewController *)self preferredDisplacedColumn]== 1)
  {

    [(ICMainSplitViewController *)self supplementaryColumnWidth];
  }

  else
  {

    [(ICMainSplitViewController *)self primaryColumnWidth];
  }

  return result;
}

- (double)nonDisplacedColumnWidth
{
  if ([(ICMainSplitViewController *)self preferredDisplacedColumn])
  {
    return 0.0;
  }

  v3 = [(ICMainSplitViewController *)self viewControllerForColumn:1];
  ic_isViewVisible = [v3 ic_isViewVisible];

  if (!ic_isViewVisible)
  {
    return 0.0;
  }

  [(ICMainSplitViewController *)self supplementaryColumnWidth];
  return result;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  viewControllerManager = [(ICMainSplitViewController *)self viewControllerManager];
  trailingSidebarViewController = [viewControllerManager trailingSidebarViewController];
  isTransitioning = [trailingSidebarViewController isTransitioning];

  if ((isTransitioning & 1) == 0)
  {
    v11.receiver = self;
    v11.super_class = ICMainSplitViewController;
    [(ICSplitViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  }
}

- (BOOL)requiresNotificationForSecondaryColumnSize:(CGSize)size
{
  width = size.width;
  v4 = [(ICMainSplitViewController *)self viewControllerForColumn:2, size.width, size.height];
  view = [v4 view];
  [view frame];
  v7 = v6 - width;

  v8 = -v7;
  if (v7 >= 0.0)
  {
    v8 = v7;
  }

  v9 = v8 >= 10.0;

  return v9;
}

+ (UICommand)openInNewWindowCommand
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Open Note in New Window" value:&stru_100661CF0 table:0];
  v4 = [UIImage systemImageNamed:@"rectangle.badge.plus"];
  v5 = [UICommand commandWithTitle:v3 image:v4 action:"openInNewWindow:" propertyList:0];

  return v5;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if ("openInNewWindow:" == action)
  {
    selectedNote = [(ICMainSplitViewController *)self selectedNote];
    if (selectedNote)
    {
      v5 = 1;
    }

    else
    {
      selectedLegacyNote = [(ICMainSplitViewController *)self selectedLegacyNote];
      v5 = selectedLegacyNote != 0;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = ICMainSplitViewController;
    return [ICMainSplitViewController canPerformAction:"canPerformAction:withSender:" withSender:?];
  }

  return v5;
}

- (id)selectedNote
{
  viewControllerManager = [(ICMainSplitViewController *)self viewControllerManager];
  noteEditorViewController = [viewControllerManager noteEditorViewController];
  note = [noteEditorViewController note];

  return note;
}

- (id)selectedLegacyNote
{
  viewControllerManager = [(ICMainSplitViewController *)self viewControllerManager];
  legacyNoteEditorViewController = [viewControllerManager legacyNoteEditorViewController];
  note = [legacyNoteEditorViewController note];

  return note;
}

- (void)openInNewWindow:(id)window
{
  selectedNote = [(ICMainSplitViewController *)self selectedNote];

  if (selectedNote)
  {
    selectedNote2 = [(ICMainSplitViewController *)self selectedNote];
    v6 = [ICAppURLUtilities appURLForNote:selectedNote2];
  }

  else
  {
    selectedLegacyNote = [(ICMainSplitViewController *)self selectedLegacyNote];

    if (!selectedLegacyNote)
    {
      return;
    }

    selectedNote2 = [(ICMainSplitViewController *)self selectedLegacyNote];
    v6 = NotesAppURLForNote();
  }

  v11 = v6;

  if (v11)
  {
    v8 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.notes.open.object"];
    absoluteString = [v11 absoluteString];
    [v8 setTargetContentIdentifier:absoluteString];

    [v8 setUserInfo:&off_10066E470];
    v10 = +[UIApplication sharedApplication];
    [v10 requestSceneSessionActivation:0 userActivity:v8 options:0 errorHandler:0];
  }
}

@end
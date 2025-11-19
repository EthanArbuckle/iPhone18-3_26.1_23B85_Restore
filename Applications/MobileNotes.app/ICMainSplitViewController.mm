@interface ICMainSplitViewController
+ (UICommand)openInNewWindowCommand;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)requiresNotificationForSecondaryColumnSize:(CGSize)a3;
- (BOOL)shouldDisplaceColumn;
- (ICMainSplitViewController)initWithStyle:(int64_t)a3 viewControllerManager:(id)a4;
- (ICViewControllerManager)viewControllerManager;
- (double)nonDisplacedColumnWidth;
- (double)preferredDisplacedColumnWidth;
- (id)selectedLegacyNote;
- (id)selectedNote;
- (int64_t)preferredDisplacedColumn;
- (void)openInNewWindow:(id)a3;
- (void)registerForTraitChanges;
- (void)updateStateForTrailingSidebarVisible:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ICMainSplitViewController

- (void)registerForTraitChanges
{
  v3 = [(ICMainSplitViewController *)self viewControllerManager];
  v4 = [v3 behavior];

  if (v4 == 1)
  {
    objc_initWeak(&location, self);
    v5 = [(ICMainSplitViewController *)self viewControllerManager];
    v6 = [v5 noteEditorViewController];
    v12 = objc_opt_class();
    v7 = [NSArray arrayWithObjects:&v12 count:1];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100156830;
    v9[3] = &unk_100646240;
    objc_copyWeak(&v10, &location);
    v8 = [v6 registerForTraitChanges:v7 withHandler:v9];

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
  v3 = [(ICMainSplitViewController *)self viewControllerManager];
  v4 = [v3 noteContainerViewMode];

  if (v4 == -1)
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1004E2240(v7);
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

  v5 = [(ICMainSplitViewController *)self viewControllerManager];
  v6 = ([v5 canTilePrimaryContent] & 1) == 0 && -[ICMainSplitViewController style](self, "style") != 1;

  return v6;
}

- (ICMainSplitViewController)initWithStyle:(int64_t)a3 viewControllerManager:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = ICMainSplitViewController;
  v7 = [(ICMainSplitViewController *)&v10 initWithStyle:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_viewControllerManager, v6);
    [(ICMainSplitViewController *)v8 registerForTraitChanges];
  }

  return v8;
}

- (void)updateStateForTrailingSidebarVisible:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  v5 = [(ICMainSplitViewController *)self viewControllerManager];
  v6 = [v5 trailingSidebarViewController];
  v7 = ICDynamicCast();

  if (v7)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100156A0C;
    v11[3] = &unk_1006462D8;
    v13 = v3;
    v11[4] = self;
    v8 = v7;
    v12 = v8;
    v9 = objc_retainBlock(v11);
    v10 = v9;
    if (v3)
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
  v3 = [v2 ic_isViewVisible];

  return v3;
}

- (double)preferredDisplacedColumnWidth
{
  if (![(ICMainSplitViewController *)self isDisplacingColumn]&& [(ICMainSplitViewController *)self displayMode]== 1)
  {
    v3 = [(ICMainSplitViewController *)self view];
    [v3 frame];
    v5 = v4;
    v6 = [(ICMainSplitViewController *)self view];
    [v6 frame];
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
  v4 = [v3 ic_isViewVisible];

  if (!v4)
  {
    return 0.0;
  }

  [(ICMainSplitViewController *)self supplementaryColumnWidth];
  return result;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(ICMainSplitViewController *)self viewControllerManager];
  v9 = [v8 trailingSidebarViewController];
  v10 = [v9 isTransitioning];

  if ((v10 & 1) == 0)
  {
    v11.receiver = self;
    v11.super_class = ICMainSplitViewController;
    [(ICSplitViewController *)&v11 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  }
}

- (BOOL)requiresNotificationForSecondaryColumnSize:(CGSize)a3
{
  width = a3.width;
  v4 = [(ICMainSplitViewController *)self viewControllerForColumn:2, a3.width, a3.height];
  v5 = [v4 view];
  [v5 frame];
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

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if ("openInNewWindow:" == a3)
  {
    v6 = [(ICMainSplitViewController *)self selectedNote];
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v7 = [(ICMainSplitViewController *)self selectedLegacyNote];
      v5 = v7 != 0;
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
  v2 = [(ICMainSplitViewController *)self viewControllerManager];
  v3 = [v2 noteEditorViewController];
  v4 = [v3 note];

  return v4;
}

- (id)selectedLegacyNote
{
  v2 = [(ICMainSplitViewController *)self viewControllerManager];
  v3 = [v2 legacyNoteEditorViewController];
  v4 = [v3 note];

  return v4;
}

- (void)openInNewWindow:(id)a3
{
  v4 = [(ICMainSplitViewController *)self selectedNote];

  if (v4)
  {
    v5 = [(ICMainSplitViewController *)self selectedNote];
    v6 = [ICAppURLUtilities appURLForNote:v5];
  }

  else
  {
    v7 = [(ICMainSplitViewController *)self selectedLegacyNote];

    if (!v7)
    {
      return;
    }

    v5 = [(ICMainSplitViewController *)self selectedLegacyNote];
    v6 = NotesAppURLForNote();
  }

  v11 = v6;

  if (v11)
  {
    v8 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.notes.open.object"];
    v9 = [v11 absoluteString];
    [v8 setTargetContentIdentifier:v9];

    [v8 setUserInfo:&off_10066E470];
    v10 = +[UIApplication sharedApplication];
    [v10 requestSceneSessionActivation:0 userActivity:v8 options:0 errorHandler:0];
  }
}

@end
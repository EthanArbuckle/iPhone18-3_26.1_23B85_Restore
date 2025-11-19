@interface InboxSwitcherViewController
- (CGSize)preferredContentSize;
- (InboxSwitcherViewController)initWithModel:(id)a3 destination:(unint64_t)a4;
- (InboxSwitcherViewControllerDelegate)switcherDelegate;
- (id)_showViewControllerAtIndex:(int64_t)a3;
- (id)_viewControllerForIndex:(int64_t)a3;
- (void)_setDoneButtonState;
- (void)attemptDisplayReviewPrompt;
- (void)inboxNewSectionViewController:(id)a3 inspectEvent:(id)a4;
- (void)inboxNewSectionViewController:(id)a3 shouldCloseAnimated:(BOOL)a4;
- (void)inboxNewSectionViewController:(id)a3 viewCommentsForEvent:(id)a4;
- (void)inboxNewSectionViewController:(id)a3 viewProposedTimeForAttendee:(id)a4 onEvent:(id)a5;
- (void)inboxRepliedSectionViewController:(id)a3 inspectEvent:(id)a4;
- (void)inboxWillDismiss;
- (void)loadView;
- (void)segmentedControlValueChanged:(id)a3;
- (void)setDestination:(unint64_t)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation InboxSwitcherViewController

- (void)_setDoneButtonState
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_switcherDelegate);
    v6 = [v5 inboxSwitcherViewControllerLeftBarButtonItem:self];

    v7 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Setting the following left bar button item our delegate returned: [%@]", &v9, 0xCu);
    }

    v8 = [(InboxSwitcherViewController *)self navigationItem];
    [v8 setLeftBarButtonItem:v6];
  }
}

- (InboxSwitcherViewController)initWithModel:(id)a3 destination:(unint64_t)a4
{
  v7 = a3;
  v22.receiver = self;
  v22.super_class = InboxSwitcherViewController;
  v8 = [(InboxSwitcherViewController *)&v22 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_model, a3);
    v9->_destination = a4;
    v10 = [UISegmentedControl alloc];
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"New" value:&stru_1002133B8 table:0];
    v23[0] = v12;
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"Replied" value:&stru_1002133B8 table:0];
    v23[1] = v14;
    v15 = [NSArray arrayWithObjects:v23 count:2];
    v16 = [v10 initWithItems:v15];
    segmentedControl = v9->_segmentedControl;
    v9->_segmentedControl = v16;

    [(UISegmentedControl *)v9->_segmentedControl setSelectedSegmentIndex:0];
    [(UISegmentedControl *)v9->_segmentedControl addTarget:v9 action:"segmentedControlValueChanged:" forControlEvents:4096];
    [(UISegmentedControl *)v9->_segmentedControl sizeToFit];
    [(UISegmentedControl *)v9->_segmentedControl setAccessibilityIdentifier:@"inbox-switcher"];
    if (v9->_destination != 2)
    {
      v18 = v9->_segmentedControl;
      v19 = [(InboxSwitcherViewController *)v9 navigationItem];
      [v19 setTitleView:v18];
    }

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v9 selector:"identityDidChange:" name:CUIKCalendarModelIdentityChangedNotification object:0];
  }

  return v9;
}

- (void)setDestination:(unint64_t)a3
{
  self->_destination = a3;
  [(InboxNewSectionViewController *)self->_newSectionViewController setDestination:?];
  [(InboxRepliedSectionViewController *)self->_repliedSectionViewController setDestination:a3];
  if (self->_destination == 2)
  {
    v5 = [(InboxSwitcherViewController *)self navigationItem];
    [v5 setTitleView:0];

    v6 = [(InboxSwitcherViewController *)self navigationItem];
    [v6 setTitle:0];

    v7 = +[UIColor secondarySystemBackgroundColor];
    v8 = [(InboxRepliedSectionViewController *)self->_repliedSectionViewController tableView];
    [v8 setPreferredBackgroundColor:v7];

    +[UIColor secondarySystemBackgroundColor];
  }

  else
  {
    segmentedControl = self->_segmentedControl;
    v10 = [(InboxSwitcherViewController *)self navigationItem];
    [v10 setTitleView:segmentedControl];

    v11 = +[UIColor systemBackgroundColor];
    v12 = [(InboxRepliedSectionViewController *)self->_repliedSectionViewController tableView];
    [v12 setPreferredBackgroundColor:v11];

    +[UIColor systemBackgroundColor];
  }
  v13 = ;
  v14 = [(InboxRepliedSectionViewController *)self->_repliedSectionViewController tableView];
  [v14 setBackgroundColor:v13];

  [(InboxSwitcherViewController *)self _setDoneButtonState];
}

- (void)loadView
{
  v3 = objc_alloc_init(UIView);
  [v3 setAutoresizingMask:18];
  [(InboxSwitcherViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = InboxSwitcherViewController;
  [(InboxSwitcherViewController *)&v4 viewDidLoad];
  v3 = [(InboxSwitcherViewController *)self _showViewControllerAtIndex:0];
  [(InboxSwitcherViewController *)self _setDoneButtonState];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = InboxSwitcherViewController;
  v7 = a4;
  [(InboxSwitcherViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C94A0;
  v8[3] = &unk_10020F240;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = InboxSwitcherViewController;
  [(InboxSwitcherViewController *)&v6 viewWillAppear:?];
  v5 = [(InboxSwitcherViewController *)self navigationController];
  [v5 setToolbarHidden:1 animated:1];

  [(UIViewController *)self->_currentViewController beginAppearanceTransition:1 animated:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = InboxSwitcherViewController;
  [(InboxSwitcherViewController *)&v4 viewDidAppear:a3];
  [(UIViewController *)self->_currentViewController endAppearanceTransition];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = InboxSwitcherViewController;
  [(InboxSwitcherViewController *)&v5 viewWillDisappear:?];
  [(UIViewController *)self->_currentViewController beginAppearanceTransition:0 animated:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = InboxSwitcherViewController;
  [(InboxSwitcherViewController *)&v4 viewDidDisappear:a3];
  [(UIViewController *)self->_currentViewController endAppearanceTransition];
}

- (CGSize)preferredContentSize
{
  [(UIViewController *)self->_currentViewController preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)inboxNewSectionViewController:(id)a3 shouldCloseAnimated:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_switcherDelegate);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_switcherDelegate);
    [v7 inboxSwitcherViewController:self shouldCloseAnimated:v4];
  }
}

- (void)inboxNewSectionViewController:(id)a3 inspectEvent:(id)a4
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_switcherDelegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_switcherDelegate);
    [v6 inboxSwitcherViewController:self inspectEvent:v7];
  }
}

- (void)inboxNewSectionViewController:(id)a3 viewCommentsForEvent:(id)a4
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_switcherDelegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_switcherDelegate);
    [v6 inboxSwitcherViewController:self viewCommentsForEvent:v7];
  }
}

- (void)inboxNewSectionViewController:(id)a3 viewProposedTimeForAttendee:(id)a4 onEvent:(id)a5
{
  v10 = a4;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_switcherDelegate);

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_switcherDelegate);
    [v9 inboxSwitcherViewController:self viewProposedTimeForAttendee:v10 onEvent:v7];
  }
}

- (void)attemptDisplayReviewPrompt
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_switcherDelegate);
    [v5 attemptDisplayReviewPrompt];
  }
}

- (void)inboxRepliedSectionViewController:(id)a3 inspectEvent:(id)a4
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_switcherDelegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_switcherDelegate);
    [v6 inboxSwitcherViewController:self inspectEvent:v7];
  }
}

- (void)inboxWillDismiss
{
  [(InboxNewSectionViewController *)self->_newSectionViewController inboxWillDismiss];
  repliedSectionViewController = self->_repliedSectionViewController;

  [(InboxRepliedSectionViewController *)repliedSectionViewController inboxWillDismiss];
}

- (void)segmentedControlValueChanged:(id)a3
{
  v4 = [a3 selectedSegmentIndex];
  v5 = [(InboxSwitcherViewController *)self _showViewControllerAtIndex:v4];
  v8 = @"section";
  v6 = [NSNumber numberWithInteger:v4];
  v9 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  CalAnalyticsSendEvent();
}

- (id)_viewControllerForIndex:(int64_t)a3
{
  if (a3 == 1)
  {
    v5 = 48;
    if (!self->_repliedSectionViewController)
    {
      v11 = [[InboxRepliedSectionViewController alloc] initWithModel:self->_model];
      repliedSectionViewController = self->_repliedSectionViewController;
      self->_repliedSectionViewController = v11;

      [(InboxRepliedSectionViewController *)self->_repliedSectionViewController setInboxRepliedSectionDelegate:self];
      [(InboxRepliedSectionViewController *)self->_repliedSectionViewController setDestination:self->_destination];
      v8 = kCalUILogHandle;
      if (!os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }

      v13 = self->_repliedSectionViewController;
      v19 = 138412290;
      v20 = v13;
      v10 = "Generated the 'replied' section view controller: [%@]";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, v10, &v19, 0xCu);
LABEL_10:
      if (self->_destination == 2)
      {
        v14 = +[UIColor secondarySystemBackgroundColor];
        v15 = [*(&self->super.super.super.isa + v5) tableView];
        [v15 setPreferredBackgroundColor:v14];
      }
    }

LABEL_12:
    v16 = *(&self->super.super.super.isa + v5);
    goto LABEL_16;
  }

  if (!a3)
  {
    v5 = 40;
    if (!self->_newSectionViewController)
    {
      v6 = [[InboxNewSectionViewController alloc] initWithModel:self->_model];
      newSectionViewController = self->_newSectionViewController;
      self->_newSectionViewController = v6;

      [(InboxNewSectionViewController *)self->_newSectionViewController setInboxNewSectionDelegate:self];
      [(InboxNewSectionViewController *)self->_newSectionViewController setDestination:self->_destination];
      v8 = kCalUILogHandle;
      if (!os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }

      v9 = self->_newSectionViewController;
      v19 = 138412290;
      v20 = v9;
      v10 = "Generated the 'new' section view controller: [%@]";
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v17 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
  {
    v19 = 134217984;
    v20 = a3;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Could not find view controller for index: [%ld]", &v19, 0xCu);
  }

  v16 = 0;
LABEL_16:

  return v16;
}

- (id)_showViewControllerAtIndex:(int64_t)a3
{
  v4 = [(InboxSwitcherViewController *)self _viewControllerForIndex:a3];
  if (self->_currentViewController != v4)
  {
    v5 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412290;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Preparing to show view controller: [%@]", &v17, 0xCu);
    }

    currentViewController = self->_currentViewController;
    if (currentViewController)
    {
      [(UIViewController *)currentViewController beginAppearanceTransition:0 animated:0];
      v7 = [(UIViewController *)self->_currentViewController view];
      [v7 removeFromSuperview];

      [(UIViewController *)self->_currentViewController endAppearanceTransition];
      [(UIViewController *)self->_currentViewController removeFromParentViewController];
    }

    [(InboxSwitcherViewController *)self addChildViewController:v4];
    [(UIViewController *)v4 didMoveToParentViewController:self];
    objc_storeStrong(&self->_currentViewController, v4);
    v8 = [(InboxSwitcherViewController *)self view];
    v9 = [(UIViewController *)v4 view];
    [v8 bounds];
    [v9 setFrame:?];
    [v9 setAutoresizingMask:18];
    [(UIViewController *)v4 beginAppearanceTransition:1 animated:0];
    [v8 addSubview:v9];
    [(UIViewController *)v4 endAppearanceTransition];
    if (self->_destination == 2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v8;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;
      v12 = v11;
      v13 = 1.0;
      if (v11)
      {
        [v11 contentOffset];
        if (v14 != 0.0)
        {
          v13 = 0.0;
        }
      }

      v15 = [(InboxSwitcherViewController *)self navigationItem];
      [v15 _setManualScrollEdgeAppearanceProgress:v13];
    }

    else
    {
      v12 = [(UIViewController *)v4 title];
      [(InboxSwitcherViewController *)self setTitle:v12];
    }
  }

  return v4;
}

- (InboxSwitcherViewControllerDelegate)switcherDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherDelegate);

  return WeakRetained;
}

@end
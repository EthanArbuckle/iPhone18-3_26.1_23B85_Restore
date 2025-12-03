@interface CACCommandSearchResultsViewController
- (CACSearchResultPresenter)delegate;
- (id)specifiers;
- (void)keyboardWasShown:(id)shown;
- (void)keyboardWillBeHidden:(id)hidden;
- (void)presentCustomAction:(id)action;
- (void)registerForKeyboardNotifications;
- (void)setSearchResults:(id)results;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation CACCommandSearchResultsViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CACCommandSearchResultsViewController;
  [(CACCommandSearchResultsViewController *)&v3 viewDidLoad];
  [(CACCommandSearchResultsViewController *)self registerForKeyboardNotifications];
}

- (id)specifiers
{
  v30 = +[NSMutableArray array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  selfCopy = self;
  obj = [(CACCommandSearchResultsViewController *)self searchResults];
  v26 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v26)
  {
    v25 = *v36;
    do
    {
      v4 = 0;
      do
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v4;
        v5 = *(*(&v35 + 1) + 8 * v4);
        commandGroup = [v5 commandGroup];
        displayString = [commandGroup displayString];
        v8 = [PSSpecifier groupSpecifierWithName:displayString];

        v27 = v8;
        [v30 addObject:v8];
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        commandItems = [v5 commandItems];
        v9 = [commandItems countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v32;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v32 != v11)
              {
                objc_enumerationMutation(commandItems);
              }

              v13 = *(*(&v31 + 1) + 8 * i);
              if ([v13 isCustom])
              {
                v14 = 0;
              }

              else
              {
                v14 = objc_opt_class();
              }

              displayString2 = [v13 displayString];
              v16 = [PSSpecifier preferenceSpecifierNamed:displayString2 target:selfCopy set:0 get:0 detail:v14 cell:2 edit:0];

              if ([v13 isCustom])
              {
                [v16 setControllerLoadAction:"presentCustomAction:"];
              }

              [v16 setProperty:v13 forKey:@"CACCommandItem"];
              [v30 addObject:v16];
            }

            v10 = [commandItems countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v10);
        }

        v4 = v28 + 1;
      }

      while ((v28 + 1) != v26);
      v26 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v26);
  }

  v17 = OBJC_IVAR___PSListController__specifiers;
  v18 = selfCopy;
  v19 = *&selfCopy->AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&selfCopy->AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers] = v30;
  v20 = v30;

  v21 = *&v18->AXUISettingsListController_opaque[v17];
  v22 = v21;

  return v21;
}

- (void)setSearchResults:(id)results
{
  resultsCopy = results;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  searchResults = selfCopy->_searchResults;
  selfCopy->_searchResults = resultsCopy;
  v7 = resultsCopy;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_89A4;
  block[3] = &unk_28EE8;
  block[4] = selfCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_sync_exit(selfCopy);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  searchResults = [(CACCommandSearchResultsViewController *)self searchResults];
  v8 = [searchResults objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  commandItems = [v8 commandItems];
  v10 = [commandItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  if ([v10 isCustom])
  {
    v11 = 0;
  }

  else
  {
    v11 = objc_opt_class();
  }

  displayString = [v10 displayString];
  v13 = [PSSpecifier preferenceSpecifierNamed:displayString target:self set:0 get:0 detail:v11 cell:2 edit:0];

  if ([v10 isCustom])
  {
    [v13 setControllerLoadAction:"presentCustomAction:"];
  }

  [v13 setProperty:v10 forKey:@"CACCommandItem"];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];

  delegate = [(CACCommandSearchResultsViewController *)self delegate];
  [delegate searchResultSpecifierSelected:v13];
}

- (void)registerForKeyboardNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"keyboardWasShown:" name:UIKeyboardDidShowNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"keyboardWillBeHidden:" name:UIKeyboardWillHideNotification object:0];
}

- (void)keyboardWasShown:(id)shown
{
  userInfo = [shown userInfo];
  v4 = [userInfo objectForKey:UIKeyboardFrameBeginUserInfoKey];
  [v4 CGRectValue];
  v6 = v5;

  contentScrollView = [(CACCommandSearchResultsViewController *)self contentScrollView];
  [contentScrollView setContentInset:{0.0, 0.0, v6, 0.0}];

  contentScrollView2 = [(CACCommandSearchResultsViewController *)self contentScrollView];
  [contentScrollView2 setScrollIndicatorInsets:{0.0, 0.0, v6, 0.0}];
}

- (void)keyboardWillBeHidden:(id)hidden
{
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  contentScrollView = [(CACCommandSearchResultsViewController *)self contentScrollView];
  [contentScrollView setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  contentScrollView2 = [(CACCommandSearchResultsViewController *)self contentScrollView];
  [contentScrollView2 setScrollIndicatorInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
}

- (void)presentCustomAction:(id)action
{
  actionCopy = action;
  v7 = objc_alloc_init(CACCustomCommandEditorViewController);
  v5 = [actionCopy propertyForKey:@"CACCommandItem"];

  [v7 setCommandItem:v5];
  v6 = [[UINavigationController alloc] initWithRootViewController:v7];
  [(CACCommandSearchResultsViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (CACSearchResultPresenter)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
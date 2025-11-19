@interface CACCommandSearchResultsViewController
- (CACSearchResultPresenter)delegate;
- (id)specifiers;
- (void)keyboardWasShown:(id)a3;
- (void)keyboardWillBeHidden:(id)a3;
- (void)presentCustomAction:(id)a3;
- (void)registerForKeyboardNotifications;
- (void)setSearchResults:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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
  v3 = self;
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
        v6 = [v5 commandGroup];
        v7 = [v6 displayString];
        v8 = [PSSpecifier groupSpecifierWithName:v7];

        v27 = v8;
        [v30 addObject:v8];
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = [v5 commandItems];
        v9 = [v29 countByEnumeratingWithState:&v31 objects:v39 count:16];
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
                objc_enumerationMutation(v29);
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

              v15 = [v13 displayString];
              v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:v3 set:0 get:0 detail:v14 cell:2 edit:0];

              if ([v13 isCustom])
              {
                [v16 setControllerLoadAction:"presentCustomAction:"];
              }

              [v16 setProperty:v13 forKey:@"CACCommandItem"];
              [v30 addObject:v16];
            }

            v10 = [v29 countByEnumeratingWithState:&v31 objects:v39 count:16];
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
  v18 = v3;
  v19 = *&v3->AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&v3->AXUISettingsListController_opaque[OBJC_IVAR___PSListController__specifiers] = v30;
  v20 = v30;

  v21 = *&v18->AXUISettingsListController_opaque[v17];
  v22 = v21;

  return v21;
}

- (void)setSearchResults:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  searchResults = v5->_searchResults;
  v5->_searchResults = v4;
  v7 = v4;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_89A4;
  block[3] = &unk_28EE8;
  block[4] = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_sync_exit(v5);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v15 = a4;
  v6 = a3;
  v7 = [(CACCommandSearchResultsViewController *)self searchResults];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v15, "section")}];

  v9 = [v8 commandItems];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v15, "row")}];

  if ([v10 isCustom])
  {
    v11 = 0;
  }

  else
  {
    v11 = objc_opt_class();
  }

  v12 = [v10 displayString];
  v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:v11 cell:2 edit:0];

  if ([v10 isCustom])
  {
    [v13 setControllerLoadAction:"presentCustomAction:"];
  }

  [v13 setProperty:v10 forKey:@"CACCommandItem"];
  [v6 deselectRowAtIndexPath:v15 animated:1];

  v14 = [(CACCommandSearchResultsViewController *)self delegate];
  [v14 searchResultSpecifierSelected:v13];
}

- (void)registerForKeyboardNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"keyboardWasShown:" name:UIKeyboardDidShowNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"keyboardWillBeHidden:" name:UIKeyboardWillHideNotification object:0];
}

- (void)keyboardWasShown:(id)a3
{
  v9 = [a3 userInfo];
  v4 = [v9 objectForKey:UIKeyboardFrameBeginUserInfoKey];
  [v4 CGRectValue];
  v6 = v5;

  v7 = [(CACCommandSearchResultsViewController *)self contentScrollView];
  [v7 setContentInset:{0.0, 0.0, v6, 0.0}];

  v8 = [(CACCommandSearchResultsViewController *)self contentScrollView];
  [v8 setScrollIndicatorInsets:{0.0, 0.0, v6, 0.0}];
}

- (void)keyboardWillBeHidden:(id)a3
{
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v7 = [(CACCommandSearchResultsViewController *)self contentScrollView];
  [v7 setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  v8 = [(CACCommandSearchResultsViewController *)self contentScrollView];
  [v8 setScrollIndicatorInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
}

- (void)presentCustomAction:(id)a3
{
  v4 = a3;
  v7 = objc_alloc_init(CACCustomCommandEditorViewController);
  v5 = [v4 propertyForKey:@"CACCommandItem"];

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
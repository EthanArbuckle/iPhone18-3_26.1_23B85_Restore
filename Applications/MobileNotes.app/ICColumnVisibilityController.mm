@interface ICColumnVisibilityController
- (BOOL)shouldForceShowMainSplitViewColumn:(int64_t)column;
- (ICColumnVisibilityController)initWithViewControllerManager:(id)manager;
- (ICMainSplitViewController)mainSplitViewController;
- (ICTrailingSidebarSplitViewController)trailingColumnSplitViewController;
- (ICViewControllerManager)viewControllerManager;
- (id)topViewControllerForMainSplitViewColumn:(int64_t)column;
- (void)splitViewWillTransitionToSize:(id)size;
@end

@implementation ICColumnVisibilityController

- (ICColumnVisibilityController)initWithViewControllerManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = ICColumnVisibilityController;
  v5 = [(ICColumnVisibilityController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewControllerManager, managerCopy);
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v6 selector:"splitViewWillTransitionToSize:" name:@"ICSplitViewControllerWillTransitionToSizeNotification" object:0];
  }

  return v6;
}

- (ICMainSplitViewController)mainSplitViewController
{
  viewControllerManager = [(ICColumnVisibilityController *)self viewControllerManager];
  mainSplitViewController = [viewControllerManager mainSplitViewController];

  return mainSplitViewController;
}

- (ICTrailingSidebarSplitViewController)trailingColumnSplitViewController
{
  objc_opt_class();
  viewControllerManager = [(ICColumnVisibilityController *)self viewControllerManager];
  trailingSidebarViewController = [viewControllerManager trailingSidebarViewController];
  v5 = ICDynamicCast();

  return v5;
}

- (void)splitViewWillTransitionToSize:(id)size
{
  sizeCopy = size;
  object = [sizeCopy object];
  traitCollection = [object traitCollection];
  ic_hasCompactSize = [traitCollection ic_hasCompactSize];

  if ((ic_hasCompactSize & 1) == 0)
  {
    userInfo = [sizeCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:@"ICSplitViewControllerWillTransitionToSizeNotificationNewSizeKey"];
    [v9 CGSizeValue];
    v11 = v10;
    v13 = v12;

    userInfo2 = [sizeCopy userInfo];
    v15 = [userInfo2 objectForKeyedSubscript:@"ICSplitViewControllerWillTransitionToSizeNotificationTransitionCoordinatorKey"];

    trailingColumnSplitViewController = [(ICColumnVisibilityController *)self trailingColumnSplitViewController];
    view = [trailingColumnSplitViewController view];
    [view bounds];
    v19 = v18;
    v21 = v20;

    v22 = v19 < v21 && v11 > v13;
    trailingColumnSplitViewController2 = [(ICColumnVisibilityController *)self trailingColumnSplitViewController];

    if (object == trailingColumnSplitViewController2)
    {
      viewControllerManager = [(ICColumnVisibilityController *)self viewControllerManager];
      activityStreamSelection = [viewControllerManager activityStreamSelection];

      if (v22)
      {
        displayMode = [object displayMode];
        v29 = 1;
        if (displayMode != 3 && !activityStreamSelection)
        {
          if ([(ICColumnVisibilityController *)self mostRecentTrailingColumnLandscapeDisplayMode]== 2)
          {
            [(ICColumnVisibilityController *)self setMostRecentMainLandscapeDisplayMode:2];
          }

          v29 = 0;
        }
      }

      else
      {
        v54 = v15;
        viewControllerManager2 = [(ICColumnVisibilityController *)self viewControllerManager];
        window = [viewControllerManager2 window];
        rootViewController = [window rootViewController];
        ic_topViewController = [rootViewController ic_topViewController];
        ic_hasFullScreenModalPresentationStyle = [ic_topViewController ic_hasFullScreenModalPresentationStyle];

        if (ic_hasFullScreenModalPresentationStyle)
        {
          v29 = 0;
        }

        else
        {
          -[ICColumnVisibilityController setMostRecentTrailingColumnLandscapeDisplayMode:](self, "setMostRecentTrailingColumnLandscapeDisplayMode:", [object displayMode]);
          v29 = [object displayMode] == 2 && activityStreamSelection == 0;
        }

        v15 = v54;
      }

      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_10007AA4C;
      v61[3] = &unk_100646EE8;
      v64 = v22;
      v61[4] = self;
      v62 = activityStreamSelection;
      v65 = v29;
      v63 = object;
      v40 = activityStreamSelection;
      v41 = objc_retainBlock(v61);

      goto LABEL_47;
    }

    mainSplitViewController = [(ICColumnVisibilityController *)self mainSplitViewController];

    if (object == mainSplitViewController)
    {
      trailingColumnSplitViewController3 = [(ICColumnVisibilityController *)self trailingColumnSplitViewController];
      if ([trailingColumnSplitViewController3 displayMode] == 1)
      {

        goto LABEL_18;
      }

      v35 = +[UIDevice ic_isiPad];

      if ((v35 & 1) == 0)
      {
LABEL_18:
        if (+[UIDevice ic_isVision])
        {
          viewControllerManager3 = [(ICColumnVisibilityController *)self viewControllerManager];
          if ([viewControllerManager3 noteContainerViewMode] == 1)
          {
            viewControllerManager4 = [(ICColumnVisibilityController *)self viewControllerManager];
            isNoteEditorVisible = [viewControllerManager4 isNoteEditorVisible];

            if (isNoteEditorVisible)
            {
              goto LABEL_52;
            }
          }

          else
          {
          }
        }

        if (v11 != v19 && v13 != v21)
        {
          [object setPreferredDisplayMode:0];
        }

        v42 = &__kCFBooleanTrue;
        if (v22)
        {
          if ([(ICColumnVisibilityController *)self mostRecentMainLandscapeDisplayMode]== 1)
          {
            v43 = &__kCFBooleanFalse;
            v44 = &__kCFBooleanFalse;
LABEL_39:
            if ([(ICColumnVisibilityController *)self shouldForceShowMainSplitViewColumn:0])
            {
              v43 = &__kCFBooleanTrue;
            }

            if (![(ICColumnVisibilityController *)self shouldForceShowMainSplitViewColumn:1])
            {
              v42 = v44;
            }

            v57[0] = _NSConcreteStackBlock;
            v57[1] = 3221225472;
            v57[2] = sub_10007AB24;
            v57[3] = &unk_100645D40;
            v58 = v43;
            v45 = object;
            v59 = v45;
            v60 = v42;
            v41 = objc_retainBlock(v57);
            if (!v22)
            {
              v46 = +[UIApplication sharedApplication];
              applicationState = [v46 applicationState];

              if (!applicationState)
              {
                -[ICColumnVisibilityController setMostRecentMainLandscapeDisplayMode:](self, "setMostRecentMainLandscapeDisplayMode:", [v45 displayMode]);
              }
            }

            v40 = v58;
LABEL_47:

            if (v41)
            {
              v48 = +[UIApplication sharedApplication];
              applicationState2 = [v48 applicationState];

              if (applicationState2 == 2)
              {
                (v41[2])(v41);
              }

              else
              {
                v55[0] = _NSConcreteStackBlock;
                v55[1] = 3221225472;
                v55[2] = sub_10007ABC0;
                v55[3] = &unk_1006461A0;
                v56 = v41;
                v50 = v41;
                [v15 animateAlongsideTransition:v55 completion:0];
              }
            }

            goto LABEL_52;
          }

          viewControllerManager5 = [(ICColumnVisibilityController *)self viewControllerManager];
          noteContainerViewMode = [viewControllerManager5 noteContainerViewMode];

          mostRecentMainLandscapeDisplayMode = [(ICColumnVisibilityController *)self mostRecentMainLandscapeDisplayMode];
          if (noteContainerViewMode == 1)
          {
            v44 = 0;
            if (mostRecentMainLandscapeDisplayMode == 2)
            {
              v43 = &__kCFBooleanTrue;
            }

            else
            {
              v43 = 0;
            }

            goto LABEL_39;
          }

          if (mostRecentMainLandscapeDisplayMode == 4)
          {
            v43 = &__kCFBooleanTrue;
          }

          else
          {
            v43 = 0;
          }

          if ([(ICColumnVisibilityController *)self mostRecentMainLandscapeDisplayMode]== 2 || [(ICColumnVisibilityController *)self mostRecentMainLandscapeDisplayMode]== 4)
          {
            v44 = &__kCFBooleanTrue;
            goto LABEL_39;
          }
        }

        else
        {
          v43 = 0;
        }

        v44 = 0;
        goto LABEL_39;
      }
    }

LABEL_52:
  }
}

- (BOOL)shouldForceShowMainSplitViewColumn:(int64_t)column
{
  v4 = [(ICColumnVisibilityController *)self topViewControllerForMainSplitViewColumn:column];
  viewControllerManager = [(ICColumnVisibilityController *)self viewControllerManager];
  if ([viewControllerManager isTrailingContentVisible])
  {
    isActive = 0;
  }

  else
  {
    mainSplitViewController = [(ICColumnVisibilityController *)self mainSplitViewController];
    if ([mainSplitViewController displayMode] == 1)
    {
      isActive = 0;
    }

    else if ([v4 isEditing])
    {
      isActive = 1;
    }

    else
    {
      navigationItem = [v4 navigationItem];
      searchController = [navigationItem searchController];
      isActive = [searchController isActive];
    }
  }

  return isActive;
}

- (id)topViewControllerForMainSplitViewColumn:(int64_t)column
{
  mainSplitViewController = [(ICColumnVisibilityController *)self mainSplitViewController];
  v5 = [mainSplitViewController viewControllerForColumn:column];

  objc_opt_class();
  v6 = ICDynamicCast();
  topViewController = [v6 topViewController];

  return topViewController;
}

- (ICViewControllerManager)viewControllerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerManager);

  return WeakRetained;
}

@end
@interface ICColumnVisibilityController
- (BOOL)shouldForceShowMainSplitViewColumn:(int64_t)a3;
- (ICColumnVisibilityController)initWithViewControllerManager:(id)a3;
- (ICMainSplitViewController)mainSplitViewController;
- (ICTrailingSidebarSplitViewController)trailingColumnSplitViewController;
- (ICViewControllerManager)viewControllerManager;
- (id)topViewControllerForMainSplitViewColumn:(int64_t)a3;
- (void)splitViewWillTransitionToSize:(id)a3;
@end

@implementation ICColumnVisibilityController

- (ICColumnVisibilityController)initWithViewControllerManager:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICColumnVisibilityController;
  v5 = [(ICColumnVisibilityController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewControllerManager, v4);
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v6 selector:"splitViewWillTransitionToSize:" name:@"ICSplitViewControllerWillTransitionToSizeNotification" object:0];
  }

  return v6;
}

- (ICMainSplitViewController)mainSplitViewController
{
  v2 = [(ICColumnVisibilityController *)self viewControllerManager];
  v3 = [v2 mainSplitViewController];

  return v3;
}

- (ICTrailingSidebarSplitViewController)trailingColumnSplitViewController
{
  objc_opt_class();
  v3 = [(ICColumnVisibilityController *)self viewControllerManager];
  v4 = [v3 trailingSidebarViewController];
  v5 = ICDynamicCast();

  return v5;
}

- (void)splitViewWillTransitionToSize:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v5 traitCollection];
  v7 = [v6 ic_hasCompactSize];

  if ((v7 & 1) == 0)
  {
    v8 = [v4 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"ICSplitViewControllerWillTransitionToSizeNotificationNewSizeKey"];
    [v9 CGSizeValue];
    v11 = v10;
    v13 = v12;

    v14 = [v4 userInfo];
    v15 = [v14 objectForKeyedSubscript:@"ICSplitViewControllerWillTransitionToSizeNotificationTransitionCoordinatorKey"];

    v16 = [(ICColumnVisibilityController *)self trailingColumnSplitViewController];
    v17 = [v16 view];
    [v17 bounds];
    v19 = v18;
    v21 = v20;

    v22 = v19 < v21 && v11 > v13;
    v23 = [(ICColumnVisibilityController *)self trailingColumnSplitViewController];

    if (v5 == v23)
    {
      v26 = [(ICColumnVisibilityController *)self viewControllerManager];
      v27 = [v26 activityStreamSelection];

      if (v22)
      {
        v28 = [v5 displayMode];
        v29 = 1;
        if (v28 != 3 && !v27)
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
        v30 = [(ICColumnVisibilityController *)self viewControllerManager];
        v31 = [v30 window];
        v32 = [v31 rootViewController];
        v33 = [v32 ic_topViewController];
        v34 = [v33 ic_hasFullScreenModalPresentationStyle];

        if (v34)
        {
          v29 = 0;
        }

        else
        {
          -[ICColumnVisibilityController setMostRecentTrailingColumnLandscapeDisplayMode:](self, "setMostRecentTrailingColumnLandscapeDisplayMode:", [v5 displayMode]);
          v29 = [v5 displayMode] == 2 && v27 == 0;
        }

        v15 = v54;
      }

      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_10007AA4C;
      v61[3] = &unk_100646EE8;
      v64 = v22;
      v61[4] = self;
      v62 = v27;
      v65 = v29;
      v63 = v5;
      v40 = v27;
      v41 = objc_retainBlock(v61);

      goto LABEL_47;
    }

    v24 = [(ICColumnVisibilityController *)self mainSplitViewController];

    if (v5 == v24)
    {
      v25 = [(ICColumnVisibilityController *)self trailingColumnSplitViewController];
      if ([v25 displayMode] == 1)
      {

        goto LABEL_18;
      }

      v35 = +[UIDevice ic_isiPad];

      if ((v35 & 1) == 0)
      {
LABEL_18:
        if (+[UIDevice ic_isVision])
        {
          v36 = [(ICColumnVisibilityController *)self viewControllerManager];
          if ([v36 noteContainerViewMode] == 1)
          {
            v37 = [(ICColumnVisibilityController *)self viewControllerManager];
            v38 = [v37 isNoteEditorVisible];

            if (v38)
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
          [v5 setPreferredDisplayMode:0];
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
            v45 = v5;
            v59 = v45;
            v60 = v42;
            v41 = objc_retainBlock(v57);
            if (!v22)
            {
              v46 = +[UIApplication sharedApplication];
              v47 = [v46 applicationState];

              if (!v47)
              {
                -[ICColumnVisibilityController setMostRecentMainLandscapeDisplayMode:](self, "setMostRecentMainLandscapeDisplayMode:", [v45 displayMode]);
              }
            }

            v40 = v58;
LABEL_47:

            if (v41)
            {
              v48 = +[UIApplication sharedApplication];
              v49 = [v48 applicationState];

              if (v49 == 2)
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

          v51 = [(ICColumnVisibilityController *)self viewControllerManager];
          v52 = [v51 noteContainerViewMode];

          v53 = [(ICColumnVisibilityController *)self mostRecentMainLandscapeDisplayMode];
          if (v52 == 1)
          {
            v44 = 0;
            if (v53 == 2)
            {
              v43 = &__kCFBooleanTrue;
            }

            else
            {
              v43 = 0;
            }

            goto LABEL_39;
          }

          if (v53 == 4)
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

- (BOOL)shouldForceShowMainSplitViewColumn:(int64_t)a3
{
  v4 = [(ICColumnVisibilityController *)self topViewControllerForMainSplitViewColumn:a3];
  v5 = [(ICColumnVisibilityController *)self viewControllerManager];
  if ([v5 isTrailingContentVisible])
  {
    v6 = 0;
  }

  else
  {
    v7 = [(ICColumnVisibilityController *)self mainSplitViewController];
    if ([v7 displayMode] == 1)
    {
      v6 = 0;
    }

    else if ([v4 isEditing])
    {
      v6 = 1;
    }

    else
    {
      v8 = [v4 navigationItem];
      v9 = [v8 searchController];
      v6 = [v9 isActive];
    }
  }

  return v6;
}

- (id)topViewControllerForMainSplitViewColumn:(int64_t)a3
{
  v4 = [(ICColumnVisibilityController *)self mainSplitViewController];
  v5 = [v4 viewControllerForColumn:a3];

  objc_opt_class();
  v6 = ICDynamicCast();
  v7 = [v6 topViewController];

  return v7;
}

- (ICViewControllerManager)viewControllerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerManager);

  return WeakRetained;
}

@end
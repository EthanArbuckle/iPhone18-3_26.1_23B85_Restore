@interface SiriIntentsSnippetViewController
- (BOOL)hasDefaultTapActionForTemplatedStackSnippetView:(id)a3;
- (CGSize)maximumSizeForRemoteViewController:(id)a3;
- (CGSize)minimumSizeForRemoteViewController:(id)a3;
- (SiriIntentsSnippetViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIEdgeInsets)defaultViewInsets;
- (double)desiredHeight;
- (void)_connectToWidgetForInteraction:(id)a3;
- (void)_finishLoadingViewIfNecessary;
- (void)_redactTemplateViewControllersForRepresentedKeyPaths:(id)a3;
- (void)_updateTemplateViewControllerCompression;
- (void)didMoveToParentViewController:(id)a3;
- (void)loadView;
- (void)mapTemplateViewController:(id)a3 didModifyPlacemark:(id)a4;
- (void)presentDetailsForTemplateViewController:(id)a3;
- (void)remoteViewController:(id)a3 desiresConstrainedSize:(CGSize)a4;
- (void)remoteViewControllerServiceDidTerminate:(id)a3;
- (void)selectionTemplateViewControllerWasSelected:(id)a3;
- (void)setSnippet:(id)a3;
- (void)siriDidDeactivate;
- (void)viewDidLayoutSubviews;
- (void)viewWantsDefaultTapAction:(id)a3;
@end

@implementation SiriIntentsSnippetViewController

- (SiriIntentsSnippetViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v17.receiver = self;
  v17.super_class = SiriIntentsSnippetViewController;
  v4 = [(SiriIntentsSnippetViewController *)&v17 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(SiriIntentsSnippetViewController *)v4 setLoading:1];
    v6 = objc_alloc_init(NSMutableSet);
    templateViewControllers = v5->_templateViewControllers;
    v5->_templateViewControllers = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    templateViewControllerSetsByKeyPaths = v5->_templateViewControllerSetsByKeyPaths;
    v5->_templateViewControllerSetsByKeyPaths = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    detailSnippetsForAceIds = v5->_detailSnippetsForAceIds;
    v5->_detailSnippetsForAceIds = v10;

    v12 = objc_alloc_init(NSMutableDictionary);
    serverBoundCommandsForAceIds = v5->_serverBoundCommandsForAceIds;
    v5->_serverBoundCommandsForAceIds = v12;

    v14 = objc_alloc_init(NSMutableDictionary);
    pendingServerBoundCommandsForTemplateModelIdentifiers = v5->_pendingServerBoundCommandsForTemplateModelIdentifiers;
    v5->_pendingServerBoundCommandsForTemplateModelIdentifiers = v14;
  }

  return v5;
}

- (void)loadView
{
  v3 = objc_alloc_init(SiriUITemplatedStackSnippetView);
  [v3 setDataSource:self];
  [v3 setDelegate:self];
  [(SiriIntentsSnippetViewController *)self setView:v3];
}

- (void)didMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = SiriIntentsSnippetViewController;
  [(SiriIntentsSnippetViewController *)&v5 didMoveToParentViewController:a3];
  v4 = [(SiriIntentsSnippetViewController *)self view];
  [v4 setNeedsLayout];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = SiriIntentsSnippetViewController;
  [(SiriIntentsSnippetViewController *)&v4 viewDidLayoutSubviews];
  v3 = [(SiriIntentsSnippetViewController *)self delegate];
  [v3 siriViewControllerHeightDidChange:self];
}

- (void)setSnippet:(id)a3
{
  v5 = a3;
  if (self->_snippet != v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_snippet, a3);
      v6 = [(SAIntentGroupSnippet *)self->_snippet appId];
      v7 = [LSApplicationProxy applicationProxyForIdentifier:v6];

      v8 = [UIImage _iconForResourceProxy:v7 format:5];
      appIconImage = self->_appIconImage;
      self->_appIconImage = v8;

      v49 = v7;
      v10 = [v7 localizedName];
      appName = self->_appName;
      self->_appName = v10;

      v12 = [(SAIntentGroupSnippet *)self->_snippet title];
      v13 = [v12 length];
      if (v13)
      {
        v14 = [(SAIntentGroupSnippet *)self->_snippet title];
      }

      else
      {
        v14 = 0;
      }

      objc_storeStrong(&self->_navigationTitle, v14);
      if (v13)
      {
      }

      v15 = [(SiriIntentsSnippetViewController *)self view];
      [v15 reloadData];

      [(NSMutableDictionary *)self->_detailSnippetsForAceIds removeAllObjects];
      [(NSMutableDictionary *)self->_serverBoundCommandsForAceIds removeAllObjects];
      [(NSMutableSet *)self->_templateViewControllers enumerateObjectsUsingBlock:&stru_C3D8];
      [(NSMutableSet *)self->_templateViewControllers removeAllObjects];
      v64 = 0u;
      v65 = 0u;
      v63 = 0u;
      v62 = 0u;
      obj = [(SAIntentGroupSnippet *)self->_snippet snippetTemplates];
      v52 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
      if (v52)
      {
        v51 = *v63;
        do
        {
          v16 = 0;
          do
          {
            if (*v63 != v51)
            {
              objc_enumerationMutation(obj);
            }

            v53 = v16;
            v17 = *(*(&v62 + 1) + 8 * v16);
            v18 = [SiriUITemplateViewController templateViewControllerForTemplateModel:v17];
            [v18 setDelegate:self];
            if ([v18 isActive])
            {
              [(SiriIntentsSnippetViewController *)self addChildViewController:v18];
              v19 = [(SiriIntentsSnippetViewController *)self view];
              v20 = [v18 view];
              [v19 addTemplateSubview:v20];

              [v18 didMoveToParentViewController:self];
            }

            [(NSMutableSet *)self->_templateViewControllers addObject:v18];
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            v21 = [v17 intentSlotKeyPaths];
            v22 = [v21 countByEnumeratingWithState:&v58 objects:v66 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v59;
              do
              {
                for (i = 0; i != v23; i = i + 1)
                {
                  if (*v59 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = *(*(&v58 + 1) + 8 * i);
                  v27 = [(NSMutableDictionary *)self->_templateViewControllerSetsByKeyPaths objectForKey:v26];
                  if (!v27)
                  {
                    v27 = objc_alloc_init(NSMutableSet);
                    [(NSMutableDictionary *)self->_templateViewControllerSetsByKeyPaths setObject:v27 forKey:v26];
                  }

                  [v27 addObject:v18];
                }

                v23 = [v21 countByEnumeratingWithState:&v58 objects:v66 count:16];
              }

              while (v23);
            }

            v28 = [v17 detailSnippet];
            v29 = v28;
            if (v28)
            {
              detailSnippetsForAceIds = self->_detailSnippetsForAceIds;
              v31 = [v28 aceId];
              [(NSMutableDictionary *)detailSnippetsForAceIds setObject:v29 forKey:v31];
            }

            v32 = [v17 intents_serverBoundCommand];
            v33 = v32;
            if (v32)
            {
              serverBoundCommandsForAceIds = self->_serverBoundCommandsForAceIds;
              v35 = [v32 aceId];
              [(NSMutableDictionary *)serverBoundCommandsForAceIds setObject:v33 forKey:v35];
            }

            v16 = v53 + 1;
          }

          while ((v53 + 1) != v52);
          v52 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
        }

        while (v52);
      }

      if ([(SAIntentGroupSnippet *)self->_snippet widgetAllowed])
      {
        v36 = [(SAIntentGroupSnippet *)self->_snippet intent];
        v37 = [v36 typeName];
        v38 = [(SAIntentGroupSnippet *)self->_snippet intent];
        v39 = [v38 data];
        v40 = INIntentCreate();

        v41 = [NSString alloc];
        v42 = [v40 intentId];
        v43 = [v40 typeName];
        v44 = [v40 launchId];
        v45 = [v41 initWithFormat:@"%@-%@-%@", v42, v43, v44];

        v46 = [v45 dataUsingEncoding:4];
        if ([v46 length])
        {
          v54[0] = _NSConcreteStackBlock;
          v54[1] = 3221225472;
          v54[2] = sub_2A74;
          v54[3] = &unk_C428;
          v55 = objc_alloc_init(AFSecurityConnection);
          v56 = v40;
          v57 = self;
          v47 = v55;
          [v47 processData:v46 usingProcedure:5 completion:v54];
        }

        else
        {
          v47 = [[INInteraction alloc] initWithIntent:v40 response:0];
          [(SiriIntentsSnippetViewController *)self _connectToWidgetForInteraction:v47];
        }

        v48 = v49;
      }

      else
      {
        [(SiriIntentsSnippetViewController *)self _finishLoadingViewIfNecessary];
        v48 = v49;
      }
    }
  }
}

- (void)siriDidDeactivate
{
  v4.receiver = self;
  v4.super_class = SiriIntentsSnippetViewController;
  [(SiriIntentsSnippetViewController *)&v4 siriDidDeactivate];
  v3 = [(INUIRemoteViewController *)self->_remoteViewController disconnect];
}

- (UIEdgeInsets)defaultViewInsets
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (double)desiredHeight
{
  v2 = [(SiriIntentsSnippetViewController *)self view];
  [v2 desiredHeight];
  v4 = v3;

  return v4;
}

- (void)_connectToWidgetForInteraction:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2EDC;
  v5[3] = &unk_C4A0;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [INUIRemoteViewController requestRemoteViewControllerForInteraction:v4 delegate:self connectionHandler:v5];
}

- (void)_finishLoadingViewIfNecessary
{
  [(SiriIntentsSnippetViewController *)self _updateTemplateViewControllerCompression];
  if ([(SiriIntentsSnippetViewController *)self isLoading])
  {
    [(SiriIntentsSnippetViewController *)self setLoading:0];
    v3 = [(SiriIntentsSnippetViewController *)self delegate];
    [v3 siriSnippetViewControllerViewDidLoad:self];
  }
}

- (void)_updateTemplateViewControllerCompression
{
  remoteViewController = self->_remoteViewController;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_templateViewControllers;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) setCompressed:{remoteViewController != 0, v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_redactTemplateViewControllersForRepresentedKeyPaths:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableSet *)self->_templateViewControllers mutableCopy];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v25 = *v35;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSMutableDictionary *)self->_templateViewControllerSetsByKeyPaths objectForKey:*(*(&v34 + 1) + 8 * i)];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v31;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v31 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v30 + 1) + 8 * j);
              if ([v5 containsObject:v14])
              {
                [v14 setActive:0];
                [v5 removeObject:v14];
                [v14 didMoveToParentViewController:0];
                v15 = [v14 view];
                [v15 removeFromTemplatedSuperview];

                [v14 removeFromParentViewController];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v30 objects:v39 count:16];
          }

          while (v11);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v7);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v5;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (k = 0; k != v18; k = k + 1)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * k);
        if (([v21 isActive] & 1) == 0)
        {
          [v21 setActive:1];
          [(SiriIntentsSnippetViewController *)self addChildViewController:v21];
          v22 = [(SiriIntentsSnippetViewController *)self view];
          v23 = [v21 view];
          [v22 addTemplateSubview:v23];

          [v21 didMoveToParentViewController:self];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v18);
  }
}

- (BOOL)hasDefaultTapActionForTemplatedStackSnippetView:(id)a3
{
  v3 = [(SAIntentGroupSnippet *)self->_snippet commands];
  v4 = [v3 count] != 0;

  return v4;
}

- (CGSize)minimumSizeForRemoteViewController:(id)a3
{
  v4 = [(SiriIntentsSnippetViewController *)self delegate];
  [v4 siriViewControllerVisibleContentArea:self];
  v6 = v5;

  v7 = 120.0;
  v8 = v6;
  result.height = v7;
  result.width = v8;
  return result;
}

- (CGSize)maximumSizeForRemoteViewController:(id)a3
{
  v4 = [(SiriIntentsSnippetViewController *)self delegate];
  [v4 siriViewControllerVisibleContentArea:self];
  v6 = v5;

  v7 = 200.0;
  v8 = v6;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)remoteViewController:(id)a3 desiresConstrainedSize:(CGSize)a4
{
  height = a4.height;
  v5 = [(SiriIntentsSnippetViewController *)self view:a3];
  [v5 adjustAuxiliaryViewHeight:1 animated:0 completion:height];
}

- (void)remoteViewControllerServiceDidTerminate:(id)a3
{
  [(SiriIntentsSnippetViewController *)self _finishLoadingViewIfNecessary];
  v4 = [(SiriIntentsSnippetViewController *)self view];
  v5 = [v4 auxiliaryView];

  if (v5)
  {
    v6 = [(SiriIntentsSnippetViewController *)self view];
    [v6 setAuxiliaryView:0 atIndex:0 initialHeight:1 animated:0 completion:0.0];
  }
}

- (void)presentDetailsForTemplateViewController:(id)a3
{
  v4 = [a3 templateModelPrivate];
  v5 = [v4 detailIdentifier];

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_detailSnippetsForAceIds objectForKey:v5];
    if (v6)
    {
      v7 = v6;
      v8 = [(SiriIntentsSnippetViewController *)self delegate];
      v10 = v7;
      v9 = [NSArray arrayWithObjects:&v10 count:1];
      [v8 siriSnippetViewController:self pushSirilandSnippets:v9];
    }
  }
}

- (void)selectionTemplateViewControllerWasSelected:(id)a3
{
  v4 = a3;
  [v4 setSelected:1];
  v5 = [v4 templateModelPrivate];
  v6 = [v5 commandIdentifier];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_serverBoundCommandsForAceIds objectForKey:v6];
    if (v7)
    {
      v8 = v7;
      pendingServerBoundCommandsForTemplateModelIdentifiers = self->_pendingServerBoundCommandsForTemplateModelIdentifiers;
      v10 = [v4 templateModelPrivate];
      v11 = [v10 modelIdentifier];
      [(NSMutableDictionary *)pendingServerBoundCommandsForTemplateModelIdentifiers setObject:v8 forKey:v11];
    }
  }

  v12 = [(SiriIntentsSnippetViewController *)self childViewControllers];
  v13 = [v12 count];
  v14 = [v12 indexOfObject:v4];
  v15 = [[NSIndexSet alloc] initWithIndexesInRange:{v14, v13 - v14}];
  v16 = [[NSIndexSet alloc] initWithIndexesInRange:{0, v14 + 1}];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_3BC4;
  v18[3] = &unk_C4C8;
  v18[4] = self;
  v18[5] = v14;
  v17 = objc_retainBlock(v18);
  [v12 enumerateObjectsAtIndexes:v15 options:0 usingBlock:v17];
  [v12 enumerateObjectsAtIndexes:v16 options:2 usingBlock:v17];
}

- (void)mapTemplateViewController:(id)a3 didModifyPlacemark:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [v17 templateModelPrivate];
  v8 = [v7 commandIdentifier];

  if (v8)
  {
    v9 = [(NSMutableDictionary *)self->_serverBoundCommandsForAceIds objectForKey:v8];
    if (v9)
    {
      v10 = v9;
      if ([v9 conformsToProtocol:&OBJC_PROTOCOL___SAIntentGroupSetMapLocation])
      {
        v11 = INIntentSlotValueTransformToLocation();
        v12 = objc_alloc_init(SAIntentGroupProtobufMessage);
        v13 = [v11 data];
        [v12 setData:v13];

        [v10 setLocation:v12];
      }

      pendingServerBoundCommandsForTemplateModelIdentifiers = self->_pendingServerBoundCommandsForTemplateModelIdentifiers;
      v15 = [v17 templateModelPrivate];
      v16 = [v15 modelIdentifier];
      [(NSMutableDictionary *)pendingServerBoundCommandsForTemplateModelIdentifiers setObject:v10 forKey:v16];
    }
  }
}

- (void)viewWantsDefaultTapAction:(id)a3
{
  v4 = [(SAIntentGroupSnippet *)self->_snippet commands];
  v5 = [v4 count];

  if (v5)
  {
    v8 = [(SiriIntentsSnippetViewController *)self delegate];
    v6 = [(SAIntentGroupSnippet *)self->_snippet commands];
    [v8 siriViewController:self performAceCommands:v6];
  }

  else
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[SiriIntentsSnippetViewController viewWantsDefaultTapAction:]";
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s No snippet commands to perform.", buf, 0xCu);
    }
  }
}

@end
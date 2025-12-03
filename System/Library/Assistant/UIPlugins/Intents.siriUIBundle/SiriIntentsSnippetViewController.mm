@interface SiriIntentsSnippetViewController
- (BOOL)hasDefaultTapActionForTemplatedStackSnippetView:(id)view;
- (CGSize)maximumSizeForRemoteViewController:(id)controller;
- (CGSize)minimumSizeForRemoteViewController:(id)controller;
- (SiriIntentsSnippetViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIEdgeInsets)defaultViewInsets;
- (double)desiredHeight;
- (void)_connectToWidgetForInteraction:(id)interaction;
- (void)_finishLoadingViewIfNecessary;
- (void)_redactTemplateViewControllersForRepresentedKeyPaths:(id)paths;
- (void)_updateTemplateViewControllerCompression;
- (void)didMoveToParentViewController:(id)controller;
- (void)loadView;
- (void)mapTemplateViewController:(id)controller didModifyPlacemark:(id)placemark;
- (void)presentDetailsForTemplateViewController:(id)controller;
- (void)remoteViewController:(id)controller desiresConstrainedSize:(CGSize)size;
- (void)remoteViewControllerServiceDidTerminate:(id)terminate;
- (void)selectionTemplateViewControllerWasSelected:(id)selected;
- (void)setSnippet:(id)snippet;
- (void)siriDidDeactivate;
- (void)viewDidLayoutSubviews;
- (void)viewWantsDefaultTapAction:(id)action;
@end

@implementation SiriIntentsSnippetViewController

- (SiriIntentsSnippetViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v17.receiver = self;
  v17.super_class = SiriIntentsSnippetViewController;
  v4 = [(SiriIntentsSnippetViewController *)&v17 initWithNibName:name bundle:bundle];
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

- (void)didMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = SiriIntentsSnippetViewController;
  [(SiriIntentsSnippetViewController *)&v5 didMoveToParentViewController:controller];
  view = [(SiriIntentsSnippetViewController *)self view];
  [view setNeedsLayout];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = SiriIntentsSnippetViewController;
  [(SiriIntentsSnippetViewController *)&v4 viewDidLayoutSubviews];
  delegate = [(SiriIntentsSnippetViewController *)self delegate];
  [delegate siriViewControllerHeightDidChange:self];
}

- (void)setSnippet:(id)snippet
{
  snippetCopy = snippet;
  if (self->_snippet != snippetCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_snippet, snippet);
      appId = [(SAIntentGroupSnippet *)self->_snippet appId];
      v7 = [LSApplicationProxy applicationProxyForIdentifier:appId];

      v8 = [UIImage _iconForResourceProxy:v7 format:5];
      appIconImage = self->_appIconImage;
      self->_appIconImage = v8;

      v49 = v7;
      localizedName = [v7 localizedName];
      appName = self->_appName;
      self->_appName = localizedName;

      title = [(SAIntentGroupSnippet *)self->_snippet title];
      v13 = [title length];
      if (v13)
      {
        title2 = [(SAIntentGroupSnippet *)self->_snippet title];
      }

      else
      {
        title2 = 0;
      }

      objc_storeStrong(&self->_navigationTitle, title2);
      if (v13)
      {
      }

      view = [(SiriIntentsSnippetViewController *)self view];
      [view reloadData];

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
              view2 = [(SiriIntentsSnippetViewController *)self view];
              view3 = [v18 view];
              [view2 addTemplateSubview:view3];

              [v18 didMoveToParentViewController:self];
            }

            [(NSMutableSet *)self->_templateViewControllers addObject:v18];
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
            intentSlotKeyPaths = [v17 intentSlotKeyPaths];
            v22 = [intentSlotKeyPaths countByEnumeratingWithState:&v58 objects:v66 count:16];
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
                    objc_enumerationMutation(intentSlotKeyPaths);
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

                v23 = [intentSlotKeyPaths countByEnumeratingWithState:&v58 objects:v66 count:16];
              }

              while (v23);
            }

            detailSnippet = [v17 detailSnippet];
            v29 = detailSnippet;
            if (detailSnippet)
            {
              detailSnippetsForAceIds = self->_detailSnippetsForAceIds;
              aceId = [detailSnippet aceId];
              [(NSMutableDictionary *)detailSnippetsForAceIds setObject:v29 forKey:aceId];
            }

            intents_serverBoundCommand = [v17 intents_serverBoundCommand];
            v33 = intents_serverBoundCommand;
            if (intents_serverBoundCommand)
            {
              serverBoundCommandsForAceIds = self->_serverBoundCommandsForAceIds;
              aceId2 = [intents_serverBoundCommand aceId];
              [(NSMutableDictionary *)serverBoundCommandsForAceIds setObject:v33 forKey:aceId2];
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
        intent = [(SAIntentGroupSnippet *)self->_snippet intent];
        typeName = [intent typeName];
        intent2 = [(SAIntentGroupSnippet *)self->_snippet intent];
        data = [intent2 data];
        v40 = INIntentCreate();

        v41 = [NSString alloc];
        intentId = [v40 intentId];
        typeName2 = [v40 typeName];
        launchId = [v40 launchId];
        v45 = [v41 initWithFormat:@"%@-%@-%@", intentId, typeName2, launchId];

        v46 = [v45 dataUsingEncoding:4];
        if ([v46 length])
        {
          v54[0] = _NSConcreteStackBlock;
          v54[1] = 3221225472;
          v54[2] = sub_2A74;
          v54[3] = &unk_C428;
          v55 = objc_alloc_init(AFSecurityConnection);
          v56 = v40;
          selfCopy = self;
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
  disconnect = [(INUIRemoteViewController *)self->_remoteViewController disconnect];
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
  view = [(SiriIntentsSnippetViewController *)self view];
  [view desiredHeight];
  v4 = v3;

  return v4;
}

- (void)_connectToWidgetForInteraction:(id)interaction
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2EDC;
  v5[3] = &unk_C4A0;
  interactionCopy = interaction;
  selfCopy = self;
  v4 = interactionCopy;
  [INUIRemoteViewController requestRemoteViewControllerForInteraction:v4 delegate:self connectionHandler:v5];
}

- (void)_finishLoadingViewIfNecessary
{
  [(SiriIntentsSnippetViewController *)self _updateTemplateViewControllerCompression];
  if ([(SiriIntentsSnippetViewController *)self isLoading])
  {
    [(SiriIntentsSnippetViewController *)self setLoading:0];
    delegate = [(SiriIntentsSnippetViewController *)self delegate];
    [delegate siriSnippetViewControllerViewDidLoad:self];
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

- (void)_redactTemplateViewControllersForRepresentedKeyPaths:(id)paths
{
  pathsCopy = paths;
  v5 = [(NSMutableSet *)self->_templateViewControllers mutableCopy];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = pathsCopy;
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
                view = [v14 view];
                [view removeFromTemplatedSuperview];

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
          view2 = [(SiriIntentsSnippetViewController *)self view];
          view3 = [v21 view];
          [view2 addTemplateSubview:view3];

          [v21 didMoveToParentViewController:self];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v18);
  }
}

- (BOOL)hasDefaultTapActionForTemplatedStackSnippetView:(id)view
{
  commands = [(SAIntentGroupSnippet *)self->_snippet commands];
  v4 = [commands count] != 0;

  return v4;
}

- (CGSize)minimumSizeForRemoteViewController:(id)controller
{
  delegate = [(SiriIntentsSnippetViewController *)self delegate];
  [delegate siriViewControllerVisibleContentArea:self];
  v6 = v5;

  v7 = 120.0;
  v8 = v6;
  result.height = v7;
  result.width = v8;
  return result;
}

- (CGSize)maximumSizeForRemoteViewController:(id)controller
{
  delegate = [(SiriIntentsSnippetViewController *)self delegate];
  [delegate siriViewControllerVisibleContentArea:self];
  v6 = v5;

  v7 = 200.0;
  v8 = v6;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)remoteViewController:(id)controller desiresConstrainedSize:(CGSize)size
{
  height = size.height;
  v5 = [(SiriIntentsSnippetViewController *)self view:controller];
  [v5 adjustAuxiliaryViewHeight:1 animated:0 completion:height];
}

- (void)remoteViewControllerServiceDidTerminate:(id)terminate
{
  [(SiriIntentsSnippetViewController *)self _finishLoadingViewIfNecessary];
  view = [(SiriIntentsSnippetViewController *)self view];
  auxiliaryView = [view auxiliaryView];

  if (auxiliaryView)
  {
    view2 = [(SiriIntentsSnippetViewController *)self view];
    [view2 setAuxiliaryView:0 atIndex:0 initialHeight:1 animated:0 completion:0.0];
  }
}

- (void)presentDetailsForTemplateViewController:(id)controller
{
  templateModelPrivate = [controller templateModelPrivate];
  detailIdentifier = [templateModelPrivate detailIdentifier];

  if (detailIdentifier)
  {
    v6 = [(NSMutableDictionary *)self->_detailSnippetsForAceIds objectForKey:detailIdentifier];
    if (v6)
    {
      v7 = v6;
      delegate = [(SiriIntentsSnippetViewController *)self delegate];
      v10 = v7;
      v9 = [NSArray arrayWithObjects:&v10 count:1];
      [delegate siriSnippetViewController:self pushSirilandSnippets:v9];
    }
  }
}

- (void)selectionTemplateViewControllerWasSelected:(id)selected
{
  selectedCopy = selected;
  [selectedCopy setSelected:1];
  templateModelPrivate = [selectedCopy templateModelPrivate];
  commandIdentifier = [templateModelPrivate commandIdentifier];

  if (commandIdentifier)
  {
    v7 = [(NSMutableDictionary *)self->_serverBoundCommandsForAceIds objectForKey:commandIdentifier];
    if (v7)
    {
      v8 = v7;
      pendingServerBoundCommandsForTemplateModelIdentifiers = self->_pendingServerBoundCommandsForTemplateModelIdentifiers;
      templateModelPrivate2 = [selectedCopy templateModelPrivate];
      modelIdentifier = [templateModelPrivate2 modelIdentifier];
      [(NSMutableDictionary *)pendingServerBoundCommandsForTemplateModelIdentifiers setObject:v8 forKey:modelIdentifier];
    }
  }

  childViewControllers = [(SiriIntentsSnippetViewController *)self childViewControllers];
  v13 = [childViewControllers count];
  v14 = [childViewControllers indexOfObject:selectedCopy];
  v15 = [[NSIndexSet alloc] initWithIndexesInRange:{v14, v13 - v14}];
  v16 = [[NSIndexSet alloc] initWithIndexesInRange:{0, v14 + 1}];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_3BC4;
  v18[3] = &unk_C4C8;
  v18[4] = self;
  v18[5] = v14;
  v17 = objc_retainBlock(v18);
  [childViewControllers enumerateObjectsAtIndexes:v15 options:0 usingBlock:v17];
  [childViewControllers enumerateObjectsAtIndexes:v16 options:2 usingBlock:v17];
}

- (void)mapTemplateViewController:(id)controller didModifyPlacemark:(id)placemark
{
  controllerCopy = controller;
  placemarkCopy = placemark;
  templateModelPrivate = [controllerCopy templateModelPrivate];
  commandIdentifier = [templateModelPrivate commandIdentifier];

  if (commandIdentifier)
  {
    v9 = [(NSMutableDictionary *)self->_serverBoundCommandsForAceIds objectForKey:commandIdentifier];
    if (v9)
    {
      v10 = v9;
      if ([v9 conformsToProtocol:&OBJC_PROTOCOL___SAIntentGroupSetMapLocation])
      {
        v11 = INIntentSlotValueTransformToLocation();
        v12 = objc_alloc_init(SAIntentGroupProtobufMessage);
        data = [v11 data];
        [v12 setData:data];

        [v10 setLocation:v12];
      }

      pendingServerBoundCommandsForTemplateModelIdentifiers = self->_pendingServerBoundCommandsForTemplateModelIdentifiers;
      templateModelPrivate2 = [controllerCopy templateModelPrivate];
      modelIdentifier = [templateModelPrivate2 modelIdentifier];
      [(NSMutableDictionary *)pendingServerBoundCommandsForTemplateModelIdentifiers setObject:v10 forKey:modelIdentifier];
    }
  }
}

- (void)viewWantsDefaultTapAction:(id)action
{
  commands = [(SAIntentGroupSnippet *)self->_snippet commands];
  v5 = [commands count];

  if (v5)
  {
    delegate = [(SiriIntentsSnippetViewController *)self delegate];
    commands2 = [(SAIntentGroupSnippet *)self->_snippet commands];
    [delegate siriViewController:self performAceCommands:commands2];
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
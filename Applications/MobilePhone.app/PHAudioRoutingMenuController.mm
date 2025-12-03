@interface PHAudioRoutingMenuController
+ (PHAudioRoutingMenuController)menuControllerWithCallStyle:(int64_t)style dataSource:(id)source delegate:(id)delegate;
- (BOOL)isMuted;
- (BOOL)isSharePlayActive;
- (NSArray)menuActions;
- (PHAudioRoutingMenuController)initWithStyle:(int64_t)style dataSource:(id)source delegate:(id)delegate wantsAsyncReload:(BOOL)reload menuChangeHandler:(id)handler;
- (PHAudioRoutingMenuControllerDataSource)dataSource;
- (PHAudioRoutingMenuControllerDelegate)delegate;
- (id)lagunaActionForConversation:(id)conversation deviceHandle:(id)handle;
- (id)lagunaActions;
- (id)menuActionsWithRoutes:(id)routes;
- (id)muteActionTitle;
- (id)muteMenuAction;
- (id)routeActionWithTitle:(id)title route:(id)route;
- (void)fetchMenuActionsWithCompletionHandler:(id)handler;
- (void)reload;
- (void)setMenu:(id)menu;
@end

@implementation PHAudioRoutingMenuController

+ (PHAudioRoutingMenuController)menuControllerWithCallStyle:(int64_t)style dataSource:(id)source delegate:(id)delegate
{
  delegateCopy = delegate;
  sourceCopy = source;
  v9 = [[PHAudioRoutingMenuController alloc] initWithStyle:style dataSource:sourceCopy delegate:delegateCopy wantsAsyncReload:0 menuChangeHandler:0];

  return v9;
}

- (PHAudioRoutingMenuController)initWithStyle:(int64_t)style dataSource:(id)source delegate:(id)delegate wantsAsyncReload:(BOOL)reload menuChangeHandler:(id)handler
{
  reloadCopy = reload;
  sourceCopy = source;
  delegateCopy = delegate;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = PHAudioRoutingMenuController;
  v15 = [(PHAudioRoutingMenuController *)&v27 init];
  v16 = v15;
  if (v15)
  {
    v15->_wantsAsyncReload = reloadCopy;
    v15->_style = style;
    objc_storeWeak(&v15->_dataSource, sourceCopy);
    objc_storeWeak(&v16->_delegate, delegateCopy);
    v17 = objc_retainBlock(handlerCopy);
    menuChangeHandler = v16->_menuChangeHandler;
    v16->_menuChangeHandler = v17;

    v19 = [UIMenu menuWithTitle:&stru_10028F310 children:&__NSArray0__struct];
    menu = v16->_menu;
    v16->_menu = v19;

    v21 = dispatch_queue_attr_make_with_qos_class(0, 2u, 0);
    v22 = dispatch_queue_create("PHAudioRoutingMenuController.serialQueue", v21);
    reloadQueue = v16->_reloadQueue;
    v16->_reloadQueue = v22;

    if (reloadCopy)
    {
      v24 = [[TUCallCenter alloc] initWithQueue:v16->_reloadQueue wantsCallNotifications:0];
    }

    else
    {
      v24 = +[TUCallCenter sharedInstance];
    }

    callCenter = v16->_callCenter;
    v16->_callCenter = v24;

    [(PHAudioRoutingMenuController *)v16 reload];
  }

  return v16;
}

- (void)reload
{
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __38__PHAudioRoutingMenuController_reload__block_invoke;
  v7[3] = &unk_1002862C0;
  objc_copyWeak(&v8, &location);
  v3 = objc_retainBlock(v7);
  if ([(PHAudioRoutingMenuController *)self wantsAsyncReload])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __38__PHAudioRoutingMenuController_reload__block_invoke_2;
    v5[3] = &unk_100285E30;
    v6 = v3;
    [(PHAudioRoutingMenuController *)self fetchMenuActionsWithCompletionHandler:v5];
    menuActions = v6;
  }

  else
  {
    menuActions = [(PHAudioRoutingMenuController *)self menuActions];
    (v3[2])(v3, menuActions);
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __38__PHAudioRoutingMenuController_reload__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained lagunaActions];
    if ([v6 count])
    {
      v7 = v6;
      v8 = v3;
      if (v7)
      {
        v9 = v8;
        if ([v8 count])
        {
          v10 = [UIMenu menuWithTitle:&stru_10028F310 image:0 identifier:0 options:1 children:v9];
          v11 = [UIMenu menuWithTitle:&stru_10028F310 image:0 identifier:0 options:1 children:v7];
          v18[0] = v10;
          v18[1] = v11;
          v12 = [NSArray arrayWithObjects:v18 count:2];
          v13 = [UIMenu menuWithTitle:&stru_10028F310 image:0 identifier:0 options:1 children:v12];

          [v5 setMenu:v13];
        }

        else
        {
          v10 = [v5 menu];
          v17 = [v10 menuByReplacingChildren:v7];
          [v5 setMenu:v17];
        }

        goto LABEL_10;
      }
    }

    else
    {
      v14 = v3;
    }

    v15 = [v5 menu];
    v16 = [v15 menuByReplacingChildren:v3];
    [v5 setMenu:v16];

    v7 = 0;
LABEL_10:
  }
}

- (void)setMenu:(id)menu
{
  menuCopy = menu;
  if ([(PHAudioRoutingMenuController *)self wantsAsyncReload])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __40__PHAudioRoutingMenuController_setMenu___block_invoke;
    v6[3] = &unk_1002852E0;
    v6[4] = self;
    v7 = menuCopy;
    dispatch_async(&_dispatch_main_q, v6);
  }

  else
  {
    objc_storeStrong(&self->_menu, menu);
  }
}

void __40__PHAudioRoutingMenuController_setMenu___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 16);
  v4 = (v2 + 16);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
    v6 = [*(a1 + 32) menuChangeHandler];

    if (v6)
    {
      v7 = [*(a1 + 32) menuChangeHandler];
      v7[2](v7, *(a1 + 40));
    }
  }
}

- (void)fetchMenuActionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(PHAudioRoutingMenuController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    objc_initWeak(&location, self);
    dataSource = [(PHAudioRoutingMenuController *)self dataSource];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __70__PHAudioRoutingMenuController_fetchMenuActionsWithCompletionHandler___block_invoke_2;
    v9[3] = &unk_100286AC0;
    objc_copyWeak(&v11, &location);
    v10 = handlerCopy;
    [dataSource fetchRoutesForAudioRoutingMenuController:self completionHandler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    reloadQueue = [(PHAudioRoutingMenuController *)self reloadQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __70__PHAudioRoutingMenuController_fetchMenuActionsWithCompletionHandler___block_invoke;
    block[3] = &unk_100285590;
    v14 = handlerCopy;
    dispatch_async(reloadQueue, block);
  }
}

void __70__PHAudioRoutingMenuController_fetchMenuActionsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained reloadQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __70__PHAudioRoutingMenuController_fetchMenuActionsWithCompletionHandler___block_invoke_3;
    block[3] = &unk_100286A98;
    v9 = *(a1 + 32);
    block[4] = v5;
    v8 = v3;
    dispatch_async(v6, block);
  }
}

void __70__PHAudioRoutingMenuController_fetchMenuActionsWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) menuActionsWithRoutes:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

- (NSArray)menuActions
{
  delegate = [(PHAudioRoutingMenuController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    dataSource = [(PHAudioRoutingMenuController *)self dataSource];
    v6 = [dataSource routesForAudioRoutingMenuController:self];

    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "going to construct menu actions with current routes: %@", &v10, 0xCu);
    }

    v8 = [(PHAudioRoutingMenuController *)self menuActionsWithRoutes:v6];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

- (id)menuActionsWithRoutes:(id)routes
{
  routesCopy = routes;
  v23 = +[NSMutableArray array];
  isSharePlayActive = [(PHAudioRoutingMenuController *)self isSharePlayActive];
  v24 = objc_alloc_init(NSMutableArray);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = routesCopy;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        name = [v10 name];
        v12 = [(PHAudioRoutingMenuController *)self routeActionWithTitle:name route:v10];

        [v12 setState:{objc_msgSend(v10, "isCurrentlyPicked")}];
        name2 = [v10 name];
        v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"route title: %@, route state: %ld", name2, [v12 state]);

        if (isSharePlayActive && ([v10 supportsSharePlay] & 1) == 0)
        {
          [v12 setAttributes:1];
          v15 = TUBundle();
          v16 = [v15 localizedStringForKey:@"UNAVAILABLE_AUDIO_ROUTE" value:&stru_10028F310 table:@"TelephonyUtilities"];
          [v12 setDiscoverabilityTitle:v16];
        }

        if (v12)
        {
          [v23 addObject:v12];
          [v24 addObject:v14];
        }

        else
        {
          v17 = PHDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v30 = v10;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Unable to create menu action for route %@", buf, 0xCu);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v7);
  }

  if ([(PHAudioRoutingMenuController *)self style]== 2)
  {
    muteMenuAction = [(PHAudioRoutingMenuController *)self muteMenuAction];
    if (muteMenuAction)
    {
      [v23 addObject:muteMenuAction];
    }
  }

  v19 = PHDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v24;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "menuActionsWithRoutes: %@", buf, 0xCu);
  }

  v20 = [v23 copy];

  return v20;
}

- (id)routeActionWithTitle:(id)title route:(id)route
{
  titleCopy = title;
  routeCopy = route;
  if ([titleCopy length])
  {
    objc_initWeak(&location, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __59__PHAudioRoutingMenuController_routeActionWithTitle_route___block_invoke;
    v13[3] = &unk_100286AE8;
    objc_copyWeak(&v15, &location);
    v8 = routeCopy;
    v14 = v8;
    v9 = objc_retainBlock(v13);
    v10 = [v8 audioRouteGlyphForDisplayStyle:0];
    v11 = [UIAction actionWithTitle:titleCopy image:v10 identifier:0 handler:v9];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __59__PHAudioRoutingMenuController_routeActionWithTitle_route___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if ([WeakRetained style] == 3)
    {
      v3 = +[AVAudioSession sharedInstance];
      [v3 activateVoicemailAudioSession];
    }

    v4 = [v5 delegate];
    [v4 audioRoutingMenuController:v5 didSelectRoute:*(a1 + 32)];

    WeakRetained = v5;
  }
}

- (id)lagunaActions
{
  callCenter = [(PHAudioRoutingMenuController *)self callCenter];
  frontmostAudioOrVideoCall = [callCenter frontmostAudioOrVideoCall];

  callCenter2 = [(PHAudioRoutingMenuController *)self callCenter];
  v19 = frontmostAudioOrVideoCall;
  v6 = [callCenter2 activeConversationForCall:frontmostAudioOrVideoCall];

  callCenter3 = [(PHAudioRoutingMenuController *)self callCenter];
  v8 = [TPAudioRouting eligibleLagunaDevices:callCenter3];

  v9 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [(PHAudioRoutingMenuController *)self lagunaActionForConversation:v6 deviceHandle:v15];
        [v16 setState:0];
        if (v16)
        {
          [v9 addObject:v16];
        }

        else
        {
          v17 = PHDefaultLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = v15;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Unable to create menu action for laguna deviceHandle %@", buf, 0xCu);
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v12);
  }

  return v9;
}

- (id)lagunaActionForConversation:(id)conversation deviceHandle:(id)handle
{
  conversationCopy = conversation;
  handleCopy = handle;
  name = [handleCopy name];
  v9 = [name length];

  if (v9)
  {
    objc_initWeak(&location, self);
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = __73__PHAudioRoutingMenuController_lagunaActionForConversation_deviceHandle___block_invoke;
    v19 = &unk_100286B10;
    objc_copyWeak(&v22, &location);
    v10 = handleCopy;
    v20 = v10;
    v21 = conversationCopy;
    v11 = objc_retainBlock(&v16);
    [v10 deviceModel];
    v12 = [UIImage systemImageNamed:@"appletv"];
    name2 = [v10 name];
    v14 = [UIAction actionWithTitle:name2 image:v12 identifier:0 handler:v11];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __73__PHAudioRoutingMenuController_lagunaActionForConversation_deviceHandle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained delegate];
    v4 = objc_opt_respondsToSelector();

    WeakRetained = v6;
    if (v4)
    {
      v5 = [v6 delegate];
      [v5 audioRoutingMenuController:v6 didSelectLagunaActionForHandle:*(a1 + 32) conversation:*(a1 + 40)];

      WeakRetained = v6;
    }
  }
}

- (id)muteMenuAction
{
  v3 = [UIImage muteRouteGlyphForDisplayStyle:0];
  muteActionTitle = [(PHAudioRoutingMenuController *)self muteActionTitle];
  if (muteActionTitle)
  {
    objc_initWeak(&location, self);
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = __46__PHAudioRoutingMenuController_muteMenuAction__block_invoke;
    v11 = &unk_100286388;
    objc_copyWeak(&v12, &location);
    v5 = objc_retainBlock(&v8);
    v6 = [UIAction actionWithTitle:muteActionTitle image:v3 identifier:0 handler:v5, v8, v9, v10, v11];
    [v6 setState:{-[PHAudioRoutingMenuController isMuted](self, "isMuted")}];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __46__PHAudioRoutingMenuController_muteMenuAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = [WeakRetained isMuted];
    v3 = [v6 delegate];
    v4 = objc_opt_respondsToSelector();

    WeakRetained = v6;
    if (v4)
    {
      v5 = [v6 delegate];
      [v5 audioRoutingMenuController:v6 didToggleMute:v2 ^ 1];

      WeakRetained = v6;
    }
  }
}

- (BOOL)isMuted
{
  callCenter = [(PHAudioRoutingMenuController *)self callCenter];
  frontmostAudioOrVideoCall = [callCenter frontmostAudioOrVideoCall];

  LOBYTE(callCenter) = [frontmostAudioOrVideoCall isUplinkMuted];
  return callCenter;
}

- (BOOL)isSharePlayActive
{
  callCenter = [(PHAudioRoutingMenuController *)self callCenter];
  frontmostAudioOrVideoCall = [callCenter frontmostAudioOrVideoCall];

  if (frontmostAudioOrVideoCall)
  {
    callCenter2 = [(PHAudioRoutingMenuController *)self callCenter];
    v6 = [callCenter2 activeConversationForCall:frontmostAudioOrVideoCall];

    if (v6)
    {
      hasJoinedActivitySession = [v6 hasJoinedActivitySession];
    }

    else
    {
      hasJoinedActivitySession = 0;
    }
  }

  else
  {
    hasJoinedActivitySession = 0;
  }

  return hasJoinedActivitySession;
}

- (id)muteActionTitle
{
  dataSource = [(PHAudioRoutingMenuController *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    dataSource2 = [(PHAudioRoutingMenuController *)self dataSource];
    v6 = [dataSource2 muteActionTitleForAudioRoutingMenuController:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PHAudioRoutingMenuControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (PHAudioRoutingMenuControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface PHAudioRoutingMenuController
+ (id)menuControllerWithCallStyle:(int64_t)a3 dataSource:(id)a4 delegate:(id)a5;
- (BOOL)isMuted;
- (BOOL)isSharePlayActive;
- (NSArray)menuActions;
- (PHAudioRoutingMenuController)initWithStyle:(int64_t)a3 dataSource:(id)a4 delegate:(id)a5 wantsAsyncReload:(BOOL)a6 menuChangeHandler:(id)a7;
- (PHAudioRoutingMenuControllerDataSource)dataSource;
- (PHAudioRoutingMenuControllerDelegate)delegate;
- (id)lagunaActionForConversation:(id)a3 deviceHandle:(id)a4;
- (id)lagunaActions;
- (id)menuActionsWithRoutes:(id)a3;
- (id)muteActionTitle;
- (id)muteMenuAction;
- (id)routeActionWithTitle:(id)a3 route:(id)a4;
- (void)fetchMenuActionsWithCompletionHandler:(id)a3;
- (void)reload;
- (void)setMenu:(id)a3;
@end

@implementation PHAudioRoutingMenuController

+ (id)menuControllerWithCallStyle:(int64_t)a3 dataSource:(id)a4 delegate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [[PHAudioRoutingMenuController alloc] initWithStyle:a3 dataSource:v8 delegate:v7 wantsAsyncReload:0 menuChangeHandler:0];

  return v9;
}

- (PHAudioRoutingMenuController)initWithStyle:(int64_t)a3 dataSource:(id)a4 delegate:(id)a5 wantsAsyncReload:(BOOL)a6 menuChangeHandler:(id)a7
{
  v8 = a6;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v27.receiver = self;
  v27.super_class = PHAudioRoutingMenuController;
  v15 = [(PHAudioRoutingMenuController *)&v27 init];
  v16 = v15;
  if (v15)
  {
    v15->_wantsAsyncReload = v8;
    v15->_style = a3;
    objc_storeWeak(&v15->_dataSource, v12);
    objc_storeWeak(&v16->_delegate, v13);
    v17 = objc_retainBlock(v14);
    menuChangeHandler = v16->_menuChangeHandler;
    v16->_menuChangeHandler = v17;

    v19 = [UIMenu menuWithTitle:&stru_100361FD0 children:&__NSArray0__struct];
    menu = v16->_menu;
    v16->_menu = v19;

    v21 = dispatch_queue_attr_make_with_qos_class(0, 2u, 0);
    v22 = dispatch_queue_create("PHAudioRoutingMenuController.serialQueue", v21);
    reloadQueue = v16->_reloadQueue;
    v16->_reloadQueue = v22;

    if (v8)
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
  v7[2] = sub_10006C96C;
  v7[3] = &unk_100357500;
  objc_copyWeak(&v8, &location);
  v3 = objc_retainBlock(v7);
  if ([(PHAudioRoutingMenuController *)self wantsAsyncReload])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10006CB6C;
    v5[3] = &unk_100357528;
    v6 = v3;
    [(PHAudioRoutingMenuController *)self fetchMenuActionsWithCompletionHandler:v5];
    v4 = v6;
  }

  else
  {
    v4 = [(PHAudioRoutingMenuController *)self menuActions];
    (v3[2])(v3, v4);
  }

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)setMenu:(id)a3
{
  v5 = a3;
  if ([(PHAudioRoutingMenuController *)self wantsAsyncReload])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10006CC40;
    v6[3] = &unk_100357110;
    v6[4] = self;
    v7 = v5;
    dispatch_async(&_dispatch_main_q, v6);
  }

  else
  {
    objc_storeStrong(&self->_menu, a3);
  }
}

- (void)fetchMenuActionsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PHAudioRoutingMenuController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    objc_initWeak(&location, self);
    v7 = [(PHAudioRoutingMenuController *)self dataSource];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10006CE94;
    v9[3] = &unk_100357578;
    objc_copyWeak(&v11, &location);
    v10 = v4;
    [v7 fetchRoutesForAudioRoutingMenuController:self completionHandler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = [(PHAudioRoutingMenuController *)self reloadQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006CE7C;
    block[3] = &unk_100356D38;
    v14 = v4;
    dispatch_async(v8, block);
  }
}

- (NSArray)menuActions
{
  v3 = [(PHAudioRoutingMenuController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PHAudioRoutingMenuController *)self dataSource];
    v6 = [v5 routesForAudioRoutingMenuController:self];

    v7 = sub_100004F84();
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

- (id)menuActionsWithRoutes:(id)a3
{
  v4 = a3;
  v23 = +[NSMutableArray array];
  v5 = [(PHAudioRoutingMenuController *)self isSharePlayActive];
  v24 = objc_alloc_init(NSMutableArray);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
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
        v11 = [v10 name];
        v12 = [(PHAudioRoutingMenuController *)self routeActionWithTitle:v11 route:v10];

        [v12 setState:{objc_msgSend(v10, "isCurrentlyPicked")}];
        v13 = [v10 name];
        v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"route title: %@, route state: %ld", v13, [v12 state]);

        if (v5 && ([v10 supportsSharePlay] & 1) == 0)
        {
          [v12 setAttributes:1];
          v15 = TUBundle();
          v16 = [v15 localizedStringForKey:@"UNAVAILABLE_AUDIO_ROUTE" value:&stru_100361FD0 table:@"TelephonyUtilities"];
          [v12 setDiscoverabilityTitle:v16];
        }

        if (v12)
        {
          [v23 addObject:v12];
          [v24 addObject:v14];
        }

        else
        {
          v17 = sub_100004F84();
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
    v18 = [(PHAudioRoutingMenuController *)self muteMenuAction];
    if (v18)
    {
      [v23 addObject:v18];
    }
  }

  v19 = sub_100004F84();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v24;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "menuActionsWithRoutes: %@", buf, 0xCu);
  }

  v20 = [v23 copy];

  return v20;
}

- (id)routeActionWithTitle:(id)a3 route:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    objc_initWeak(&location, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10006D5B8;
    v13[3] = &unk_1003575A0;
    objc_copyWeak(&v15, &location);
    v8 = v7;
    v14 = v8;
    v9 = objc_retainBlock(v13);
    v10 = [v8 audioRouteGlyphForDisplayStyle:0];
    v11 = [UIAction actionWithTitle:v6 image:v10 identifier:0 handler:v9];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)lagunaActions
{
  v3 = [(PHAudioRoutingMenuController *)self callCenter];
  v4 = [v3 frontmostAudioOrVideoCall];

  v5 = [(PHAudioRoutingMenuController *)self callCenter];
  v19 = v4;
  v6 = [v5 activeConversationForCall:v4];

  v7 = [(PHAudioRoutingMenuController *)self callCenter];
  v8 = [TPAudioRouting eligibleLagunaDevices:v7];

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
          v17 = sub_100004F84();
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

- (id)lagunaActionForConversation:(id)a3 deviceHandle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 name];
  v9 = [v8 length];

  if (v9)
  {
    objc_initWeak(&location, self);
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10006DA3C;
    v19 = &unk_1003575C8;
    objc_copyWeak(&v22, &location);
    v10 = v7;
    v20 = v10;
    v21 = v6;
    v11 = objc_retainBlock(&v16);
    [v10 deviceModel];
    v12 = [UIImage systemImageNamed:@"appletv"];
    v13 = [v10 name];
    v14 = [UIAction actionWithTitle:v13 image:v12 identifier:0 handler:v11];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)muteMenuAction
{
  v3 = [UIImage muteRouteGlyphForDisplayStyle:0];
  v4 = [(PHAudioRoutingMenuController *)self muteActionTitle];
  if (v4)
  {
    objc_initWeak(&location, self);
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_10006DC30;
    v11 = &unk_100357018;
    objc_copyWeak(&v12, &location);
    v5 = objc_retainBlock(&v8);
    v6 = [UIAction actionWithTitle:v4 image:v3 identifier:0 handler:v5, v8, v9, v10, v11];
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

- (BOOL)isMuted
{
  v2 = [(PHAudioRoutingMenuController *)self callCenter];
  v3 = [v2 frontmostAudioOrVideoCall];

  LOBYTE(v2) = [v3 isUplinkMuted];
  return v2;
}

- (BOOL)isSharePlayActive
{
  v3 = [(PHAudioRoutingMenuController *)self callCenter];
  v4 = [v3 frontmostAudioOrVideoCall];

  if (v4)
  {
    v5 = [(PHAudioRoutingMenuController *)self callCenter];
    v6 = [v5 activeConversationForCall:v4];

    if (v6)
    {
      v7 = [v6 hasJoinedActivitySession];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)muteActionTitle
{
  v3 = [(PHAudioRoutingMenuController *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PHAudioRoutingMenuController *)self dataSource];
    v6 = [v5 muteActionTitleForAudioRoutingMenuController:self];
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
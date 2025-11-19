@interface MFMessageDisplayURLRoute
- (BOOL)canRouteRequest:(id)a3;
- (DaemonInterfaceProviding)scene;
- (MFMessageDisplayURLRoute)initWithScene:(id)a3 actionHandler:(id)a4;
- (MFMessageDisplayURLRouteActionHander)actionHandler;
- (id)_configureMessageListAndPromiseForQuery:(id)a3 repository:(id)a4;
- (id)createMessageListWithQuery:(id)a3 repository:(id)a4;
- (id)routeRequest:(id)a3;
- (void)_determineMessageToDisplayForCollection:(id)a3 itemIDs:(id)a4;
- (void)_resetMessageListAndPromise;
- (void)collection:(id)a3 replacedExistingItemID:(id)a4 withNewItemID:(id)a5;
- (void)prewarmWebViewIfNeeded;
@end

@implementation MFMessageDisplayURLRoute

- (MFMessageDisplayURLRoute)initWithScene:(id)a3 actionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MFMessageDisplayURLRoute;
  v8 = [(MFMessageDisplayURLRoute *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_scene, v6);
    objc_storeWeak(&v9->_actionHandler, v7);
    v9->_priority = 0;
    v9->_timeoutInterval = 5.0;
  }

  return v9;
}

- (BOOL)canRouteRequest:(id)a3
{
  v3 = [a3 URL];
  if ([v3 em_isMessageURL])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 em_isInternalMessageURL];
  }

  return v4;
}

- (id)routeRequest:(id)a3
{
  v40 = a3;
  ptr = [(MFMessageDisplayURLRoute *)self scene];
  v4 = MFMessageLoadingSignpostLog();
  v5 = os_signpost_id_make_with_pointer(v4, ptr);

  v6 = MFMessageLoadingSignpostLog();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "LaunchMessageURLDisplay", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = [MFUserInteractionAssertion alloc];
  v9 = [v40 URL];
  v10 = [NSString stringWithFormat:@"Load message from url - %@", v9];
  [(MFMessageDisplayURLRoute *)self timeoutInterval];
  v37 = [(MFUserInteractionAssertion *)v8 initWithReason:v10 timeout:?];

  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_1001E9838;
  v62[3] = &unk_10064C7E8;
  v62[4] = self;
  v11 = +[EFScheduler mainThreadScheduler];
  [v11 performBlock:v62];

  v12 = [ptr daemonInterface];
  v13 = [v12 messageRepository];
  v14 = [v40 URL];
  v38 = [v13 messageObjectIDForURL:v14];

  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_1001E9898;
  v60[3] = &unk_100654A88;
  v60[4] = self;
  v15 = ptr;
  v61 = v15;
  v16 = [v38 then:v60];
  v17 = +[MFURLRoutingRequest log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v40 ef_publicDescription];
    *buf = 134218242;
    v64 = v16;
    v65 = 2114;
    v66 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%p: processing message display for request %{public}@", buf, 0x16u);
  }

  v19 = +[EFScheduler mainThreadScheduler];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_1001E99D0;
  v55[3] = &unk_100654B00;
  v59 = v5;
  v20 = v37;
  v56 = v20;
  v57 = self;
  v21 = v15;
  v58 = v21;
  [v16 onScheduler:v19 addSuccessBlock:v55];

  v22 = +[EFScheduler mainThreadScheduler];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_1001E9E78;
  v49[3] = &unk_100654B28;
  v54 = v5;
  v23 = v16;
  v50 = v23;
  v24 = v40;
  v51 = v24;
  v25 = v20;
  v52 = v25;
  v53 = self;
  [v23 onScheduler:v22 addFailureBlock:v49];

  v26 = +[EFScheduler mainThreadScheduler];
  [(MFMessageDisplayURLRoute *)self timeoutInterval];
  v28 = v27;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1001EA054;
  v43[3] = &unk_10064EEF0;
  v29 = v23;
  v44 = v29;
  v48 = v5;
  v30 = v24;
  v45 = v30;
  v31 = v25;
  v46 = v31;
  v47 = self;
  v32 = [v26 afterDelay:v43 performBlock:v28];

  v33 = [v29 then:&stru_100654B68];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_1001EA204;
  v41[3] = &unk_100654B90;
  v34 = v30;
  v42 = v34;
  v35 = [v33 recover:v41];

  return v35;
}

- (id)_configureMessageListAndPromiseForQuery:(id)a3 repository:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MFMessageDisplayURLRoute *)self _resetMessageListAndPromise];
  v8 = +[EFPromise promise];
  [(MFMessageDisplayURLRoute *)self setMessageDisplayPromise:v8];

  v9 = [(MFMessageDisplayURLRoute *)self actionHandler];
  v10 = [v9 createMessageListWithQuery:v6 repository:v7];
  [(MFMessageDisplayURLRoute *)self setMessageList:v10];

  v11 = [(MFMessageDisplayURLRoute *)self messageList];
  [v11 beginObserving:self];

  v12 = [(MFMessageDisplayURLRoute *)self messageDisplayPromise];

  return v12;
}

- (void)_resetMessageListAndPromise
{
  v3 = [(MFMessageDisplayURLRoute *)self messageList];

  if (v3)
  {
    v6 = [(MFMessageDisplayURLRoute *)self messageList];
    [v6 stopObserving:self];

    [(MFMessageDisplayURLRoute *)self setMessageList:0];
  }

  v4 = [(MFMessageDisplayURLRoute *)self messageDisplayPromise];

  if (v4)
  {
    v5 = [(MFMessageDisplayURLRoute *)self messageDisplayPromise];
    v7 = [v5 future];

    if (([v7 isFinished] & 1) == 0)
    {
      [v7 cancel];
    }

    [(MFMessageDisplayURLRoute *)self setMessageDisplayPromise:0];
  }
}

- (void)_determineMessageToDisplayForCollection:(id)a3 itemIDs:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(MFMessageDisplayURLRoute *)self messageList];
  if (v7 == v11)
  {
    v8 = [v6 firstObject];
    if (v8)
    {
      [v7 stopObserving:self];
      v9 = [(MFMessageDisplayURLRoute *)self messageDisplayPromise];
      v10 = [v7 messageListItemForItemID:v8];
      [v9 finishWithFuture:v10];
    }
  }
}

- (void)collection:(id)a3 replacedExistingItemID:(id)a4 withNewItemID:(id)a5
{
  v7 = a3;
  v8 = a5;
  v10 = v8;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  [(MFMessageDisplayURLRoute *)self _determineMessageToDisplayForCollection:v7 itemIDs:v9];
}

- (void)prewarmWebViewIfNeeded
{
  v2 = +[MFWKWebViewFactory sharedWebViewFactory];
  [v2 preallocateWebViewIfNeeded];
}

- (id)createMessageListWithQuery:(id)a3 repository:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[EMMessageList alloc] initWithQuery:v5 repository:v6];

  return v7;
}

- (DaemonInterfaceProviding)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (MFMessageDisplayURLRouteActionHander)actionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandler);

  return WeakRetained;
}

@end
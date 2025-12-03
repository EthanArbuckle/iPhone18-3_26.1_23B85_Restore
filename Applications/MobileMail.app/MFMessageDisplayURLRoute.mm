@interface MFMessageDisplayURLRoute
- (BOOL)canRouteRequest:(id)request;
- (DaemonInterfaceProviding)scene;
- (MFMessageDisplayURLRoute)initWithScene:(id)scene actionHandler:(id)handler;
- (MFMessageDisplayURLRouteActionHander)actionHandler;
- (id)_configureMessageListAndPromiseForQuery:(id)query repository:(id)repository;
- (id)createMessageListWithQuery:(id)query repository:(id)repository;
- (id)routeRequest:(id)request;
- (void)_determineMessageToDisplayForCollection:(id)collection itemIDs:(id)ds;
- (void)_resetMessageListAndPromise;
- (void)collection:(id)collection replacedExistingItemID:(id)d withNewItemID:(id)iD;
- (void)prewarmWebViewIfNeeded;
@end

@implementation MFMessageDisplayURLRoute

- (MFMessageDisplayURLRoute)initWithScene:(id)scene actionHandler:(id)handler
{
  sceneCopy = scene;
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = MFMessageDisplayURLRoute;
  v8 = [(MFMessageDisplayURLRoute *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_scene, sceneCopy);
    objc_storeWeak(&v9->_actionHandler, handlerCopy);
    v9->_priority = 0;
    v9->_timeoutInterval = 5.0;
  }

  return v9;
}

- (BOOL)canRouteRequest:(id)request
{
  v3 = [request URL];
  if ([v3 em_isMessageURL])
  {
    em_isInternalMessageURL = 1;
  }

  else
  {
    em_isInternalMessageURL = [v3 em_isInternalMessageURL];
  }

  return em_isInternalMessageURL;
}

- (id)routeRequest:(id)request
{
  requestCopy = request;
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
  v9 = [requestCopy URL];
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

  daemonInterface = [ptr daemonInterface];
  messageRepository = [daemonInterface messageRepository];
  v14 = [requestCopy URL];
  v38 = [messageRepository messageObjectIDForURL:v14];

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
    ef_publicDescription = [requestCopy ef_publicDescription];
    *buf = 134218242;
    v64 = v16;
    v65 = 2114;
    v66 = ef_publicDescription;
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
  selfCopy = self;
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
  v24 = requestCopy;
  v51 = v24;
  v25 = v20;
  v52 = v25;
  selfCopy2 = self;
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
  selfCopy3 = self;
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

- (id)_configureMessageListAndPromiseForQuery:(id)query repository:(id)repository
{
  queryCopy = query;
  repositoryCopy = repository;
  [(MFMessageDisplayURLRoute *)self _resetMessageListAndPromise];
  v8 = +[EFPromise promise];
  [(MFMessageDisplayURLRoute *)self setMessageDisplayPromise:v8];

  actionHandler = [(MFMessageDisplayURLRoute *)self actionHandler];
  v10 = [actionHandler createMessageListWithQuery:queryCopy repository:repositoryCopy];
  [(MFMessageDisplayURLRoute *)self setMessageList:v10];

  messageList = [(MFMessageDisplayURLRoute *)self messageList];
  [messageList beginObserving:self];

  messageDisplayPromise = [(MFMessageDisplayURLRoute *)self messageDisplayPromise];

  return messageDisplayPromise;
}

- (void)_resetMessageListAndPromise
{
  messageList = [(MFMessageDisplayURLRoute *)self messageList];

  if (messageList)
  {
    messageList2 = [(MFMessageDisplayURLRoute *)self messageList];
    [messageList2 stopObserving:self];

    [(MFMessageDisplayURLRoute *)self setMessageList:0];
  }

  messageDisplayPromise = [(MFMessageDisplayURLRoute *)self messageDisplayPromise];

  if (messageDisplayPromise)
  {
    messageDisplayPromise2 = [(MFMessageDisplayURLRoute *)self messageDisplayPromise];
    future = [messageDisplayPromise2 future];

    if (([future isFinished] & 1) == 0)
    {
      [future cancel];
    }

    [(MFMessageDisplayURLRoute *)self setMessageDisplayPromise:0];
  }
}

- (void)_determineMessageToDisplayForCollection:(id)collection itemIDs:(id)ds
{
  collectionCopy = collection;
  dsCopy = ds;
  messageList = [(MFMessageDisplayURLRoute *)self messageList];
  if (messageList == collectionCopy)
  {
    firstObject = [dsCopy firstObject];
    if (firstObject)
    {
      [messageList stopObserving:self];
      messageDisplayPromise = [(MFMessageDisplayURLRoute *)self messageDisplayPromise];
      v10 = [messageList messageListItemForItemID:firstObject];
      [messageDisplayPromise finishWithFuture:v10];
    }
  }
}

- (void)collection:(id)collection replacedExistingItemID:(id)d withNewItemID:(id)iD
{
  collectionCopy = collection;
  iDCopy = iD;
  v10 = iDCopy;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  [(MFMessageDisplayURLRoute *)self _determineMessageToDisplayForCollection:collectionCopy itemIDs:v9];
}

- (void)prewarmWebViewIfNeeded
{
  v2 = +[MFWKWebViewFactory sharedWebViewFactory];
  [v2 preallocateWebViewIfNeeded];
}

- (id)createMessageListWithQuery:(id)query repository:(id)repository
{
  queryCopy = query;
  repositoryCopy = repository;
  v7 = [[EMMessageList alloc] initWithQuery:queryCopy repository:repositoryCopy];

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
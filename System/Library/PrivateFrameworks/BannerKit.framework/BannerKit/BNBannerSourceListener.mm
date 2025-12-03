@interface BNBannerSourceListener
+ (void)initialize;
- (BNBannerSourceListener)initWithAuthorizedBundleIDs:(id)ds;
- (BNBannerSourceListener)initWithServiceDomain:(id)domain displayConfiguration:(id)configuration authorizedBundleIDs:(id)ds;
- (BNBannerSourceListenerDelegate)delegate;
- (BOOL)_isConnectingProcessAuthorized:(id)authorized error:(id *)error;
- (BOOL)_isPresentableWaitingToBeMadeReady:(id)ready;
- (BOOL)_isPresentableWithIdentificationWaitingToBeMadeReady:(id)ready;
- (BOOL)bannerSourceListenerPresentableShouldEnablePresentableContextInterface:(id)interface;
- (id)_createSceneWithIdentifier:(id)identifier forProcess:(id)process preferredContentSize:(CGSize)size contentOutsets:(UIEdgeInsets)outsets userInfo:(id)info;
- (id)_presentablesWithIdentification:(id)identification requiringUniqueMatch:(BOOL)match;
- (id)_removeUnpreparedPresentablesWithIdentification:(id)identification;
- (id)_uniquePresentableWithIdentification:(id)identification;
- (void)__layoutDescriptionWithReply:(id)reply;
- (void)__postPresentableWithSpecification:(id)specification options:(id)options userInfo:(id)info reply:(id)reply;
- (void)__recommendSuspension:(id)suspension forReason:(id)reason revokingCurrent:(id)current reply:(id)reply;
- (void)__revokePresentablesWithIdentification:(id)identification withAnimation:(id)animation reason:(id)reason userInfo:(id)info reply:(id)reply;
- (void)_addConnection:(id)connection;
- (void)_addPresentable:(id)presentable;
- (void)_addUnpreparedBannerSourcePresentableForBannerSpecification:(id)specification remoteProcess:(id)process scene:(id)scene readyCompletion:(id)completion;
- (void)_addUnpreparedPresentable:(id)presentable;
- (void)_removeConnection:(id)connection;
- (void)_removePresentable:(id)presentable;
- (void)_removePresentableWithIdentification:(id)identification requiringUniqueMatch:(BOOL)match;
- (void)_removeUnpreparedPresentable:(id)presentable;
- (void)_requestPostingBannerSourceListenerPresentable:(id)presentable options:(unint64_t)options userInfo:(id)info;
- (void)_requestPostingBannerSourceListenerPresentableWaitingToBeMadeReady:(id)ready options:(unint64_t)options userInfo:(id)info;
- (void)_stopObservingAndInvalidatePresentable:(id)presentable;
- (void)dealloc;
- (void)invalidate;
- (void)layoutDescriptionDidChange:(id)change;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason;
- (void)sceneDidInvalidateForBannerSourceListenerPresentable:(id)presentable;
@end

@implementation BNBannerSourceListener

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    BNRegisterBannerKitLogging();
  }
}

- (BNBannerSourceListener)initWithAuthorizedBundleIDs:(id)ds
{
  v4 = MEMORY[0x1E699F7A8];
  dsCopy = ds;
  mainConfiguration = [v4 mainConfiguration];
  v7 = [(BNBannerSourceListener *)self initWithServiceDomain:@"com.apple.frontboard" displayConfiguration:mainConfiguration authorizedBundleIDs:dsCopy];

  return v7;
}

- (BNBannerSourceListener)initWithServiceDomain:(id)domain displayConfiguration:(id)configuration authorizedBundleIDs:(id)ds
{
  domainCopy = domain;
  configurationCopy = configuration;
  dsCopy = ds;
  v29.receiver = self;
  v29.super_class = BNBannerSourceListener;
  v11 = [(BNBannerSourceListener *)&v29 init];
  if (v11)
  {
    if (domainCopy)
    {
      if (configurationCopy)
      {
LABEL_4:
        v12 = [objc_alloc(MEMORY[0x1E699F7F8]) initWithIdentifier:@"com.apple.BannerKit"];
        sceneWorkspace = v11->_sceneWorkspace;
        v11->_sceneWorkspace = v12;

        [(FBSceneWorkspace *)v11->_sceneWorkspace setDelegate:v11];
        objc_storeStrong(&v11->_displayConfiguration, configuration);
        objc_storeStrong(&v11->_authorizedBundleIDs, ds);
        v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
        connections = v11->_connections;
        v11->_connections = v14;

        Serial = BSDispatchQueueCreateSerial();
        queue = v11->_queue;
        v11->_queue = Serial;

        v18 = MEMORY[0x1E698F4B8];
        v23 = MEMORY[0x1E69E9820];
        v24 = 3221225472;
        v25 = __89__BNBannerSourceListener_initWithServiceDomain_displayConfiguration_authorizedBundleIDs___block_invoke;
        v26 = &unk_1E81E4648;
        v27 = domainCopy;
        v19 = v11;
        v28 = v19;
        v20 = [v18 listenerWithConfigurator:&v23];
        v21 = v19[3];
        v19[3] = v20;

        [v19[3] activate];
        goto LABEL_5;
      }
    }

    else
    {
      [BNBannerSourceListener initWithServiceDomain:displayConfiguration:authorizedBundleIDs:];
      if (configurationCopy)
      {
        goto LABEL_4;
      }
    }

    [BNBannerSourceListener initWithServiceDomain:displayConfiguration:authorizedBundleIDs:];
    goto LABEL_4;
  }

LABEL_5:

  return v11;
}

void __89__BNBannerSourceListener_initWithServiceDomain_displayConfiguration_authorizedBundleIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setDomain:v3];
  v4 = +[BNBannerSourceSessionSpecification identifier];
  [v5 setService:v4];

  [v5 setDelegate:*(a1 + 40)];
}

- (void)dealloc
{
  [(BSServiceConnectionListener *)self->_connectionListener invalidate];
  v3.receiver = self;
  v3.super_class = BNBannerSourceListener;
  [(BNBannerSourceListener *)&v3 dealloc];
}

- (void)invalidate
{
  v35 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = self->_unpreparedPresentables;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v8 invalidate];
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v5);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [(NSMutableArray *)self->_connections copy];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v24 + 1) + 8 * j) invalidate];
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v11);
  }

  [(BSServiceConnectionListener *)self->_connectionListener invalidate];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allScenes = [(FBSceneWorkspace *)self->_sceneWorkspace allScenes];
  v15 = [allScenes countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (k = 0; k != v16; ++k)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(allScenes);
        }

        v19 = *(*(&v20 + 1) + 8 * k);
        [v19 setDelegate:0];
        [v19 invalidate:0];
      }

      v16 = [allScenes countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v16);
  }

  [(FBSceneWorkspace *)self->_sceneWorkspace setDelegate:0];
  [(FBSceneWorkspace *)self->_sceneWorkspace invalidate];
}

- (void)layoutDescriptionDidChange:(id)change
{
  v36 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allValues = [(NSMutableDictionary *)selfCopy->_requesterIDsToPresentables allValues];
  objc_sync_exit(selfCopy);

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = allValues;
  v22 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v22)
  {
    v21 = *v31;
    do
    {
      v7 = 0;
      do
      {
        if (*v31 != v21)
        {
          v8 = v7;
          objc_enumerationMutation(obj);
          v7 = v8;
        }

        v23 = v7;
        v9 = *(*(&v30 + 1) + 8 * v7);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v11)
        {
          v12 = *v27;
          do
          {
            v13 = 0;
            do
            {
              if (*v27 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v26 + 1) + 8 * v13);
              v15 = objc_opt_class();
              v16 = v14;
              if (v15)
              {
                if (objc_opt_isKindOfClass())
                {
                  v17 = v16;
                }

                else
                {
                  v17 = 0;
                }
              }

              else
              {
                v17 = 0;
              }

              v18 = v17;

              scene = [v18 scene];
              v24[0] = MEMORY[0x1E69E9820];
              v24[1] = 3221225472;
              v24[2] = __53__BNBannerSourceListener_layoutDescriptionDidChange___block_invoke;
              v24[3] = &unk_1E81E48B0;
              v25 = changeCopy;
              [scene updateSettingsWithBlock:v24];

              ++v13;
            }

            while (v11 != v13);
            v11 = [v10 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v11);
        }

        v7 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v22);
  }
}

void __53__BNBannerSourceListener_layoutDescriptionDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v7 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [*(a1 + 32) containerSize];
  [v6 setContainerSize:?];
  [*(a1 + 32) presentationSize];
  [v6 setPresentationSize:?];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  remoteProcess = [connectionCopy remoteProcess];
  v12 = 0;
  v8 = [(BNBannerSourceListener *)self _isConnectingProcessAuthorized:remoteProcess error:&v12];
  v9 = v12;

  if (v8)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__BNBannerSourceListener_listener_didReceiveConnection_withContext___block_invoke;
    v11[3] = &unk_1E81E44F0;
    v11[4] = self;
    [connectionCopy configureConnection:v11];
    [(BNBannerSourceListener *)self _addConnection:connectionCopy];
    [connectionCopy activate];
  }

  else
  {
    v10 = BNLogHostingHost;
    if (os_log_type_enabled(BNLogHostingHost, OS_LOG_TYPE_ERROR))
    {
      [BNBannerSourceListener listener:v10 didReceiveConnection:self withContext:v9];
    }

    [connectionCopy invalidate];
  }
}

void __68__BNBannerSourceListener_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[BNBannerSourceSessionSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[BNBannerSourceSessionSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  objc_initWeak(&location, *(a1 + 32));
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __68__BNBannerSourceListener_listener_didReceiveConnection_withContext___block_invoke_2;
  v9 = &unk_1E81E4698;
  objc_copyWeak(&v10, &location);
  [v3 setInvalidationHandler:&v6];
  [v3 setTargetQueue:{*(*(a1 + 32) + 32), v6, v7, v8, v9}];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __68__BNBannerSourceListener_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = BNLogHostingHost;
  if (os_log_type_enabled(BNLogHostingHost, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_1C42DC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ (host-side) connection invalidated", &v9, 0xCu);
  }

  [WeakRetained _removeConnection:v3];
}

- (void)__layoutDescriptionWithReply:(id)reply
{
  replyCopy = reply;
  if (!replyCopy)
  {
    [BNBannerSourceListener __layoutDescriptionWithReply:];
  }

  objc_initWeak(&location, self);
  _systemAnimationFenceExemptQueue = [MEMORY[0x1E69DC668] _systemAnimationFenceExemptQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__BNBannerSourceListener___layoutDescriptionWithReply___block_invoke;
  v7[3] = &unk_1E81E48D8;
  objc_copyWeak(&v9, &location);
  v6 = replyCopy;
  v8 = v6;
  [_systemAnimationFenceExemptQueue performAsync:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __55__BNBannerSourceListener___layoutDescriptionWithReply___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v7 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v15 = @"Um, lost myself";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v6 = [v7 errorWithDomain:@"BNBannerSourceErrorDomain" code:0 userInfo:v4];
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v4 = objc_loadWeakRetained(WeakRetained + 9);
  if (objc_opt_respondsToSelector())
  {
    v13 = 0;
    v5 = [v4 bannerSourceListener:v3 layoutDescriptionWithError:&v13];
    v6 = v13;
    goto LABEL_10;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"No delegate to fulfill request";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v6 = [v8 errorWithDomain:@"BNBannerSourceErrorDomain" code:0 userInfo:v9];

    goto LABEL_9;
  }

  v11 = *MEMORY[0x1E695F060];
  v12 = v11;
  v10 = 0;
  [v4 bannerSourceListener:v3 presentationSize:&v11 containerSize:&v12 error:&v10];
  v6 = v10;
  v5 = 0;
  if (!v6)
  {
    v5 = [BNBannerSourceLayoutDescription bannerSourceLayoutDescriptionWithPresentationSize:v11 containerSize:v12];
  }

LABEL_10:

  (*(*(a1 + 32) + 16))();
}

- (void)__postPresentableWithSpecification:(id)specification options:(id)options userInfo:(id)info reply:(id)reply
{
  v48 = *MEMORY[0x1E69E9840];
  specificationCopy = specification;
  optionsCopy = options;
  infoCopy = info;
  replyCopy = reply;
  if (!replyCopy)
  {
    [BNBannerSourceListener __postPresentableWithSpecification:options:userInfo:reply:];
  }

  v14 = BNLogHostingHost;
  if (os_log_type_enabled(BNLogHostingHost, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v47 = specificationCopy;
    _os_log_impl(&dword_1C42DC000, v14, OS_LOG_TYPE_DEFAULT, "Asked to post presentable with specification: %{public}@", buf, 0xCu);
  }

  mEMORY[0x1E699F7C0] = [MEMORY[0x1E699F7C0] sharedInstance];
  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v18 = [mEMORY[0x1E699F7C0] registerProcessForHandle:remoteProcess];

  if ([specificationCopy contentBehavior] == 1 || objc_msgSend(specificationCopy, "contentBehavior") == 2)
  {
    _systemAnimationFenceExemptQueue = [MEMORY[0x1E69DC668] _systemAnimationFenceExemptQueue];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __84__BNBannerSourceListener___postPresentableWithSpecification_options_userInfo_reply___block_invoke;
    v38[3] = &unk_1E81E4928;
    v38[4] = self;
    v39 = specificationCopy;
    v40 = v18;
    v43 = replyCopy;
    v41 = optionsCopy;
    v42 = infoCopy;
    [_systemAnimationFenceExemptQueue performAsync:v38];
  }

  else if (![(BNBannerSourceListener *)self _isPresentableWithIdentificationWaitingToBeMadeReady:specificationCopy])
  {
    v20 = [(BNBannerSourceListener *)self _uniquePresentableWithIdentification:specificationCopy];
    if (v20)
    {
      _systemAnimationFenceExemptQueue2 = [MEMORY[0x1E69DC668] _systemAnimationFenceExemptQueue];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __84__BNBannerSourceListener___postPresentableWithSpecification_options_userInfo_reply___block_invoke_3;
      v33[3] = &unk_1E81E4950;
      v37 = replyCopy;
      v33[4] = self;
      v34 = v20;
      v35 = optionsCopy;
      v36 = infoCopy;
      [_systemAnimationFenceExemptQueue2 performAsync:v33];

      v22 = v37;
    }

    else if (v18)
    {
      _systemAnimationFenceExemptQueue3 = [MEMORY[0x1E69DC668] _systemAnimationFenceExemptQueue];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __84__BNBannerSourceListener___postPresentableWithSpecification_options_userInfo_reply___block_invoke_4;
      v26[3] = &unk_1E81E49A0;
      v27 = specificationCopy;
      selfCopy = self;
      v29 = v18;
      v30 = infoCopy;
      v31 = optionsCopy;
      v32 = replyCopy;
      [_systemAnimationFenceExemptQueue3 performAsync:v26];

      v22 = v27;
    }

    else
    {
      v24 = MEMORY[0x1E696ABC0];
      v44 = *MEMORY[0x1E696A578];
      v45 = @"calling process doesn't exist -- did it crash?";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v25 = [v24 errorWithDomain:@"BNBannerSourceErrorDomain" code:0 userInfo:v22];
      (*(replyCopy + 2))(replyCopy, MEMORY[0x1E695E110], v25);
    }
  }
}

void __84__BNBannerSourceListener___postPresentableWithSpecification_options_userInfo_reply___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__BNBannerSourceListener___postPresentableWithSpecification_options_userInfo_reply___block_invoke_2;
  v5[3] = &unk_1E81E4900;
  v8 = *(a1 + 72);
  objc_copyWeak(&v9, &location);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  [v2 _addUnpreparedBannerSourcePresentableForBannerSpecification:v3 remoteProcess:v4 scene:0 readyCompletion:v5];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __84__BNBannerSourceListener___postPresentableWithSpecification_options_userInfo_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, MEMORY[0x1E695E118], 0);
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _requestPostingBannerSourceListenerPresentableWaitingToBeMadeReady:v5 options:objc_msgSend(*(a1 + 32) userInfo:{"unsignedIntegerValue"), *(a1 + 40)}];
}

uint64_t __84__BNBannerSourceListener___postPresentableWithSpecification_options_userInfo_reply___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 64) + 16))();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) unsignedIntegerValue];
  v5 = *(a1 + 56);

  return [v2 _requestPostingBannerSourceListenerPresentable:v3 options:v4 userInfo:v5];
}

void __84__BNBannerSourceListener___postPresentableWithSpecification_options_userInfo_reply___block_invoke_4(uint64_t a1)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) requesterIdentifier];
  v4 = [*v2 requestIdentifier];
  v5 = [*v2 uniquePresentableIdentifier];
  v6 = BNSceneIdentifierForRequest(v3, v4, v5);

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  [*v2 preferredContentSize];
  v10 = v9;
  v12 = v11;
  [*v2 contentOutsets];
  v17 = [v7 _createSceneWithIdentifier:v6 forProcess:v8 preferredContentSize:*(a1 + 56) contentOutsets:v10 userInfo:{v12, v13, v14, v15, v16}];
  if (v17)
  {
    objc_initWeak(&location, *(a1 + 40));
    v18 = *(a1 + 40);
    v19 = *(a1 + 32);
    v20 = *(a1 + 48);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __84__BNBannerSourceListener___postPresentableWithSpecification_options_userInfo_reply___block_invoke_5;
    v26[3] = &unk_1E81E4978;
    objc_copyWeak(&v29, &location);
    v27 = *(a1 + 64);
    v28 = *(a1 + 56);
    [v18 _addUnpreparedBannerSourcePresentableForBannerSpecification:v19 remoteProcess:v20 scene:v17 readyCompletion:v26];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  v21 = *(a1 + 72);
  v22 = [MEMORY[0x1E696AD98] numberWithInt:v17 != 0];
  if (v17)
  {
    (*(v21 + 16))(v21, v22, 0);
  }

  else
  {
    v23 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v32[0] = @"Failed to make a scene";
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v25 = [v23 errorWithDomain:@"BNBannerSourceErrorDomain" code:1 userInfo:v24];
    (*(v21 + 16))(v21, v22, v25);
  }
}

void __84__BNBannerSourceListener___postPresentableWithSpecification_options_userInfo_reply___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _requestPostingBannerSourceListenerPresentableWaitingToBeMadeReady:v3 options:objc_msgSend(*(a1 + 32) userInfo:{"unsignedIntegerValue"), *(a1 + 40)}];
}

- (void)__revokePresentablesWithIdentification:(id)identification withAnimation:(id)animation reason:(id)reason userInfo:(id)info reply:(id)reply
{
  v45 = *MEMORY[0x1E69E9840];
  identificationCopy = identification;
  animationCopy = animation;
  reasonCopy = reason;
  infoCopy = info;
  replyCopy = reply;
  if (!replyCopy)
  {
    [BNBannerSourceListener __revokePresentablesWithIdentification:withAnimation:reason:userInfo:reply:];
  }

  v16 = BNLogHostingHost;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    requestIdentifier = [identificationCopy requestIdentifier];
    requesterIdentifier = [identificationCopy requesterIdentifier];
    uniquePresentableIdentifier = [identificationCopy uniquePresentableIdentifier];
    if (animationCopy)
    {
      [animationCopy BOOLValue];
      v20 = NSStringFromBOOL();
    }

    else
    {
      v20 = 0;
    }

    *buf = 138544386;
    v36 = requestIdentifier;
    v37 = 2114;
    v38 = requesterIdentifier;
    v39 = 2114;
    v40 = uniquePresentableIdentifier;
    v41 = 2114;
    v42 = reasonCopy;
    v43 = 2114;
    v44 = v20;
    _os_log_impl(&dword_1C42DC000, v16, OS_LOG_TYPE_DEFAULT, "Asked to revoke presentables with requestID %{public}@, requesterID %{public}@, and uniqueID %{public}@ with reason '%{public}@' (animated=%{public}@)", buf, 0x34u);
    if (animationCopy)
    {
    }
  }

  objc_initWeak(buf, self);
  _systemAnimationFenceExemptQueue = [MEMORY[0x1E69DC668] _systemAnimationFenceExemptQueue];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __101__BNBannerSourceListener___revokePresentablesWithIdentification_withAnimation_reason_userInfo_reply___block_invoke;
  v28[3] = &unk_1E81E49C8;
  objc_copyWeak(&v34, buf);
  v28[4] = self;
  v22 = identificationCopy;
  v29 = v22;
  v23 = reasonCopy;
  v30 = v23;
  v24 = animationCopy;
  v31 = v24;
  v25 = infoCopy;
  v32 = v25;
  v26 = replyCopy;
  v33 = v26;
  [_systemAnimationFenceExemptQueue performAsync:v28];

  objc_destroyWeak(&v34);
  objc_destroyWeak(buf);
}

void __101__BNBannerSourceListener___revokePresentablesWithIdentification_withAnimation_reason_userInfo_reply___block_invoke(uint64_t a1)
{
  v45[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) _removeUnpreparedPresentablesWithIdentification:*(a1 + 40)];
    v4 = objc_loadWeakRetained(WeakRetained + 9);
    v5 = objc_opt_respondsToSelector();
    v6 = *(a1 + 40);
    if ((v5 & 1) == 0)
    {
      v15 = [*(a1 + 40) requestIdentifier];
      if (v15 && (v16 = v15, v17 = objc_opt_respondsToSelector(), v16, (v17 & 1) != 0))
      {
        v12 = [*(a1 + 40) requestIdentifier];
        v18 = [*(a1 + 40) requesterIdentifier];
        v19 = [*(a1 + 56) BOOLValue];
        v20 = *(a1 + 48);
        v21 = *(a1 + 64);
        v38 = 0;
        v22 = [v4 bannerSourceListener:WeakRetained requestsRevokingPresentableWithRequestIdentifier:v12 requesterIdentifier:v18 animated:v19 reason:v20 userInfo:v21 error:&v38];
        v11 = v38;
        v23 = MEMORY[0x1E695E0F0];
        if (!v22)
        {
          v23 = 0;
        }

        v24 = v23;

        v3 = v24;
      }

      else
      {
        v25 = [*(a1 + 40) requestIdentifier];
        if (v25)
        {
        }

        else if (objc_opt_respondsToSelector())
        {
          v12 = [*(a1 + 40) requesterIdentifier];
          v31 = *(a1 + 48);
          v32 = *(a1 + 64);
          v37 = 0;
          v33 = [v4 bannerSourceListener:WeakRetained requestsRevokingAllPresentablesForRequesterWithIdentifier:v12 reason:v31 userInfo:v32 error:&v37];
          v11 = v37;
          v34 = MEMORY[0x1E695E0F0];
          if (!v33)
          {
            v34 = 0;
          }

          v35 = v34;

          v3 = v35;
          goto LABEL_25;
        }

        v36 = MEMORY[0x1E696ABC0];
        v42 = *MEMORY[0x1E696A578];
        v43 = @"No delegate to fulfill request";
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v11 = [v36 errorWithDomain:@"BNBannerSourceErrorDomain" code:0 userInfo:v12];
      }

      goto LABEL_25;
    }

    v7 = *(a1 + 48);
    v8 = [*(a1 + 56) BOOLValue];
    v9 = *(a1 + 64);
    v39 = 0;
    v10 = [v4 bannerSourceListener:WeakRetained requestsRevokingPresentablesWithIdentification:v6 reason:v7 animated:v8 userInfo:v9 error:&v39];
    v11 = v39;
    v12 = [v10 bn_identificationsForPresentables];

    if (v3)
    {
      if (!v12)
      {
        if ([v11 code] == 3)
        {
          v30 = 0;
          goto LABEL_24;
        }

LABEL_25:

        goto LABEL_26;
      }

      v13 = [v3 arrayByAddingObjectsFromArray:v12];

      v3 = v13;
    }

    else
    {
      v3 = v12;
    }

    if (!(v3 | v11))
    {
      v26 = MEMORY[0x1E696AEC0];
      v27 = BNPresentableIdentificationDescription(*(a1 + 40));
      v11 = [v26 stringWithFormat:@"No pending or presented presentables with identification %@", v27];

      v28 = MEMORY[0x1E696ABC0];
      v44 = *MEMORY[0x1E696A578];
      v45[0] = v11;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      v30 = [v28 errorWithDomain:@"BNBannerSourceErrorDomain" code:3 userInfo:v29];

      v3 = 0;
LABEL_24:

      v11 = v30;
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v14 = MEMORY[0x1E696ABC0];
  v40 = *MEMORY[0x1E696A578];
  v41 = @"Um, lost myself";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v11 = [v14 errorWithDomain:@"BNBannerSourceErrorDomain" code:0 userInfo:v4];
  v3 = 0;
LABEL_26:

  (*(*(a1 + 72) + 16))();
}

- (void)__recommendSuspension:(id)suspension forReason:(id)reason revokingCurrent:(id)current reply:(id)reply
{
  suspensionCopy = suspension;
  reasonCopy = reason;
  currentCopy = current;
  replyCopy = reply;
  if (!replyCopy)
  {
    [BNBannerSourceListener __recommendSuspension:forReason:revokingCurrent:reply:];
  }

  objc_initWeak(&location, self);
  _systemAnimationFenceExemptQueue = [MEMORY[0x1E69DC668] _systemAnimationFenceExemptQueue];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __80__BNBannerSourceListener___recommendSuspension_forReason_revokingCurrent_reply___block_invoke;
  v19[3] = &unk_1E81E49F0;
  objc_copyWeak(&v24, &location);
  v15 = suspensionCopy;
  v20 = v15;
  v16 = currentCopy;
  v21 = v16;
  v17 = reasonCopy;
  v22 = v17;
  v18 = replyCopy;
  v23 = v18;
  [_systemAnimationFenceExemptQueue performAsync:v19];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __80__BNBannerSourceListener___recommendSuspension_forReason_revokingCurrent_reply___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v10 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v17 = @"Um, lost myself";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v9 = [v10 errorWithDomain:@"BNBannerSourceErrorDomain" code:0 userInfo:v4];
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v4 = objc_loadWeakRetained(WeakRetained + 9);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v11 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v19[0] = @"No delegate to fulfill request";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v9 = [v11 errorWithDomain:@"BNBannerSourceErrorDomain" code:0 userInfo:v12];

    goto LABEL_8;
  }

  v5 = [*(a1 + 32) BOOLValue];
  v6 = [*(a1 + 40) BOOLValue];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v7 = *(a1 + 48);
  v15 = 0;
  v8 = [v4 bannerSourceListener:v3 recommendsSuspending:v5 forReason:v7 revokingCurrent:v6 error:&v15];
  v9 = v15;
LABEL_9:

  v13 = *(a1 + 56);
  v14 = [MEMORY[0x1E696AD98] numberWithBool:v8];
  (*(v13 + 16))(v13, v14, v9);
}

- (BOOL)bannerSourceListenerPresentableShouldEnablePresentableContextInterface:(id)interface
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained bannerSourceListenerShouldEnablePresentableContextInterface:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  [(BNBannerSourceListener *)self _removePresentableWithIdentification:bannerCopy requiringUniqueMatch:1];
  [(BNBannerSourceListener *)self _stopObservingAndInvalidatePresentable:bannerCopy];
}

- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  [(BNBannerSourceListener *)self _removePresentableWithIdentification:bannerCopy requiringUniqueMatch:1];
  [(BNBannerSourceListener *)self _stopObservingAndInvalidatePresentable:bannerCopy];
}

- (void)sceneDidInvalidateForBannerSourceListenerPresentable:(id)presentable
{
  presentableCopy = presentable;
  if ([presentableCopy bannerAppearState])
  {
    objc_initWeak(&location, self);
    v5 = [BNPresentableIdentification uniqueIdentificationForPresentable:presentableCopy];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __79__BNBannerSourceListener_sceneDidInvalidateForBannerSourceListenerPresentable___block_invoke;
    v6[3] = &unk_1E81E4A18;
    objc_copyWeak(&v8, &location);
    v7 = presentableCopy;
    [(BNBannerSourceListener *)self __revokePresentablesWithIdentification:v5 withAnimation:MEMORY[0x1E695E110] reason:@"BNBannerRevocationReasonSceneDidInvalidate" userInfo:0 reply:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __79__BNBannerSourceListener_sceneDidInvalidateForBannerSourceListenerPresentable___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!a2)
  {
    v7 = BNLogHostingHost;
    if (os_log_type_enabled(BNLogHostingHost, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *(a1 + 32);
      v12 = [v5 localizedDescription];
      v13 = 138543874;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      _os_log_error_impl(&dword_1C42DC000, v8, OS_LOG_TYPE_ERROR, "%{public}@ (host-side) encountered error attempting to revoke bannerSourceListenerPresentable '%{public}@' for scene invalidation: %{public}@", &v13, 0x20u);
    }
  }
}

- (BOOL)_isConnectingProcessAuthorized:(id)authorized error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  authorizedCopy = authorized;
  v7 = [authorizedCopy hasEntitlement:@"com.apple.bannerkit.post"];
  if (BNIsPrototypeFeatureDevelopmentEnabled())
  {
    v8 = 1;
  }

  else
  {
    authorizedBundleIDs = self->_authorizedBundleIDs;
    bundleIdentifier = [authorizedCopy bundleIdentifier];
    v8 = [(NSSet *)authorizedBundleIDs containsObject:bundleIdentifier];
  }

  v11 = v7 & v8;
  if (error && (v7 & v8 & 1) == 0)
  {
    v12 = objc_alloc(MEMORY[0x1E696AD60]);
    bundleIdentifier2 = [authorizedCopy bundleIdentifier];
    v14 = [v12 initWithFormat:@"[%@ (%d)] ", bundleIdentifier2, objc_msgSend(authorizedCopy, "pid")];

    if ((v7 & 1) == 0)
    {
      [v14 appendString:@"missing entitlement"];
    }

    if ((v8 & 1) == 0)
    {
      if (v7)
      {
        v15 = @"not an authorized bundle ID";
      }

      else
      {
        v15 = @", not an authorized bundle ID";
      }

      [v14 appendString:v15];
    }

    v16 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v20[0] = v14;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *error = [v16 errorWithDomain:@"BNBannerSourceErrorDomain" code:0 userInfo:v17];
  }

  return v11;
}

- (void)_addConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_connections addObject:connectionCopy];
  objc_sync_exit(selfCopy);
}

- (void)_removeConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_connections removeObject:connectionCopy];
  objc_sync_exit(selfCopy);
}

- (void)_addUnpreparedPresentable:(id)presentable
{
  presentableCopy = presentable;
  if (presentableCopy)
  {
    v9 = presentableCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    unpreparedPresentables = selfCopy->_unpreparedPresentables;
    if (!unpreparedPresentables)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v8 = selfCopy->_unpreparedPresentables;
      selfCopy->_unpreparedPresentables = v7;

      unpreparedPresentables = selfCopy->_unpreparedPresentables;
    }

    [(NSMutableSet *)unpreparedPresentables addObject:v9];
    objc_sync_exit(selfCopy);

    presentableCopy = v9;
  }
}

- (BOOL)_isPresentableWaitingToBeMadeReady:(id)ready
{
  readyCopy = ready;
  if (readyCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableSet *)selfCopy->_unpreparedPresentables containsObject:readyCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isPresentableWithIdentificationWaitingToBeMadeReady:(id)ready
{
  v16 = *MEMORY[0x1E69E9840];
  readyCopy = ready;
  if (readyCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = selfCopy->_unpreparedPresentables;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          if (BNIsPresentableIdentifiedByIdentification(*(*(&v11 + 1) + 8 * i), readyCopy, 1))
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }

        v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    objc_sync_exit(selfCopy);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)_removeUnpreparedPresentable:(id)presentable
{
  presentableCopy = presentable;
  if (presentableCopy)
  {
    v6 = presentableCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableSet *)selfCopy->_unpreparedPresentables removeObject:v6];
    objc_sync_exit(selfCopy);

    presentableCopy = v6;
  }
}

- (id)_removeUnpreparedPresentablesWithIdentification:(id)identification
{
  v30 = *MEMORY[0x1E69E9840];
  identificationCopy = identification;
  if (identificationCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = selfCopy;
    v6 = [(NSMutableSet *)selfCopy->_unpreparedPresentables copy];
    v7 = 0;
    v8 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v8)
    {
      v10 = *v22;
      *&v9 = 138543618;
      v19 = v9;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          if (BNIsPresentableIdentifiedByIdentification(v12, identificationCopy, 0))
          {
            v13 = BNLogHostingHost;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = objc_opt_class();
              v15 = NSStringFromClass(v14);
              v16 = BNEffectivePresentableDescription(v12);
              *buf = v19;
              v26 = v15;
              v27 = 2114;
              v28 = v16;
              _os_log_impl(&dword_1C42DC000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ (host-side) removing presentable waiting to be made ready: %{public}@", buf, 0x16u);
            }

            if (!v7)
            {
              v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            v17 = [BNPresentableIdentification uniqueIdentificationForPresentable:v12, v19];
            [v7 addObject:v17];

            [(BNBannerSourceListener *)obj _removeUnpreparedPresentable:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v8);
    }

    objc_sync_exit(obj);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_addPresentable:(id)presentable
{
  presentableCopy = presentable;
  if (presentableCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy->_requesterIDsToPresentables)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      requesterIDsToPresentables = selfCopy->_requesterIDsToPresentables;
      selfCopy->_requesterIDsToPresentables = v5;
    }

    requesterIdentifier = [presentableCopy requesterIdentifier];
    v8 = [(NSMutableDictionary *)selfCopy->_requesterIDsToPresentables objectForKeyedSubscript:requesterIdentifier];
    if (!v8)
    {
      v8 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
      [(NSMutableDictionary *)selfCopy->_requesterIDsToPresentables setObject:v8 forKeyedSubscript:requesterIdentifier];
    }

    [v8 addObject:presentableCopy];

    objc_sync_exit(selfCopy);
  }
}

- (id)_presentablesWithIdentification:(id)identification requiringUniqueMatch:(BOOL)match
{
  v26 = *MEMORY[0x1E69E9840];
  identificationCopy = identification;
  requesterIdentifier = [identificationCopy requesterIdentifier];
  v8 = [requesterIdentifier length];

  if (!v8)
  {
    goto LABEL_14;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  requesterIDsToPresentables = selfCopy->_requesterIDsToPresentables;
  requesterIdentifier2 = [identificationCopy requesterIdentifier];
  v12 = [(NSMutableDictionary *)requesterIDsToPresentables objectForKeyedSubscript:requesterIdentifier2];
  v13 = [v12 copy];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v13;
  v15 = 0;
  v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v16)
  {
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * i);
        if (BNIsPresentableIdentifiedByIdentification(v19, identificationCopy, match))
        {
          if (!v15)
          {
            v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          }

          [v15 addObject:{v19, v21}];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  objc_sync_exit(selfCopy);
  if (!v15)
  {
LABEL_14:
    v15 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  return v15;
}

- (id)_uniquePresentableWithIdentification:(id)identification
{
  identificationCopy = identification;
  v6 = [(BNBannerSourceListener *)self _presentablesWithIdentification:identificationCopy requiringUniqueMatch:1];
  if ([v6 count] >= 2)
  {
    [(BNBannerSourceListener *)a2 _uniquePresentableWithIdentification:identificationCopy, v6];
  }

  anyObject = [v6 anyObject];

  return anyObject;
}

- (void)_removePresentable:(id)presentable
{
  presentableCopy = presentable;
  if (presentableCopy)
  {
    v8 = presentableCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    requesterIdentifier = [v8 requesterIdentifier];
    v7 = [(NSMutableDictionary *)selfCopy->_requesterIDsToPresentables objectForKeyedSubscript:requesterIdentifier];
    if ([v7 containsObject:v8])
    {
      [v7 removeObject:v8];
      if (![v7 count])
      {
        [(NSMutableDictionary *)selfCopy->_requesterIDsToPresentables removeObjectForKey:requesterIdentifier];
      }
    }

    objc_sync_exit(selfCopy);
    presentableCopy = v8;
  }
}

- (void)_removePresentableWithIdentification:(id)identification requiringUniqueMatch:(BOOL)match
{
  v23 = *MEMORY[0x1E69E9840];
  identificationCopy = identification;
  v7 = identificationCopy;
  if (identificationCopy)
  {
    requesterIDsToPresentables = self->_requesterIDsToPresentables;
    requesterIdentifier = [identificationCopy requesterIdentifier];
    v10 = [(NSMutableDictionary *)requesterIDsToPresentables objectForKeyedSubscript:requesterIdentifier];
    v11 = [v10 copy];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v18 + 1) + 8 * i);
          if (BNIsPresentableIdentifiedByIdentification(v17, v7, match))
          {
            [(BNBannerSourceListener *)self _removePresentable:v17, v18];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }
}

- (void)_stopObservingAndInvalidatePresentable:(id)presentable
{
  presentableCopy = presentable;
  if (objc_opt_respondsToSelector())
  {
    [presentableCopy removePresentableObserver:self];
  }

  if (objc_opt_respondsToSelector())
  {
    [presentableCopy invalidate];
  }
}

- (void)_requestPostingBannerSourceListenerPresentable:(id)presentable options:(unint64_t)options userInfo:(id)info
{
  v18[1] = *MEMORY[0x1E69E9840];
  presentableCopy = presentable;
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v16 = 0;
    v11 = [WeakRetained bannerSourceListener:self requestsPostingPresentable:presentableCopy options:options userInfo:infoCopy error:&v16];
    v12 = v16;
    if (v11)
    {
      [(BNBannerSourceListener *)self _addPresentable:presentableCopy];
    }
  }

  else
  {
    [presentableCopy invalidate];
    v13 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v18[0] = @"No delegate to fulfill request";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v12 = [v13 errorWithDomain:@"BNBannerSourceErrorDomain" code:0 userInfo:v14];
  }

  if (v12)
  {
    v15 = BNLogHostingHost;
    if (os_log_type_enabled(BNLogHostingHost, OS_LOG_TYPE_ERROR))
    {
      [BNBannerSourceListener _requestPostingBannerSourceListenerPresentable:v15 options:? userInfo:?];
    }
  }
}

- (void)_requestPostingBannerSourceListenerPresentableWaitingToBeMadeReady:(id)ready options:(unint64_t)options userInfo:(id)info
{
  v19 = *MEMORY[0x1E69E9840];
  readyCopy = ready;
  infoCopy = info;
  if ([(BNBannerSourceListener *)self _isPresentableWaitingToBeMadeReady:readyCopy])
  {
    [(BNBannerSourceListener *)self _requestPostingBannerSourceListenerPresentable:readyCopy options:options userInfo:infoCopy];
    [(BNBannerSourceListener *)self _removeUnpreparedPresentable:readyCopy];
  }

  else
  {
    [readyCopy invalidate];
    v10 = BNLogHostingHost;
    if (os_log_type_enabled(BNLogHostingHost, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = BNEffectivePresentableDescription(readyCopy);
      v15 = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      _os_log_impl(&dword_1C42DC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ (host-side) presentable is ready, but no longer tracked (likely revoked): %{public}@", &v15, 0x16u);
    }
  }
}

- (void)_addUnpreparedBannerSourcePresentableForBannerSpecification:(id)specification remoteProcess:(id)process scene:(id)scene readyCompletion:(id)completion
{
  specificationCopy = specification;
  processCopy = process;
  sceneCopy = scene;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  contentBehavior = [specificationCopy contentBehavior];
  contentBehavior2 = [specificationCopy contentBehavior];
  if (objc_opt_respondsToSelector())
  {
    domain = [(BSServiceConnectionListener *)self->_connectionListener domain];
    v17 = [WeakRetained bannerSourceListener:self newBannerSourceListenerPresentableForBannerSpecification:specificationCopy serviceDomain:domain remoteProcess:processCopy readyCompletion:completionCopy];
  }

  else if (objc_opt_respondsToSelector())
  {
    domain = [(BSServiceConnectionListener *)self->_connectionListener domain];
    v17 = [WeakRetained bannerSourceListener:self newBannerSourceListenerPresentableForBannerSpecification:specificationCopy serviceDomain:domain scene:sceneCopy readyCompletion:completionCopy];
  }

  else if (contentBehavior2 == 1)
  {
    v18 = [BNBannerSourceListenerPresentableViewController alloc];
    domain = [(BSServiceConnectionListener *)self->_connectionListener domain];
    v17 = [(BNBannerSourceListenerPresentableViewController *)v18 initWithSpecification:specificationCopy serviceDomain:domain readyCompletion:completionCopy];
  }

  else
  {
    v19 = [BNBannerSourceListenerHostedPresentableViewController alloc];
    domain = [(BSServiceConnectionListener *)self->_connectionListener domain];
    v17 = [(BNBannerSourceListenerHostedPresentableViewController *)v19 initWithSpecification:specificationCopy serviceDomain:domain scene:sceneCopy readyCompletion:completionCopy];
  }

  v20 = v17;

  [v20 addPresentableObserver:self];
  [v20 setDelegate:self];
  [(BNBannerSourceListener *)self _addUnpreparedPresentable:v20];
  if (contentBehavior == 2 || contentBehavior2 == 1)
  {
    [v20 makeReadyIfPossible];
  }
}

- (id)_createSceneWithIdentifier:(id)identifier forProcess:(id)process preferredContentSize:(CGSize)size contentOutsets:(UIEdgeInsets)outsets userInfo:(id)info
{
  right = outsets.right;
  bottom = outsets.bottom;
  left = outsets.left;
  top = outsets.top;
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  processCopy = process;
  infoCopy = info;
  BSDispatchQueueAssertMain();
  if (identifierCopy)
  {
    if (processCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BNBannerSourceListener _createSceneWithIdentifier:forProcess:preferredContentSize:contentOutsets:userInfo:];
    if (processCopy)
    {
      goto LABEL_3;
    }
  }

  [BNBannerSourceListener _createSceneWithIdentifier:forProcess:preferredContentSize:contentOutsets:userInfo:];
LABEL_3:
  v19 = [(FBSceneWorkspace *)self->_sceneWorkspace sceneWithIdentifier:identifierCopy];

  if (v19)
  {
    v20 = 0;
    goto LABEL_12;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v22 = [WeakRetained bannerSourceListener:self sceneSpecificationForBannerSceneWithIdentifier:identifierCopy forProcess:processCopy userInfo:infoCopy];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_10:
      v23 = +[(FBSSceneSpecification *)BNBannerSourceApplicationSceneSpecification];
      goto LABEL_11;
    }

    v22 = [WeakRetained sceneSpecificationForBannerSourceListener:self];
  }

  v23 = v22;
  if (!v22)
  {
    goto LABEL_10;
  }

LABEL_11:
  v24 = self->_displayConfiguration;
  sceneWorkspace = self->_sceneWorkspace;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __109__BNBannerSourceListener__createSceneWithIdentifier_forProcess_preferredContentSize_contentOutsets_userInfo___block_invoke;
  v33[3] = &unk_1E81E4AB8;
  v26 = processCopy;
  v34 = v26;
  v35 = identifierCopy;
  v36 = v23;
  v37 = v24;
  v38 = WeakRetained;
  selfCopy = self;
  v40 = width;
  v41 = height;
  v42 = top;
  v43 = left;
  v44 = bottom;
  v45 = right;
  v27 = WeakRetained;
  v28 = v24;
  v29 = v23;
  v20 = [(FBSceneWorkspace *)sceneWorkspace createScene:v33];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __109__BNBannerSourceListener__createSceneWithIdentifier_forProcess_preferredContentSize_contentOutsets_userInfo___block_invoke_5;
  v31[3] = &unk_1E81E4AE0;
  v32 = v26;
  [v20 activate:v31];

LABEL_12:

  return v20;
}

void __109__BNBannerSourceListener__createSceneWithIdentifier_forProcess_preferredContentSize_contentOutsets_userInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E699FBD8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 identity];
  v7 = [v3 identityForProcessIdentity:v6];
  [v5 setClientIdentity:v7];

  [v5 setIdentifier:*(a1 + 40)];
  [v5 setSpecification:*(a1 + 48)];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __109__BNBannerSourceListener__createSceneWithIdentifier_forProcess_preferredContentSize_contentOutsets_userInfo___block_invoke_2;
  v11[3] = &unk_1E81E4A90;
  v12 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v13 = v8;
  v14 = v9;
  v10 = *(a1 + 96);
  v15 = *(a1 + 80);
  v16 = v10;
  v17 = *(a1 + 112);
  [v5 configureParameters:v11];
}

void __109__BNBannerSourceListener__createSceneWithIdentifier_forProcess_preferredContentSize_contentOutsets_userInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __109__BNBannerSourceListener__createSceneWithIdentifier_forProcess_preferredContentSize_contentOutsets_userInfo___block_invoke_3;
  v15[3] = &unk_1E81E4A40;
  v16 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v17 = v4;
  v18 = v5;
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  [v3 updateSettingsWithBlock:v15];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) bannerSourceListener:*(a1 + 48) didUpdateInitialSceneSettingsWithParameters:v3];
  }

  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __109__BNBannerSourceListener__createSceneWithIdentifier_forProcess_preferredContentSize_contentOutsets_userInfo___block_invoke_4;
  v10 = &unk_1E81E4A68;
  v6 = v3;
  v11 = v6;
  v12 = *(a1 + 56);
  v13 = *(a1 + 72);
  v14 = *(a1 + 88);
  [v6 updateClientSettingsWithBlock:&v7];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) bannerSourceListener:*(a1 + 48) didUpdateInitialSceneClientSettingsWithParameters:{v6, v7, v8, v9, v10}];
  }
}

void __109__BNBannerSourceListener__createSceneWithIdentifier_forProcess_preferredContentSize_contentOutsets_userInfo___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [*(a1 + 32) bounds];
  v9 = v8;
  v11 = v10;
  v19 = v8;
  v20 = v10;
  if (objc_opt_respondsToSelector())
  {
    v12 = [*(a1 + 40) bannerSourceListener:*(a1 + 48) layoutDescriptionWithError:0];
    [v12 containerSize];
    v19 = v13;
    v20 = v14;
    [v12 presentationSize];
    v9 = v15;
    v11 = v16;
  }

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) bannerSourceListener:*(a1 + 48) presentationSize:&v19 containerSize:&v19 error:0];
  }

  BSRectWithSize();
  [v7 setFrame:?];
  [v7 setInterfaceOrientation:1];
  [v7 setDisplayConfiguration:*(a1 + 32)];
  [v7 setForeground:1];
  v17 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  [v7 setUserInterfaceStyle:{objc_msgSend(v17, "userInterfaceStyle")}];

  [v7 setContainerSize:{v19, v20}];
  [v7 setPresentationSize:{v9, v11}];
  v18 = [v5 ui_safeAreaSettings];

  [v18 setSafeAreaEdgeInsets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
}

void __109__BNBannerSourceListener__createSceneWithIdentifier_forProcess_preferredContentSize_contentOutsets_userInfo___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v8 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [*(a1 + 32) settings];
  [v6 setInterfaceOrientation:{objc_msgSend(v7, "interfaceOrientation")}];

  [v6 setPreferredContentSize:{*(a1 + 40), *(a1 + 48)}];
  [v6 setBannerContentOutsets:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
}

void __109__BNBannerSourceListener__createSceneWithIdentifier_forProcess_preferredContentSize_contentOutsets_userInfo___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C75D0];
  v3 = MEMORY[0x1E696AD98];
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [v3 numberWithInt:{objc_msgSend(v4, "pid")}];
  v6 = [v2 handleForIdentifier:v7 error:0];
  [v5 setClientProcessHandle:v6];
}

- (BNBannerSourceListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithServiceDomain:displayConfiguration:authorizedBundleIDs:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:@"serviceDomain" object:? file:? lineNumber:? description:?];
}

- (void)initWithServiceDomain:displayConfiguration:authorizedBundleIDs:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:@"displayConfiguration" object:? file:? lineNumber:? description:?];
}

- (void)listener:(void *)a1 didReceiveConnection:(uint64_t)a2 withContext:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v13 = [a3 localizedDescription];
  OUTLINED_FUNCTION_1_0(&dword_1C42DC000, v7, v8, "%{public}@ (host-side) connection failed to authenticate: %{public}@", v9, v10, v11, v12, 2u);
}

- (void)__layoutDescriptionWithReply:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"reply" object:? file:? lineNumber:? description:?];
}

- (void)__postPresentableWithSpecification:options:userInfo:reply:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"reply" object:? file:? lineNumber:? description:?];
}

- (void)__revokePresentablesWithIdentification:withAnimation:reason:userInfo:reply:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"reply" object:? file:? lineNumber:? description:?];
}

- (void)__recommendSuspension:forReason:revokingCurrent:reply:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"reply" object:? file:? lineNumber:? description:?];
}

- (void)_uniquePresentableWithIdentification:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"BNBannerSourceListener.m" lineNumber:466 description:{@"Found multiple presentables with the unique identification: identificatio: %@; matching presentable: %@", a3, a4}];
}

- (void)_requestPostingBannerSourceListenerPresentable:(void *)a1 options:userInfo:.cold.1(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_1_0(&dword_1C42DC000, v4, v5, "%{public}@ (host-side) encountered error interacting with delegate: %{public}@", v6, v7, v8, v9, 2u);
}

- (void)_createSceneWithIdentifier:forProcess:preferredContentSize:contentOutsets:userInfo:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"sceneID" object:? file:? lineNumber:? description:?];
}

- (void)_createSceneWithIdentifier:forProcess:preferredContentSize:contentOutsets:userInfo:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"process" object:? file:? lineNumber:? description:?];
}

@end
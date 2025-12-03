@interface NSFilePresenterProxy
+ (id)urlWithItemURL:(id)l subitemPath:(id)path;
- (BOOL)allowedForURL:(id)l;
- (NSFilePresenterProxy)initWithClient:(id)client remotePresenter:(id)presenter reactorID:(id)d;
- (void)_settleNonCoordinatedChanges;
- (void)accommodateDeletionWithSubitemPath:(id)path completionHandler:(id)handler;
- (void)dealloc;
- (void)forwardRelinquishmentForWritingClaim:(BOOL)claim withID:(id)d purposeID:(id)iD subitemURL:(id)l options:(unint64_t)options completionHandler:(id)handler;
- (void)forwardUsingProxy:(id)proxy;
- (void)invalidate;
- (void)observeChangeAtSubitemPath:(id)path;
- (void)observeChangeOfUbiquityAttributes:(id)attributes;
- (void)observeDisappearanceAtSubitemPath:(id)path;
- (void)observeDisconnectionByWriterWithPurposeID:(id)d;
- (void)observeMoveByWriterWithPurposeID:(id)d withPhysicalDestinationURL:(id)l withFSID:(fsid)iD andFileID:(unint64_t)fileID;
- (void)observeMoveOfSubitemAtURL:(id)l toURL:(id)rL byWriterWithPurposeID:(id)d withFSID:(fsid)iD andFileID:(unint64_t)fileID;
- (void)observeNewProvider:(id)provider;
- (void)observePresenterChange:(BOOL)change atSubitemURL:(id)l;
- (void)observeReconnectionByWriterWithPurposeID:(id)d;
- (void)observeSharingChangeAtSubitemPath:(id)path withPhysicalURL:(id)l;
- (void)observeUbiquityChangeAtSubitemPath:(id)path withPhysicalURL:(id)l;
- (void)observeVersionChangeOfKind:(id)kind withClientID:(id)d name:(id)name subitemPath:(id)path;
- (void)relinquishToWritingClaimWithID:(id)d options:(unint64_t)options purposeID:(id)iD subitemPath:(id)path resultHandler:(id)handler;
- (void)saveChangesWithCompletionHandler:(id)handler;
- (void)setItemLocation:(id)location;
- (void)startObservingApplicationStateWithQueue:(id)queue;
- (void)startWatchingWithQueue:(id)queue lastEventID:(id)d unannouncedMoveHandler:(id)handler;
- (void)stopObservingApplicationState;
@end

@implementation NSFilePresenterProxy

- (NSFilePresenterProxy)initWithClient:(id)client remotePresenter:(id)presenter reactorID:(id)d
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSFilePresenterProxy;
  v6 = [(NSFileReactorProxy *)&v8 initWithClient:client reactorID:d];
  if (v6)
  {
    v6->_remotePresenter = [[NSFilePresenterManagedProxy alloc] initWithXPCProxy:presenter];
  }

  return v6;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  [(NSFileAccessProcessManager *)self->_processManager invalidate];

  v4.receiver = self;
  v4.super_class = NSFilePresenterProxy;
  [(NSFileReactorProxy *)&v4 dealloc];
}

- (void)setItemLocation:(id)location
{
  v16[1] = *MEMORY[0x1E69E9840];
  itemLocation = self->super._itemLocation;
  if (itemLocation == location)
  {
    goto LABEL_11;
  }

  itemProvider = [(NSFileAccessNode *)itemLocation itemProvider];
  v7 = _nearestPresenterInterestedInSubitemPresenters(self->super._itemLocation);
  HasPresentersExcludingPresenter = _nodeHasPresentersExcludingPresenter(self->super._itemLocation, self);
  v9 = [(NSFileAccessNode *)self->super._itemLocation url];
  [(NSFileAccessNode *)self->super._itemLocation removePresenter:self];
  self->super._itemLocation = location;
  [location addPresenter:self];
  itemProvider2 = [(NSFileAccessNode *)self->super._itemLocation itemProvider];
  v11 = [(NSFileAccessNode *)self->super._itemLocation url];
  if (itemProvider != itemProvider2)
  {
    if (itemProvider)
    {
      [itemProvider observePresentationChangeOfKind:@"removed" withPresenter:self url:v9 newURL:0];
    }

    if (itemProvider2)
    {
      [itemProvider2 observePresentationChangeOfKind:@"added" withPresenter:self url:v11 newURL:0];
    }

    [(NSFilePresenterProxy *)self observeNewProvider:itemProvider2];
    if (HasPresentersExcludingPresenter)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [itemProvider observePresentationChangeOfKind:@"itemMoved" withPresenter:self url:v9 newURL:v11];
  if ((HasPresentersExcludingPresenter & 1) == 0)
  {
LABEL_8:
    [v7 observePresenterChange:0 atSubitemURL:v9];
  }

LABEL_9:
  if ((_nodeHasPresentersExcludingPresenter(self->super._itemLocation, self) & 1) == 0)
  {
    [_nearestPresenterInterestedInSubitemPresenters(self->super._itemLocation) observePresenterChange:1 atSubitemURL:v11];
  }

LABEL_11:
  watcher = self->_watcher;
  if (watcher)
  {
    v13 = self->super._itemLocation;
    if (v13)
    {
      [(NSFileWatcher *)watcher setURL:[(NSFileAccessNode *)v13 url]];
    }

    else
    {
      [(NSFileWatcher *)self->_watcher stop];
      [(NSFileWatcher *)self->_watcher setObserver:0];
    }
  }

  if (self->_processManager)
  {
    v14 = [(NSFileAccessNode *)self->super._itemLocation url];
    if (v14)
    {
      v16[0] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    }

    else
    {
      v15 = 0;
    }

    [(NSFileAccessProcessManager *)self->_processManager setURLs:v15];
  }
}

- (void)forwardUsingProxy:(id)proxy
{
  forwardedMessenger = self->_forwardedMessenger;
  if (!forwardedMessenger)
  {
    forwardedMessenger = [[NSFilePresenterXPCMessenger alloc] initWithFilePresenterProxy:self];
    self->_forwardedMessenger = forwardedMessenger;
  }

  if (self->_usesMainThreadDuringRelinquishing)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  [proxy addPresenter:forwardedMessenger withID:self->super._reactorID fileURL:-[NSFileAccessNode url](self->super._itemLocation lastPresentedItemEventIdentifier:"url") ubiquityAttributes:0 options:self->_observedUbiquityAttributes responses:{v6, self->_filePresenterResponses}];
}

- (void)invalidate
{
  [(NSFilePresenterXPCMessenger *)self->_forwardedMessenger invalidate];

  self->_forwardedMessenger = 0;

  [(NSFilePresenterProxy *)self setFilePresenterResponses:0];
}

- (BOOL)allowedForURL:(id)l
{
  v21 = *MEMORY[0x1E69E9840];
  if ([l isFileURL])
  {
    *v19 = 0;
    *&v19[8] = v19;
    *&v19[16] = 0x2020000000;
    v20 = 0;
    v17 = 0u;
    v18 = 0u;
    client = [(NSFileReactorProxy *)self client];
    if (client)
    {
      [client auditToken];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    *buf = v17;
    *&buf[16] = v18;
    if (sandbox_check_by_audit_token() && ![objc_msgSend(l "path")])
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v14 = v17;
      v15 = v18;
      v13[2] = __38__NSFilePresenterProxy_allowedForURL___block_invoke;
      v13[3] = &unk_1E69F96B8;
      v13[4] = v19;
      [NSFileReactorProxy _enumerateParentDirectoriesStartingAtURL:l usingBlock:v13];
      if ((*(*&v19[8] + 24) & 1) == 0)
      {
        v9 = _NSFCPresenterLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          reactorID = self->super._reactorID;
          v11 = [-[NSFileReactorProxy client](self "client")];
          path = [l path];
          *buf = 138543875;
          *&buf[4] = reactorID;
          *&buf[12] = 1024;
          *&buf[14] = v11;
          *&buf[18] = 2113;
          *&buf[20] = path;
          _os_log_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEFAULT, "Registering presenter %{public}@ disallowed. Process %d is not allowed to access the requested path or any of its parent directories: %{private}@", buf, 0x1Cu);
        }
      }
    }

    else
    {
      *(*&v19[8] + 24) = 1;
    }

    v7 = *(*&v19[8] + 24);
    _Block_object_dispose(v19, 8);
  }

  else
  {
    v6 = _NSFCPresenterLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v19 = 138543619;
      *&v19[4] = self;
      *&v19[12] = 2113;
      *&v19[14] = l;
      _os_log_error_impl(&dword_18075C000, v6, OS_LOG_TYPE_ERROR, "Registering presenter %{public}@ disallowed. Only file URLs are allowed, unlike this one: %{private}@", v19, 0x16u);
    }

    v7 = 0;
  }

  return v7 & 1;
}

uint64_t __38__NSFilePresenterProxy_allowedForURL___block_invoke(uint64_t a1, void *a2, char *a3)
{
  v8 = [a2 fileSystemRepresentation];
  v6 = 1;
  result = sandbox_check_by_audit_token();
  if (result)
  {
    result = [a2 checkResourceIsReachableAndReturnError:{0, v8}];
    v6 = result;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  *a3 = v6;
  return result;
}

- (void)_settleNonCoordinatedChanges
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_didObserveNonCoordinatedChanges)
  {
    v3 = _NSFCPresenterLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      reactorID = self->super._reactorID;
      v5 = 138543362;
      v6 = reactorID;
      _os_log_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEFAULT, "Presenter %{public}@ settling non-coordinated events", &v5, 0xCu);
    }

    if (self->_didObserveMovingByWriter)
    {
      [(NSFileWatcher *)self->_watcher setURL:[(NSFileAccessNode *)self->super._itemLocation url]];
    }

    [(NSFileWatcher *)self->_watcher settle];
    self->_didObserveMovingByWriter = 0;
    self->_didObserveNonCoordinatedChanges = 0;
  }
}

- (void)startWatchingWithQueue:(id)queue lastEventID:(id)d unannouncedMoveHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  self->_queue = queue;
  dispatch_retain(queue);
  v9 = [NSFileWatcher alloc];
  client = self->super._client;
  if (client)
  {
    [(NSXPCConnection *)client auditToken];
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  v11 = [(NSFileWatcher *)v9 initWithQueue:queue auditToken:v14];
  self->_watcher = v11;
  [(NSFileWatcher *)v11 setURL:[(NSFileAccessNode *)self->super._itemLocation url]];
  if (d)
  {
    -[NSFileWatcher setLastObservedEventID:](self->_watcher, "setLastObservedEventID:", [d unsignedLongLongValue]);
  }

  watcher = self->_watcher;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__NSFilePresenterProxy_startWatchingWithQueue_lastEventID_unannouncedMoveHandler___block_invoke;
  v13[3] = &unk_1E69F9708;
  v13[4] = self;
  v13[5] = queue;
  v13[6] = d;
  v13[7] = handler;
  [(NSFileWatcher *)watcher setObserver:v13];
  [(NSFileWatcher *)self->_watcher start];
}

void __82__NSFilePresenterProxy_startWatchingWithQueue_lastEventID_unannouncedMoveHandler___block_invoke(uint64_t a1, uint64_t a2, __int16 a3, void *a4, uint64_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x100) != 0)
  {
    if (!*(*(a1 + 32) + 72))
    {
      v9 = _NSFCPresenterLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 32) + 16);
        *buf = 138543362;
        *&buf[4] = v10;
        _os_log_impl(&dword_18075C000, v9, OS_LOG_TYPE_DEFAULT, "Presenter %{public}@ detected non-coordinated event", buf, 0xCu);
      }

      *(*(a1 + 32) + 125) = 1;
      v11 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __82__NSFilePresenterProxy_startWatchingWithQueue_lastEventID_unannouncedMoveHandler___block_invoke_80;
      block[3] = &unk_1E69F2C00;
      v12 = *(a1 + 40);
      block[4] = *(a1 + 32);
      dispatch_after(v11, v12, block);
    }
  }

  else
  {
    v6 = a3;
    if ((a3 & 0x200) != 0)
    {
      if (a5 != -1 && *(a1 + 48))
      {
        v13 = *(*(a1 + 32) + 40);

        [v13 updateLastEventID:a5];
      }
    }

    else
    {
      if (!a2)
      {
        if ((a3 & 0x10) != 0)
        {
          v15 = [*(*(a1 + 32) + 24) url];
          if (v15)
          {
            if (([a4 isEqual:v15] & 1) == 0)
            {
              *buf = 0;
              v20 = 0;
              _NSGetFSIDAndFileID(a4, buf, &v20);
              (*(*(a1 + 56) + 16))();
            }
          }
        }

        if ((v6 & 2) != 0)
        {
          v16 = *(a1 + 32);
        }

        else
        {
          if ((v6 & 4) == 0)
          {
            return;
          }

          v16 = *(a1 + 32);
          if (*(v16 + 121))
          {
            return;
          }
        }

        if (![v16 shouldSendObservationMessageWithPurposeID:*(v16 + 80)])
        {
          return;
        }

        v19 = *(*(a1 + 32) + 40);
        v18 = 0;
        goto LABEL_28;
      }

      v8 = [*(*(a1 + 32) + 24) itemProvider];
      if (v8)
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __82__NSFilePresenterProxy_startWatchingWithQueue_lastEventID_unannouncedMoveHandler___block_invoke_2;
        v21[3] = &unk_1E69F96E0;
        v21[4] = *(a1 + 32);
        [v8 provideLogicalURLForURL:a2 completionHandler:v21];
        return;
      }

      if ([*(a1 + 32) shouldSendObservationMessageWithPurposeID:*(*(a1 + 32) + 80)])
      {
        v17 = *(*(a1 + 32) + 40);
        v18 = [NSURLPromisePair pairWithLogicalURL:a2 physicalURL:0];
        v19 = v17;
LABEL_28:

        [v19 observeChangeWithSubitemURL:v18];
      }
    }
  }
}

uint64_t __82__NSFilePresenterProxy_startWatchingWithQueue_lastEventID_unannouncedMoveHandler___block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    result = [*(result + 32) shouldSendObservationMessageWithPurposeID:*(*(result + 32) + 80)];
    if (result)
    {
      v4 = *(*(v3 + 32) + 40);

      return [v4 observeChangeWithSubitemURL:a2];
    }
  }

  return result;
}

- (void)startObservingApplicationStateWithQueue:(id)queue
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!self->_inSubarbiter)
  {
    processManager = self->_processManager;
    if (processManager)
    {
      [(NSFileAccessProcessManager *)processManager invalidate];
    }

    v6 = -[NSFileAccessProcessManager initWithClient:queue:]([NSFileAccessProcessManager alloc], "initWithClient:queue:", [-[NSFileReactorProxy client](self "client")], queue);
    self->_processManager = v6;
    if ((self->_filePresenterResponses & 0xFFFFFFFF8000020FLL) != 0)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __64__NSFilePresenterProxy_startObservingApplicationStateWithQueue___block_invoke;
      v9[3] = &unk_1E69F9730;
      v9[4] = self;
      [(NSFileAccessProcessManager *)v6 setSuspensionHandler:v9];
    }

    v7 = [(NSFileAccessNode *)self->super._itemLocation url];
    if (v7)
    {
      v10[0] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    }

    else
    {
      v8 = 0;
    }

    [(NSFileAccessProcessManager *)self->_processManager setURLs:v8];
    [self->_remotePresenter setProcessManager:self->_processManager];
  }
}

- (void)stopObservingApplicationState
{
  [(NSFileAccessProcessManager *)self->_processManager invalidate];

  self->_processManager = 0;
  remotePresenter = self->_remotePresenter;

  [remotePresenter setProcessManager:0];
}

+ (id)urlWithItemURL:(id)l subitemPath:(id)path
{
  result = [path count];
  if (result)
  {
    v7 = [objc_msgSend(l "path")];
    v8 = MEMORY[0x1E695DFF8];

    return [v8 fileURLWithPath:v7];
  }

  return result;
}

- (void)relinquishToWritingClaimWithID:(id)d options:(unint64_t)options purposeID:(id)iD subitemPath:(id)path resultHandler:(id)handler
{
  v12 = [NSURLPromisePair pairWithLogicalURL:[NSFilePresenterProxy urlWithItemURL:[(NSFileAccessNode *)self->super._itemLocation standardizedURL] subitemPath:path] physicalURL:0];

  [(NSFilePresenterProxy *)self forwardRelinquishmentForWritingClaim:1 withID:d purposeID:iD subitemURL:v12 options:options completionHandler:handler];
}

- (void)saveChangesWithCompletionHandler:(id)handler
{
  v7[5] = *MEMORY[0x1E69E9840];
  remotePresenter = self->_remotePresenter;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__NSFilePresenterProxy_saveChangesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E69F3938;
  v7[4] = handler;
  v5 = [remotePresenter remoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__NSFilePresenterProxy_saveChangesWithCompletionHandler___block_invoke_92;
  v6[3] = &unk_1E69F3938;
  v6[4] = handler;
  [v5 saveChangesWithCompletionHandler:v6];
}

uint64_t __57__NSFilePresenterProxy_saveChangesWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _NSFCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = @"saveChanges";
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "Sending of a '%{public}@' message was interrupted: %{public}@", &v6, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)accommodateDeletionWithSubitemPath:(id)path completionHandler:(id)handler
{
  v11[5] = *MEMORY[0x1E69E9840];
  v6 = [NSFilePresenterProxy urlWithItemURL:[(NSFileAccessNode *)self->super._itemLocation standardizedURL] subitemPath:path];
  remotePresenter = self->_remotePresenter;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__NSFilePresenterProxy_accommodateDeletionWithSubitemPath_completionHandler___block_invoke;
  v11[3] = &unk_1E69F3938;
  v11[4] = handler;
  v8 = [remotePresenter remoteObjectProxyWithErrorHandler:v11];
  v9 = [NSURLPromisePair pairWithLogicalURL:v6 physicalURL:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__NSFilePresenterProxy_accommodateDeletionWithSubitemPath_completionHandler___block_invoke_96;
  v10[3] = &unk_1E69F3938;
  v10[4] = handler;
  [v8 accommodateDeletionOfSubitemAtURL:v9 completionHandler:v10];
}

uint64_t __77__NSFilePresenterProxy_accommodateDeletionWithSubitemPath_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _NSFCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = @"accommodateDeletion";
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "Sending of a '%{public}@' message was interrupted: %{public}@", &v6, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)observeMoveByWriterWithPurposeID:(id)d withPhysicalDestinationURL:(id)l withFSID:(fsid)iD andFileID:(unint64_t)fileID
{
  self->_didObserveMovingByWriter = 1;
  v10 = [NSURLPromisePair pairWithLogicalURL:[(NSFileAccessNode *)self->super._itemLocation standardizedURL] physicalURL:l];
  if ([(NSFilePresenterProxy *)self shouldSendObservationMessageWithPurposeID:d])
  {
    remotePresenter = self->_remotePresenter;

    [remotePresenter observeMoveToURL:v10 withSubitemURL:0 byWriterWithPurposeID:d withFSID:iD andFileID:fileID];
  }
}

- (void)observeMoveOfSubitemAtURL:(id)l toURL:(id)rL byWriterWithPurposeID:(id)d withFSID:(fsid)iD andFileID:(unint64_t)fileID
{
  if (!l)
  {
    self->_didObserveMovingByWriter = 1;
  }

  if ([(NSFilePresenterProxy *)self shouldSendObservationMessageWithPurposeID:d])
  {
    remotePresenter = self->_remotePresenter;

    [remotePresenter observeMoveToURL:rL withSubitemURL:l byWriterWithPurposeID:d withFSID:iD andFileID:fileID];
  }
}

- (void)observeDisconnectionByWriterWithPurposeID:(id)d
{
  if ([(NSFilePresenterProxy *)self shouldSendObservationMessageWithPurposeID:d])
  {
    [self->_remotePresenter observeDisconnection];
  }

  [(NSFileWatcher *)self->_watcher stop];

  [(NSFilePresenterProxy *)self disconnect];
}

- (void)observeReconnectionByWriterWithPurposeID:(id)d
{
  if ([(NSFilePresenterProxy *)self shouldSendObservationMessageWithPurposeID:d])
  {
    remotePresenter = self->_remotePresenter;

    [remotePresenter observeReconnection];
  }
}

- (void)observeUbiquityChangeAtSubitemPath:(id)path withPhysicalURL:(id)l
{
  v5 = [NSURLPromisePair pairWithLogicalURL:[NSFilePresenterProxy urlWithItemURL:[(NSFileAccessNode *)self->super._itemLocation standardizedURL] subitemPath:path] physicalURL:l];
  if ([(NSFilePresenterProxy *)self shouldSendObservationMessageWithPurposeID:self->_currentWriterPurposeID])
  {
    remotePresenter = self->_remotePresenter;

    [remotePresenter observeUbiquityChangeWithSubitemURL:v5];
  }
}

- (void)observeSharingChangeAtSubitemPath:(id)path withPhysicalURL:(id)l
{
  v5 = [NSURLPromisePair pairWithLogicalURL:[NSFilePresenterProxy urlWithItemURL:[(NSFileAccessNode *)self->super._itemLocation standardizedURL] subitemPath:path] physicalURL:l];
  if ([(NSFilePresenterProxy *)self shouldSendObservationMessageWithPurposeID:self->_currentWriterPurposeID])
  {
    remotePresenter = self->_remotePresenter;

    [remotePresenter observeSharingChangeWithSubitemURL:v5];
  }
}

- (void)observeChangeOfUbiquityAttributes:(id)attributes
{
  observedUbiquityAttributes = self->_observedUbiquityAttributes;
  if (!observedUbiquityAttributes || -[NSSet count](observedUbiquityAttributes, "count") && (v6 = [attributes mutableCopy], objc_msgSend(v6, "intersectSet:", self->_observedUbiquityAttributes), attributes = v6, objc_msgSend(attributes, "count")))
  {
    if ([(NSFilePresenterProxy *)self shouldSendObservationMessageWithPurposeID:self->_currentWriterPurposeID])
    {
      remotePresenter = self->_remotePresenter;

      [remotePresenter observeChangeOfUbiquityAttributes:attributes];
    }
  }
}

- (void)observeDisappearanceAtSubitemPath:(id)path
{
  if ([path count])
  {
    v5 = [NSFilePresenterProxy urlWithItemURL:[(NSFileAccessNode *)self->super._itemLocation standardizedURL] subitemPath:path];
    if ([(NSFilePresenterProxy *)self shouldSendObservationMessageWithPurposeID:self->_currentWriterPurposeID])
    {
      remotePresenter = self->_remotePresenter;
      v7 = [NSURLPromisePair pairWithLogicalURL:v5 physicalURL:0];

      [remotePresenter observeChangeWithSubitemURL:v7];
    }
  }
}

- (void)observeChangeAtSubitemPath:(id)path
{
  v4 = [NSFilePresenterProxy urlWithItemURL:[(NSFileAccessNode *)self->super._itemLocation standardizedURL] subitemPath:path];
  if ([(NSFilePresenterProxy *)self shouldSendObservationMessageWithPurposeID:self->_currentWriterPurposeID])
  {
    remotePresenter = self->_remotePresenter;
    v6 = [NSURLPromisePair pairWithLogicalURL:v4 physicalURL:0];

    [remotePresenter observeChangeWithSubitemURL:v6];
  }
}

- (void)observeVersionChangeOfKind:(id)kind withClientID:(id)d name:(id)name subitemPath:(id)path
{
  self->_didObserveVersionChangingByWriter = 1;
  v10 = [NSFilePresenterProxy urlWithItemURL:[(NSFileAccessNode *)self->super._itemLocation standardizedURL] subitemPath:path];
  remotePresenter = self->_remotePresenter;
  v12 = [NSURLPromisePair pairWithLogicalURL:v10 physicalURL:0];

  [remotePresenter observeVersionChangeOfKind:kind toItemAtURL:v12 withClientID:d name:name];
}

- (void)observePresenterChange:(BOOL)change atSubitemURL:(id)l
{
  if (!self->_inSubarbiter)
  {
    changeCopy = change;
    remotePresenter = self->_remotePresenter;
    v7 = [NSURLPromisePair pairWithLogicalURL:l physicalURL:0];

    [remotePresenter observePresenterChange:changeCopy forSubitemAtURL:v7];
  }
}

- (void)observeNewProvider:(id)provider
{
  if (!self->_inSubarbiter)
  {
    remotePresenter = self->_remotePresenter;
    reactorID = [provider reactorID];

    [remotePresenter setProviderPurposeIdentifier:reactorID];
  }
}

- (void)forwardRelinquishmentForWritingClaim:(BOOL)claim withID:(id)d purposeID:(id)iD subitemURL:(id)l options:(unint64_t)options completionHandler:(id)handler
{
  optionsCopy2 = options;
  lCopy2 = l;
  claimCopy = claim;
  v35 = *MEMORY[0x1E69E9840];
  if (claim && self->_watcher)
  {
    [(NSFilePresenterProxy *)self _settleNonCoordinatedChanges];
    currentWriterPurposeID = self->_currentWriterPurposeID;
    self->_currentWriterPurposeID = [iD copy];
    ++self->_writingRelinquishmentCount;
    if (currentWriterPurposeID)
    {
      previousWriterPurposeIDs = self->_previousWriterPurposeIDs;
      if (!previousWriterPurposeIDs)
      {
        previousWriterPurposeIDs = objc_opt_new();
        self->_previousWriterPurposeIDs = previousWriterPurposeIDs;
      }

      [(NSMutableArray *)previousWriterPurposeIDs addObject:currentWriterPurposeID];
    }

    v18 = v30;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __115__NSFilePresenterProxy_forwardRelinquishmentForWritingClaim_withID_purposeID_subitemURL_options_completionHandler___block_invoke_2;
    v30[3] = &unk_1E69F84B0;
    v30[4] = self;
    lCopy2 = l;
    optionsCopy2 = options;
  }

  else
  {
    v18 = &__block_literal_global_78;
  }

  if ([iD isEqual:self->super._reactorID] && !self->_inSubarbiter)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __115__NSFilePresenterProxy_forwardRelinquishmentForWritingClaim_withID_purposeID_subitemURL_options_completionHandler___block_invoke_3;
    v24[3] = &unk_1E69F97F0;
    v24[4] = v18;
    (*(handler + 2))(handler, 1, 0, v24);
  }

  else
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __115__NSFilePresenterProxy_forwardRelinquishmentForWritingClaim_withID_purposeID_subitemURL_options_completionHandler___block_invoke_2_100;
    v28[3] = &unk_1E69F97C8;
    v28[4] = self;
    v28[5] = d;
    v28[6] = handler;
    v28[7] = v18;
    v29 = claimCopy;
    remotePresenter = self->_remotePresenter;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __115__NSFilePresenterProxy_forwardRelinquishmentForWritingClaim_withID_purposeID_subitemURL_options_completionHandler___block_invoke_109;
    v27[3] = &unk_1E69F3938;
    v27[4] = v28;
    v20 = [remotePresenter remoteObjectProxyWithErrorHandler:v27];
    v21 = _NSFCPresenterLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      reactorID = self->super._reactorID;
      *buf = 138543618;
      v32 = reactorID;
      v33 = 2114;
      dCopy = d;
      _os_log_impl(&dword_18075C000, v21, OS_LOG_TYPE_DEFAULT, "Asking presenter %{public}@ to relinquish to claim %{public}@", buf, 0x16u);
    }

    if (claimCopy)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __115__NSFilePresenterProxy_forwardRelinquishmentForWritingClaim_withID_purposeID_subitemURL_options_completionHandler___block_invoke_113;
      v26[3] = &unk_1E69F3938;
      v26[4] = v28;
      [v20 relinquishToWritingClaimWithID:d options:optionsCopy2 purposeID:iD subitemURL:lCopy2 completionHandler:v26];
    }

    else
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __115__NSFilePresenterProxy_forwardRelinquishmentForWritingClaim_withID_purposeID_subitemURL_options_completionHandler___block_invoke_2_114;
      v25[3] = &unk_1E69F3938;
      v25[4] = v28;
      [v20 relinquishToReadingClaimWithID:d options:optionsCopy2 purposeID:iD completionHandler:v25];
    }
  }
}

void __115__NSFilePresenterProxy_forwardRelinquishmentForWritingClaim_withID_purposeID_subitemURL_options_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 72))
  {
    v4 = _NSFCPresenterLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "A file presenter is being asked to reacquire from a writer more times than it's been asked to relinquish", buf, 2u);
    }
  }

  --*(*(a1 + 32) + 72);
  v5 = *(a1 + 32);
  if (*(v5 + 72))
  {

    *(*(a1 + 32) + 80) = [*(*(a1 + 32) + 88) lastObject];
    [*(*(a1 + 32) + 88) removeLastObject];
    (*(a2 + 16))(a2);
  }

  else
  {
    v6 = _NSFCPresenterLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(*(a1 + 32) + 16);
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&dword_18075C000, v6, OS_LOG_TYPE_INFO, "Deferring presenter %{public}@ reaquistion for .5 seconds", buf, 0xCu);
    }

    v8 = dispatch_time(0, 500000000);
    v9 = *(a1 + 32);
    v10 = *(v9 + 56);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __115__NSFilePresenterProxy_forwardRelinquishmentForWritingClaim_withID_purposeID_subitemURL_options_completionHandler___block_invoke_99;
    v11[3] = &unk_1E69F5678;
    v11[4] = v9;
    v11[5] = a2;
    dispatch_after(v8, v10, v11);
  }
}

uint64_t __115__NSFilePresenterProxy_forwardRelinquishmentForWritingClaim_withID_purposeID_subitemURL_options_completionHandler___block_invoke_99(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 120) == 1)
  {
    [*(v2 + 64) setURL:{objc_msgSend(*(v2 + 24), "url")}];
    v2 = *(a1 + 32);
  }

  [*(v2 + 64) settle];

  *(*(a1 + 32) + 80) = 0;
  *(*(a1 + 32) + 120) = 0;
  *(*(a1 + 32) + 121) = 0;
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __115__NSFilePresenterProxy_forwardRelinquishmentForWritingClaim_withID_purposeID_subitemURL_options_completionHandler___block_invoke_2_100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = _NSFCPresenterLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    v12 = *(*(a1 + 32) + 16);
    *buf = 138543618;
    v21 = v12;
    v22 = 2114;
    v23 = v11;
    _os_log_impl(&dword_18075C000, v6, OS_LOG_TYPE_DEFAULT, "Received relinquishment reply for presenter %{public}@ to claim %{public}@", buf, 0x16u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __115__NSFilePresenterProxy_forwardRelinquishmentForWritingClaim_withID_purposeID_subitemURL_options_completionHandler___block_invoke_101;
  v15[3] = &unk_1E69F97A0;
  v13 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = a2;
  v16 = *(a1 + 32);
  v19 = *(a1 + 64);
  return (*(v13 + 16))(v13, a2, a3, v15, v7, v8, v9, v10);
}

uint64_t __115__NSFilePresenterProxy_forwardRelinquishmentForWritingClaim_withID_purposeID_subitemURL_options_completionHandler___block_invoke_101(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __115__NSFilePresenterProxy_forwardRelinquishmentForWritingClaim_withID_purposeID_subitemURL_options_completionHandler___block_invoke_2_102;
  v4[3] = &unk_1E69F9778;
  v7 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = a2;
  return (*(v2 + 16))(v2, v4);
}

uint64_t __115__NSFilePresenterProxy_forwardRelinquishmentForWritingClaim_withID_purposeID_subitemURL_options_completionHandler___block_invoke_2_102(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1)
  {
    v2 = _NSFCPresenterLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v4 = *(*(a1 + 32) + 16);
      *buf = 138543618;
      v15 = v4;
      v16 = 2114;
      v17 = v3;
      _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "Telling presenter %{public}@ to reacquire after claim %{public}@", buf, 0x16u);
    }

    v5 = *(*(a1 + 32) + 40);
    if (*(a1 + 57))
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __115__NSFilePresenterProxy_forwardRelinquishmentForWritingClaim_withID_purposeID_subitemURL_options_completionHandler___block_invoke_103;
      v13[3] = &unk_1E69F3938;
      v13[4] = *(a1 + 48);
      v6 = [v5 remoteObjectProxyWithErrorHandler:v13];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __115__NSFilePresenterProxy_forwardRelinquishmentForWritingClaim_withID_purposeID_subitemURL_options_completionHandler___block_invoke_107;
      v12[3] = &unk_1E69F9198;
      v12[4] = *(a1 + 32);
      return [v6 reacquireFromWritingClaimForID:*(a1 + 40) completionHandler:v12];
    }

    else
    {
      [v5 reacquireFromReadingClaimForID:*(a1 + 40)];
      v9 = _NSFCPresenterLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 40);
        v11 = *(*(a1 + 32) + 16);
        *buf = 138543618;
        v15 = v11;
        v16 = 2114;
        v17 = v10;
        _os_log_impl(&dword_18075C000, v9, OS_LOG_TYPE_INFO, "Not waiting for reacquisition reply for presenter %{public}@ after claim %{public}@", buf, 0x16u);
      }

      return (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v8 = *(*(a1 + 48) + 16);

    return v8();
  }
}

uint64_t __115__NSFilePresenterProxy_forwardRelinquishmentForWritingClaim_withID_purposeID_subitemURL_options_completionHandler___block_invoke_103(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _NSFCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = @"reacquire";
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "Sending of a '%{public}@' message was interrupted: %{public}@", &v6, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __115__NSFilePresenterProxy_forwardRelinquishmentForWritingClaim_withID_purposeID_subitemURL_options_completionHandler___block_invoke_107(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _NSFCPresenterLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[5];
    v4 = *(a1[4] + 16);
    v6 = 138543618;
    v7 = v4;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEFAULT, "Received reacquisition reply for presenter %{public}@ after claim %{public}@", &v6, 0x16u);
  }

  return (*(a1[6] + 16))();
}

uint64_t __115__NSFilePresenterProxy_forwardRelinquishmentForWritingClaim_withID_purposeID_subitemURL_options_completionHandler___block_invoke_109(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = _NSFCLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543618;
    v7 = @"relinquish";
    v8 = 2114;
    v9 = a2;
    _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "Sending of a '%{public}@' message was interrupted: %{public}@", &v6, 0x16u);
  }

  return (*(*(a1 + 32) + 16))();
}

uint64_t __115__NSFilePresenterProxy_forwardRelinquishmentForWritingClaim_withID_purposeID_subitemURL_options_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __115__NSFilePresenterProxy_forwardRelinquishmentForWritingClaim_withID_purposeID_subitemURL_options_completionHandler___block_invoke_4;
  v8[3] = &unk_1E69F40C0;
  v8[4] = a2;
  return (*(v6 + 16))(v6, v8, a3, a4, a5, a6);
}

@end
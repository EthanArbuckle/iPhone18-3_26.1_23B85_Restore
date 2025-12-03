@interface _BNPresentableContext
+ (void)initialize;
- (NSString)description;
- (_BNPresentableContext)initWithMachName:(id)name presentable:(id)presentable;
- (id)_activeConnectionWithError:(id *)error;
- (void)__bannerWillNotAppearWithReason:(id)reason error:(id *)error;
- (void)__bannerWillNotAppearWithReason:(id)reason reply:(id)reply;
- (void)__handleTemplateContentEvent:(id)event error:(id *)error;
- (void)__handleTemplateContentEvent:(id)event reply:(id)reply;
- (void)__setBannerAppearState:(id)state reason:(id)reason error:(id *)error;
- (void)__setBannerAppearState:(id)state reason:(id)reason reply:(id)reply;
- (void)__setUserInteractionWillBegin:(id)begin error:(id *)error;
- (void)__setUserInteractionWillBegin:(id)begin reply:(id)reply;
- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block;
- (void)_invalidateConnection;
- (void)_runPostConnectionInvalidation;
- (void)_setBannerAppearState:(int)state reason:(id)reason;
- (void)addPresentableObserver:(id)observer;
- (void)invalidate;
- (void)removePresentableObserver:(id)observer;
- (void)setHostNeedsUpdate;
@end

@implementation _BNPresentableContext

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  machName = self->_machName;
  v6 = NSStringFromBOOL();
  v7 = BNEffectivePresentableDescription(self->_presentable);
  v8 = [v3 stringWithFormat:@"<%@: %p machName: %@; isValid: %@: presentable: %@>", v4, self, machName, v6, v7];;

  return v8;
}

- (void)invalidate
{
  v6 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_valid)
  {
    selfCopy->_valid = 0;
    v3 = BNLogContextService;
    if (os_log_type_enabled(BNLogContextService, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = selfCopy;
      _os_log_impl(&dword_1C42DC000, v3, OS_LOG_TYPE_DEFAULT, "BNPresentableContext invalidated: %{public}@", &v4, 0xCu);
    }

    [(_BNPresentableContext *)selfCopy _invalidateConnection];
  }

  objc_sync_exit(selfCopy);
}

- (void)_invalidateConnection
{
  v7 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_connection)
  {
    v3 = BNLogContextService;
    if (os_log_type_enabled(BNLogContextService, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = selfCopy;
      _os_log_impl(&dword_1C42DC000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating connection: %{public}@", &v5, 0xCu);
    }

    [(BSServiceConnection *)selfCopy->_connection invalidate];
    connection = selfCopy->_connection;
    selfCopy->_connection = 0;

    [(_BNPresentableContext *)selfCopy _runPostConnectionInvalidation];
  }

  objc_sync_exit(selfCopy);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    BNRegisterBannerKitLogging();
  }
}

- (_BNPresentableContext)initWithMachName:(id)name presentable:(id)presentable
{
  nameCopy = name;
  presentableCopy = presentable;
  v9 = presentableCopy;
  if (nameCopy)
  {
    if (presentableCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_BNPresentableContext initWithMachName:a2 presentable:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [_BNPresentableContext initWithMachName:a2 presentable:self];
LABEL_3:
  v17.receiver = self;
  v17.super_class = _BNPresentableContext;
  v10 = [(_BNPresentableContext *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_valid = 1;
    v12 = [nameCopy copy];
    machName = v11->_machName;
    v11->_machName = v12;

    objc_storeStrong(&v11->_presentable, presentable);
    Serial = BSDispatchQueueCreateSerial();
    connectionQueue = v11->_connectionQueue;
    v11->_connectionQueue = Serial;
  }

  return v11;
}

- (void)setHostNeedsUpdate
{
  v21 = 0;
  v3 = [(_BNPresentableContext *)self _activeConnectionWithError:&v21];
  v4 = v21;
  bn_remoteTargetEnforceLaunching = [v3 bn_remoteTargetEnforceLaunching];

  if (bn_remoteTargetEnforceLaunching)
  {
    v6 = MEMORY[0x1E696AD98];
    if (objc_opt_respondsToSelector())
    {
      isDraggingDismissalEnabled = [(BNPresentable *)self->_presentable isDraggingDismissalEnabled];
    }

    else
    {
      isDraggingDismissalEnabled = kBNPresentableContextIsDraggingDismissalEnabledDefault;
    }

    v8 = [v6 numberWithInt:isDraggingDismissalEnabled];
    v20 = 0;
    [bn_remoteTargetEnforceLaunching __setDraggingDismissalEnabled:v8 error:&v20];
    v9 = v20;

    if (v9 && os_log_type_enabled(BNLogContextService, OS_LOG_TYPE_ERROR))
    {
      [_BNPresentableContext setHostNeedsUpdate];
    }

    v10 = MEMORY[0x1E696AD98];
    if (objc_opt_respondsToSelector())
    {
      isDraggingInteractionEnabled = [(BNPresentable *)self->_presentable isDraggingInteractionEnabled];
    }

    else
    {
      isDraggingInteractionEnabled = kBNPresentableContextIsDraggingInteractionEnabledDefault;
    }

    v12 = [v10 numberWithInt:isDraggingInteractionEnabled];
    v19 = 0;
    [bn_remoteTargetEnforceLaunching __setDraggingInteractionEnabled:v12 error:&v19];
    v13 = v19;

    if (v13 && os_log_type_enabled(BNLogContextService, OS_LOG_TYPE_ERROR))
    {
      [_BNPresentableContext setHostNeedsUpdate];
    }

    v14 = MEMORY[0x1E696AD98];
    if (objc_opt_respondsToSelector())
    {
      isTouchOutsideDismissalEnabled = [(BNPresentable *)self->_presentable isTouchOutsideDismissalEnabled];
    }

    else
    {
      isTouchOutsideDismissalEnabled = kBNPresentableContextIsTouchOutsideDismissalEnabledDefault;
    }

    v16 = [v14 numberWithInt:isTouchOutsideDismissalEnabled];
    v18 = 0;
    [bn_remoteTargetEnforceLaunching __setTouchOutsideDismissalEnabled:v16 error:&v18];
    v17 = v18;

    if (v17 && os_log_type_enabled(BNLogContextService, OS_LOG_TYPE_ERROR))
    {
      [_BNPresentableContext setHostNeedsUpdate];
    }
  }

  else if (os_log_type_enabled(BNLogContextService, OS_LOG_TYPE_ERROR))
  {
    [_BNPresentableContext setHostNeedsUpdate];
  }
}

- (void)__setBannerAppearState:(id)state reason:(id)reason error:(id *)error
{
  stateCopy = state;
  reasonCopy = reason;
  objc_initWeak(&location, self);
  _systemAnimationFenceExemptQueue = [MEMORY[0x1E69DC668] _systemAnimationFenceExemptQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61___BNPresentableContext___setBannerAppearState_reason_error___block_invoke;
  v12[3] = &unk_1E81E4760;
  objc_copyWeak(&v15, &location);
  v10 = stateCopy;
  v13 = v10;
  v11 = reasonCopy;
  v14 = v11;
  [_systemAnimationFenceExemptQueue performAsync:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)__setBannerAppearState:(id)state reason:(id)reason reply:(id)reply
{
  v9 = 0;
  replyCopy = reply;
  [(_BNPresentableContext *)self __setBannerAppearState:state reason:reason error:&v9];
  replyCopy[2](replyCopy, v9);
}

- (void)__bannerWillNotAppearWithReason:(id)reason error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v6 = BNLogContextService;
  if (os_log_type_enabled(BNLogContextService, OS_LOG_TYPE_DEFAULT))
  {
    presentable = self->_presentable;
    v8 = v6;
    v9 = BNEffectivePresentableDescription(presentable);
    *buf = 138543618;
    v16 = v9;
    v17 = 2114;
    v18 = reasonCopy;
    _os_log_impl(&dword_1C42DC000, v8, OS_LOG_TYPE_DEFAULT, "Presentable will NOT appear as banner: %{public}@ (%{public}@)", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  _systemAnimationFenceExemptQueue = [MEMORY[0x1E69DC668] _systemAnimationFenceExemptQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63___BNPresentableContext___bannerWillNotAppearWithReason_error___block_invoke;
  v12[3] = &unk_1E81E47B0;
  objc_copyWeak(&v14, buf);
  v11 = reasonCopy;
  v13 = v11;
  [_systemAnimationFenceExemptQueue performAsync:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)__bannerWillNotAppearWithReason:(id)reason reply:(id)reply
{
  v7 = 0;
  replyCopy = reply;
  [(_BNPresentableContext *)self __bannerWillNotAppearWithReason:reason error:&v7];
  replyCopy[2](replyCopy, v7);
}

- (void)__setUserInteractionWillBegin:(id)begin error:(id *)error
{
  beginCopy = begin;
  objc_initWeak(&location, self);
  _systemAnimationFenceExemptQueue = [MEMORY[0x1E69DC668] _systemAnimationFenceExemptQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61___BNPresentableContext___setUserInteractionWillBegin_error___block_invoke;
  v8[3] = &unk_1E81E47B0;
  objc_copyWeak(&v10, &location);
  v7 = beginCopy;
  v9 = v7;
  [_systemAnimationFenceExemptQueue performAsync:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)__setUserInteractionWillBegin:(id)begin reply:(id)reply
{
  v7 = 0;
  replyCopy = reply;
  [(_BNPresentableContext *)self __setUserInteractionWillBegin:begin error:&v7];
  replyCopy[2](replyCopy, v7);
}

- (void)__handleTemplateContentEvent:(id)event error:(id *)error
{
  eventCopy = event;
  v6 = self->_presentable;
  _systemAnimationFenceExemptQueue = [MEMORY[0x1E69DC668] _systemAnimationFenceExemptQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60___BNPresentableContext___handleTemplateContentEvent_error___block_invoke;
  v10[3] = &unk_1E81E4800;
  v11 = v6;
  v12 = eventCopy;
  v8 = eventCopy;
  v9 = v6;
  [_systemAnimationFenceExemptQueue performAsync:v10];
}

- (void)__handleTemplateContentEvent:(id)event reply:(id)reply
{
  v7 = 0;
  replyCopy = reply;
  [(_BNPresentableContext *)self __handleTemplateContentEvent:event error:&v7];
  replyCopy[2](replyCopy, v7);
}

- (void)addPresentableObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    observers = self->_observers;
    v9 = v5;
    if (!observers)
    {
      v7 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
      v8 = self->_observers;
      self->_observers = v7;

      observers = self->_observers;
    }

    observerCopy = [(NSHashTable *)observers addObject:v9];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](observerCopy, v5);
}

- (void)removePresentableObserver:(id)observer
{
  if (observer)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSHashTable *)observers removeObject:?];
    }
  }
}

- (id)_activeConnectionWithError:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_valid)
  {
    if (selfCopy->_connection)
    {
      goto LABEL_9;
    }

    v5 = MEMORY[0x1E698F498];
    machName = selfCopy->_machName;
    v7 = +[BNPresentableContextSessionSpecification identifier];
    requesterIdentifier = [(BNPresentable *)selfCopy->_presentable requesterIdentifier];
    requestIdentifier = [(BNPresentable *)selfCopy->_presentable requestIdentifier];
    uniquePresentableIdentifier = [(BNPresentable *)selfCopy->_presentable uniquePresentableIdentifier];
    v11 = BNSceneIdentifierForRequest(requesterIdentifier, requestIdentifier, uniquePresentableIdentifier);
    v12 = [v5 endpointForMachName:machName service:v7 instance:v11];

    v13 = [MEMORY[0x1E698F490] connectionWithEndpoint:v12];
    connection = selfCopy->_connection;
    selfCopy->_connection = v13;

    v15 = selfCopy->_connection;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __52___BNPresentableContext__activeConnectionWithError___block_invoke;
    v20[3] = &unk_1E81E44F0;
    v20[4] = selfCopy;
    [(BSServiceConnection *)v15 configureConnection:v20];
    [(BSServiceConnection *)selfCopy->_connection activate];
    goto LABEL_8;
  }

  v16 = BNLogContextService;
  if (os_log_type_enabled(BNLogContextService, OS_LOG_TYPE_ERROR))
  {
    [(_BNPresentableContext *)selfCopy _activeConnectionWithError:v16];
  }

  if (error)
  {
    v17 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v22[0] = @"Attempt to establish connection with an invalidated BNPresentableContext";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    *error = [v17 errorWithDomain:@"BNBannerSourceErrorDomain" code:0 userInfo:v12];
LABEL_8:
  }

LABEL_9:
  v18 = selfCopy->_connection;
  objc_sync_exit(selfCopy);

  return v18;
}

- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (blockCopy && [(NSHashTable *)self->_observers count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSHashTable *)self->_observers copy];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            blockCopy[2](blockCopy, v11);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)_setBannerAppearState:(int)state reason:(id)reason
{
  v36 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (self->_presentableAppearState == state)
  {
    goto LABEL_29;
  }

  self->_presentableAppearState = state;
  if (state <= 1)
  {
    if (state)
    {
      if (state == 1)
      {
        v7 = BNLogContextService;
        if (os_log_type_enabled(BNLogContextService, OS_LOG_TYPE_DEFAULT))
        {
          presentable = self->_presentable;
          v9 = v7;
          v10 = BNEffectivePresentableDescription(presentable);
          *buf = 138543362;
          v33 = v10;
          _os_log_impl(&dword_1C42DC000, v9, OS_LOG_TYPE_DEFAULT, "Presentable will appear as banner: %{public}@", buf, 0xCu);
        }

        v11 = sel_presentableWillAppearAsBanner_;
        if (objc_opt_respondsToSelector())
        {
          [(BNPresentable *)self->_presentable presentableWillAppearAsBanner:self->_presentable];
        }

        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __54___BNPresentableContext__setBannerAppearState_reason___block_invoke;
        v31[3] = &unk_1E81E47D8;
        v31[4] = self;
        v12 = v31;
LABEL_28:
        [(_BNPresentableContext *)self _enumerateObserversRespondingToSelector:v11 usingBlock:v12];
        goto LABEL_29;
      }

      goto LABEL_29;
    }

    v18 = BNLogContextService;
    if (os_log_type_enabled(BNLogContextService, OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->_presentable;
      v20 = v18;
      v21 = BNEffectivePresentableDescription(v19);
      *buf = 138543618;
      v33 = v21;
      v34 = 2114;
      v35 = reasonCopy;
      _os_log_impl(&dword_1C42DC000, v20, OS_LOG_TYPE_DEFAULT, "Presentable did disappear as banner: %{public}@ (%{public}@)", buf, 0x16u);
    }

    if (objc_opt_respondsToSelector())
    {
      [(BNPresentable *)self->_presentable presentableDidDisappearAsBanner:self->_presentable withReason:reasonCopy];
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __54___BNPresentableContext__setBannerAppearState_reason___block_invoke_62;
    v26[3] = &unk_1E81E4788;
    v26[4] = self;
    v27 = reasonCopy;
    [(_BNPresentableContext *)self _enumerateObserversRespondingToSelector:sel_presentableDidDisappearAsBanner_withReason_ usingBlock:v26];
    v17 = v27;
LABEL_22:

    goto LABEL_29;
  }

  if (state == 2)
  {
    v22 = BNLogContextService;
    if (os_log_type_enabled(BNLogContextService, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_presentable;
      v24 = v22;
      v25 = BNEffectivePresentableDescription(v23);
      *buf = 138543362;
      v33 = v25;
      _os_log_impl(&dword_1C42DC000, v24, OS_LOG_TYPE_DEFAULT, "Presentable did appear as banner: %{public}@", buf, 0xCu);
    }

    v11 = sel_presentableDidAppearAsBanner_;
    if (objc_opt_respondsToSelector())
    {
      [(BNPresentable *)self->_presentable presentableDidAppearAsBanner:self->_presentable];
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __54___BNPresentableContext__setBannerAppearState_reason___block_invoke_56;
    v30[3] = &unk_1E81E47D8;
    v30[4] = self;
    v12 = v30;
    goto LABEL_28;
  }

  if (state == 3)
  {
    v13 = BNLogContextService;
    if (os_log_type_enabled(BNLogContextService, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_presentable;
      v15 = v13;
      v16 = BNEffectivePresentableDescription(v14);
      *buf = 138543618;
      v33 = v16;
      v34 = 2114;
      v35 = reasonCopy;
      _os_log_impl(&dword_1C42DC000, v15, OS_LOG_TYPE_DEFAULT, "Presentable will disappear as banner: %{public}@ (%{public}@)", buf, 0x16u);
    }

    if (objc_opt_respondsToSelector())
    {
      [(BNPresentable *)self->_presentable presentableWillDisappearAsBanner:self->_presentable withReason:reasonCopy];
    }

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __54___BNPresentableContext__setBannerAppearState_reason___block_invoke_59;
    v28[3] = &unk_1E81E4788;
    v28[4] = self;
    v29 = reasonCopy;
    [(_BNPresentableContext *)self _enumerateObserversRespondingToSelector:sel_presentableWillDisappearAsBanner_withReason_ usingBlock:v28];
    v17 = v29;
    goto LABEL_22;
  }

LABEL_29:
}

- (void)_runPostConnectionInvalidation
{
  objc_initWeak(&location, self);
  _systemAnimationFenceExemptQueue = [MEMORY[0x1E69DC668] _systemAnimationFenceExemptQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55___BNPresentableContext__runPostConnectionInvalidation__block_invoke;
  v3[3] = &unk_1E81E4828;
  objc_copyWeak(&v4, &location);
  [_systemAnimationFenceExemptQueue performAsync:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)initWithMachName:(uint64_t)a1 presentable:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BNPresentableContext.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"machName"}];
}

- (void)initWithMachName:(uint64_t)a1 presentable:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BNPresentableContext.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"presentable"}];
}

- (void)_activeConnectionWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C42DC000, a2, OS_LOG_TYPE_ERROR, "Attempt to establish connection with an invalidated BNPresentableContext: %{public}@", &v2, 0xCu);
}

@end
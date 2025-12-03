@interface BNBannerController
+ (void)initialize;
- (BNBannerController)initWithAuthority:(id)authority pender:(id)pender presenter:(id)presenter;
- (BOOL)_presentNextPendingPresentableIfPossible;
- (BOOL)_presentNextPendingPresentableIfPossible:(id *)possible;
- (BOOL)_presentPresentableWithContext:(id)context;
- (BOOL)_shouldMorphToPresentable:(id)presentable withPresentedPresentables:(id)presentables responsiblePresentable:(id *)responsiblePresentable stateChange:(id *)change;
- (BOOL)_shouldPostPresentable:(id)presentable userInfo:(id)info error:(id *)error;
- (BOOL)_shouldPresentPresentable:(id)presentable withPresentedPresentables:(id)presentables responsiblePresentable:(id *)responsiblePresentable;
- (BOOL)postPresentable:(id)presentable withOptions:(unint64_t)options userInfo:(id)info error:(id *)error;
- (BOOL)revokeAllPresentablesWithRequesterIdentifier:(id)identifier reason:(id)reason options:(unint64_t)options userInfo:(id)info error:(id *)error;
- (BOOL)revokePresentableWithRequestIdentifier:(id)identifier requesterIdentifier:(id)requesterIdentifier reason:(id)reason options:(unint64_t)options animated:(BOOL)animated userInfo:(id)info error:(id *)error;
- (BOOL)revokePresentableWithRequestIdentifier:(id)identifier requesterIdentifier:(id)requesterIdentifier reason:(id)reason options:(unint64_t)options userInfo:(id)info error:(id *)error;
- (BOOL)setSuspended:(BOOL)suspended forReason:(id)reason revokingCurrent:(BOOL)current error:(id *)error;
- (id)_revokePresentablesWithIdentification:(id)identification reason:(id)reason options:(unint64_t)options animated:(id)animated userInfo:(id)info error:(id *)error;
- (id)_suspensionReasonForEnqueuedPresentable:(id)presentable;
- (id)revokePresentablesWithIdentification:(id)identification reason:(id)reason options:(unint64_t)options animated:(BOOL)animated userInfo:(id)info error:(id *)error;
- (void)_cancelAutoDequeueTimer;
- (void)_resumeForResponsiblePresentableIfNecessary:(id)necessary;
- (void)_resumeForResponsiblePresentableIfNecessaryWithIdentification:(id)identification;
- (void)_setAuthority:(id)authority;
- (void)_startAutoDequeueTimerIfNecessary;
- (void)_suspendPenderForRequesterIdentifier:(id)identifier withResponsiblePresentable:(id)presentable;
@end

@implementation BNBannerController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    BNRegisterBannerKitLogging();
  }
}

- (void)_cancelAutoDequeueTimer
{
  [(NSTimer *)self->_autoDequeueTimer invalidate];
  autoDequeueTimer = self->_autoDequeueTimer;
  self->_autoDequeueTimer = 0;
}

- (void)_startAutoDequeueTimerIfNecessary
{
  if (!self->_autoDequeueTimer)
  {
    peekPresentable = [(BNRequesterPending *)self->_pender peekPresentable];

    if (peekPresentable)
    {
      objc_initWeak(&location, self);
      v4 = BNLogPosting;
      if (os_log_type_enabled(BNLogPosting, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C42DC000, v4, OS_LOG_TYPE_DEFAULT, "Scheduling auto dequeue timer", buf, 2u);
      }

      v5 = MEMORY[0x1E695DFF0];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __55__BNBannerController__startAutoDequeueTimerIfNecessary__block_invoke;
      v8[3] = &unk_1E81E4620;
      objc_copyWeak(&v9, &location);
      v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:v8 block:2.0];
      autoDequeueTimer = self->_autoDequeueTimer;
      self->_autoDequeueTimer = v6;

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }
}

- (BOOL)_presentNextPendingPresentableIfPossible
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v2 = [(BNBannerController *)self _presentNextPendingPresentableIfPossible:&v6];
  v3 = v6;
  if (!v2)
  {
    v4 = BNLogPosting;
    if (os_log_type_enabled(BNLogPosting, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v8 = v3;
      _os_log_impl(&dword_1C42DC000, v4, OS_LOG_TYPE_DEFAULT, "Not presenting next pending presentable: %{public}@", buf, 0xCu);
    }
  }

  return v2;
}

- (BNBannerController)initWithAuthority:(id)authority pender:(id)pender presenter:(id)presenter
{
  authorityCopy = authority;
  penderCopy = pender;
  presenterCopy = presenter;
  v11 = presenterCopy;
  if (authorityCopy)
  {
    if (presenterCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BNBannerController initWithAuthority:pender:presenter:];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  [BNBannerController initWithAuthority:pender:presenter:];
LABEL_3:
  v20.receiver = self;
  v20.super_class = BNBannerController;
  v12 = [(BNBannerController *)&v20 init];
  v13 = v12;
  if (v12)
  {
    [(BNBannerController *)v12 _setAuthority:authorityCopy];
    if (penderCopy)
    {
      v14 = penderCopy;
    }

    else
    {
      v14 = objc_alloc_init(BNPenderQueue);
    }

    pender = v13->_pender;
    v13->_pender = v14;

    v16 = v13->_pender;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [(BNRequesterPending *)v16 setPenderIdentifier:v18];

    objc_storeStrong(&v13->_presenter, presenter);
  }

  return v13;
}

- (BOOL)postPresentable:(id)presentable withOptions:(unint64_t)options userInfo:(id)info error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  presentableCopy = presentable;
  infoCopy = info;
  v12 = BNLogPosting;
  if (os_log_type_enabled(BNLogPosting, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = BNEffectivePresentableDescription(presentableCopy);
    v17 = 138543362;
    v18 = v14;
    _os_log_impl(&dword_1C42DC000, v13, OS_LOG_TYPE_DEFAULT, "Asked to post presentable: %{public}@", &v17, 0xCu);
  }

  v15 = [(BNBannerController *)self _shouldPostPresentable:presentableCopy userInfo:infoCopy error:error];
  if (v15)
  {
    [(BNRequesterPending *)self->_pender enqueuePresentable:presentableCopy withOptions:options userInfo:infoCopy];
    [(BNBannerController *)self _presentNextPendingPresentableIfPossible];
  }

  return v15;
}

- (BOOL)revokePresentableWithRequestIdentifier:(id)identifier requesterIdentifier:(id)requesterIdentifier reason:(id)reason options:(unint64_t)options userInfo:(id)info error:(id *)error
{
  infoCopy = info;
  reasonCopy = reason;
  v16 = [BNPresentableIdentification identificationWithRequesterIdentifier:requesterIdentifier requestIdentifier:identifier];
  v17 = [(BNBannerController *)self revokePresentablesWithIdentification:v16 reason:reasonCopy options:options userInfo:infoCopy error:error];

  return v17 != 0;
}

- (BOOL)revokeAllPresentablesWithRequesterIdentifier:(id)identifier reason:(id)reason options:(unint64_t)options userInfo:(id)info error:(id *)error
{
  infoCopy = info;
  reasonCopy = reason;
  v14 = [BNPresentableIdentification identificationWithRequesterIdentifier:identifier];
  v15 = [(BNBannerController *)self revokePresentablesWithIdentification:v14 reason:reasonCopy options:options userInfo:infoCopy error:error];

  return v15 != 0;
}

- (BOOL)setSuspended:(BOOL)suspended forReason:(id)reason revokingCurrent:(BOOL)current error:(id *)error
{
  currentCopy = current;
  suspendedCopy = suspended;
  v36 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (reasonCopy)
  {
    [(BNRequesterPending *)self->_pender setSuspended:suspendedCopy forReason:reasonCopy];
    if ([(BNBannerController *)self _isSuspended])
    {
      [(BNBannerController *)self _cancelAutoDequeueTimer];
      if (currentCopy)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        obj = [(BNPresenting *)self->_presenter presentedPresentables];
        v11 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v26;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v26 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v25 + 1) + 8 * i);
              v16 = [BNPresentableIdentification uniqueIdentificationForPresentable:v15];
              v24 = 0;
              v17 = [(BNBannerController *)self revokePresentablesWithIdentification:v16 reason:@"BNBannerControllerBannerRevocationReasonSuspensionDismissal" options:1 animated:1 userInfo:0 error:&v24];
              v18 = v24;

              if (!v17)
              {
                v19 = BNLogPosting;
                if (os_log_type_enabled(BNLogPosting, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v32 = v15;
                  v33 = 2114;
                  v34 = v18;
                  _os_log_error_impl(&dword_1C42DC000, v19, OS_LOG_TYPE_ERROR, "Error attempting to revoke posted presentable: presentable: %{public}@; error: %{public}@", buf, 0x16u);
                }
              }
            }

            v12 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
          }

          while (v12);
        }
      }
    }

    else
    {
      [(BNBannerController *)self _presentNextPendingPresentableIfPossible];
      [(BNBannerController *)self _startAutoDequeueTimerIfNecessary];
    }
  }

  else if (error)
  {
    v20 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A578];
    v30 = @"Missing 'reason' argument";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    *error = [v20 errorWithDomain:@"BNBannerSourceErrorDomain" code:2 userInfo:v21];
  }

  return reasonCopy != 0;
}

- (void)_setAuthority:(id)authority
{
  authorityCopy = authority;
  p_authority = &self->_authority;
  if (self->_authority != authorityCopy)
  {
    v10 = authorityCopy;
    objc_storeStrong(p_authority, authority);
    *&self->_bannerAuthorityFlags = *&self->_bannerAuthorityFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    v7 = (objc_opt_respondsToSelector() & 1) != 0 ? 2 : 0;
    *&self->_bannerAuthorityFlags = *&self->_bannerAuthorityFlags & 0xFD | v7;
    v8 = (objc_opt_respondsToSelector() & 1) != 0 ? 8 : 0;
    *&self->_bannerAuthorityFlags = *&self->_bannerAuthorityFlags & 0xF7 | v8;
    v9 = (objc_opt_respondsToSelector() & 1) != 0 ? 4 : 0;
    *&self->_bannerAuthorityFlags = *&self->_bannerAuthorityFlags & 0xFB | v9;
    p_authority = objc_opt_respondsToSelector();
    authorityCopy = v10;
    if (p_authority)
    {
      p_authority = [(BNConsidering *)self->_authority setDelegate:self];
      authorityCopy = v10;
    }
  }

  MEMORY[0x1EEE66BB8](p_authority, authorityCopy);
}

- (BOOL)_shouldPostPresentable:(id)presentable userInfo:(id)info error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  presentableCopy = presentable;
  infoCopy = info;
  if (!presentableCopy)
  {
    if (error)
    {
      v17 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A578];
      v22 = @"Missing 'presentable' argument";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      *error = [v17 errorWithDomain:@"BNBannerSourceErrorDomain" code:2 userInfo:v18];

      v16 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v16 = 1;
    goto LABEL_12;
  }

  if ((*&self->_bannerAuthorityFlags & 1) == 0)
  {
    goto LABEL_11;
  }

  authority = self->_authority;
  v20 = 0;
  v11 = [(BNConsidering *)authority shouldPostPresentable:presentableCopy userInfo:infoCopy reason:&v20];
  v12 = v20;
  if (v11 == -1)
  {
    v13 = BNLogPosting;
    if (os_log_type_enabled(BNLogPosting, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = BNEffectivePresentableDescription(presentableCopy);
      *buf = 138543618;
      v24 = v15;
      v25 = 2114;
      v26 = v12;
      _os_log_impl(&dword_1C42DC000, v14, OS_LOG_TYPE_DEFAULT, "Authority denied request to post presentable: %{public}@ (%{public}@)", buf, 0x16u);
    }

    if (objc_opt_respondsToSelector())
    {
      [presentableCopy presentableWillNotAppearAsBanner:presentableCopy withReason:v12];
    }
  }

  v16 = v11 != -1;
LABEL_12:

  return v16;
}

- (BOOL)_shouldPresentPresentable:(id)presentable withPresentedPresentables:(id)presentables responsiblePresentable:(id *)responsiblePresentable
{
  presentableCopy = presentable;
  presentablesCopy = presentables;
  if ((*&self->_bannerAuthorityFlags & 2) == 0)
  {
    v11 = 0;
LABEL_7:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BNBannerController.m" lineNumber:172 description:@"The authority needs to provide a concrete decision"];

    goto LABEL_8;
  }

  v12 = [(BNConsidering *)self->_authority shouldPresentPresentable:presentableCopy withPresentedPresentables:presentablesCopy responsiblePresentable:responsiblePresentable];
  v11 = v12 == 1;
  if (v12 != -1 && v12 != 1)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v11;
}

- (BOOL)_shouldMorphToPresentable:(id)presentable withPresentedPresentables:(id)presentables responsiblePresentable:(id *)responsiblePresentable stateChange:(id *)change
{
  presentableCopy = presentable;
  presentablesCopy = presentables;
  bannerAuthorityFlags = self->_bannerAuthorityFlags;
  if ((bannerAuthorityFlags & 4) != 0)
  {
    v13 = [(BNConsidering *)self->_authority shouldMorphToPresentable:presentableCopy withPresentedPresentables:presentablesCopy responsiblePresentable:responsiblePresentable stateChange:change];
    if (v13)
    {
      goto LABEL_7;
    }

    bannerAuthorityFlags = self->_bannerAuthorityFlags;
  }

  if ((bannerAuthorityFlags & 8) != 0)
  {
    v13 = [(BNConsidering *)self->_authority shouldMorphToPresentable:presentableCopy withPresentedPresentables:presentablesCopy responsiblePresentable:responsiblePresentable];
  }

  else
  {
    v13 = 0;
  }

LABEL_7:
  v14 = v13 == 1;

  return v14;
}

- (id)_suspensionReasonForEnqueuedPresentable:(id)presentable
{
  v9[2] = *MEMORY[0x1E69E9840];
  presentableCopy = presentable;
  requesterIdentifier = [presentableCopy requesterIdentifier];
  v9[0] = requesterIdentifier;
  requestIdentifier = [presentableCopy requestIdentifier];

  v9[1] = requestIdentifier;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = [v6 componentsJoinedByString:@"."];

  return v7;
}

- (void)_suspendPenderForRequesterIdentifier:(id)identifier withResponsiblePresentable:(id)presentable
{
  identifierCopy = identifier;
  presentableCopy = presentable;
  if ([identifierCopy length])
  {
    if (presentableCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BNBannerController _suspendPenderForRequesterIdentifier:withResponsiblePresentable:];
    if (presentableCopy)
    {
      goto LABEL_3;
    }
  }

  [BNBannerController _suspendPenderForRequesterIdentifier:withResponsiblePresentable:];
LABEL_3:
  v7 = [(BNBannerController *)self _suspensionReasonForEnqueuedPresentable:presentableCopy];
  [(BNRequesterPending *)self->_pender setSuspended:1 forRequesterWithIdentifier:identifierCopy reason:v7];
  v8 = [(NSMapTable *)self->_presentablesInducingSuspensionToSuspendedRequesterIDs objectForKey:presentableCopy];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    presentablesInducingSuspensionToSuspendedRequesterIDs = self->_presentablesInducingSuspensionToSuspendedRequesterIDs;
    if (!presentablesInducingSuspensionToSuspendedRequesterIDs)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:0];
      v11 = self->_presentablesInducingSuspensionToSuspendedRequesterIDs;
      self->_presentablesInducingSuspensionToSuspendedRequesterIDs = v10;

      presentablesInducingSuspensionToSuspendedRequesterIDs = self->_presentablesInducingSuspensionToSuspendedRequesterIDs;
    }

    [(NSMapTable *)presentablesInducingSuspensionToSuspendedRequesterIDs setObject:v8 forKey:presentableCopy];
  }

  [v8 addObject:identifierCopy];
}

- (void)_resumeForResponsiblePresentableIfNecessary:(id)necessary
{
  v18 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  if (necessaryCopy)
  {
    v5 = [(NSMapTable *)self->_presentablesInducingSuspensionToSuspendedRequesterIDs objectForKey:necessaryCopy];
    if (v5)
    {
      v6 = [(BNBannerController *)self _suspensionReasonForEnqueuedPresentable:necessaryCopy];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = [v5 copy];
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          v11 = 0;
          do
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [(BNRequesterPending *)self->_pender setSuspended:0 forRequesterWithIdentifier:*(*(&v13 + 1) + 8 * v11++) reason:v6];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }

      [(NSMapTable *)self->_presentablesInducingSuspensionToSuspendedRequesterIDs removeObjectForKey:necessaryCopy];
      if (![(NSMapTable *)self->_presentablesInducingSuspensionToSuspendedRequesterIDs count])
      {
        presentablesInducingSuspensionToSuspendedRequesterIDs = self->_presentablesInducingSuspensionToSuspendedRequesterIDs;
        self->_presentablesInducingSuspensionToSuspendedRequesterIDs = 0;
      }

      [(BNBannerController *)self _presentNextPendingPresentableIfPossible];
      [(BNBannerController *)self _startAutoDequeueTimerIfNecessary];
    }
  }
}

- (BOOL)_presentPresentableWithContext:(id)context
{
  v33 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  presentable = [contextCopy presentable];
  v6 = BNLogPosting;
  if (os_log_type_enabled(BNLogPosting, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = BNEffectivePresentableDescription(presentable);
    *buf = 138543362;
    v32 = v8;
    _os_log_impl(&dword_1C42DC000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to present presentable: %{public}@", buf, 0xCu);
  }

  if (contextCopy)
  {
    topPresentables = [(BNPresenting *)self->_presenter topPresentables];
    v30 = 0;
    v10 = [(BNBannerController *)self _shouldPresentPresentable:presentable withPresentedPresentables:topPresentables responsiblePresentable:&v30];
    firstObject = v30;
    if (v10)
    {
      presentationOptions = [contextCopy presentationOptions];
      userInfo = [contextCopy userInfo];
      v28 = 0;
      v29 = 0;
      v26 = topPresentables;
      v14 = [(BNBannerController *)self _shouldMorphToPresentable:presentable withPresentedPresentables:topPresentables responsiblePresentable:&v29 stateChange:&v28];
      v15 = v29;

      v16 = v28;
      if (v14)
      {
        if (objc_opt_respondsToSelector())
        {
          -[BNPresenting morphFromPresentable:toPresentable:withOptions:userInfo:stateChange:](self->_presenter, "morphFromPresentable:toPresentable:withOptions:userInfo:stateChange:", v15, presentable, presentationOptions, userInfo, [v16 BOOLValue]);
        }
      }

      else
      {
        [(BNPresenting *)self->_presenter presentPresentable:presentable withOptions:presentationOptions userInfo:userInfo];
      }

      if ((BNPresentationOptionsPrivateSuspend & presentationOptions) != 0)
      {
        v21 = [userInfo objectForKey:@"BNBannerPresentationOptionsSuspendReason"];
        if (!v21)
        {
          [BNBannerController _presentPresentableWithContext:];
        }

        v27 = 0;
        v22 = [(BNBannerController *)self setSuspended:1 forReason:v21 revokingCurrent:0 error:&v27];
        v23 = v27;
        if (!v22)
        {
          v24 = BNLogPosting;
          if (os_log_type_enabled(BNLogPosting, OS_LOG_TYPE_ERROR))
          {
            [(BNBannerController *)v21 _presentPresentableWithContext:v23, v24];
          }
        }
      }

      topPresentables = v26;
    }

    else
    {
      v17 = BNLogPosting;
      if (os_log_type_enabled(BNLogPosting, OS_LOG_TYPE_DEFAULT))
      {
        v18 = topPresentables;
        v19 = v17;
        v20 = BNEffectivePresentableDescription(presentable);
        *buf = 138543362;
        v32 = v20;
        _os_log_impl(&dword_1C42DC000, v19, OS_LOG_TYPE_DEFAULT, "Authority denied request to present presentable: %{public}@", buf, 0xCu);

        topPresentables = v18;
      }

      if (!firstObject)
      {
        firstObject = [topPresentables firstObject];
      }

      userInfo = [presentable requesterIdentifier];
      [(BNBannerController *)self _suspendPenderForRequesterIdentifier:userInfo withResponsiblePresentable:firstObject];
      v16 = MEMORY[0x1E695E110];
      v15 = firstObject;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)_presentNextPendingPresentableIfPossible:(id *)possible
{
  selfCopy = self;
  if ([(BNBannerController *)self _isSuspended])
  {
    v5 = MEMORY[0x1E696AEC0];
    _activeSuspensionReasons = [(BNBannerController *)selfCopy _activeSuspensionReasons];
    v7 = [v5 stringWithFormat:@"suspended: %@", _activeSuspensionReasons];
    LOBYTE(selfCopy) = 0;
  }

  else
  {
    peekPresentable = [(BNRequesterPending *)selfCopy->_pender peekPresentable];
    _activeSuspensionReasons = peekPresentable;
    if (peekPresentable)
    {
      postingContext = [peekPresentable postingContext];
      LODWORD(selfCopy) = [(BNBannerController *)selfCopy _presentPresentableWithContext:postingContext];
      if (selfCopy)
      {
        [_activeSuspensionReasons dequeue];
        v7 = 0;
      }

      else
      {
        v7 = @"presentation failed";
      }
    }

    else
    {
      LOBYTE(selfCopy) = 0;
      v7 = @"no pending presentable";
    }
  }

  if (possible && v7)
  {
    v10 = v7;
    *possible = v7;
  }

  return selfCopy;
}

- (id)_revokePresentablesWithIdentification:(id)identification reason:(id)reason options:(unint64_t)options animated:(id)animated userInfo:(id)info error:(id *)error
{
  optionsCopy = options;
  v62 = *MEMORY[0x1E69E9840];
  identificationCopy = identification;
  reasonCopy = reason;
  animatedCopy = animated;
  infoCopy = info;
  v18 = BNLogPosting;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v45 = infoCopy;
    selfCopy = self;
    v20 = BNPresentableIdentificationDescription(identificationCopy);
    if (animatedCopy)
    {
      [animatedCopy BOOLValue];
      v21 = NSStringFromBOOL();
    }

    else
    {
      v21 = 0;
    }

    *buf = 138543874;
    v57 = v20;
    v58 = 2114;
    v59 = reasonCopy;
    v60 = 2114;
    v61 = v21;
    _os_log_impl(&dword_1C42DC000, v18, OS_LOG_TYPE_DEFAULT, "Asked to revoke presentables with identification %{public}@ with reason '%{public}@' (animated=%{public}@)", buf, 0x20u);
    if (animatedCopy)
    {
    }

    self = selfCopy;
    infoCopy = v45;
  }

  if (identificationCopy)
  {
    if (optionsCopy)
    {
      v22 = 0;
    }

    else
    {
      v22 = [(BNRequesterPending *)self->_pender pullPresentablesWithIdentification:identificationCopy];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v23 = [v22 countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (v23)
      {
        v24 = v23;
        errorCopy = error;
        v46 = infoCopy;
        v25 = *v48;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v48 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v47 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v27 presentableWillNotAppearAsBanner:v27 withReason:@"BNBannerControllerBannerRejectionReasonRevokedWhilePended"];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v47 objects:v55 count:16];
        }

        while (v24);
        error = errorCopy;
        infoCopy = v46;
      }
    }

    if (animatedCopy)
    {
      -[BNPresenting dismissPresentablesWithIdentification:reason:animated:userInfo:](self->_presenter, "dismissPresentablesWithIdentification:reason:animated:userInfo:", identificationCopy, reasonCopy, [animatedCopy BOOLValue], infoCopy);
    }

    else
    {
      [(BNPresenting *)self->_presenter dismissPresentablesWithIdentification:identificationCopy reason:reasonCopy userInfo:infoCopy];
    }
    v31 = ;
    v30 = v31;
    if (v31)
    {
      if (!v22)
      {
        v22 = v31;
LABEL_33:
        [(BNBannerController *)self _resumeForResponsiblePresentableIfNecessaryWithIdentification:identificationCopy];
        goto LABEL_34;
      }

      [v22 arrayByAddingObjectsFromArray:v31];
      v33 = v32 = error;

      v22 = v33;
      error = v32;
    }

    if (error && !v22)
    {
      errorCopy2 = error;
      v34 = MEMORY[0x1E696AEC0];
      v35 = BNPresentableIdentificationDescription(identificationCopy);
      v36 = [v34 stringWithFormat:@"No pending or presented presentables with identification %@", v35];

      v37 = MEMORY[0x1E696ABC0];
      v53 = *MEMORY[0x1E696A578];
      v54 = v36;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v38 = animatedCopy;
      v39 = infoCopy;
      v41 = v40 = self;
      *errorCopy2 = [v37 errorWithDomain:@"BNBannerSourceErrorDomain" code:3 userInfo:v41];

      self = v40;
      infoCopy = v39;
      animatedCopy = v38;

      v22 = 0;
    }

    goto LABEL_33;
  }

  if (error)
  {
    errorCopy3 = error;
    v29 = MEMORY[0x1E696ABC0];
    v51 = *MEMORY[0x1E696A578];
    v52 = @"Missing 'presentableIdentification' argument";
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    [v29 errorWithDomain:@"BNBannerSourceErrorDomain" code:2 userInfo:v30];
    *errorCopy3 = v22 = 0;
LABEL_34:

    goto LABEL_35;
  }

  v22 = 0;
LABEL_35:

  return v22;
}

void __55__BNBannerController__startAutoDequeueTimerIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _autoDequeueTimer];

  if (v5 == v3)
  {
    [WeakRetained _setAutoDequeueTimer:0];
  }

  v6 = BNLogPosting;
  if (os_log_type_enabled(BNLogPosting, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C42DC000, v6, OS_LOG_TYPE_DEFAULT, "Auto dequeue timer expired – attempting to present next pending presentable", buf, 2u);
  }

  v10 = 0;
  v7 = [WeakRetained _presentNextPendingPresentableIfPossible:&v10];
  v8 = v10;
  if (v7)
  {
    [WeakRetained _startAutoDequeueTimerIfNecessary];
  }

  else
  {
    v9 = BNLogPosting;
    if (os_log_type_enabled(BNLogPosting, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_1C42DC000, v9, OS_LOG_TYPE_DEFAULT, "Auto dequeue timer failed to present next pending presentable: %{public}@", buf, 0xCu);
    }
  }
}

- (void)_resumeForResponsiblePresentableIfNecessaryWithIdentification:(id)identification
{
  v15 = *MEMORY[0x1E69E9840];
  identificationCopy = identification;
  if (!identificationCopy)
  {
    [BNBannerController _resumeForResponsiblePresentableIfNecessaryWithIdentification:];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_presentablesInducingSuspensionToSuspendedRequesterIDs;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (BNIsPresentableIdentifiedByIdentification(v9, identificationCopy, 0))
        {
          v6 = v9;
          goto LABEL_13;
        }
      }

      v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  [(BNBannerController *)self _resumeForResponsiblePresentableIfNecessary:v6, v10];
}

- (id)revokePresentablesWithIdentification:(id)identification reason:(id)reason options:(unint64_t)options animated:(BOOL)animated userInfo:(id)info error:(id *)error
{
  animatedCopy = animated;
  v14 = MEMORY[0x1E696AD98];
  infoCopy = info;
  reasonCopy = reason;
  identificationCopy = identification;
  v18 = [v14 numberWithBool:animatedCopy];
  v19 = [(BNBannerController *)self _revokePresentablesWithIdentification:identificationCopy reason:reasonCopy options:options animated:v18 userInfo:infoCopy error:error];

  return v19;
}

- (BOOL)revokePresentableWithRequestIdentifier:(id)identifier requesterIdentifier:(id)requesterIdentifier reason:(id)reason options:(unint64_t)options animated:(BOOL)animated userInfo:(id)info error:(id *)error
{
  animatedCopy = animated;
  infoCopy = info;
  reasonCopy = reason;
  v17 = [BNPresentableIdentification identificationWithRequesterIdentifier:requesterIdentifier requestIdentifier:identifier];
  v18 = [(BNBannerController *)self revokePresentablesWithIdentification:v17 reason:reasonCopy options:options animated:animatedCopy userInfo:infoCopy error:error];

  return v18 != 0;
}

- (void)initWithAuthority:pender:presenter:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"authority" object:? file:? lineNumber:? description:?];
}

- (void)initWithAuthority:pender:presenter:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"presenter" object:? file:? lineNumber:? description:?];
}

- (void)_suspendPenderForRequesterIdentifier:withResponsiblePresentable:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[penderRequesterID length] > 0" object:? file:? lineNumber:? description:?];
}

- (void)_suspendPenderForRequesterIdentifier:withResponsiblePresentable:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"responsiblePresentable" object:? file:? lineNumber:? description:?];
}

- (void)_presentPresentableWithContext:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_presentPresentableWithContext:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1C42DC000, log, OS_LOG_TYPE_ERROR, "Error attempting to suspend: reason: %{public}@; error: %{public}@", &v3, 0x16u);
}

- (void)_resumeForResponsiblePresentableIfNecessaryWithIdentification:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"presentableIdentification" object:? file:? lineNumber:? description:?];
}

@end
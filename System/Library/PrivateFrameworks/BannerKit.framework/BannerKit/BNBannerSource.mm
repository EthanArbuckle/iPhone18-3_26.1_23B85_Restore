@interface BNBannerSource
+ (id)bannerSourceForDestination:(int64_t)destination forRequesterIdentifier:(id)identifier;
+ (void)_invalidateBannerSource:(id)source;
+ (void)initialize;
- (BNBannerSource)initWithDestination:(int64_t)destination andRequesterIdentifier:(id)identifier;
- (BNBannerSource)initWithMachName:(id)name andRequesterIdentifier:(id)identifier;
- (BNBannerSourceDelegate)delegate;
- (BOOL)_isValidPresentable:(id)presentable errorDescription:(id *)description;
- (BOOL)bannerClientContainerShouldDeferFocus:(id)focus;
- (BOOL)postPresentable:(id)presentable options:(unint64_t)options userInfo:(id)info error:(id *)error;
- (BOOL)revokePresentableWithRequestIdentifier:(id)identifier animated:(BOOL)animated reason:(id)reason userInfo:(id)info error:(id *)error;
- (BOOL)setSuspended:(BOOL)suspended forReason:(id)reason revokingCurrent:(BOOL)current error:(id *)error;
- (NSString)description;
- (id)_activeConnectionWithError:(id *)error;
- (id)_presentableContextForPresentableWithUniqueIdentifier:(id)identifier;
- (id)_presentableForUniqueIdentifier:(id)identifier;
- (id)_revokePresentableWithIdentification:(id)identification reason:(id)reason animated:(id)animated userInfo:(id)info error:(id *)error;
- (id)containerViewControllerForBannerSceneComponentProvider:(id)provider;
- (id)keyWindowForScreen:(id)screen;
- (id)layoutDescriptionWithError:(id *)error;
- (id)revokeAllPresentablesWithReason:(id)reason userInfo:(id)info error:(id *)error;
- (id)revokePresentableWithIdentification:(id)identification reason:(id)reason animated:(BOOL)animated userInfo:(id)info error:(id *)error;
- (id)revokePresentableWithRequestIdentifier:(id)identifier reason:(id)reason animated:(BOOL)animated userInfo:(id)info error:(id *)error;
- (void)_addPresentableContext:(id)context;
- (void)_invalidateConnection;
- (void)_removePresentable:(id)presentable reason:(id)reason;
- (void)_removePresentableContextForPresentableWithUniqueIdentifier:(id)identifier reason:(id)reason;
- (void)bannerClientContainerStoppedDeferringFocus:(id)focus;
- (void)dealloc;
- (void)invalidate;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)sceneWillInvalidateForBannerSceneComponentProvider:(id)provider;
@end

@implementation BNBannerSource

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    BNRegisterBannerKitLogging();
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = @"[INVALID]";
  destination = self->_destination;
  requesterIdentifier = self->_requesterIdentifier;
  if (destination == 1)
  {
    v5 = @"CarPlay";
  }

  if (!destination)
  {
    v5 = @"Default system shell";
  }

  machName = self->_machName;
  v9 = v5;
  v10 = NSStringFromBOOL();
  v11 = [v3 stringWithFormat:@"<%@: %p destination: %@; machName: %@; requesterIdentifier: %@; isValid: %@>", v4, self, v9, machName, requesterIdentifier, v10];;

  return v11;
}

- (BNBannerSource)initWithMachName:(id)name andRequesterIdentifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (nameCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BNBannerSource initWithMachName:andRequesterIdentifier:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [BNBannerSource initWithMachName:andRequesterIdentifier:];
LABEL_3:
  v15.receiver = self;
  v15.super_class = BNBannerSource;
  v9 = [(BNBannerSource *)&v15 init];
  if (v9)
  {
    v10 = [nameCopy copy];
    machName = v9->_machName;
    v9->_machName = v10;

    objc_storeStrong(&v9->_requesterIdentifier, identifier);
    Serial = BSDispatchQueueCreateSerial();
    connectionQueue = v9->_connectionQueue;
    v9->_connectionQueue = Serial;
  }

  return v9;
}

- (BNBannerSource)initWithDestination:(int64_t)destination andRequesterIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = _MachNameForDestination(destination);
  if (!identifierCopy)
  {
    [BNBannerSource initWithDestination:andRequesterIdentifier:];
  }

  v8 = [(BNBannerSource *)self initWithMachName:v7 andRequesterIdentifier:identifierCopy];
  v9 = v8;
  if (v8)
  {
    v8->_destination = destination;
  }

  return v9;
}

- (void)dealloc
{
  [(BNBannerSource *)self invalidate];
  v3.receiver = self;
  v3.super_class = BNBannerSource;
  [(BNBannerSource *)&v3 dealloc];
}

+ (id)bannerSourceForDestination:(int64_t)destination forRequesterIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = identifierCopy;
  if (destination >= 2)
  {
    +[BNBannerSource bannerSourceForDestination:forRequesterIdentifier:];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (identifierCopy)
  {
    goto LABEL_3;
  }

  +[BNBannerSource bannerSourceForDestination:forRequesterIdentifier:];
LABEL_3:
  if (bannerSourceForDestination_forRequesterIdentifier__onceToken != -1)
  {
    +[BNBannerSource bannerSourceForDestination:forRequesterIdentifier:];
  }

  v7 = [__requesterIDsToMachNamesToSources objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [__requesterIDsToMachNamesToSources setObject:v7 forKeyedSubscript:v6];
  }

  v8 = _MachNameForDestination(destination);
  v9 = [v7 objectForKeyedSubscript:v8];
  if (!v9)
  {
    v9 = [[BNBannerSource alloc] initWithDestination:destination andRequesterIdentifier:v6];
    [v7 setObject:v9 forKeyedSubscript:v8];
    v9->_valid = 1;
  }

  return v9;
}

uint64_t __68__BNBannerSource_bannerSourceForDestination_forRequesterIdentifier___block_invoke()
{
  __requesterIDsToMachNamesToSources = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

- (id)layoutDescriptionWithError:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  obj = 0;
  v4 = [(BNBannerSource *)self _activeConnectionWithError:&obj];
  objc_storeStrong(&v20, obj);
  bn_remoteTargetEnforceLaunching = [v4 bn_remoteTargetEnforceLaunching];

  if (bn_remoteTargetEnforceLaunching)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__BNBannerSource_layoutDescriptionWithError___block_invoke;
    v13[3] = &unk_1E81E4450;
    v13[4] = &v21;
    v13[5] = &v15;
    [bn_remoteTargetEnforceLaunching __layoutDescriptionWithReply:v13];
  }

  else if (!v16[5])
  {
    v6 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A578];
    v28[0] = @"Failed to obtain remote target from connection";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v8 = [v6 errorWithDomain:@"BNBannerSourceErrorDomain" code:1 userInfo:v7];
    v9 = v16[5];
    v16[5] = v8;
  }

  if (error)
  {
    v10 = v16[5];
    if (v10)
    {
      *error = v10;
    }
  }

  v11 = v22[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v11;
}

void __45__BNBannerSource_layoutDescriptionWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)postPresentable:(id)presentable options:(unint64_t)options userInfo:(id)info error:(id *)error
{
  v95 = *MEMORY[0x1E69E9840];
  presentableCopy = presentable;
  infoCopy = info;
  v9 = BNLogHostingService;
  if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = BNEffectivePresentableDescription(presentableCopy);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v11;
    _os_log_impl(&dword_1C42DC000, v10, OS_LOG_TYPE_DEFAULT, "Asked to post presentable: %{public}@", &buf, 0xCu);
  }

  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v91 = 0x3032000000;
  v92 = __Block_byref_object_copy_;
  v93 = __Block_byref_object_dispose_;
  v94 = 0;
  if (presentableCopy)
  {
    v76 = 0;
    v12 = [(BNBannerSource *)self _isValidPresentable:presentableCopy errorDescription:&v76];
    v13 = v76;
    v14 = v13;
    if (v12)
    {
      requesterIdentifier = [presentableCopy requesterIdentifier];
      v16 = [requesterIdentifier isEqualToString:self->_requesterIdentifier];

      if (v16)
      {
        [presentableCopy ensurePresentableIsUniquelyIdentifiable];
        uniquePresentableIdentifier = [presentableCopy uniquePresentableIdentifier];
        v18 = [(BNBannerSource *)self _presentableContextForPresentableWithUniqueIdentifier:uniquePresentableIdentifier];

        v19 = v18;
        if (!v18)
        {
          v19 = [[_BNPresentableContext alloc] initWithMachName:self->_machName presentable:presentableCopy];
          [(BNBannerSource *)self _addPresentableContext:v19];
        }

        if (objc_opt_respondsToSelector())
        {
          v20 = 1;
        }

        else
        {
          v20 = objc_opt_respondsToSelector();
        }

        if (objc_opt_respondsToSelector())
        {
          providesTemplateContent = [presentableCopy providesTemplateContent];
        }

        else
        {
          providesTemplateContent = 0;
        }

        v63 = providesTemplateContent | ~v20;
        if (providesTemplateContent & 1 | ((v20 & 1) == 0))
        {
          if (objc_opt_respondsToSelector())
          {
            [presentableCopy setPresentableContext:v19];
          }
        }

        else if (!v18)
        {
          uniquePresentableIdentifier2 = [presentableCopy uniquePresentableIdentifier];
          [BNBannerSceneComponentProvider registerDelegate:self forSceneForPresentableWithUniqueIdentifier:uniquePresentableIdentifier2];
        }

        v33 = *(&buf + 1);
        obj = 0;
        v34 = [(BNBannerSource *)self _activeConnectionWithError:&obj];
        objc_storeStrong((v33 + 40), obj);
        bn_remoteTargetEnforceLaunching = [v34 bn_remoteTargetEnforceLaunching];

        if (bn_remoteTargetEnforceLaunching)
        {
          objc_initWeak(location, self);
          v35 = presentableCopy;
          if ((objc_opt_respondsToSelector() & 1) != 0 && [v35 providesTemplateContent])
          {
            v36 = v35;
            requesterIdentifier2 = [v36 requesterIdentifier];
            requestIdentifier = [v36 requestIdentifier];
            uniquePresentableIdentifier3 = [v36 uniquePresentableIdentifier];
            v64 = [(BNPresentableIdentification *)BNBannerSourceTemplatePresentableSpecification identificationWithRequesterIdentifier:requesterIdentifier2 requestIdentifier:requestIdentifier uniqueIdentifier:uniquePresentableIdentifier3];

            if (objc_opt_respondsToSelector())
            {
              leadingTemplateViewProvider = [v36 leadingTemplateViewProvider];
              [v64 setLeadingTemplateViewProvider:leadingTemplateViewProvider];
            }

            else
            {
              [v64 setLeadingTemplateViewProvider:0];
            }

            if (objc_opt_respondsToSelector())
            {
              trailingTemplateViewProvider = [v36 trailingTemplateViewProvider];
              [v64 setTrailingTemplateViewProvider:trailingTemplateViewProvider];
            }

            else
            {
              [v64 setTrailingTemplateViewProvider:0];
            }

            if (objc_opt_respondsToSelector())
            {
              primaryTemplateItemProvider = [v36 primaryTemplateItemProvider];
              [v64 setPrimaryTemplateItemProvider:primaryTemplateItemProvider];
            }

            else
            {
              [v64 setPrimaryTemplateItemProvider:0];
            }

            if (objc_opt_respondsToSelector())
            {
              secondaryTemplateItemProvider = [v36 secondaryTemplateItemProvider];
              [v64 setSecondaryTemplateItemProvider:secondaryTemplateItemProvider];
            }

            else
            {
              [v64 setSecondaryTemplateItemProvider:0];
            }

            [v64 setContentBehavior:1];
          }

          else
          {
            requesterIdentifier3 = [v35 requesterIdentifier];
            requestIdentifier2 = [v35 requestIdentifier];
            uniquePresentableIdentifier4 = [v35 uniquePresentableIdentifier];
            v64 = [(BNPresentableIdentification *)BNBannerSourcePresentableSpecification identificationWithRequesterIdentifier:requesterIdentifier3 requestIdentifier:requestIdentifier2 uniqueIdentifier:uniquePresentableIdentifier4];

            v44 = UIViewControllerFromPresentable(v35);
            v45 = v44;
            if (v44)
            {
              [v44 preferredContentSize];
              [v64 setPreferredContentSize:?];
              [v45 bannerContentOutsets];
              [v64 setContentOutsets:?];
            }

            else
            {
              [v64 setContentBehavior:2];
            }

            v36 = 0;
          }

          if (objc_opt_respondsToSelector())
          {
            presentableBehavior = [v35 presentableBehavior];
          }

          else
          {
            presentableBehavior = (objc_opt_respondsToSelector() & 1) != 0 && [v35 presentableType] == 1;
          }

          [v64 setPresentableBehavior:presentableBehavior];

          if (infoCopy)
          {
            v54 = [infoCopy mutableCopy];
          }

          else
          {
            v54 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          v55 = v54;
          v56 = objc_opt_class();
          v57 = NSStringFromClass(v56);
          [v55 setObject:v57 forKeyedSubscript:@"BNBannerSourcePresentableClassName"];

          v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
          v68[0] = MEMORY[0x1E69E9820];
          v68[1] = 3221225472;
          v68[2] = __57__BNBannerSource_postPresentable_options_userInfo_error___block_invoke;
          v68[3] = &unk_1E81E4478;
          v71 = &v77;
          p_buf = &buf;
          v74 = v63 & 1;
          v19 = v19;
          v69 = v19;
          objc_copyWeak(&v73, location);
          v70 = v35;
          [bn_remoteTargetEnforceLaunching __postPresentableWithSpecification:v64 options:v58 userInfo:v55 reply:v68];

          objc_destroyWeak(&v73);
          objc_destroyWeak(location);
        }

        else
        {
          [(BNBannerSource *)self _removePresentable:presentableCopy reason:@"failed to obtain remote target from connection"];
          if (!*(*(&buf + 1) + 40))
          {
            v46 = MEMORY[0x1E696ABC0];
            v88 = *MEMORY[0x1E696A578];
            v89 = @"Failed to obtain remote target from connection";
            v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
            v48 = [v46 errorWithDomain:@"BNBannerSourceErrorDomain" code:1 userInfo:v47];
            v49 = *(*(&buf + 1) + 40);
            *(*(&buf + 1) + 40) = v48;
          }
        }
      }

      else
      {
        v26 = MEMORY[0x1E696AEC0];
        requesterIdentifier4 = [presentableCopy requesterIdentifier];
        v19 = [v26 stringWithFormat:@"Presentable requesterID (%@) doesn't match source (%@)", requesterIdentifier4, self->_requesterIdentifier];

        v28 = MEMORY[0x1E696ABC0];
        v86 = *MEMORY[0x1E696A578];
        v87 = v19;
        bn_remoteTargetEnforceLaunching = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
        v29 = [v28 errorWithDomain:@"BNBannerSourceErrorDomain" code:2 userInfo:bn_remoteTargetEnforceLaunching];
        v30 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = v29;
      }
    }

    else
    {
      v23 = MEMORY[0x1E696ABC0];
      v84 = *MEMORY[0x1E696A578];
      v85 = v13;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
      v24 = [v23 errorWithDomain:@"BNBannerSourceErrorDomain" code:2 userInfo:v19];
      bn_remoteTargetEnforceLaunching = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v24;
    }
  }

  else
  {
    v21 = MEMORY[0x1E696ABC0];
    v82 = *MEMORY[0x1E696A578];
    v83 = @"Missing presentable";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
    v22 = [v21 errorWithDomain:@"BNBannerSourceErrorDomain" code:2 userInfo:v14];
    v19 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v22;
  }

  if (*(*(&buf + 1) + 40))
  {
    v59 = BNLogHostingService;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v60 = BNEffectivePresentableDescription(presentableCopy);
      [BNBannerSource postPresentable:v60 options:&buf + 8 userInfo:location error:v59];
    }

    if (error)
    {
      *error = *(*(&buf + 1) + 40);
    }
  }

  v61 = *(v78 + 24);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v77, 8);
  return v61 & 1;
}

void __57__BNBannerSource_postPresentable_options_userInfo_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  *(*(*(a1 + 48) + 8) + 24) = [v7 BOOLValue];
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    if (*(a1 + 72) == 1)
    {
      [*(a1 + 32) setHostNeedsUpdate];
    }
  }

  else
  {
    v6 = objc_loadWeakRetained((a1 + 64));
    objc_sync_enter(v6);
    [v6 _removePresentable:*(a1 + 40) reason:@"error encountered posting to remote target"];
    objc_sync_exit(v6);
  }
}

- (id)revokePresentableWithRequestIdentifier:(id)identifier reason:(id)reason animated:(BOOL)animated userInfo:(id)info error:(id *)error
{
  animatedCopy = animated;
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  reasonCopy = reason;
  infoCopy = info;
  v15 = BNLogHostingService;
  if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
  {
    requesterIdentifier = self->_requesterIdentifier;
    v17 = v15;
    v18 = NSStringFromBOOL();
    v23 = 138544130;
    v24 = identifierCopy;
    v25 = 2114;
    v26 = requesterIdentifier;
    v27 = 2114;
    v28 = reasonCopy;
    v29 = 2114;
    v30 = v18;
    _os_log_impl(&dword_1C42DC000, v17, OS_LOG_TYPE_DEFAULT, "Asked to revoke presentable with requestID %{public}@ and requesterID %{public}@ with reason '%{public}@' (animated=%{public}@)", &v23, 0x2Au);
  }

  v19 = [BNPresentableIdentification identificationWithRequesterIdentifier:self->_requesterIdentifier requestIdentifier:identifierCopy];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:animatedCopy];
  v21 = [(BNBannerSource *)self _revokePresentableWithIdentification:v19 reason:reasonCopy animated:v20 userInfo:infoCopy error:error];

  return v21;
}

- (id)revokeAllPresentablesWithReason:(id)reason userInfo:(id)info error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  infoCopy = info;
  v10 = BNLogHostingService;
  if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
  {
    requesterIdentifier = self->_requesterIdentifier;
    v15 = 138543618;
    v16 = requesterIdentifier;
    v17 = 2114;
    v18 = reasonCopy;
    _os_log_impl(&dword_1C42DC000, v10, OS_LOG_TYPE_DEFAULT, "Asked to revoke all presentables with requester ID %{public}@ with reason '%{public}@'", &v15, 0x16u);
  }

  v12 = [BNPresentableIdentification identificationWithRequesterIdentifier:self->_requesterIdentifier];
  v13 = [(BNBannerSource *)self _revokePresentableWithIdentification:v12 reason:reasonCopy animated:0 userInfo:infoCopy error:error];

  return v13;
}

- (BOOL)revokePresentableWithRequestIdentifier:(id)identifier animated:(BOOL)animated reason:(id)reason userInfo:(id)info error:(id *)error
{
  v7 = [(BNBannerSource *)self revokePresentableWithRequestIdentifier:identifier reason:reason animated:animated userInfo:info error:error];
  v8 = v7 != 0;

  return v8;
}

- (id)revokePresentableWithIdentification:(id)identification reason:(id)reason animated:(BOOL)animated userInfo:(id)info error:(id *)error
{
  animatedCopy = animated;
  v36 = *MEMORY[0x1E69E9840];
  identificationCopy = identification;
  reasonCopy = reason;
  infoCopy = info;
  v15 = BNLogHostingService;
  if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    requestIdentifier = [identificationCopy requestIdentifier];
    requesterIdentifier = [identificationCopy requesterIdentifier];
    uniquePresentableIdentifier = [identificationCopy uniquePresentableIdentifier];
    NSStringFromBOOL();
    selfCopy = self;
    v21 = v20 = error;
    *buf = 138544386;
    v27 = requestIdentifier;
    v28 = 2114;
    v29 = requesterIdentifier;
    v30 = 2114;
    v31 = uniquePresentableIdentifier;
    v32 = 2114;
    v33 = reasonCopy;
    v34 = 2114;
    v35 = v21;
    _os_log_impl(&dword_1C42DC000, v16, OS_LOG_TYPE_DEFAULT, "Asked to revoke presentable with requestID %{public}@, requesterID %{public}@, and uniqueID %{public}@ with reason '%{public}@' (animated=%{public}@)", buf, 0x34u);

    error = v20;
    self = selfCopy;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithBool:animatedCopy];
  v23 = [(BNBannerSource *)self _revokePresentableWithIdentification:identificationCopy reason:reasonCopy animated:v22 userInfo:infoCopy error:error];

  return v23;
}

- (id)keyWindowForScreen:(id)screen
{
  screenCopy = screen;
  WeakRetained = objc_loadWeakRetained(&self->_bannerClientContainerDeferringFocus);
  if ([WeakRetained isDeferringFocus])
  {
    v6 = objc_loadWeakRetained(&self->_bannerClientContainerDeferringFocus);
    v7 = [v6 keyWindowForScreen:screenCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)setSuspended:(BOOL)suspended forReason:(id)reason revokingCurrent:(BOOL)current error:(id *)error
{
  currentCopy = current;
  suspendedCopy = suspended;
  v37[1] = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  if (reasonCopy)
  {
    obj = 0;
    v11 = [(BNBannerSource *)self _activeConnectionWithError:&obj];
    objc_storeStrong(&v29, obj);
    bn_remoteTargetEnforceLaunching = [v11 bn_remoteTargetEnforceLaunching];

    if (bn_remoteTargetEnforceLaunching)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithBool:suspendedCopy];
      v14 = [MEMORY[0x1E696AD98] numberWithBool:currentCopy];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __63__BNBannerSource_setSuspended_forReason_revokingCurrent_error___block_invoke;
      v22[3] = &unk_1E81E44A0;
      v22[4] = &v30;
      v22[5] = &v24;
      [bn_remoteTargetEnforceLaunching __recommendSuspension:v13 forReason:reasonCopy revokingCurrent:v14 reply:v22];
    }

    else
    {
      if (v25[5])
      {
        goto LABEL_7;
      }

      v20 = MEMORY[0x1E696ABC0];
      v36 = *MEMORY[0x1E696A578];
      v37[0] = @"Failed to obtain remote target from connection";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      v21 = [v20 errorWithDomain:@"BNBannerSourceErrorDomain" code:1 userInfo:v13];
      v14 = v25[5];
      v25[5] = v21;
    }
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A578];
    v35 = @"Missing 'reason'";
    bn_remoteTargetEnforceLaunching = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v16 = [v15 errorWithDomain:@"BNBannerSourceErrorDomain" code:2 userInfo:bn_remoteTargetEnforceLaunching];
    v13 = v25[5];
    v25[5] = v16;
  }

LABEL_7:
  if (error)
  {
    v17 = v25[5];
    if (v17)
    {
      *error = v17;
    }
  }

  v18 = *(v31 + 24);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  return v18 & 1;
}

void __63__BNBannerSource_setSuspended_forReason_revokingCurrent_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 BOOLValue];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)invalidate
{
  v7 = *MEMORY[0x1E69E9840];
  if ([(BNBannerSource *)self isValid])
  {
    v3 = BNLogHostingService;
    if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1C42DC000, v3, OS_LOG_TYPE_DEFAULT, "BNBannerSource invalidated: %{public}@", &v5, 0xCu);
    }

    [(BNBannerSource *)self _invalidateConnection];
    [objc_opt_class() _invalidateBannerSource:self];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained bannerSourceDidInvalidate:self];
    }
  }
}

- (id)containerViewControllerForBannerSceneComponentProvider:(id)provider
{
  _scene = [provider _scene];
  _FBSScene = [_scene _FBSScene];
  settings = [_FBSScene settings];
  v7 = objc_opt_class();
  v8 = settings;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  bn_presentableUniqueIdentifier = [_scene bn_presentableUniqueIdentifier];
  v12 = [(BNBannerSource *)self _presentableForUniqueIdentifier:bn_presentableUniqueIdentifier];
  if (!v12)
  {
    [BNBannerSource containerViewControllerForBannerSceneComponentProvider:];
  }

  clientContainerViewControllerClass = [v10 clientContainerViewControllerClass];
  if (!clientContainerViewControllerClass)
  {
    clientContainerViewControllerClass = objc_opt_class();
  }

  uniquePresentableIdentifier = [v12 uniquePresentableIdentifier];
  v15 = [(BNBannerSource *)self _presentableContextForPresentableWithUniqueIdentifier:uniquePresentableIdentifier];

  v16 = [[clientContainerViewControllerClass alloc] initWithScene:_scene presentable:v12 context:v15];
  [v16 setDelegate:self];

  return v16;
}

- (void)sceneWillInvalidateForBannerSceneComponentProvider:(id)provider
{
  _scene = [provider _scene];
  bn_presentableUniqueIdentifier = [_scene bn_presentableUniqueIdentifier];
  [(BNBannerSource *)self _removePresentableWithUniqueIdentifier:bn_presentableUniqueIdentifier reason:@"scene will invalidate"];
}

- (BOOL)bannerClientContainerShouldDeferFocus:(id)focus
{
  destination = self->_destination;
  if (destination == 1)
  {
    objc_storeWeak(&self->_bannerClientContainerDeferringFocus, focus);
  }

  return destination == 1;
}

- (void)bannerClientContainerStoppedDeferringFocus:(id)focus
{
  focusCopy = focus;
  WeakRetained = objc_loadWeakRetained(&self->_bannerClientContainerDeferringFocus);

  if (WeakRetained == focusCopy)
  {

    objc_storeWeak(&self->_bannerClientContainerDeferringFocus, 0);
  }
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  reasonCopy = reason;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [bannerCopy providesTemplateContent])
  {
    uniquePresentableIdentifier = [bannerCopy uniquePresentableIdentifier];
    v8 = [(BNBannerSource *)self _presentableContextForPresentableWithUniqueIdentifier:uniquePresentableIdentifier];
    [v8 removePresentableObserver:self];

    reasonCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"template presentable did disappear as banner (%@)", reasonCopy];
    [(BNBannerSource *)self _removePresentable:bannerCopy reason:reasonCopy];
  }
}

+ (void)_invalidateBannerSource:(id)source
{
  v10 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  if (sourceCopy)
  {
    v4 = BNLogHostingService;
    if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = sourceCopy;
      _os_log_impl(&dword_1C42DC000, v4, OS_LOG_TYPE_DEFAULT, "Removing reference to invalidated banner source: %{public}@", &v8, 0xCu);
    }

    v5 = __requesterIDsToMachNamesToSources;
    requesterIdentifier = [sourceCopy requesterIdentifier];
    v7 = [v5 objectForKeyedSubscript:requesterIdentifier];
    [v7 setObject:0 forKeyedSubscript:*(sourceCopy + 1)];

    *(sourceCopy + 48) = 0;
  }
}

- (id)_activeConnectionWithError:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
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
    v7 = +[BNBannerSourceSessionSpecification identifier];
    v8 = [v5 endpointForMachName:machName service:v7 instance:0];

    v9 = [MEMORY[0x1E698F490] connectionWithEndpoint:v8];
    connection = selfCopy->_connection;
    selfCopy->_connection = v9;

    v11 = selfCopy->_connection;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __45__BNBannerSource__activeConnectionWithError___block_invoke;
    v15[3] = &unk_1E81E44F0;
    v15[4] = selfCopy;
    [(BSServiceConnection *)v11 configureConnection:v15];
    [(BSServiceConnection *)selfCopy->_connection activate];
    goto LABEL_8;
  }

  if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_ERROR))
  {
    [BNBannerSource _activeConnectionWithError:];
  }

  if (error)
  {
    v12 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"Attempt to establish connection with an invalidated BNBannerSource";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *error = [v12 errorWithDomain:@"BNBannerSourceErrorDomain" code:0 userInfo:v8];
LABEL_8:
  }

LABEL_9:
  objc_sync_exit(selfCopy);

  v13 = selfCopy->_connection;

  return v13;
}

void __45__BNBannerSource__activeConnectionWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[BNBannerSourceSessionSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[BNBannerSourceSessionSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 32) + 16)];
  objc_initWeak(&location, *(a1 + 32));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__BNBannerSource__activeConnectionWithError___block_invoke_2;
  v10[3] = &unk_1E81E44C8;
  objc_copyWeak(&v11, &location);
  [v3 setActivationHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__BNBannerSource__activeConnectionWithError___block_invoke_103;
  v8[3] = &unk_1E81E44C8;
  objc_copyWeak(&v9, &location);
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__BNBannerSource__activeConnectionWithError___block_invoke_104;
  v6[3] = &unk_1E81E44C8;
  objc_copyWeak(&v7, &location);
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __45__BNBannerSource__activeConnectionWithError___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = BNLogHostingService;
  if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 138543362;
    v6 = WeakRetained;
    _os_log_impl(&dword_1C42DC000, v3, OS_LOG_TYPE_DEFAULT, "BNBannerSource (service-side) connection activated: %{public}@", &v5, 0xCu);
  }
}

void __45__BNBannerSource__activeConnectionWithError___block_invoke_103(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BNLogHostingService;
  if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = 138543362;
    v8 = WeakRetained;
    _os_log_impl(&dword_1C42DC000, v5, OS_LOG_TYPE_DEFAULT, "BNBannerSource (service-side) connection interrupted: %{public}@", &v7, 0xCu);
  }

  [v3 activate];
}

void __45__BNBannerSource__activeConnectionWithError___block_invoke_104(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_sync_enter(v3);
    v4 = BNLogHostingService;
    if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1C42DC000, v4, OS_LOG_TYPE_DEFAULT, "BNBannerSource (service-side) connection invalidated: %{public}@", &v6, 0xCu);
    }

    v5 = v3[3];
    v3[3] = 0;

    objc_sync_exit(v3);
  }
}

- (void)_invalidateConnection
{
  v7 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_connection)
  {
    v3 = BNLogHostingService;
    if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = selfCopy;
      _os_log_impl(&dword_1C42DC000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating connection: %{public}@", &v5, 0xCu);
    }

    [(BSServiceConnection *)selfCopy->_connection invalidate];
    connection = selfCopy->_connection;
    selfCopy->_connection = 0;
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)_isValidPresentable:(id)presentable errorDescription:(id *)description
{
  v28 = *MEMORY[0x1E69E9840];
  presentableCopy = presentable;
  requestIdentifier = [presentableCopy requestIdentifier];
  v7 = [requestIdentifier length];

  if (!v7)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = BNEffectivePresentableDescription(presentableCopy);
    [v15 stringWithFormat:@"Presentable missing requestID: %@", v16];
    *description = LABEL_11:;

    v14 = 0;
    goto LABEL_12;
  }

  requesterIdentifier = [presentableCopy requesterIdentifier];
  v9 = [requesterIdentifier length];

  if (!v9)
  {
    v17 = MEMORY[0x1E696AEC0];
    v16 = BNEffectivePresentableDescription(presentableCopy);
    [v17 stringWithFormat:@"Presentable missing requesterID: %@", v16];
    goto LABEL_11;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([presentableCopy providesTemplateContent] & 1) == 0)
  {
    v10 = UIViewControllerFromPresentable(presentableCopy);

    if (!v10)
    {
      v11 = BNLogHostingService;
      if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = BNEffectivePresentableDescription(presentableCopy);
        *buf = 138543362;
        v27 = v13;
        _os_log_impl(&dword_1C42DC000, v12, OS_LOG_TYPE_DEFAULT, "Presentable provides neither template content nor a view controller – deferring to listener to manage UI: %{public}@", buf, 0xCu);
      }
    }
  }

  v14 = 1;
LABEL_12:
  requesterIdentifier2 = [presentableCopy requesterIdentifier];
  v19 = [requesterIdentifier2 hasPrefix:@"com."];

  if ((v19 & 1) == 0)
  {
    v20 = BNLogHostingService;
    if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_ERROR))
    {
      [BNBannerSource _isValidPresentable:v20 errorDescription:presentableCopy];
    }
  }

  requesterIdentifier3 = [presentableCopy requesterIdentifier];
  requestIdentifier2 = [presentableCopy requestIdentifier];
  v23 = BSEqualStrings();

  if (v23)
  {
    v24 = BNLogHostingService;
    if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_ERROR))
    {
      [BNBannerSource _isValidPresentable:v24 errorDescription:presentableCopy];
    }
  }

  return v14;
}

- (void)_addPresentableContext:(id)context
{
  v14 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (contextCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    uniqueIDsToContexts = selfCopy->_uniqueIDsToContexts;
    if (!uniqueIDsToContexts)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = selfCopy->_uniqueIDsToContexts;
      selfCopy->_uniqueIDsToContexts = v7;

      uniqueIDsToContexts = selfCopy->_uniqueIDsToContexts;
    }

    presentable = [contextCopy presentable];
    uniquePresentableIdentifier = [presentable uniquePresentableIdentifier];
    [(NSMutableDictionary *)uniqueIDsToContexts setObject:contextCopy forKey:uniquePresentableIdentifier];

    [contextCopy addPresentableObserver:selfCopy];
    v11 = BNLogHostingService;
    if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = contextCopy;
      _os_log_impl(&dword_1C42DC000, v11, OS_LOG_TYPE_DEFAULT, "Added presentable context: %{public}@", &v12, 0xCu);
    }

    objc_sync_exit(selfCopy);
  }
}

- (id)_presentableContextForPresentableWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableDictionary *)selfCopy->_uniqueIDsToContexts objectForKey:identifierCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_presentableForUniqueIdentifier:(id)identifier
{
  v3 = [(BNBannerSource *)self _presentableContextForPresentableWithUniqueIdentifier:identifier];
  presentable = [v3 presentable];

  return presentable;
}

- (void)_removePresentableContextForPresentableWithUniqueIdentifier:(id)identifier reason:(id)reason
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  reasonCopy = reason;
  if (![reasonCopy length])
  {
    [BNBannerSource _removePresentableContextForPresentableWithUniqueIdentifier:reason:];
  }

  if (identifierCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = [(BNBannerSource *)selfCopy _presentableContextForPresentableWithUniqueIdentifier:identifierCopy];
    if (v9)
    {
      [(NSMutableDictionary *)selfCopy->_uniqueIDsToContexts removeObjectForKey:identifierCopy];
      v10 = BNLogHostingService;
      if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543618;
        v12 = reasonCopy;
        v13 = 2114;
        v14 = v9;
        _os_log_impl(&dword_1C42DC000, v10, OS_LOG_TYPE_DEFAULT, "Removed presentable context for reason '%{public}@': %{public}@", &v11, 0x16u);
      }

      [v9 invalidate];
    }

    else if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_ERROR))
    {
      [BNBannerSource _removePresentableContextForPresentableWithUniqueIdentifier:reason:];
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)_removePresentable:(id)presentable reason:(id)reason
{
  v20 = *MEMORY[0x1E69E9840];
  presentableCopy = presentable;
  reasonCopy = reason;
  if (presentableCopy)
  {
    uniquePresentableIdentifier = [presentableCopy uniquePresentableIdentifier];
    if (!uniquePresentableIdentifier)
    {
      [BNBannerSource _removePresentable:reason:];
    }

    v9 = [(BNBannerSource *)self _presentableForUniqueIdentifier:uniquePresentableIdentifier];
    if (v9 == presentableCopy)
    {
      [(BNBannerSource *)self _removePresentableWithUniqueIdentifier:uniquePresentableIdentifier reason:reasonCopy];
    }

    else
    {
      v10 = BNLogHostingService;
      if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = BNEffectivePresentableDescription(v9);
        v13 = BNEffectivePresentableDescription(presentableCopy);
        v14 = 138543874;
        v15 = reasonCopy;
        v16 = 2114;
        v17 = v12;
        v18 = 2114;
        v19 = v13;
        _os_log_error_impl(&dword_1C42DC000, v11, OS_LOG_TYPE_ERROR, "Retrieved different presentable to remove for reason '%{public}@': argument: %{public}@; retrieved presentable: %{public}@", &v14, 0x20u);
      }
    }
  }
}

- (id)_revokePresentableWithIdentification:(id)identification reason:(id)reason animated:(id)animated userInfo:(id)info error:(id *)error
{
  v64[1] = *MEMORY[0x1E69E9840];
  identificationCopy = identification;
  reasonCopy = reason;
  animatedCopy = animated;
  infoCopy = info;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy_;
  v49 = __Block_byref_object_dispose_;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy_;
  v43 = __Block_byref_object_dispose_;
  v44 = 0;
  if (!identificationCopy || !reasonCopy)
  {
    v25 = MEMORY[0x1E696AEC0];
    requesterIdentifier = [identificationCopy requesterIdentifier];
    bn_remoteTargetEnforceLaunching = [v25 stringWithFormat:@"Requester identifier in identification (%@) doesn't match banner source (%@)", requesterIdentifier, self->_requesterIdentifier];

    v27 = MEMORY[0x1E696ABC0];
    v59 = *MEMORY[0x1E696A578];
    v60 = bn_remoteTargetEnforceLaunching;
    requesterIdentifier3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v28 = [v27 errorWithDomain:@"BNBannerSourceErrorDomain" code:2 userInfo:requesterIdentifier3];
LABEL_8:
    requestIdentifier = v40[5];
    v40[5] = v28;
    goto LABEL_9;
  }

  requesterIdentifier2 = [identificationCopy requesterIdentifier];
  v17 = [requesterIdentifier2 isEqualToString:self->_requesterIdentifier];

  if (!v17)
  {
    bn_remoteTargetEnforceLaunching = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing %@%@", @"identification", &stru_1F43AD928];
    v29 = MEMORY[0x1E696ABC0];
    v61 = *MEMORY[0x1E696A578];
    v62 = bn_remoteTargetEnforceLaunching;
    requesterIdentifier3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v28 = [v29 errorWithDomain:@"BNBannerSourceErrorDomain" code:2 userInfo:requesterIdentifier3];
    goto LABEL_8;
  }

  v18 = v40;
  obj = 0;
  v19 = [(BNBannerSource *)self _activeConnectionWithError:&obj];
  objc_storeStrong(v18 + 5, obj);
  bn_remoteTargetEnforceLaunching = [v19 bn_remoteTargetEnforceLaunching];

  if (bn_remoteTargetEnforceLaunching)
  {
    requesterIdentifier3 = [identificationCopy requesterIdentifier];
    requestIdentifier = [identificationCopy requestIdentifier];
    uniquePresentableIdentifier = [identificationCopy uniquePresentableIdentifier];
    v24 = [BNPresentableIdentification identificationWithRequesterIdentifier:requesterIdentifier3 requestIdentifier:requestIdentifier uniqueIdentifier:uniquePresentableIdentifier];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __86__BNBannerSource__revokePresentableWithIdentification_reason_animated_userInfo_error___block_invoke;
    v37[3] = &unk_1E81E4518;
    v37[4] = &v45;
    v37[5] = &v39;
    [bn_remoteTargetEnforceLaunching __revokePresentablesWithIdentification:v24 withAnimation:animatedCopy reason:reasonCopy userInfo:infoCopy reply:v37];

LABEL_9:
    goto LABEL_10;
  }

  if (!v40[5])
  {
    v33 = MEMORY[0x1E696ABC0];
    v63 = *MEMORY[0x1E696A578];
    v64[0] = @"Failed to obtain remote target from connection";
    requesterIdentifier3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
    v28 = [v33 errorWithDomain:@"BNBannerSourceErrorDomain" code:1 userInfo:requesterIdentifier3];
    goto LABEL_8;
  }

LABEL_10:

  if (v40[5])
  {
    v30 = BNLogHostingService;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      requestIdentifier2 = [identificationCopy requestIdentifier];
      requesterIdentifier4 = [identificationCopy requesterIdentifier];
      v36 = v40[5];
      *buf = 138544130;
      v52 = requestIdentifier2;
      v53 = 2114;
      v54 = requesterIdentifier4;
      v55 = 2114;
      v56 = reasonCopy;
      v57 = 2114;
      v58 = v36;
      _os_log_error_impl(&dword_1C42DC000, v30, OS_LOG_TYPE_ERROR, "Error encountered attempting to revoke presentable with requestID %{public}@ and requesterID %{public}@ for reason '%{public}@': %{public}@", buf, 0x2Au);
    }

    if (error)
    {
      *error = v40[5];
    }
  }

  v31 = v46[5];
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);

  return v31;
}

void __86__BNBannerSource__revokePresentableWithIdentification_reason_animated_userInfo_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BNBannerSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithMachName:andRequesterIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"machName" object:? file:? lineNumber:? description:?];
}

- (void)initWithMachName:andRequesterIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"requesterIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)initWithDestination:andRequesterIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"requesterIdentifier" object:? file:? lineNumber:? description:?];
}

+ (void)bannerSourceForDestination:forRequesterIdentifier:.cold.1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[BNBannerSource bannerSourceForDestination:forRequesterIdentifier:]"];
  [v1 handleFailureInFunction:v0 file:@"BNBannerSource.m" lineNumber:235 description:{@"Invalid destination: %@", @"[INVALID]"}];
}

+ (void)bannerSourceForDestination:forRequesterIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"requesterIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)postPresentable:(void *)a1 options:(uint64_t)a2 userInfo:(uint64_t)a3 error:(NSObject *)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v5 = *(*a2 + 40);
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = v5;
  OUTLINED_FUNCTION_4(&dword_1C42DC000, a4, a3, "Error encountered attempting to post: presentable: %{public}@; error: %{public}@", a3);
}

- (void)containerViewControllerForBannerSceneComponentProvider:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [v0 _FBSScene];
  v2 = [v1 identifier];
  OUTLINED_FUNCTION_0_0();
  [v3 handleFailureInMethod:v2 object:? file:? lineNumber:? description:?];
}

- (void)_activeConnectionWithError:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1C42DC000, v0, OS_LOG_TYPE_ERROR, "Attempt to establish connection with an invalidated BNBannerSource: %{public}@", v1, 0xCu);
}

- (void)_isValidPresentable:(void *)a1 errorDescription:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = BNEffectivePresentableDescription(a2);
  OUTLINED_FUNCTION_1();
}

- (void)_isValidPresentable:(void *)a1 errorDescription:(void *)a2 .cold.2(void *a1, void *a2)
{
  v3 = a1;
  v4 = BNEffectivePresentableDescription(a2);
  OUTLINED_FUNCTION_1();
}

- (void)_removePresentableContextForPresentableWithUniqueIdentifier:reason:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[reason length] > 0" object:? file:? lineNumber:? description:?];
}

- (void)_removePresentableContextForPresentableWithUniqueIdentifier:reason:.cold.2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  v3 = v0;
  OUTLINED_FUNCTION_4(&dword_1C42DC000, v1, v1, "No presentable context to remove for reason '%{public}@' with unique identifier: %{public}@", v2);
}

- (void)_removePresentable:reason:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"BNBannerSource.m" lineNumber:601 description:{@"Presentable has no unique identifier: %@", v0}];
}

@end
@interface BNBannerSource
+ (id)bannerSourceForDestination:(int64_t)a3 forRequesterIdentifier:(id)a4;
+ (void)_invalidateBannerSource:(id)a3;
+ (void)initialize;
- (BNBannerSource)initWithDestination:(int64_t)a3 andRequesterIdentifier:(id)a4;
- (BNBannerSource)initWithMachName:(id)a3 andRequesterIdentifier:(id)a4;
- (BNBannerSourceDelegate)delegate;
- (BOOL)_isValidPresentable:(id)a3 errorDescription:(id *)a4;
- (BOOL)bannerClientContainerShouldDeferFocus:(id)a3;
- (BOOL)postPresentable:(id)a3 options:(unint64_t)a4 userInfo:(id)a5 error:(id *)a6;
- (BOOL)revokePresentableWithRequestIdentifier:(id)a3 animated:(BOOL)a4 reason:(id)a5 userInfo:(id)a6 error:(id *)a7;
- (BOOL)setSuspended:(BOOL)a3 forReason:(id)a4 revokingCurrent:(BOOL)a5 error:(id *)a6;
- (NSString)description;
- (id)_activeConnectionWithError:(id *)a3;
- (id)_presentableContextForPresentableWithUniqueIdentifier:(id)a3;
- (id)_presentableForUniqueIdentifier:(id)a3;
- (id)_revokePresentableWithIdentification:(id)a3 reason:(id)a4 animated:(id)a5 userInfo:(id)a6 error:(id *)a7;
- (id)containerViewControllerForBannerSceneComponentProvider:(id)a3;
- (id)keyWindowForScreen:(id)a3;
- (id)layoutDescriptionWithError:(id *)a3;
- (id)revokeAllPresentablesWithReason:(id)a3 userInfo:(id)a4 error:(id *)a5;
- (id)revokePresentableWithIdentification:(id)a3 reason:(id)a4 animated:(BOOL)a5 userInfo:(id)a6 error:(id *)a7;
- (id)revokePresentableWithRequestIdentifier:(id)a3 reason:(id)a4 animated:(BOOL)a5 userInfo:(id)a6 error:(id *)a7;
- (void)_addPresentableContext:(id)a3;
- (void)_invalidateConnection;
- (void)_removePresentable:(id)a3 reason:(id)a4;
- (void)_removePresentableContextForPresentableWithUniqueIdentifier:(id)a3 reason:(id)a4;
- (void)bannerClientContainerStoppedDeferringFocus:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)sceneWillInvalidateForBannerSceneComponentProvider:(id)a3;
@end

@implementation BNBannerSource

+ (void)initialize
{
  if (objc_opt_class() == a1)
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

- (BNBannerSource)initWithMachName:(id)a3 andRequesterIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
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
    v10 = [v6 copy];
    machName = v9->_machName;
    v9->_machName = v10;

    objc_storeStrong(&v9->_requesterIdentifier, a4);
    Serial = BSDispatchQueueCreateSerial();
    connectionQueue = v9->_connectionQueue;
    v9->_connectionQueue = Serial;
  }

  return v9;
}

- (BNBannerSource)initWithDestination:(int64_t)a3 andRequesterIdentifier:(id)a4
{
  v6 = a4;
  v7 = _MachNameForDestination(a3);
  if (!v6)
  {
    [BNBannerSource initWithDestination:andRequesterIdentifier:];
  }

  v8 = [(BNBannerSource *)self initWithMachName:v7 andRequesterIdentifier:v6];
  v9 = v8;
  if (v8)
  {
    v8->_destination = a3;
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

+ (id)bannerSourceForDestination:(int64_t)a3 forRequesterIdentifier:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 >= 2)
  {
    +[BNBannerSource bannerSourceForDestination:forRequesterIdentifier:];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (v5)
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

  v8 = _MachNameForDestination(a3);
  v9 = [v7 objectForKeyedSubscript:v8];
  if (!v9)
  {
    v9 = [[BNBannerSource alloc] initWithDestination:a3 andRequesterIdentifier:v6];
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

- (id)layoutDescriptionWithError:(id *)a3
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
  v5 = [v4 bn_remoteTargetEnforceLaunching];

  if (v5)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__BNBannerSource_layoutDescriptionWithError___block_invoke;
    v13[3] = &unk_1E81E4450;
    v13[4] = &v21;
    v13[5] = &v15;
    [v5 __layoutDescriptionWithReply:v13];
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

  if (a3)
  {
    v10 = v16[5];
    if (v10)
    {
      *a3 = v10;
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

- (BOOL)postPresentable:(id)a3 options:(unint64_t)a4 userInfo:(id)a5 error:(id *)a6
{
  v95 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v67 = a5;
  v9 = BNLogHostingService;
  if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = BNEffectivePresentableDescription(v8);
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
  if (v8)
  {
    v76 = 0;
    v12 = [(BNBannerSource *)self _isValidPresentable:v8 errorDescription:&v76];
    v13 = v76;
    v14 = v13;
    if (v12)
    {
      v15 = [v8 requesterIdentifier];
      v16 = [v15 isEqualToString:self->_requesterIdentifier];

      if (v16)
      {
        [v8 ensurePresentableIsUniquelyIdentifiable];
        v17 = [v8 uniquePresentableIdentifier];
        v18 = [(BNBannerSource *)self _presentableContextForPresentableWithUniqueIdentifier:v17];

        v19 = v18;
        if (!v18)
        {
          v19 = [[_BNPresentableContext alloc] initWithMachName:self->_machName presentable:v8];
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
          v31 = [v8 providesTemplateContent];
        }

        else
        {
          v31 = 0;
        }

        v63 = v31 | ~v20;
        if (v31 & 1 | ((v20 & 1) == 0))
        {
          if (objc_opt_respondsToSelector())
          {
            [v8 setPresentableContext:v19];
          }
        }

        else if (!v18)
        {
          v32 = [v8 uniquePresentableIdentifier];
          [BNBannerSceneComponentProvider registerDelegate:self forSceneForPresentableWithUniqueIdentifier:v32];
        }

        v33 = *(&buf + 1);
        obj = 0;
        v34 = [(BNBannerSource *)self _activeConnectionWithError:&obj];
        objc_storeStrong((v33 + 40), obj);
        v25 = [v34 bn_remoteTargetEnforceLaunching];

        if (v25)
        {
          objc_initWeak(location, self);
          v35 = v8;
          if ((objc_opt_respondsToSelector() & 1) != 0 && [v35 providesTemplateContent])
          {
            v36 = v35;
            v37 = [v36 requesterIdentifier];
            v38 = [v36 requestIdentifier];
            v39 = [v36 uniquePresentableIdentifier];
            v64 = [(BNPresentableIdentification *)BNBannerSourceTemplatePresentableSpecification identificationWithRequesterIdentifier:v37 requestIdentifier:v38 uniqueIdentifier:v39];

            if (objc_opt_respondsToSelector())
            {
              v40 = [v36 leadingTemplateViewProvider];
              [v64 setLeadingTemplateViewProvider:v40];
            }

            else
            {
              [v64 setLeadingTemplateViewProvider:0];
            }

            if (objc_opt_respondsToSelector())
            {
              v50 = [v36 trailingTemplateViewProvider];
              [v64 setTrailingTemplateViewProvider:v50];
            }

            else
            {
              [v64 setTrailingTemplateViewProvider:0];
            }

            if (objc_opt_respondsToSelector())
            {
              v51 = [v36 primaryTemplateItemProvider];
              [v64 setPrimaryTemplateItemProvider:v51];
            }

            else
            {
              [v64 setPrimaryTemplateItemProvider:0];
            }

            if (objc_opt_respondsToSelector())
            {
              v52 = [v36 secondaryTemplateItemProvider];
              [v64 setSecondaryTemplateItemProvider:v52];
            }

            else
            {
              [v64 setSecondaryTemplateItemProvider:0];
            }

            [v64 setContentBehavior:1];
          }

          else
          {
            v41 = [v35 requesterIdentifier];
            v42 = [v35 requestIdentifier];
            v43 = [v35 uniquePresentableIdentifier];
            v64 = [(BNPresentableIdentification *)BNBannerSourcePresentableSpecification identificationWithRequesterIdentifier:v41 requestIdentifier:v42 uniqueIdentifier:v43];

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
            v53 = [v35 presentableBehavior];
          }

          else
          {
            v53 = (objc_opt_respondsToSelector() & 1) != 0 && [v35 presentableType] == 1;
          }

          [v64 setPresentableBehavior:v53];

          if (v67)
          {
            v54 = [v67 mutableCopy];
          }

          else
          {
            v54 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          v55 = v54;
          v56 = objc_opt_class();
          v57 = NSStringFromClass(v56);
          [v55 setObject:v57 forKeyedSubscript:@"BNBannerSourcePresentableClassName"];

          v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
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
          [v25 __postPresentableWithSpecification:v64 options:v58 userInfo:v55 reply:v68];

          objc_destroyWeak(&v73);
          objc_destroyWeak(location);
        }

        else
        {
          [(BNBannerSource *)self _removePresentable:v8 reason:@"failed to obtain remote target from connection"];
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
        v27 = [v8 requesterIdentifier];
        v19 = [v26 stringWithFormat:@"Presentable requesterID (%@) doesn't match source (%@)", v27, self->_requesterIdentifier];

        v28 = MEMORY[0x1E696ABC0];
        v86 = *MEMORY[0x1E696A578];
        v87 = v19;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
        v29 = [v28 errorWithDomain:@"BNBannerSourceErrorDomain" code:2 userInfo:v25];
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
      v25 = *(*(&buf + 1) + 40);
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
      v60 = BNEffectivePresentableDescription(v8);
      [BNBannerSource postPresentable:v60 options:&buf + 8 userInfo:location error:v59];
    }

    if (a6)
    {
      *a6 = *(*(&buf + 1) + 40);
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

- (id)revokePresentableWithRequestIdentifier:(id)a3 reason:(id)a4 animated:(BOOL)a5 userInfo:(id)a6 error:(id *)a7
{
  v9 = a5;
  v31 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = BNLogHostingService;
  if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
  {
    requesterIdentifier = self->_requesterIdentifier;
    v17 = v15;
    v18 = NSStringFromBOOL();
    v23 = 138544130;
    v24 = v12;
    v25 = 2114;
    v26 = requesterIdentifier;
    v27 = 2114;
    v28 = v13;
    v29 = 2114;
    v30 = v18;
    _os_log_impl(&dword_1C42DC000, v17, OS_LOG_TYPE_DEFAULT, "Asked to revoke presentable with requestID %{public}@ and requesterID %{public}@ with reason '%{public}@' (animated=%{public}@)", &v23, 0x2Au);
  }

  v19 = [BNPresentableIdentification identificationWithRequesterIdentifier:self->_requesterIdentifier requestIdentifier:v12];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  v21 = [(BNBannerSource *)self _revokePresentableWithIdentification:v19 reason:v13 animated:v20 userInfo:v14 error:a7];

  return v21;
}

- (id)revokeAllPresentablesWithReason:(id)a3 userInfo:(id)a4 error:(id *)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = BNLogHostingService;
  if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
  {
    requesterIdentifier = self->_requesterIdentifier;
    v15 = 138543618;
    v16 = requesterIdentifier;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_1C42DC000, v10, OS_LOG_TYPE_DEFAULT, "Asked to revoke all presentables with requester ID %{public}@ with reason '%{public}@'", &v15, 0x16u);
  }

  v12 = [BNPresentableIdentification identificationWithRequesterIdentifier:self->_requesterIdentifier];
  v13 = [(BNBannerSource *)self _revokePresentableWithIdentification:v12 reason:v8 animated:0 userInfo:v9 error:a5];

  return v13;
}

- (BOOL)revokePresentableWithRequestIdentifier:(id)a3 animated:(BOOL)a4 reason:(id)a5 userInfo:(id)a6 error:(id *)a7
{
  v7 = [(BNBannerSource *)self revokePresentableWithRequestIdentifier:a3 reason:a5 animated:a4 userInfo:a6 error:a7];
  v8 = v7 != 0;

  return v8;
}

- (id)revokePresentableWithIdentification:(id)a3 reason:(id)a4 animated:(BOOL)a5 userInfo:(id)a6 error:(id *)a7
{
  v9 = a5;
  v36 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = BNLogHostingService;
  if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [v12 requestIdentifier];
    v18 = [v12 requesterIdentifier];
    v19 = [v12 uniquePresentableIdentifier];
    NSStringFromBOOL();
    v25 = self;
    v21 = v20 = a7;
    *buf = 138544386;
    v27 = v17;
    v28 = 2114;
    v29 = v18;
    v30 = 2114;
    v31 = v19;
    v32 = 2114;
    v33 = v13;
    v34 = 2114;
    v35 = v21;
    _os_log_impl(&dword_1C42DC000, v16, OS_LOG_TYPE_DEFAULT, "Asked to revoke presentable with requestID %{public}@, requesterID %{public}@, and uniqueID %{public}@ with reason '%{public}@' (animated=%{public}@)", buf, 0x34u);

    a7 = v20;
    self = v25;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  v23 = [(BNBannerSource *)self _revokePresentableWithIdentification:v12 reason:v13 animated:v22 userInfo:v14 error:a7];

  return v23;
}

- (id)keyWindowForScreen:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_bannerClientContainerDeferringFocus);
  if ([WeakRetained isDeferringFocus])
  {
    v6 = objc_loadWeakRetained(&self->_bannerClientContainerDeferringFocus);
    v7 = [v6 keyWindowForScreen:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)setSuspended:(BOOL)a3 forReason:(id)a4 revokingCurrent:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = a3;
  v37[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
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
  if (v10)
  {
    obj = 0;
    v11 = [(BNBannerSource *)self _activeConnectionWithError:&obj];
    objc_storeStrong(&v29, obj);
    v12 = [v11 bn_remoteTargetEnforceLaunching];

    if (v12)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithBool:v8];
      v14 = [MEMORY[0x1E696AD98] numberWithBool:v7];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __63__BNBannerSource_setSuspended_forReason_revokingCurrent_error___block_invoke;
      v22[3] = &unk_1E81E44A0;
      v22[4] = &v30;
      v22[5] = &v24;
      [v12 __recommendSuspension:v13 forReason:v10 revokingCurrent:v14 reply:v22];
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
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v16 = [v15 errorWithDomain:@"BNBannerSourceErrorDomain" code:2 userInfo:v12];
    v13 = v25[5];
    v25[5] = v16;
  }

LABEL_7:
  if (a6)
  {
    v17 = v25[5];
    if (v17)
    {
      *a6 = v17;
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
      v6 = self;
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

- (id)containerViewControllerForBannerSceneComponentProvider:(id)a3
{
  v4 = [a3 _scene];
  v5 = [v4 _FBSScene];
  v6 = [v5 settings];
  v7 = objc_opt_class();
  v8 = v6;
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

  v11 = [v4 bn_presentableUniqueIdentifier];
  v12 = [(BNBannerSource *)self _presentableForUniqueIdentifier:v11];
  if (!v12)
  {
    [BNBannerSource containerViewControllerForBannerSceneComponentProvider:];
  }

  v13 = [v10 clientContainerViewControllerClass];
  if (!v13)
  {
    v13 = objc_opt_class();
  }

  v14 = [v12 uniquePresentableIdentifier];
  v15 = [(BNBannerSource *)self _presentableContextForPresentableWithUniqueIdentifier:v14];

  v16 = [[v13 alloc] initWithScene:v4 presentable:v12 context:v15];
  [v16 setDelegate:self];

  return v16;
}

- (void)sceneWillInvalidateForBannerSceneComponentProvider:(id)a3
{
  v5 = [a3 _scene];
  v4 = [v5 bn_presentableUniqueIdentifier];
  [(BNBannerSource *)self _removePresentableWithUniqueIdentifier:v4 reason:@"scene will invalidate"];
}

- (BOOL)bannerClientContainerShouldDeferFocus:(id)a3
{
  destination = self->_destination;
  if (destination == 1)
  {
    objc_storeWeak(&self->_bannerClientContainerDeferringFocus, a3);
  }

  return destination == 1;
}

- (void)bannerClientContainerStoppedDeferringFocus:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_bannerClientContainerDeferringFocus);

  if (WeakRetained == v4)
  {

    objc_storeWeak(&self->_bannerClientContainerDeferringFocus, 0);
  }
}

- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v10 providesTemplateContent])
  {
    v7 = [v10 uniquePresentableIdentifier];
    v8 = [(BNBannerSource *)self _presentableContextForPresentableWithUniqueIdentifier:v7];
    [v8 removePresentableObserver:self];

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"template presentable did disappear as banner (%@)", v6];
    [(BNBannerSource *)self _removePresentable:v10 reason:v9];
  }
}

+ (void)_invalidateBannerSource:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = BNLogHostingService;
    if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v3;
      _os_log_impl(&dword_1C42DC000, v4, OS_LOG_TYPE_DEFAULT, "Removing reference to invalidated banner source: %{public}@", &v8, 0xCu);
    }

    v5 = __requesterIDsToMachNamesToSources;
    v6 = [v3 requesterIdentifier];
    v7 = [v5 objectForKeyedSubscript:v6];
    [v7 setObject:0 forKeyedSubscript:*(v3 + 1)];

    *(v3 + 48) = 0;
  }
}

- (id)_activeConnectionWithError:(id *)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_valid)
  {
    if (v4->_connection)
    {
      goto LABEL_9;
    }

    v5 = MEMORY[0x1E698F498];
    machName = v4->_machName;
    v7 = +[BNBannerSourceSessionSpecification identifier];
    v8 = [v5 endpointForMachName:machName service:v7 instance:0];

    v9 = [MEMORY[0x1E698F490] connectionWithEndpoint:v8];
    connection = v4->_connection;
    v4->_connection = v9;

    v11 = v4->_connection;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __45__BNBannerSource__activeConnectionWithError___block_invoke;
    v15[3] = &unk_1E81E44F0;
    v15[4] = v4;
    [(BSServiceConnection *)v11 configureConnection:v15];
    [(BSServiceConnection *)v4->_connection activate];
    goto LABEL_8;
  }

  if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_ERROR))
  {
    [BNBannerSource _activeConnectionWithError:];
  }

  if (a3)
  {
    v12 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = @"Attempt to establish connection with an invalidated BNBannerSource";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *a3 = [v12 errorWithDomain:@"BNBannerSourceErrorDomain" code:0 userInfo:v8];
LABEL_8:
  }

LABEL_9:
  objc_sync_exit(v4);

  v13 = v4->_connection;

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
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_connection)
  {
    v3 = BNLogHostingService;
    if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&dword_1C42DC000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating connection: %{public}@", &v5, 0xCu);
    }

    [(BSServiceConnection *)v2->_connection invalidate];
    connection = v2->_connection;
    v2->_connection = 0;
  }

  objc_sync_exit(v2);
}

- (BOOL)_isValidPresentable:(id)a3 errorDescription:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 requestIdentifier];
  v7 = [v6 length];

  if (!v7)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = BNEffectivePresentableDescription(v5);
    [v15 stringWithFormat:@"Presentable missing requestID: %@", v16];
    *a4 = LABEL_11:;

    v14 = 0;
    goto LABEL_12;
  }

  v8 = [v5 requesterIdentifier];
  v9 = [v8 length];

  if (!v9)
  {
    v17 = MEMORY[0x1E696AEC0];
    v16 = BNEffectivePresentableDescription(v5);
    [v17 stringWithFormat:@"Presentable missing requesterID: %@", v16];
    goto LABEL_11;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v5 providesTemplateContent] & 1) == 0)
  {
    v10 = UIViewControllerFromPresentable(v5);

    if (!v10)
    {
      v11 = BNLogHostingService;
      if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = BNEffectivePresentableDescription(v5);
        *buf = 138543362;
        v27 = v13;
        _os_log_impl(&dword_1C42DC000, v12, OS_LOG_TYPE_DEFAULT, "Presentable provides neither template content nor a view controller – deferring to listener to manage UI: %{public}@", buf, 0xCu);
      }
    }
  }

  v14 = 1;
LABEL_12:
  v18 = [v5 requesterIdentifier];
  v19 = [v18 hasPrefix:@"com."];

  if ((v19 & 1) == 0)
  {
    v20 = BNLogHostingService;
    if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_ERROR))
    {
      [BNBannerSource _isValidPresentable:v20 errorDescription:v5];
    }
  }

  v21 = [v5 requesterIdentifier];
  v22 = [v5 requestIdentifier];
  v23 = BSEqualStrings();

  if (v23)
  {
    v24 = BNLogHostingService;
    if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_ERROR))
    {
      [BNBannerSource _isValidPresentable:v24 errorDescription:v5];
    }
  }

  return v14;
}

- (void)_addPresentableContext:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    uniqueIDsToContexts = v5->_uniqueIDsToContexts;
    if (!uniqueIDsToContexts)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = v5->_uniqueIDsToContexts;
      v5->_uniqueIDsToContexts = v7;

      uniqueIDsToContexts = v5->_uniqueIDsToContexts;
    }

    v9 = [v4 presentable];
    v10 = [v9 uniquePresentableIdentifier];
    [(NSMutableDictionary *)uniqueIDsToContexts setObject:v4 forKey:v10];

    [v4 addPresentableObserver:v5];
    v11 = BNLogHostingService;
    if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v4;
      _os_log_impl(&dword_1C42DC000, v11, OS_LOG_TYPE_DEFAULT, "Added presentable context: %{public}@", &v12, 0xCu);
    }

    objc_sync_exit(v5);
  }
}

- (id)_presentableContextForPresentableWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSMutableDictionary *)v5->_uniqueIDsToContexts objectForKey:v4];
    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_presentableForUniqueIdentifier:(id)a3
{
  v3 = [(BNBannerSource *)self _presentableContextForPresentableWithUniqueIdentifier:a3];
  v4 = [v3 presentable];

  return v4;
}

- (void)_removePresentableContextForPresentableWithUniqueIdentifier:(id)a3 reason:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![v7 length])
  {
    [BNBannerSource _removePresentableContextForPresentableWithUniqueIdentifier:reason:];
  }

  if (v6)
  {
    v8 = self;
    objc_sync_enter(v8);
    v9 = [(BNBannerSource *)v8 _presentableContextForPresentableWithUniqueIdentifier:v6];
    if (v9)
    {
      [(NSMutableDictionary *)v8->_uniqueIDsToContexts removeObjectForKey:v6];
      v10 = BNLogHostingService;
      if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543618;
        v12 = v7;
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

    objc_sync_exit(v8);
  }
}

- (void)_removePresentable:(id)a3 reason:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 uniquePresentableIdentifier];
    if (!v8)
    {
      [BNBannerSource _removePresentable:reason:];
    }

    v9 = [(BNBannerSource *)self _presentableForUniqueIdentifier:v8];
    if (v9 == v6)
    {
      [(BNBannerSource *)self _removePresentableWithUniqueIdentifier:v8 reason:v7];
    }

    else
    {
      v10 = BNLogHostingService;
      if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = BNEffectivePresentableDescription(v9);
        v13 = BNEffectivePresentableDescription(v6);
        v14 = 138543874;
        v15 = v7;
        v16 = 2114;
        v17 = v12;
        v18 = 2114;
        v19 = v13;
        _os_log_error_impl(&dword_1C42DC000, v11, OS_LOG_TYPE_ERROR, "Retrieved different presentable to remove for reason '%{public}@': argument: %{public}@; retrieved presentable: %{public}@", &v14, 0x20u);
      }
    }
  }
}

- (id)_revokePresentableWithIdentification:(id)a3 reason:(id)a4 animated:(id)a5 userInfo:(id)a6 error:(id *)a7
{
  v64[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
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
  if (!v12 || !v13)
  {
    v25 = MEMORY[0x1E696AEC0];
    v26 = [v12 requesterIdentifier];
    v20 = [v25 stringWithFormat:@"Requester identifier in identification (%@) doesn't match banner source (%@)", v26, self->_requesterIdentifier];

    v27 = MEMORY[0x1E696ABC0];
    v59 = *MEMORY[0x1E696A578];
    v60 = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v28 = [v27 errorWithDomain:@"BNBannerSourceErrorDomain" code:2 userInfo:v21];
LABEL_8:
    v22 = v40[5];
    v40[5] = v28;
    goto LABEL_9;
  }

  v16 = [v12 requesterIdentifier];
  v17 = [v16 isEqualToString:self->_requesterIdentifier];

  if (!v17)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing %@%@", @"identification", &stru_1F43AD928];
    v29 = MEMORY[0x1E696ABC0];
    v61 = *MEMORY[0x1E696A578];
    v62 = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v28 = [v29 errorWithDomain:@"BNBannerSourceErrorDomain" code:2 userInfo:v21];
    goto LABEL_8;
  }

  v18 = v40;
  obj = 0;
  v19 = [(BNBannerSource *)self _activeConnectionWithError:&obj];
  objc_storeStrong(v18 + 5, obj);
  v20 = [v19 bn_remoteTargetEnforceLaunching];

  if (v20)
  {
    v21 = [v12 requesterIdentifier];
    v22 = [v12 requestIdentifier];
    v23 = [v12 uniquePresentableIdentifier];
    v24 = [BNPresentableIdentification identificationWithRequesterIdentifier:v21 requestIdentifier:v22 uniqueIdentifier:v23];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __86__BNBannerSource__revokePresentableWithIdentification_reason_animated_userInfo_error___block_invoke;
    v37[3] = &unk_1E81E4518;
    v37[4] = &v45;
    v37[5] = &v39;
    [v20 __revokePresentablesWithIdentification:v24 withAnimation:v14 reason:v13 userInfo:v15 reply:v37];

LABEL_9:
    goto LABEL_10;
  }

  if (!v40[5])
  {
    v33 = MEMORY[0x1E696ABC0];
    v63 = *MEMORY[0x1E696A578];
    v64[0] = @"Failed to obtain remote target from connection";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
    v28 = [v33 errorWithDomain:@"BNBannerSourceErrorDomain" code:1 userInfo:v21];
    goto LABEL_8;
  }

LABEL_10:

  if (v40[5])
  {
    v30 = BNLogHostingService;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v34 = [v12 requestIdentifier];
      v35 = [v12 requesterIdentifier];
      v36 = v40[5];
      *buf = 138544130;
      v52 = v34;
      v53 = 2114;
      v54 = v35;
      v55 = 2114;
      v56 = v13;
      v57 = 2114;
      v58 = v36;
      _os_log_error_impl(&dword_1C42DC000, v30, OS_LOG_TYPE_ERROR, "Error encountered attempting to revoke presentable with requestID %{public}@ and requesterID %{public}@ for reason '%{public}@': %{public}@", buf, 0x2Au);
    }

    if (a7)
    {
      *a7 = v40[5];
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
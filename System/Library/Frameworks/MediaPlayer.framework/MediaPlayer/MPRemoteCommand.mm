@interface MPRemoteCommand
- (BOOL)hasTargets;
- (BOOL)isSupportedAndEnabled;
- (MPRemoteCommand)initWithMediaRemoteCommandType:(unsigned int)a3;
- (MPRemoteCommandCenter)commandCenter;
- (NSString)description;
- (id)_mediaRemoteCommandInfo;
- (id)_stateDumpObject;
- (id)addTargetWithHandler:(void *)handler;
- (id)commandInfoRepresentations;
- (id)newCommandEventWithContentItemIdentifier:(id)a3;
- (id)newCommandEventWithPlaybackQueueOffset:(int64_t)a3;
- (id)newSeekCommandEventWithType:(unint64_t)a3;
- (void)addTarget:(id)a3 action:(SEL)a4 usingExtendedStatus:(BOOL)a5;
- (void)invokeCommandWithEvent:(id)a3 completion:(id)a4;
- (void)notifyPropagatablePropertyChanged;
- (void)removeTarget:(id)target action:(SEL)action;
- (void)setDisabledReason:(int64_t)a3;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation MPRemoteCommand

- (void)notifyPropagatablePropertyChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_commandCenter);
  [WeakRetained remoteCommandDidMutatePropagatableProperty:self];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MRMediaRemoteCopyCommandDescription();
  mediaRemoteCommandType = self->_mediaRemoteCommandType;
  if ([(MPRemoteCommand *)self isForceDisabled])
  {
    v7 = @"NO [FORCED]";
  }

  else if (self->_enabled)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [(NSMutableDictionary *)self->_handlers allKeys];
  v9 = [v8 msv_compactDescription];
  v10 = [v3 stringWithFormat:@"<%@: %p type=%@ (%ld) enabled=%@ handlers=[%@]>", v4, self, v5, mediaRemoteCommandType, v7, v9];

  return v10;
}

- (BOOL)hasTargets
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_handlers count]!= 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)commandInfoRepresentations
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = [(MPRemoteCommand *)self _mediaRemoteCommandInfo];
  v4 = v3;
  mediaRemoteCommandType = self->_mediaRemoteCommandType;
  if (mediaRemoteCommandType == 10)
  {
    v6 = [(MPRemoteCommand *)self _mediaRemoteCommandInfo];
    [v6 setCommand:11];
    v12[0] = v4;
    v12[1] = v6;
    v7 = MEMORY[0x1E695DEC8];
    v8 = v12;
    goto LABEL_5;
  }

  if (mediaRemoteCommandType == 8)
  {
    v6 = [(MPRemoteCommand *)self _mediaRemoteCommandInfo];
    [v6 setCommand:9];
    v13[0] = v4;
    v13[1] = v6;
    v7 = MEMORY[0x1E695DEC8];
    v8 = v13;
LABEL_5:
    v9 = [v7 arrayWithObjects:v8 count:2];

    goto LABEL_7;
  }

  v11 = v3;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
LABEL_7:

  return v9;
}

- (id)_mediaRemoteCommandInfo
{
  v3 = objc_alloc_init(MEMORY[0x1E69B09E0]);
  [v3 setCommand:self->_mediaRemoteCommandType];
  if (self->_enabled)
  {
    v4 = [(MPRemoteCommand *)self isForceDisabled]^ 1;
  }

  else
  {
    v4 = 0;
  }

  [v3 setEnabled:v4];
  v5 = [(MPRemoteCommand *)self _mediaRemoteCommandInfoOptions];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F8];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  if ([v3 isEnabled])
  {
    v9 = v8;
  }

  else
  {
    v9 = [v8 mutableCopy];
    v10 = [(MPRemoteCommand *)self disabledReason]- 1;
    if (v10 <= 5)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInt:(v10 + 1)];
      [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69B0C58]];
    }
  }

  [v3 setOptions:v9];

  return v3;
}

- (MPRemoteCommandCenter)commandCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_commandCenter);

  return WeakRetained;
}

- (id)_stateDumpObject
{
  v13[5] = *MEMORY[0x1E69E9840];
  v12[0] = @"enabled";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[MPRemoteCommand isEnabled](self, "isEnabled")}];
  v13[0] = v3;
  v12[1] = @"forceDisabled";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[MPRemoteCommand isForceDisabled](self, "isForceDisabled")}];
  v13[1] = v4;
  v12[2] = @"hasTargets";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[MPRemoteCommand hasTargets](self, "hasTargets")}];
  v13[2] = v5;
  v12[3] = @"supported";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[MPRemoteCommand isSupported](self, "isSupported")}];
  v13[3] = v6;
  v12[4] = @"options";
  v7 = [(MPRemoteCommand *)self _mediaRemoteCommandInfoOptions];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F8];
  if (v7)
  {
    v9 = v7;
  }

  v13[4] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:5];

  return v10;
}

- (id)newSeekCommandEventWithType:(unint64_t)a3
{
  mediaRemoteCommandType = self->_mediaRemoteCommandType;
  if (mediaRemoteCommandType == 8)
  {
    v4 = 9;
  }

  else
  {
    v4 = self->_mediaRemoteCommandType;
  }

  if (mediaRemoteCommandType == 10)
  {
    v5 = 11;
  }

  else
  {
    v5 = v4;
  }

  if (a3 == 1)
  {
    v6 = v5;
  }

  else
  {
    v6 = mediaRemoteCommandType;
  }

  [(MPRemoteCommandEvent *)MPSeekCommandEvent eventWithCommand:self mediaRemoteType:v6 options:MEMORY[0x1E695E0F8]];
  return objc_claimAutoreleasedReturnValue();
}

- (id)newCommandEventWithPlaybackQueueOffset:(int64_t)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E69B1180];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = [(MPRemoteCommand *)self newCommandEventWithCommandType:self->_mediaRemoteCommandType options:v5];
  return v6;
}

- (id)newCommandEventWithContentItemIdentifier:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    v8 = *MEMORY[0x1E69B10C8];
    v9[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(MPRemoteCommand *)self newCommandEventWithCommandType:self->_mediaRemoteCommandType options:v5];

  return v6;
}

- (void)invokeCommandWithEvent:(id)a3 completion:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_handlers copy];
  os_unfair_lock_unlock(&self->_lock);
  v10 = [v9 count];
  if (v10 == 1)
  {
    v35 = a2;
    v17 = [v9 allKeys];
    v18 = [v17 firstObject];

    v19 = [v9 allValues];
    v14 = [v19 firstObject];

    v36 = v7;
    v20 = v7;
    v21 = MEMORY[0x1E69B13F0];
    v22 = v18;
    v23 = [v21 alloc];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___CreateDispatchBlockGuard_block_invoke;
    v59 = &unk_1E7682518;
    v60 = v20;
    v24 = v20;
    v25 = [v23 initWithDeallocHandler:buf];

    v26 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v24 commandID];
      *buf = 138543618;
      *&buf[4] = v27;
      *&buf[12] = 2114;
      *&buf[14] = v22;
      _os_log_impl(&dword_1A238D000, v26, OS_LOG_TYPE_DEFAULT, "[RCE:%{public}@] invoke | handler start [] handler=%{public}@", buf, 0x16u);
    }

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __53__MPRemoteCommand_invokeCommandWithEvent_completion___block_invoke;
    v48[3] = &unk_1E7681E10;
    v54 = v35;
    v49 = v25;
    v50 = self;
    v51 = v24;
    v52 = v22;
    v53 = v8;
    isa = v14[2].isa;
    v16 = v22;
    v15 = v25;
    isa(v14, v51, v48);

    v7 = v36;
  }

  else
  {
    v11 = v10;
    if (v10)
    {
      v29 = dispatch_group_create();
      v30 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v11];
      v31 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [v7 commandID];
        *buf = 138543618;
        *&buf[4] = v32;
        *&buf[12] = 2048;
        *&buf[14] = v11;
        _os_log_impl(&dword_1A238D000, v31, OS_LOG_TYPE_DEFAULT, "[RCE:%{public}@] invoke | fan-out [%ld handlers]", buf, 0x16u);
      }

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __53__MPRemoteCommand_invokeCommandWithEvent_completion___block_invoke_49;
      v42[3] = &unk_1E7681E60;
      v43 = v29;
      v33 = v7;
      v47 = a2;
      v44 = v33;
      v45 = self;
      v34 = v30;
      v46 = v34;
      v14 = v29;
      [v9 enumerateKeysAndObjectsUsingBlock:v42];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__MPRemoteCommand_invokeCommandWithEvent_completion___block_invoke_52;
      block[3] = &unk_1E7681E88;
      v41 = v11;
      v38 = v33;
      v39 = v34;
      v40 = v8;
      v15 = v34;
      dispatch_group_notify(v14, MEMORY[0x1E69E96A0], block);

      v16 = v43;
    }

    else
    {
      v12 = MEMORY[0x1E696ABC0];
      v56 = @"event";
      v57 = v7;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v14 = [v12 errorWithDomain:@"MPErrorDomain" code:5 userInfo:v13];

      v15 = [MPRemoteCommandStatus statusWithCode:404 error:v14];
      v55 = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
      (*(v8 + 2))(v8, v16);
    }
  }
}

void __53__MPRemoteCommand_invokeCommandWithEvent_completion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([*(a1 + 32) disarm] & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:*(a1 + 72) object:*(a1 + 40) file:@"MPRemoteCommand.m" lineNumber:242 description:@"Unable to disarm dealloc guard"];
  }

  v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 48) commandID];
    v6 = *(a1 + 56);
    *buf = 138543874;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "[RCE:%{public}@] invoke | handler finish [] handler=%{public}@ status=%{public}@", buf, 0x20u);
  }

  v7 = *(a1 + 64);
  v10 = v3;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  (*(v7 + 16))(v7, v8);
}

void __53__MPRemoteCommand_invokeCommandWithEvent_completion___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  dispatch_group_enter(v6);
  v8 = *(a1 + 40);
  v9 = MEMORY[0x1E69B13F0];
  v10 = v5;
  v11 = [v9 alloc];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___CreateDispatchBlockGuard_block_invoke;
  v31 = &unk_1E7682518;
  v32 = v8;
  v12 = v8;
  v13 = [v11 initWithDeallocHandler:buf];

  v14 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [*(a1 + 40) commandID];
    *buf = 138543618;
    *&buf[4] = v15;
    *&buf[12] = 2114;
    *&buf[14] = v10;
    _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEFAULT, "[RCE:%{public}@] invoke | handler start [] handler=%{public}@", buf, 0x16u);
  }

  v16 = *(a1 + 40);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __53__MPRemoteCommand_invokeCommandWithEvent_completion___block_invoke_50;
  v23[3] = &unk_1E7681E38;
  v17 = *(a1 + 64);
  v24 = v13;
  v29 = v17;
  v22 = *(a1 + 40);
  v18 = v22.i64[0];
  v25 = vextq_s8(v22, v22, 8uLL);
  v26 = v10;
  v27 = *(a1 + 56);
  v28 = *(a1 + 32);
  v19 = v7[2];
  v20 = v10;
  v21 = v13;
  v19(v7, v16, v23);
}

uint64_t __53__MPRemoteCommand_invokeCommandWithEvent_completion___block_invoke_52(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) commandID];
    v4 = *(a1 + 56);
    v5 = *(a1 + 40);
    v7 = 138543874;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "[RCE:%{public}@] invoke | fan-in [%ld handlers] statuses=%{public}@", &v7, 0x20u);
  }

  return (*(*(a1 + 48) + 16))();
}

void __53__MPRemoteCommand_invokeCommandWithEvent_completion___block_invoke_50(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([*(a1 + 32) disarm] & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 80) object:*(a1 + 40) file:@"MPRemoteCommand.m" lineNumber:259 description:@"Unable to disarm dealloc guard"];
  }

  v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 48) commandID];
    v6 = *(a1 + 56);
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_DEFAULT, "[RCE:%{public}@] invoke | handler finish [] handler=%{public}@ status=%{public}@", &v8, 0x20u);
  }

  [*(a1 + 64) addObject:v3];
  dispatch_group_leave(*(a1 + 72));
}

- (void)setDisabledReason:(int64_t)a3
{
  if (self->_disabledReason != a3)
  {
    self->_disabledReason = a3;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (BOOL)isSupportedAndEnabled
{
  v3 = [(MPRemoteCommand *)self isSupported];
  if (v3)
  {
    v3 = [(MPRemoteCommand *)self isEnabled];
    if (v3)
    {
      LOBYTE(v3) = ![(MPRemoteCommand *)self isForceDisabled];
    }
  }

  return v3;
}

- (id)addTargetWithHandler:(void *)handler
{
  v4 = handler;
  os_unfair_lock_lock(&self->_lock);
  v5 = MEMORY[0x1E696AEC0];
  v6 = _Block_copy(v4);
  v7 = [v5 stringWithFormat:@"%p", v6];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__MPRemoteCommand_addTargetWithHandler___block_invoke;
  aBlock[3] = &unk_1E7681DE8;
  v13 = v4;
  v8 = v4;
  v9 = _Block_copy(aBlock);
  [(NSMutableDictionary *)self->_handlers setObject:v9 forKeyedSubscript:v7];

  os_unfair_lock_unlock(&self->_lock);
  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 postNotificationName:@"MPRemoteCommandTargetsDidChangeNotification" object:self];

  return v7;
}

void __40__MPRemoteCommand_addTargetWithHandler___block_invoke(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  v7 = a3;
  v8 = [MPRemoteCommandStatus statusWithCode:v6(v5, a2)];
  (a3)[2](v7, v8);
}

- (void)removeTarget:(id)target action:(SEL)action
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = target;
  os_unfair_lock_lock(&self->_lock);
  if (v6)
  {
    if (action)
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = v6;
      v9 = [v7 stringWithFormat:@"%p:%s", v8, sel_getName(action)];

      [(NSMutableDictionary *)self->_handlers setObject:0 forKeyedSubscript:v9];
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = [(NSMutableDictionary *)self->_handlers allKeys];
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        do
        {
          v13 = 0;
          do
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v17 + 1) + 8 * v13);
            v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v6];
            if (([v14 isEqual:v6] & 1) != 0 || objc_msgSend(v14, "hasPrefix:", v15))
            {
              [(NSMutableDictionary *)self->_handlers setObject:0 forKeyedSubscript:v14];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v11);
      }
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_handlers removeAllObjects];
  }

  os_unfair_lock_unlock(&self->_lock);
  v16 = [MEMORY[0x1E696AD88] defaultCenter];
  [v16 postNotificationName:@"MPRemoteCommandTargetsDidChangeNotification" object:self];
}

- (void)addTarget:(id)a3 action:(SEL)a4 usingExtendedStatus:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = MEMORY[0x1E696AEC0];
  v10 = v8;
  v11 = [v9 stringWithFormat:@"%p:%s", v10, sel_getName(a4)];

  v12 = [v10 methodSignatureForSelector:a4];
  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__MPRemoteCommand_addTarget_action_usingExtendedStatus___block_invoke;
  aBlock[3] = &unk_1E7681D48;
  objc_copyWeak(&v38, location);
  v13 = v11;
  v37 = v13;
  v14 = _Block_copy(aBlock);
  if (dyld_program_sdk_at_least())
  {
    v15 = 1;
  }

  else
  {
    v15 = dyld_program_sdk_at_least();
  }

  objc_initWeak(&from, v10);
  v16 = *[v12 methodReturnType];
  if ([v12 numberOfArguments] == 4)
  {
    v17 = v32;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __56__MPRemoteCommand_addTarget_action_usingExtendedStatus___block_invoke_2;
    v32[3] = &unk_1E7681D98;
    v18 = v33;
    objc_copyWeak(v33, &from);
    v32[4] = v14;
    v34 = v5;
LABEL_11:
    v17[6] = a4;
    v19 = _Block_copy(v17);

    objc_destroyWeak(v18);
LABEL_12:
    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = v15;
    }

    if (v20 == 1)
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:a2 object:self file:@"MPRemoteCommand.m" lineNumber:131 description:@"Unsupported action method signature. Must return MPRemoteCommandHandlerStatus or take a completion handler as the second argument."];

      v19 = 0;
    }

    goto LABEL_17;
  }

  if (v16 == 113 || v16 == 105)
  {
    if (v5)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:self file:@"MPRemoteCommand.m" lineNumber:106 description:@"Cannot use extended status with synchronous target/action"];
    }

    v17 = v30;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __56__MPRemoteCommand_addTarget_action_usingExtendedStatus___block_invoke_4;
    v30[3] = &unk_1E7681DC0;
    v18 = v31;
    objc_copyWeak(v31, &from);
    v30[4] = v14;
    goto LABEL_11;
  }

  if (v15)
  {
    v19 = 0;
    goto LABEL_12;
  }

  if (v5)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"MPRemoteCommand.m" lineNumber:118 description:@"Cannot use extended status with synchronous target/action"];
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __56__MPRemoteCommand_addTarget_action_usingExtendedStatus___block_invoke_5;
  v27[3] = &unk_1E7681DC0;
  objc_copyWeak(v29, &from);
  v28 = v14;
  v29[1] = a4;
  v19 = _Block_copy(v27);

  objc_destroyWeak(v29);
LABEL_17:
  os_unfair_lock_lock(&self->_lock);
  v21 = _Block_copy(v19);
  [(NSMutableDictionary *)self->_handlers setObject:v21 forKeyedSubscript:v13];

  os_unfair_lock_unlock(&self->_lock);
  v22 = [MEMORY[0x1E696AD88] defaultCenter];
  [v22 postNotificationName:@"MPRemoteCommandTargetsDidChangeNotification" object:self];

  objc_destroyWeak(&from);
  objc_destroyWeak(&v38);
  objc_destroyWeak(location);
}

void __56__MPRemoteCommand_addTarget_action_usingExtendedStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    [*(WeakRetained + 2) removeObjectForKey:*(a1 + 32)];
    os_unfair_lock_unlock(WeakRetained + 2);
  }

  v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPErrorDomain" code:6 debugDescription:@"Target was not available for command."];
  v5 = [MPRemoteCommandStatus statusWithCode:200 error:v4];
  v3[2](v3, v5);
}

void __56__MPRemoteCommand_addTarget_action_usingExtendedStatus___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = *(a1 + 56);
    v10 = [WeakRetained methodForSelector:*(a1 + 48)];
    v11 = *(a1 + 48);
    if (v9)
    {
      v10(v8, v11, v5, v6);
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __56__MPRemoteCommand_addTarget_action_usingExtendedStatus___block_invoke_3;
      v12[3] = &unk_1E7681D70;
      v13 = v6;
      v10(v8, v11, v5, v12);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __56__MPRemoteCommand_addTarget_action_usingExtendedStatus___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = +[MPRemoteCommandStatus statusWithCode:](MPRemoteCommandStatus, "statusWithCode:", ([WeakRetained methodForSelector:*(a1 + 48)])(WeakRetained, *(a1 + 48), v9));
    v5[2](v5, v8);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __56__MPRemoteCommand_addTarget_action_usingExtendedStatus___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_ERROR, "Unsupported action method signature. Must return MPRemoteCommandHandlerStatus or take a completion handler as the second argument. ** This will break in a future release. **", v10, 2u);
    }

    ([WeakRetained methodForSelector:*(a1 + 48)])(WeakRetained, *(a1 + 48), v5);
    v9 = +[MPRemoteCommandStatus successStatus];
    v6[2](v6, v9);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __56__MPRemoteCommand_addTarget_action_usingExtendedStatus___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MPRemoteCommandStatus statusWithCode:a2];
  (*(v2 + 16))(v2, v3);
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (MPRemoteCommand)initWithMediaRemoteCommandType:(unsigned int)a3
{
  v9.receiver = self;
  v9.super_class = MPRemoteCommand;
  v4 = [(MPRemoteCommand *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    handlers = v5->_handlers;
    v5->_handlers = v6;

    v5->_mediaRemoteCommandType = a3;
    v5->_enabled = 1;
    v5->_timeout = 9.0;
  }

  return v5;
}

@end
@interface NIFindingNotifier
- (NIFindingNotifier)initWithParentSession:(id)a3;
- (void)notifyDiscoveredNearbyObjectWithToken:(id)a3 sharedConfigurationData:(id)a4;
- (void)notifyRemovedNearbyObjectWithToken:(id)a3;
- (void)notifyUpdatedHeadingForLocalDevice:(id)a3;
- (void)notifyUpdatedLocation:(id)a3 forNearbyObjectWithToken:(id)a4;
- (void)notifyUpdatedLocationForLocalDevice:(id)a3;
@end

@implementation NIFindingNotifier

- (NIFindingNotifier)initWithParentSession:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NIFindingNotifier;
  v5 = [(NIFindingNotifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->parentSession, v4);
  }

  return v6;
}

- (void)notifyDiscoveredNearbyObjectWithToken:(id)a3 sharedConfigurationData:(id)a4
{
  v37[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2863 description:{@"Invalid parameter not satisfying: %@", @"token"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2864 description:{@"Invalid parameter not satisfying: %@", @"configurationData"}];

LABEL_3:
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v36[0] = @"FindingEventDictKey_EventType";
    v36[1] = @"FindingEventDictKey_ObjectDiscoveryToken";
    v37[0] = &unk_1F38D7A28;
    v37[1] = v7;
    v36[2] = @"FindingEventDictKey_SharedConfigurationData";
    v37[2] = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3];
    if (+[NIPlatformInfo isInternalBuild])
    {
      v12 = [WeakRetained getInternalLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [WeakRetained getInternalIdentifier];
        v14 = NISessionInternalStateToString([WeakRetained internalState]);
        v15 = [v7 descriptionInternal];
        *buf = 138413058;
        v29 = v13;
        v30 = 2112;
        v31 = v14;
        v32 = 2112;
        v33 = v15;
        v34 = 2112;
        v35 = v9;
        _os_log_impl(&dword_1BAC42000, v12, OS_LOG_TYPE_DEFAULT, "Client: notifyDiscoveredNearbyObject STARTED [%@]. State: %@. Token: %@. Data: %@", buf, 0x2Au);
      }
    }

    v16 = [WeakRetained getInternalConnectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__NIFindingNotifier_notifyDiscoveredNearbyObjectWithToken_sharedConfigurationData___block_invoke;
    block[3] = &unk_1E7F13A70;
    v17 = WeakRetained;
    v26 = v17;
    v18 = v11;
    v27 = v18;
    dispatch_sync(v16, block);

    if (+[NIPlatformInfo isInternalBuild])
    {
      v19 = [v17 getInternalLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v17 getInternalIdentifier];
        *buf = 138412290;
        v29 = v20;
        _os_log_impl(&dword_1BAC42000, v19, OS_LOG_TYPE_DEFAULT, "Client: notifyDiscoveredNearbyObject FINISHED [%@]", buf, 0xCu);
      }
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2868 description:@"Parent session is nil"];
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __83__NIFindingNotifier_notifyDiscoveredNearbyObjectWithToken_sharedConfigurationData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processFindingEvent:*(a1 + 40) reply:&__block_literal_global_1635];
}

- (void)notifyRemovedNearbyObjectWithToken:(id)a3
{
  v30[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2893 description:{@"Invalid parameter not satisfying: %@", @"token"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v29[0] = @"FindingEventDictKey_EventType";
    v29[1] = @"FindingEventDictKey_ObjectDiscoveryToken";
    v30[0] = &unk_1F38D7A40;
    v30[1] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
    if (+[NIPlatformInfo isInternalBuild])
    {
      v8 = [WeakRetained getInternalLogObject];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [WeakRetained getInternalIdentifier];
        v10 = NISessionInternalStateToString([WeakRetained internalState]);
        v11 = [v5 descriptionInternal];
        *buf = 138412802;
        v24 = v9;
        v25 = 2112;
        v26 = v10;
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&dword_1BAC42000, v8, OS_LOG_TYPE_DEFAULT, "Client: notifyRemovedNearbyObject STARTED [%@]. State: %@. Token: %@", buf, 0x20u);
      }
    }

    v12 = [WeakRetained getInternalConnectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__NIFindingNotifier_notifyRemovedNearbyObjectWithToken___block_invoke;
    block[3] = &unk_1E7F13A70;
    v13 = WeakRetained;
    v21 = v13;
    v14 = v7;
    v22 = v14;
    dispatch_sync(v12, block);

    if (+[NIPlatformInfo isInternalBuild])
    {
      v15 = [v13 getInternalLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v13 getInternalIdentifier];
        *buf = 138412290;
        v24 = v16;
        _os_log_impl(&dword_1BAC42000, v15, OS_LOG_TYPE_DEFAULT, "Client: notifyRemovedNearbyObject FINISHED [%@]", buf, 0xCu);
      }
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2897 description:@"Parent session is nil"];
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __56__NIFindingNotifier_notifyRemovedNearbyObjectWithToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processFindingEvent:*(a1 + 40) reply:&__block_literal_global_1637];
}

- (void)notifyUpdatedLocationForLocalDevice:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2920 description:{@"Invalid parameter not satisfying: %@", @"location"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v16[0] = @"FindingEventDictKey_EventType";
    v16[1] = @"FindingEventDictKey_Location";
    v17[0] = &unk_1F38D79E0;
    v17[1] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v8 = [WeakRetained getInternalConnectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__NIFindingNotifier_notifyUpdatedLocationForLocalDevice___block_invoke;
    block[3] = &unk_1E7F13A70;
    v14 = WeakRetained;
    v15 = v7;
    v9 = v7;
    dispatch_sync(v8, block);
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2924 description:@"Parent session is nil"];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __57__NIFindingNotifier_notifyUpdatedLocationForLocalDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processFindingEvent:*(a1 + 40) reply:&__block_literal_global_1642];
}

- (void)notifyUpdatedHeadingForLocalDevice:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2937 description:{@"Invalid parameter not satisfying: %@", @"heading"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v16[0] = @"FindingEventDictKey_EventType";
    v16[1] = @"FindingEventDictKey_Heading";
    v17[0] = &unk_1F38D79F8;
    v17[1] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v8 = [WeakRetained getInternalConnectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__NIFindingNotifier_notifyUpdatedHeadingForLocalDevice___block_invoke;
    block[3] = &unk_1E7F13A70;
    v14 = WeakRetained;
    v15 = v7;
    v9 = v7;
    dispatch_sync(v8, block);
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2941 description:@"Parent session is nil"];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __56__NIFindingNotifier_notifyUpdatedHeadingForLocalDevice___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processFindingEvent:*(a1 + 40) reply:&__block_literal_global_1647];
}

- (void)notifyUpdatedLocation:(id)a3 forNearbyObjectWithToken:(id)a4
{
  v22[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2954 description:{@"Invalid parameter not satisfying: %@", @"location"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2955 description:{@"Invalid parameter not satisfying: %@", @"token"}];

LABEL_3:
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v21[0] = @"FindingEventDictKey_EventType";
    v21[1] = @"FindingEventDictKey_ObjectDiscoveryToken";
    v22[0] = &unk_1F38D7A10;
    v22[1] = v9;
    v21[2] = @"FindingEventDictKey_Location";
    v22[2] = v7;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
    v12 = [WeakRetained getInternalConnectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__NIFindingNotifier_notifyUpdatedLocation_forNearbyObjectWithToken___block_invoke;
    block[3] = &unk_1E7F13A70;
    v19 = WeakRetained;
    v20 = v11;
    v13 = v11;
    dispatch_sync(v12, block);
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2959 description:@"Parent session is nil"];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __68__NIFindingNotifier_notifyUpdatedLocation_forNearbyObjectWithToken___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processFindingEvent:*(a1 + 40) reply:&__block_literal_global_1649];
}

@end
@interface NICarKeyEventNotifier
- (NICarKeyEventNotifier)initWithParentSession:(id)session;
- (void)notifyRangingIntentSentToVehicleWithReason:(int64_t)reason;
- (void)notifyVehicleLockedWithReason:(int64_t)reason;
- (void)notifyVehicleReadyToDriveWithReason:(int64_t)reason;
- (void)notifyVehicleSentRangingSuspendedSubEvent;
- (void)notifyVehicleTerminatedRangingSession;
- (void)notifyVehicleUnlockedWithReason:(int64_t)reason;
@end

@implementation NICarKeyEventNotifier

- (NICarKeyEventNotifier)initWithParentSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = NICarKeyEventNotifier;
  v5 = [(NICarKeyEventNotifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->parentSession, sessionCopy);
  }

  return v6;
}

- (void)notifyVehicleUnlockedWithReason:(int64_t)reason
{
  v17[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v17[0] = &unk_1F38D79C8;
    v16[0] = @"CarKeyEventType";
    v16[1] = @"CarKeyEventReason";
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
    v17[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

    getInternalConnectionQueue = [WeakRetained getInternalConnectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__NICarKeyEventNotifier_notifyVehicleUnlockedWithReason___block_invoke;
    block[3] = &unk_1E7F13A70;
    v14 = WeakRetained;
    v15 = v8;
    v10 = v8;
    dispatch_sync(getInternalConnectionQueue, block);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2455 description:@"Parent session is nil"];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __57__NICarKeyEventNotifier_notifyVehicleUnlockedWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processCarKeyEvent:*(a1 + 40) reply:&__block_literal_global_0];
}

- (void)notifyVehicleLockedWithReason:(int64_t)reason
{
  v17[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v17[0] = &unk_1F38D79E0;
    v16[0] = @"CarKeyEventType";
    v16[1] = @"CarKeyEventReason";
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
    v17[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

    getInternalConnectionQueue = [WeakRetained getInternalConnectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__NICarKeyEventNotifier_notifyVehicleLockedWithReason___block_invoke;
    block[3] = &unk_1E7F13A70;
    v14 = WeakRetained;
    v15 = v8;
    v10 = v8;
    dispatch_sync(getInternalConnectionQueue, block);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2469 description:@"Parent session is nil"];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __55__NICarKeyEventNotifier_notifyVehicleLockedWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processCarKeyEvent:*(a1 + 40) reply:&__block_literal_global_1501];
}

- (void)notifyVehicleReadyToDriveWithReason:(int64_t)reason
{
  v17[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v17[0] = &unk_1F38D79F8;
    v16[0] = @"CarKeyEventType";
    v16[1] = @"CarKeyEventReason";
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
    v17[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

    getInternalConnectionQueue = [WeakRetained getInternalConnectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__NICarKeyEventNotifier_notifyVehicleReadyToDriveWithReason___block_invoke;
    block[3] = &unk_1E7F13A70;
    v14 = WeakRetained;
    v15 = v8;
    v10 = v8;
    dispatch_sync(getInternalConnectionQueue, block);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2483 description:@"Parent session is nil"];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __61__NICarKeyEventNotifier_notifyVehicleReadyToDriveWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processCarKeyEvent:*(a1 + 40) reply:&__block_literal_global_1505];
}

- (void)notifyRangingIntentSentToVehicleWithReason:(int64_t)reason
{
  v17[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v17[0] = &unk_1F38D7A10;
    v16[0] = @"CarKeyEventType";
    v16[1] = @"CarKeyEventReason";
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
    v17[1] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

    getInternalConnectionQueue = [WeakRetained getInternalConnectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__NICarKeyEventNotifier_notifyRangingIntentSentToVehicleWithReason___block_invoke;
    block[3] = &unk_1E7F13A70;
    v14 = WeakRetained;
    v15 = v8;
    v10 = v8;
    dispatch_sync(getInternalConnectionQueue, block);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2497 description:@"Parent session is nil"];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __68__NICarKeyEventNotifier_notifyRangingIntentSentToVehicleWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processCarKeyEvent:*(a1 + 40) reply:&__block_literal_global_1509];
}

- (void)notifyVehicleTerminatedRangingSession
{
  v14[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v13 = @"CarKeyEventType";
    v14[0] = &unk_1F38D7A28;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    getInternalConnectionQueue = [WeakRetained getInternalConnectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__NICarKeyEventNotifier_notifyVehicleTerminatedRangingSession__block_invoke;
    block[3] = &unk_1E7F13A70;
    v11 = WeakRetained;
    v12 = v5;
    v7 = v5;
    dispatch_sync(getInternalConnectionQueue, block);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2511 description:@"Parent session is nil"];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __62__NICarKeyEventNotifier_notifyVehicleTerminatedRangingSession__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processCarKeyEvent:*(a1 + 40) reply:&__block_literal_global_1513];
}

- (void)notifyVehicleSentRangingSuspendedSubEvent
{
  v14[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v13 = @"CarKeyEventType";
    v14[0] = &unk_1F38D7A40;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    getInternalConnectionQueue = [WeakRetained getInternalConnectionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__NICarKeyEventNotifier_notifyVehicleSentRangingSuspendedSubEvent__block_invoke;
    block[3] = &unk_1E7F13A70;
    v11 = WeakRetained;
    v12 = v5;
    v7 = v5;
    dispatch_sync(getInternalConnectionQueue, block);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2525 description:@"Parent session is nil"];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __66__NICarKeyEventNotifier_notifyVehicleSentRangingSuspendedSubEvent__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processCarKeyEvent:*(a1 + 40) reply:&__block_literal_global_1517];
}

@end
@interface NIDevicePresenceNotifier
- (NIDevicePresenceNotifier)initWithParentSession:(id)session;
- (void)notifyBluetoothSample:(id)sample;
@end

@implementation NIDevicePresenceNotifier

- (NIDevicePresenceNotifier)initWithParentSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = NIDevicePresenceNotifier;
  v5 = [(NIDevicePresenceNotifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->parentSession, sessionCopy);
  }

  return v6;
}

- (void)notifyBluetoothSample:(id)sample
{
  sampleCopy = sample;
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    getInternalConnectionQueue = [WeakRetained getInternalConnectionQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__NIDevicePresenceNotifier_notifyBluetoothSample___block_invoke;
    v10[3] = &unk_1E7F13A70;
    v11 = v7;
    v12 = sampleCopy;
    dispatch_sync(getInternalConnectionQueue, v10);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:2809 description:@"Parent session is nil"];
  }
}

void __50__NIDevicePresenceNotifier_notifyBluetoothSample___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _remoteObject];
  [v2 _processBluetoothSample:*(a1 + 40)];
}

@end
@interface WFListeningModeDeviceAccessResource
- (BOOL)supportedDevicesAreFetched;
- (WFListeningModeDeviceAccessResource)initWithDefinition:(id)definition;
- (id)localizedAccessResourceErrorString;
- (id)unavailableAccessResourceError;
- (unint64_t)status;
- (void)makeAvailableWithUserInterface:(id)interface completionHandler:(id)handler;
- (void)makeSettingsClientIfNecessary;
@end

@implementation WFListeningModeDeviceAccessResource

- (BOOL)supportedDevicesAreFetched
{
  selfCopy = self;
  os_unfair_lock_lock(&self->_supportedDevicesLock);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__WFListeningModeDeviceAccessResource_supportedDevicesAreFetched__block_invoke;
  aBlock[3] = &unk_278C224A0;
  aBlock[4] = selfCopy;
  v3 = _Block_copy(aBlock);
  supportedDevices = [(WFListeningModeDeviceAccessResource *)selfCopy supportedDevices];
  LOBYTE(selfCopy) = supportedDevices != 0;

  v3[2](v3);
  return selfCopy;
}

- (void)makeSettingsClientIfNecessary
{
  if (![(WFListeningModeDeviceAccessResource *)self supportedDevicesAreFetched])
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __68__WFListeningModeDeviceAccessResource_makeSettingsClientIfNecessary__block_invoke;
    v3[3] = &unk_278C1A320;
    v3[4] = self;
    [WFBluetoothSettingsClient createClientWithCompletionHandler:v3];
  }
}

void __68__WFListeningModeDeviceAccessResource_makeSettingsClientIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 64), a2);
    objc_initWeak(location, *(a1 + 32));
    v8 = [*(a1 + 32) bluetoothClient];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__WFListeningModeDeviceAccessResource_makeSettingsClientIfNecessary__block_invoke_179;
    v11[3] = &unk_278C1A2F8;
    objc_copyWeak(&v12, location);
    v11[4] = *(a1 + 32);
    [v8 observePairedDevicesMatchingType:2 update:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = getWFActionsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *location = 136315394;
      *&location[4] = "[WFListeningModeDeviceAccessResource makeSettingsClientIfNecessary]_block_invoke";
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_23DE30000, v9, OS_LOG_TYPE_ERROR, "%s Error creating WFBluetoothSettingsClient: %{public}@", location, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __68__WFListeningModeDeviceAccessResource_makeSettingsClientIfNecessary__block_invoke_179(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  os_unfair_lock_lock((*(a1 + 32) + 56));
  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  *(v4 + 72) = v3;
  v6 = v3;

  os_unfair_lock_unlock((*(a1 + 32) + 56));
  [WeakRetained refreshAvailabilityWithNotification];
  v7 = [WeakRetained status];
  v8 = [WeakRetained availabilityCompletion];

  if (v8)
  {
    v9 = [WeakRetained availabilityCompletion];
    v10 = v9;
    if (v7 == 4)
    {
      (*(v9 + 16))(v9, 1, 0);
    }

    else
    {
      v11 = [WeakRetained unavailableAccessResourceError];
      (v10)[2](v10, 0, v11);
    }

    [WeakRetained setAvailabilityCompletion:0];
  }
}

- (id)localizedAccessResourceErrorString
{
  v2 = MEMORY[0x277CCACA8];
  v3 = WFLocalizedString(@"Your %@ has not connected to any devices that support Noise Control modes.");
  currentDevice = [MEMORY[0x277D79F18] currentDevice];
  localizedModel = [currentDevice localizedModel];
  v6 = [v2 localizedStringWithFormat:v3, localizedModel];

  return v6;
}

- (id)unavailableAccessResourceError
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D7CB08];
  v9 = *MEMORY[0x277CCA450];
  localizedAccessResourceErrorString = [(WFListeningModeDeviceAccessResource *)self localizedAccessResourceErrorString];
  v10[0] = localizedAccessResourceErrorString;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v2 errorWithDomain:v3 code:0 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (unint64_t)status
{
  if ([(WFListeningModeDeviceAccessResource *)self supportedDevicesAreFetched])
  {
    os_unfair_lock_lock(&self->_supportedDevicesLock);
    supportedDevices = [(WFListeningModeDeviceAccessResource *)self supportedDevices];
    v4 = 4 * ([supportedDevices count] != 0);

    os_unfair_lock_unlock(&self->_supportedDevicesLock);
  }

  else
  {
    [(WFListeningModeDeviceAccessResource *)self makeSettingsClientIfNecessary];
    return 1;
  }

  return v4;
}

- (void)makeAvailableWithUserInterface:(id)interface completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(WFListeningModeDeviceAccessResource *)self status]== 1)
  {
    [(WFListeningModeDeviceAccessResource *)self setAvailabilityCompletion:handlerCopy];
    [(WFListeningModeDeviceAccessResource *)self makeSettingsClientIfNecessary];
  }

  else if ([(WFListeningModeDeviceAccessResource *)self status]== 4)
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }

  else
  {
    unavailableAccessResourceError = [(WFListeningModeDeviceAccessResource *)self unavailableAccessResourceError];
    (handlerCopy)[2](handlerCopy, 0, unavailableAccessResourceError);
  }
}

- (WFListeningModeDeviceAccessResource)initWithDefinition:(id)definition
{
  v7.receiver = self;
  v7.super_class = WFListeningModeDeviceAccessResource;
  v3 = [(WFAccessResource *)&v7 initWithDefinition:definition];
  v4 = v3;
  if (v3)
  {
    v3->_supportedDevicesLock._os_unfair_lock_opaque = 0;
    v5 = v3;
  }

  return v4;
}

@end
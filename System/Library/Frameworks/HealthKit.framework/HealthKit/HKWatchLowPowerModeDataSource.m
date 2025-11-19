@interface HKWatchLowPowerModeDataSource
- (HKWatchLowPowerModeDataSource)init;
- (HKWatchLowPowerModeDataSource)initWithCarouselDomainAccessor:(id)a3;
- (HKWatchLowPowerModeDataSource)initWithDarwinNotificationDataSource:(id)a3 devicePairingAndSwitchingNotificationDataSource:(id)a4;
- (HKWatchLowPowerModeDataSource)initWithDarwinNotificationDataSource:(id)a3 devicePairingAndSwitchingNotificationDataSource:(id)a4 carouselDomainAccessor:(id)a5;
- (id)makeAndRegisterBridgedObserverForKey:(id)a3 handle:(id)a4;
- (void)registerObserver:(id)a3 onLowPowerModeChange:(id)a4;
- (void)unregisterBridgedObserver:(id)a3 forKey:(id)a4;
- (void)unregisterObserver:(id)a3;
@end

@implementation HKWatchLowPowerModeDataSource

- (HKWatchLowPowerModeDataSource)init
{
  v3 = objc_alloc_init(HKDarwinNotificationDataSource);
  v4 = objc_alloc_init(HKNanoRegistryPairingAndSwitchingNotificationDataSource);
  v5 = [(HKWatchLowPowerModeDataSource *)self initWithDarwinNotificationDataSource:v3 devicePairingAndSwitchingNotificationDataSource:v4];

  return v5;
}

- (HKWatchLowPowerModeDataSource)initWithDarwinNotificationDataSource:(id)a3 devicePairingAndSwitchingNotificationDataSource:(id)a4
{
  v6 = MEMORY[0x1E69B3588];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithDomain:@"com.apple.Carousel"];
  v10 = [(HKWatchLowPowerModeDataSource *)self initWithDarwinNotificationDataSource:v8 devicePairingAndSwitchingNotificationDataSource:v7 carouselDomainAccessor:v9];

  return v10;
}

- (HKWatchLowPowerModeDataSource)initWithCarouselDomainAccessor:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HKDarwinNotificationDataSource);
  v6 = objc_alloc_init(HKNanoRegistryPairingAndSwitchingNotificationDataSource);
  v7 = [(HKWatchLowPowerModeDataSource *)self initWithDarwinNotificationDataSource:v5 devicePairingAndSwitchingNotificationDataSource:v6 carouselDomainAccessor:v4];

  return v7;
}

- (HKWatchLowPowerModeDataSource)initWithDarwinNotificationDataSource:(id)a3 devicePairingAndSwitchingNotificationDataSource:(id)a4 carouselDomainAccessor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HKWatchLowPowerModeDataSource;
  v12 = [(HKObserverBridge *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_darwinNotificationDataSource, a3);
    objc_storeStrong(&v13->_devicePairingAndSwitchingDataSource, a4);
    objc_storeStrong(&v13->_carouselDomainAccessor, a5);
  }

  return v13;
}

- (void)registerObserver:(id)a3 onLowPowerModeChange:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E695DFB0];
  v8 = a3;
  v9 = [v7 null];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__HKWatchLowPowerModeDataSource_registerObserver_onLowPowerModeChange___block_invoke;
  v11[3] = &unk_1E73851E0;
  v12 = v6;
  v10 = v6;
  [(HKObserverBridge *)self registerObserver:v8 forKey:v9 newValueHandler:v11];
}

void __71__HKWatchLowPowerModeDataSource_registerObserver_onLowPowerModeChange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  (*(v4 + 16))(v4, v5, [a3 BOOLValue]);
}

- (void)unregisterObserver:(id)a3
{
  v4 = MEMORY[0x1E695DFB0];
  v5 = a3;
  v6 = [v4 null];
  [(HKObserverBridge *)self unregisterObserver:v5 forKey:v6];
}

- (id)makeAndRegisterBridgedObserverForKey:(id)a3 handle:(id)a4
{
  v5 = a4;
  v6 = self->_carouselDomainAccessor;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__HKWatchLowPowerModeDataSource_makeAndRegisterBridgedObserverForKey_handle___block_invoke;
  aBlock[3] = &unk_1E7378400;
  v7 = v6;
  v27 = v7;
  v8 = v5;
  v28 = v8;
  v9 = _Block_copy(aBlock);
  v10 = +[_HKBehavior sharedBehavior];
  v11 = [v10 isAppleWatch];

  if (v11)
  {
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = *MEMORY[0x1E696A7D8];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __77__HKWatchLowPowerModeDataSource_makeAndRegisterBridgedObserverForKey_handle___block_invoke_2;
    v24[3] = &unk_1E7385208;
    v25 = v9;
    v14 = v9;
    v15 = [v12 addObserverForName:v13 object:0 queue:0 usingBlock:v24];
  }

  else
  {
    darwinNotificationDataSource = self->_darwinNotificationDataSource;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __77__HKWatchLowPowerModeDataSource_makeAndRegisterBridgedObserverForKey_handle___block_invoke_3;
    v22[3] = &unk_1E737FBB0;
    v17 = v9;
    v23 = v17;
    [(HKObserverBridge *)darwinNotificationDataSource registerObserver:self forKey:@"com.apple.Carousel.LowPowerMode" newValueHandler:v22];
    devicePairingAndSwitchingDataSource = self->_devicePairingAndSwitchingDataSource;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __77__HKWatchLowPowerModeDataSource_makeAndRegisterBridgedObserverForKey_handle___block_invoke_4;
    v20[3] = &unk_1E7385230;
    v21 = v17;
    v12 = v17;
    [(HKNanoRegistryPairingAndSwitchingNotificationDataSource *)devicePairingAndSwitchingDataSource registerObserverForDevicePairingChanges:self block:v20];
    v15 = [MEMORY[0x1E695DFB0] null];

    v14 = v23;
  }

  return v15;
}

void __77__HKWatchLowPowerModeDataSource_makeAndRegisterBridgedObserverForKey_handle___block_invoke(uint64_t a1)
{
  IsWatchLowPowerModeEnabledWithCarouselDomainAccessor = _IsWatchLowPowerModeEnabledWithCarouselDomainAccessor(*(a1 + 32));
  v3 = *(a1 + 40);
  v5 = [MEMORY[0x1E695DFB0] null];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:IsWatchLowPowerModeEnabledWithCarouselDomainAccessor];
  [v3 notifyObserversOfChangeForKey:v5 newValue:v4];
}

- (void)unregisterBridgedObserver:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v5 = +[_HKBehavior sharedBehavior];
  v6 = [v5 isAppleWatch];

  if (v6)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 removeObserver:v8 name:*MEMORY[0x1E696A7D8] object:0];
  }

  else
  {
    [(HKObserverBridge *)self->_darwinNotificationDataSource unregisterObserver:self forKey:@"com.apple.Carousel.LowPowerMode"];
    [(HKNanoRegistryPairingAndSwitchingNotificationDataSource *)self->_devicePairingAndSwitchingDataSource unregisterObserverForDevicePairingChanges:self];
  }
}

@end
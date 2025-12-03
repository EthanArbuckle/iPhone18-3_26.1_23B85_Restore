@interface HKWatchLowPowerModeDataSource
- (HKWatchLowPowerModeDataSource)init;
- (HKWatchLowPowerModeDataSource)initWithCarouselDomainAccessor:(id)accessor;
- (HKWatchLowPowerModeDataSource)initWithDarwinNotificationDataSource:(id)source devicePairingAndSwitchingNotificationDataSource:(id)dataSource;
- (HKWatchLowPowerModeDataSource)initWithDarwinNotificationDataSource:(id)source devicePairingAndSwitchingNotificationDataSource:(id)dataSource carouselDomainAccessor:(id)accessor;
- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle;
- (void)registerObserver:(id)observer onLowPowerModeChange:(id)change;
- (void)unregisterBridgedObserver:(id)observer forKey:(id)key;
- (void)unregisterObserver:(id)observer;
@end

@implementation HKWatchLowPowerModeDataSource

- (HKWatchLowPowerModeDataSource)init
{
  v3 = objc_alloc_init(HKDarwinNotificationDataSource);
  v4 = objc_alloc_init(HKNanoRegistryPairingAndSwitchingNotificationDataSource);
  v5 = [(HKWatchLowPowerModeDataSource *)self initWithDarwinNotificationDataSource:v3 devicePairingAndSwitchingNotificationDataSource:v4];

  return v5;
}

- (HKWatchLowPowerModeDataSource)initWithDarwinNotificationDataSource:(id)source devicePairingAndSwitchingNotificationDataSource:(id)dataSource
{
  v6 = MEMORY[0x1E69B3588];
  dataSourceCopy = dataSource;
  sourceCopy = source;
  v9 = [[v6 alloc] initWithDomain:@"com.apple.Carousel"];
  v10 = [(HKWatchLowPowerModeDataSource *)self initWithDarwinNotificationDataSource:sourceCopy devicePairingAndSwitchingNotificationDataSource:dataSourceCopy carouselDomainAccessor:v9];

  return v10;
}

- (HKWatchLowPowerModeDataSource)initWithCarouselDomainAccessor:(id)accessor
{
  accessorCopy = accessor;
  v5 = objc_alloc_init(HKDarwinNotificationDataSource);
  v6 = objc_alloc_init(HKNanoRegistryPairingAndSwitchingNotificationDataSource);
  v7 = [(HKWatchLowPowerModeDataSource *)self initWithDarwinNotificationDataSource:v5 devicePairingAndSwitchingNotificationDataSource:v6 carouselDomainAccessor:accessorCopy];

  return v7;
}

- (HKWatchLowPowerModeDataSource)initWithDarwinNotificationDataSource:(id)source devicePairingAndSwitchingNotificationDataSource:(id)dataSource carouselDomainAccessor:(id)accessor
{
  sourceCopy = source;
  dataSourceCopy = dataSource;
  accessorCopy = accessor;
  v15.receiver = self;
  v15.super_class = HKWatchLowPowerModeDataSource;
  v12 = [(HKObserverBridge *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_darwinNotificationDataSource, source);
    objc_storeStrong(&v13->_devicePairingAndSwitchingDataSource, dataSource);
    objc_storeStrong(&v13->_carouselDomainAccessor, accessor);
  }

  return v13;
}

- (void)registerObserver:(id)observer onLowPowerModeChange:(id)change
{
  changeCopy = change;
  v7 = MEMORY[0x1E695DFB0];
  observerCopy = observer;
  null = [v7 null];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__HKWatchLowPowerModeDataSource_registerObserver_onLowPowerModeChange___block_invoke;
  v11[3] = &unk_1E73851E0;
  v12 = changeCopy;
  v10 = changeCopy;
  [(HKObserverBridge *)self registerObserver:observerCopy forKey:null newValueHandler:v11];
}

void __71__HKWatchLowPowerModeDataSource_registerObserver_onLowPowerModeChange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  (*(v4 + 16))(v4, v5, [a3 BOOLValue]);
}

- (void)unregisterObserver:(id)observer
{
  v4 = MEMORY[0x1E695DFB0];
  observerCopy = observer;
  null = [v4 null];
  [(HKObserverBridge *)self unregisterObserver:observerCopy forKey:null];
}

- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle
{
  handleCopy = handle;
  v6 = self->_carouselDomainAccessor;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__HKWatchLowPowerModeDataSource_makeAndRegisterBridgedObserverForKey_handle___block_invoke;
  aBlock[3] = &unk_1E7378400;
  v7 = v6;
  v27 = v7;
  v8 = handleCopy;
  v28 = v8;
  v9 = _Block_copy(aBlock);
  v10 = +[_HKBehavior sharedBehavior];
  isAppleWatch = [v10 isAppleWatch];

  if (isAppleWatch)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = *MEMORY[0x1E696A7D8];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __77__HKWatchLowPowerModeDataSource_makeAndRegisterBridgedObserverForKey_handle___block_invoke_2;
    v24[3] = &unk_1E7385208;
    v25 = v9;
    v14 = v9;
    null = [defaultCenter addObserverForName:v13 object:0 queue:0 usingBlock:v24];
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
    defaultCenter = v17;
    [(HKNanoRegistryPairingAndSwitchingNotificationDataSource *)devicePairingAndSwitchingDataSource registerObserverForDevicePairingChanges:self block:v20];
    null = [MEMORY[0x1E695DFB0] null];

    v14 = v23;
  }

  return null;
}

void __77__HKWatchLowPowerModeDataSource_makeAndRegisterBridgedObserverForKey_handle___block_invoke(uint64_t a1)
{
  IsWatchLowPowerModeEnabledWithCarouselDomainAccessor = _IsWatchLowPowerModeEnabledWithCarouselDomainAccessor(*(a1 + 32));
  v3 = *(a1 + 40);
  v5 = [MEMORY[0x1E695DFB0] null];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:IsWatchLowPowerModeEnabledWithCarouselDomainAccessor];
  [v3 notifyObserversOfChangeForKey:v5 newValue:v4];
}

- (void)unregisterBridgedObserver:(id)observer forKey:(id)key
{
  observerCopy = observer;
  v5 = +[_HKBehavior sharedBehavior];
  isAppleWatch = [v5 isAppleWatch];

  if (isAppleWatch)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:observerCopy name:*MEMORY[0x1E696A7D8] object:0];
  }

  else
  {
    [(HKObserverBridge *)self->_darwinNotificationDataSource unregisterObserver:self forKey:@"com.apple.Carousel.LowPowerMode"];
    [(HKNanoRegistryPairingAndSwitchingNotificationDataSource *)self->_devicePairingAndSwitchingDataSource unregisterObserverForDevicePairingChanges:self];
  }
}

@end
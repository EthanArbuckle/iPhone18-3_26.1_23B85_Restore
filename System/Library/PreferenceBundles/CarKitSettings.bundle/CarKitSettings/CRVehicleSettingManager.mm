@interface CRVehicleSettingManager
- (BOOL)_disablesCarPlayFeatures:(unint64_t)features;
- (BOOL)isCarPlayUltraEnabled;
- (BOOL)isCarPlayUltraSupported;
- (BOOL)setCarPlayUltraEnabled:(BOOL)enabled;
- (CRVehicleSettingManager)initWithPairedVehicleManager:(id)manager featureAvailability:(id)availability vehicle:(id)vehicle;
- (void)reloadVehicle;
- (void)removeVehicleWithCompletion:(id)completion;
- (void)saveVehicleWithCompletion:(id)completion;
@end

@implementation CRVehicleSettingManager

- (CRVehicleSettingManager)initWithPairedVehicleManager:(id)manager featureAvailability:(id)availability vehicle:(id)vehicle
{
  managerCopy = manager;
  availabilityCopy = availability;
  vehicleCopy = vehicle;
  v17.receiver = self;
  v17.super_class = CRVehicleSettingManager;
  v12 = [(CRVehicleSettingManager *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_vehicleManager, manager);
    objc_storeStrong(&v13->_featureAvailability, availability);
    objc_storeStrong(&v13->_vehicle, vehicle);
    v14 = objc_alloc_init(CARSessionStatus);
    sessionStatus = v13->_sessionStatus;
    v13->_sessionStatus = v14;
  }

  return v13;
}

- (void)saveVehicleWithCompletion:(id)completion
{
  completionCopy = completion;
  vehicleManager = [(CRVehicleSettingManager *)self vehicleManager];
  vehicle = [(CRVehicleSettingManager *)self vehicle];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_B6B8;
  v8[3] = &unk_6E5D0;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [vehicleManager saveVehicle:vehicle completion:v8];
}

- (void)removeVehicleWithCompletion:(id)completion
{
  completionCopy = completion;
  vehicleManager = [(CRVehicleSettingManager *)self vehicleManager];
  vehicle = [(CRVehicleSettingManager *)self vehicle];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_B8A8;
  v8[3] = &unk_6E620;
  v9 = completionCopy;
  v7 = completionCopy;
  [vehicleManager removeVehicle:vehicle completion:v8];
}

- (BOOL)_disablesCarPlayFeatures:(unint64_t)features
{
  vehicle = [(CRVehicleSettingManager *)self vehicle];
  identifier = [vehicle identifier];

  featureAvailability = [(CRVehicleSettingManager *)self featureAvailability];
  LOBYTE(features) = [featureAvailability disablesCarPlayFeatures:features forVehicleIdentifier:identifier];

  return features;
}

- (BOOL)isCarPlayUltraSupported
{
  vehicle = [(CRVehicleSettingManager *)self vehicle];
  supportsThemeAssets = [vehicle supportsThemeAssets];
  bOOLValue = [supportsThemeAssets BOOLValue];

  if (!bOOLValue)
  {
    return 0;
  }

  featureAvailability = [(CRVehicleSettingManager *)self featureAvailability];
  deviceSupportedCarPlayFeatures = [featureAvailability deviceSupportedCarPlayFeatures];

  return (CRCarPlayFeaturesAllFerriteFeatures() & deviceSupportedCarPlayFeatures) != 0;
}

- (BOOL)isCarPlayUltraEnabled
{
  isCarPlayUltraSupported = [(CRVehicleSettingManager *)self isCarPlayUltraSupported];
  if (isCarPlayUltraSupported)
  {
    LOBYTE(isCarPlayUltraSupported) = ![(CRVehicleSettingManager *)self _disablesCarPlayFeatures:CRCarPlayFeaturesAllFerriteFeatures()];
  }

  return isCarPlayUltraSupported;
}

- (BOOL)setCarPlayUltraEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = CRCarPlayFeaturesAllFerriteFeatures();

  return [(CRVehicleSettingManager *)self _setCarPlayFeatures:v5 disabled:!enabledCopy];
}

- (void)reloadVehicle
{
  vehicleManager = [(CRVehicleSettingManager *)self vehicleManager];
  vehicle = [(CRVehicleSettingManager *)self vehicle];
  certificateSerialNumber = [vehicle certificateSerialNumber];
  v6 = [vehicleManager vehicleForCertificateSerial:certificateSerialNumber];

  [(CRVehicleSettingManager *)self setVehicle:v6];
}

@end
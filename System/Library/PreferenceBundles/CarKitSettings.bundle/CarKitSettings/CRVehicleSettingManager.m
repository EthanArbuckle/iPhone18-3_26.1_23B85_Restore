@interface CRVehicleSettingManager
- (BOOL)_disablesCarPlayFeatures:(unint64_t)a3;
- (BOOL)isCarPlayUltraEnabled;
- (BOOL)isCarPlayUltraSupported;
- (BOOL)setCarPlayUltraEnabled:(BOOL)a3;
- (CRVehicleSettingManager)initWithPairedVehicleManager:(id)a3 featureAvailability:(id)a4 vehicle:(id)a5;
- (void)reloadVehicle;
- (void)removeVehicleWithCompletion:(id)a3;
- (void)saveVehicleWithCompletion:(id)a3;
@end

@implementation CRVehicleSettingManager

- (CRVehicleSettingManager)initWithPairedVehicleManager:(id)a3 featureAvailability:(id)a4 vehicle:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = CRVehicleSettingManager;
  v12 = [(CRVehicleSettingManager *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_vehicleManager, a3);
    objc_storeStrong(&v13->_featureAvailability, a4);
    objc_storeStrong(&v13->_vehicle, a5);
    v14 = objc_alloc_init(CARSessionStatus);
    sessionStatus = v13->_sessionStatus;
    v13->_sessionStatus = v14;
  }

  return v13;
}

- (void)saveVehicleWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRVehicleSettingManager *)self vehicleManager];
  v6 = [(CRVehicleSettingManager *)self vehicle];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_B6B8;
  v8[3] = &unk_6E5D0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 saveVehicle:v6 completion:v8];
}

- (void)removeVehicleWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CRVehicleSettingManager *)self vehicleManager];
  v6 = [(CRVehicleSettingManager *)self vehicle];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_B8A8;
  v8[3] = &unk_6E620;
  v9 = v4;
  v7 = v4;
  [v5 removeVehicle:v6 completion:v8];
}

- (BOOL)_disablesCarPlayFeatures:(unint64_t)a3
{
  v5 = [(CRVehicleSettingManager *)self vehicle];
  v6 = [v5 identifier];

  v7 = [(CRVehicleSettingManager *)self featureAvailability];
  LOBYTE(a3) = [v7 disablesCarPlayFeatures:a3 forVehicleIdentifier:v6];

  return a3;
}

- (BOOL)isCarPlayUltraSupported
{
  v3 = [(CRVehicleSettingManager *)self vehicle];
  v4 = [v3 supportsThemeAssets];
  v5 = [v4 BOOLValue];

  if (!v5)
  {
    return 0;
  }

  v6 = [(CRVehicleSettingManager *)self featureAvailability];
  v7 = [v6 deviceSupportedCarPlayFeatures];

  return (CRCarPlayFeaturesAllFerriteFeatures() & v7) != 0;
}

- (BOOL)isCarPlayUltraEnabled
{
  v3 = [(CRVehicleSettingManager *)self isCarPlayUltraSupported];
  if (v3)
  {
    LOBYTE(v3) = ![(CRVehicleSettingManager *)self _disablesCarPlayFeatures:CRCarPlayFeaturesAllFerriteFeatures()];
  }

  return v3;
}

- (BOOL)setCarPlayUltraEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = CRCarPlayFeaturesAllFerriteFeatures();

  return [(CRVehicleSettingManager *)self _setCarPlayFeatures:v5 disabled:!v3];
}

- (void)reloadVehicle
{
  v3 = [(CRVehicleSettingManager *)self vehicleManager];
  v4 = [(CRVehicleSettingManager *)self vehicle];
  v5 = [v4 certificateSerialNumber];
  v6 = [v3 vehicleForCertificateSerial:v5];

  [(CRVehicleSettingManager *)self setVehicle:v6];
}

@end
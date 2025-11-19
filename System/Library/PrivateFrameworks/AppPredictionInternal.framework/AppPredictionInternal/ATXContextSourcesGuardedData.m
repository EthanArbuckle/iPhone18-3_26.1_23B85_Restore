@interface ATXContextSourcesGuardedData
- (void)updateAppInfoManager:(id)a3 locationManager:(id)a4 motionManagerWrapper:(id)a5 ambientLightMonitor:(id)a6 deviceStateMonitorClass:(Class)a7 contextSourcesInitialized:(BOOL)a8;
@end

@implementation ATXContextSourcesGuardedData

- (void)updateAppInfoManager:(id)a3 locationManager:(id)a4 motionManagerWrapper:(id)a5 ambientLightMonitor:(id)a6 deviceStateMonitorClass:(Class)a7 contextSourcesInitialized:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  appInfoManager = self->_appInfoManager;
  self->_appInfoManager = v14;
  v19 = v14;

  locationManager = self->_locationManager;
  self->_locationManager = v15;
  v21 = v15;

  motionManagerWrapper = self->_motionManagerWrapper;
  self->_motionManagerWrapper = v16;
  v23 = v16;

  ambientLightMonitor = self->_ambientLightMonitor;
  self->_ambientLightMonitor = v17;
  v25 = v17;

  objc_storeStrong(&self->_deviceStateMonitorClass, a7);
  self->_contextSourcesInitialized = a8;
}

@end
@interface ATXContextSourcesGuardedData
- (void)updateAppInfoManager:(id)manager locationManager:(id)locationManager motionManagerWrapper:(id)wrapper ambientLightMonitor:(id)monitor deviceStateMonitorClass:(Class)class contextSourcesInitialized:(BOOL)initialized;
@end

@implementation ATXContextSourcesGuardedData

- (void)updateAppInfoManager:(id)manager locationManager:(id)locationManager motionManagerWrapper:(id)wrapper ambientLightMonitor:(id)monitor deviceStateMonitorClass:(Class)class contextSourcesInitialized:(BOOL)initialized
{
  managerCopy = manager;
  locationManagerCopy = locationManager;
  wrapperCopy = wrapper;
  monitorCopy = monitor;
  appInfoManager = self->_appInfoManager;
  self->_appInfoManager = managerCopy;
  v19 = managerCopy;

  locationManager = self->_locationManager;
  self->_locationManager = locationManagerCopy;
  v21 = locationManagerCopy;

  motionManagerWrapper = self->_motionManagerWrapper;
  self->_motionManagerWrapper = wrapperCopy;
  v23 = wrapperCopy;

  ambientLightMonitor = self->_ambientLightMonitor;
  self->_ambientLightMonitor = monitorCopy;
  v25 = monitorCopy;

  objc_storeStrong(&self->_deviceStateMonitorClass, class);
  self->_contextSourcesInitialized = initialized;
}

@end
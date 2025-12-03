@interface NFCCModuleAvailabilityMonitor
- (NFCCModuleAvailabilityMonitor)initWithDelegate:(id)delegate readerConnection:(id)connection;
- (void)_checkHardwareSupport;
- (void)_startMonitoringCamera;
- (void)_stopCheckingHardwareSupport;
- (void)_stopMonitoringCamera;
- (void)_updateAvailable;
- (void)controlCenterDidDisappear;
- (void)controlCenterWillAppear;
@end

@implementation NFCCModuleAvailabilityMonitor

- (NFCCModuleAvailabilityMonitor)initWithDelegate:(id)delegate readerConnection:(id)connection
{
  delegateCopy = delegate;
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = NFCCModuleAvailabilityMonitor;
  v8 = [(NFCCModuleAvailabilityMonitor *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_readerConnection, connection);
    v9->_available = 0;
    v10 = v9;
  }

  return v9;
}

- (void)controlCenterWillAppear
{
  if (!self->_controlCenterVisible)
  {
    self->_controlCenterVisible = 1;
    [(NFCCModuleAvailabilityMonitor *)self _checkHardwareSupport];

    [(NFCCModuleAvailabilityMonitor *)self _startMonitoringCamera];
  }
}

- (void)controlCenterDidDisappear
{
  self->_controlCenterVisible = 0;
  [(NFCCModuleAvailabilityMonitor *)self _stopCheckingHardwareSupport];

  [(NFCCModuleAvailabilityMonitor *)self _stopMonitoringCamera];
}

- (void)_updateAvailable
{
  _isModuleAvailable = [(NFCCModuleAvailabilityMonitor *)self _isModuleAvailable];
  if (self->_available == !_isModuleAvailable)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained moduleAvailabilityDidChange:_isModuleAvailable];
  }

  self->_available = _isModuleAvailable;
}

- (void)_checkHardwareSupport
{
  [(NFCCModuleAvailabilityMonitor *)self _stopCheckingHardwareSupport];
  objc_initWeak(&location, self);
  readerConnection = self->_readerConnection;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_3914;
  v4[3] = &unk_C4B0;
  objc_copyWeak(&v5, &location);
  [(BCSNFCReaderConnection *)readerConnection checkHardwareSupportStateWithCompletionHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_stopCheckingHardwareSupport
{
  [(NSTimer *)self->_hardwareSupportRetryTimer invalidate];
  hardwareSupportRetryTimer = self->_hardwareSupportRetryTimer;
  self->_hardwareSupportRetryTimer = 0;
}

- (void)_startMonitoringCamera
{
  [(NFCCModuleAvailabilityMonitor *)self _stopMonitoringCamera];
  v3 = objc_alloc_init(NFCCCameraMonitor);
  cameraMonitor = self->_cameraMonitor;
  self->_cameraMonitor = v3;

  v5 = self->_cameraMonitor;

  [(NFCCCameraMonitor *)v5 setDelegate:self];
}

- (void)_stopMonitoringCamera
{
  [(NFCCCameraMonitor *)self->_cameraMonitor setDelegate:0];
  cameraMonitor = self->_cameraMonitor;
  self->_cameraMonitor = 0;
}

@end
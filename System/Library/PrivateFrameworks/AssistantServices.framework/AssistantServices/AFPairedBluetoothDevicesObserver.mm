@interface AFPairedBluetoothDevicesObserver
+ (id)sharedObserver;
- (AFPairedBluetoothDevicesObserver)init;
- (id)pairedBluetoothDevices;
- (void)updatePairedDevices:(id)devices;
@end

@implementation AFPairedBluetoothDevicesObserver

- (id)pairedBluetoothDevices
{
  os_unfair_lock_lock(&self->_pairedDevicesLock);
  v3 = self->_pairedDevices;
  os_unfair_lock_unlock(&self->_pairedDevicesLock);

  return v3;
}

- (void)updatePairedDevices:(id)devices
{
  sharedInstance = [getBluetoothManagerClass() sharedInstance];
  pairedDevices = [sharedInstance pairedDevices];

  os_unfair_lock_lock(&self->_pairedDevicesLock);
  pairedDevices = self->_pairedDevices;
  self->_pairedDevices = pairedDevices;

  os_unfair_lock_unlock(&self->_pairedDevicesLock);
}

- (AFPairedBluetoothDevicesObserver)init
{
  v7.receiver = self;
  v7.super_class = AFPairedBluetoothDevicesObserver;
  v2 = [(AFPairedBluetoothDevicesObserver *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_pairedDevicesLock._os_unfair_lock_opaque = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = getBluetoothPairedStatusChangedNotification_45900();
    [defaultCenter addObserver:v3 selector:sel_updatePairedDevices_ name:v5 object:0];

    [(AFPairedBluetoothDevicesObserver *)v3 updatePairedDevices:0];
  }

  return v3;
}

+ (id)sharedObserver
{
  if (sharedObserver_onceToken_45903 != -1)
  {
    dispatch_once(&sharedObserver_onceToken_45903, &__block_literal_global_583);
  }

  v3 = sharedObserver_sBTObserver;

  return v3;
}

void __50__AFPairedBluetoothDevicesObserver_sharedObserver__block_invoke()
{
  v0 = objc_alloc_init(AFPairedBluetoothDevicesObserver);
  v1 = sharedObserver_sBTObserver;
  sharedObserver_sBTObserver = v0;
}

@end
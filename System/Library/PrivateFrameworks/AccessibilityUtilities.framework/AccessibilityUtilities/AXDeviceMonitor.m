@interface AXDeviceMonitor
+ (id)bluetoothKeyboardDevices;
- (AXDeviceMonitor)initWithMatchingDictionary:(id)a3 callbackRunLoop:(id)a4;
- (AXDeviceMonitor)initWithMatchingMultiple:(id)a3 callbackRunLoop:(id)a4;
- (AXDeviceMonitorDelegate)delegate;
- (id)_existingDevicesForDevice:(__IOHIDDevice *)a3;
- (id)copyDevices;
- (void)_commonInitWithRunLoop:(id)a3;
- (void)begin;
- (void)dealloc;
- (void)didAddDevice:(__IOHIDDevice *)a3;
- (void)didRemoveDevice:(__IOHIDDevice *)a3;
- (void)informDelegate;
- (void)invalidate;
@end

@implementation AXDeviceMonitor

- (AXDeviceMonitor)initWithMatchingDictionary:(id)a3 callbackRunLoop:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AXDeviceMonitor;
  v8 = [(AXDeviceMonitor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AXDeviceMonitor *)v8 _commonInitWithRunLoop:v7];
    IOHIDManagerSetDeviceMatching(v9->_hidManager, v6);
  }

  return v9;
}

- (AXDeviceMonitor)initWithMatchingMultiple:(id)a3 callbackRunLoop:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = AXDeviceMonitor;
  v8 = [(AXDeviceMonitor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AXDeviceMonitor *)v8 _commonInitWithRunLoop:v7];
    IOHIDManagerSetDeviceMatchingMultiple(v9->_hidManager, v6);
  }

  return v9;
}

- (void)_commonInitWithRunLoop:(id)a3
{
  objc_storeStrong(&self->_targetRunLoop, a3);
  v5 = a3;
  self->_hidManager = IOHIDManagerCreate(*MEMORY[0x1E695E480], 0);
  v6 = [MEMORY[0x1E695DFA8] set];
  devices = self->_devices;
  self->_devices = v6;

  self->_devicesLock._os_unfair_lock_opaque = 0;
  IOHIDManagerRegisterDeviceMatchingCallback(self->_hidManager, deviceMatchingCallback, self);
  IOHIDManagerRegisterDeviceRemovalCallback(self->_hidManager, deviceRemovalCallback, self);

  self->_state = 0;
}

- (void)dealloc
{
  if (self->_state == 1)
  {
    _AXAssert();
  }

  CFRelease(self->_hidManager);
  v3.receiver = self;
  v3.super_class = AXDeviceMonitor;
  [(AXDeviceMonitor *)&v3 dealloc];
}

- (id)copyDevices
{
  if (self->_state != 1)
  {
    _AXAssert();
  }

  os_unfair_lock_lock(&self->_devicesLock);
  v3 = [(NSMutableSet *)self->_devices copy];
  os_unfair_lock_unlock(&self->_devicesLock);
  return v3;
}

- (void)begin
{
  if (self->_state)
  {
    state = self->_state;
    _AXAssert();
  }

  self->_state = 1;
  hidManager = self->_hidManager;
  v4 = [(NSRunLoop *)self->_targetRunLoop getCFRunLoop];
  IOHIDManagerScheduleWithRunLoop(hidManager, v4, *MEMORY[0x1E695E8E0]);
  v5 = self->_hidManager;

  IOHIDManagerOpen(v5, 0);
}

- (void)invalidate
{
  if (self->_state != 1)
  {
    state = self->_state;
    _AXAssert();
  }

  self->_state = 2;
  hidManager = self->_hidManager;
  v4 = [(NSRunLoop *)self->_targetRunLoop getCFRunLoop];
  IOHIDManagerUnscheduleFromRunLoop(hidManager, v4, *MEMORY[0x1E695E8E0]);
  v5 = self->_hidManager;

  IOHIDManagerClose(v5, 0);
}

- (void)didAddDevice:(__IOHIDDevice *)a3
{
  v5 = [(AXDeviceMonitor *)self _existingDevicesForDevice:?];
  if (![v5 count])
  {
    os_unfair_lock_lock(&self->_devicesLock);
    [(NSMutableSet *)self->_devices addObject:a3];
    os_unfair_lock_unlock(&self->_devicesLock);
    [(AXDeviceMonitor *)self informDelegate];
  }
}

- (void)didRemoveDevice:(__IOHIDDevice *)a3
{
  v4 = [(AXDeviceMonitor *)self _existingDevicesForDevice:a3];
  if ([v4 count])
  {
    os_unfair_lock_lock(&self->_devicesLock);
    [(NSMutableSet *)self->_devices minusSet:v4];
    os_unfair_lock_unlock(&self->_devicesLock);
    [(AXDeviceMonitor *)self informDelegate];
  }
}

- (id)_existingDevicesForDevice:(__IOHIDDevice *)a3
{
  v5 = IOHIDDeviceGetProperty(a3, @"UniqueID");
  os_unfair_lock_lock(&self->_devicesLock);
  devices = self->_devices;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__AXDeviceMonitor__existingDevicesForDevice___block_invoke;
  v10[3] = &unk_1E71EB340;
  v11 = v5;
  v12 = a3;
  v7 = v5;
  v8 = [(NSMutableSet *)devices objectsPassingTest:v10];
  os_unfair_lock_unlock(&self->_devicesLock);

  return v8;
}

BOOL __45__AXDeviceMonitor__existingDevicesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IOHIDDeviceGetProperty(v3, @"UniqueID");
  v5 = ([*(a1 + 32) isEqual:v4] & 1) != 0 || *(a1 + 40) == v3;

  return v5;
}

- (void)informDelegate
{
  v3 = [(AXDeviceMonitor *)self delegate];
  [v3 deviceMonitorDidDetectDeviceEvent:self];
}

+ (id)bluetoothKeyboardDevices
{
  v2 = IOHIDManagerCreate(*MEMORY[0x1E695E480], 0);
  IOHIDManagerSetDeviceMatching(v2, &unk_1EFE97448);
  IOHIDManagerOpen(v2, 0);
  v3 = IOHIDManagerCopyDevices(v2);
  IOHIDManagerClose(v2, 0);
  CFRelease(v2);

  return v3;
}

- (AXDeviceMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
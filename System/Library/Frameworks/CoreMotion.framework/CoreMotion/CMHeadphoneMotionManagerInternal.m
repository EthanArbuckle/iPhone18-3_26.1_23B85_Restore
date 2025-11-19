@interface CMHeadphoneMotionManagerInternal
- (CMHeadphoneMotionManagerInternal)init;
- (void)connect;
- (void)connectStatus;
- (void)dealloc;
- (void)disconnect;
- (void)disconnectStatus;
@end

@implementation CMHeadphoneMotionManagerInternal

- (CMHeadphoneMotionManagerInternal)init
{
  v5.receiver = self;
  v5.super_class = CMHeadphoneMotionManagerInternal;
  v2 = [(CMHeadphoneMotionManagerInternal *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v2->_dispatchQueue = dispatch_queue_create("com.apple.CoreMotion.CMHeadphoneMotionManager", v3);
    v2->_connectionClient = 0;
    *&v2->_deviceMotionActive = 0;
    v2->_deviceConnected = 0;
    *&v2->_statusActive = 0;
    v2->_deviceConnectionTimestamp = 0.0;
    v2->_firstValidDeviceMotionTimestamp = 0.0;
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->_dispatchQueue);
  v3.receiver = self;
  v3.super_class = CMHeadphoneMotionManagerInternal;
  [(CMHeadphoneMotionManagerInternal *)&v3 dealloc];
}

- (void)connect
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_connectionClient)
  {
    v3 = sub_19B60A1A4([RMConnectionClient alloc], self->_dispatchQueue, @"com.apple.relatived.public", &unk_1F0E2A1C0);
    self->_connectionClient = v3;

    sub_19B60A904(v3);
  }
}

- (void)disconnect
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  sub_19B60AD88(self->_connectionClient);

  self->_connectionClient = 0;
}

- (void)connectStatus
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_statusConnectionClient)
  {
    v3 = sub_19B60A1A4([RMConnectionClient alloc], self->_dispatchQueue, @"com.apple.relatived.status", &unk_1F0E287C0);
    self->_statusConnectionClient = v3;

    sub_19B60A904(v3);
  }
}

- (void)disconnectStatus
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  sub_19B60AD88(self->_statusConnectionClient);

  self->_statusConnectionClient = 0;
}

@end
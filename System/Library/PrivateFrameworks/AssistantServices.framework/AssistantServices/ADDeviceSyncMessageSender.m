@interface ADDeviceSyncMessageSender
- (ADDeviceSyncMessageSender)initWithDeviceIdentifier:(id)a3 messagingService:(id)a4;
- (void)sendMessage:(id)a3 completion:(id)a4;
@end

@implementation ADDeviceSyncMessageSender

- (void)sendMessage:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_messagingService);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained sendMessage:v10 toDeviceWithIdentifier:self->_deviceIdentifier completion:v6];
  }

  else if (v6)
  {
    v9 = [AFError errorWithCode:2403 description:@"Messaging service is nil." underlyingError:0];
    v6[2](v6, 0, v9);
  }
}

- (ADDeviceSyncMessageSender)initWithDeviceIdentifier:(id)a3 messagingService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ADDeviceSyncMessageSender;
  v8 = [(ADDeviceSyncMessageSender *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    deviceIdentifier = v8->_deviceIdentifier;
    v8->_deviceIdentifier = v9;

    objc_storeWeak(&v8->_messagingService, v7);
  }

  return v8;
}

@end
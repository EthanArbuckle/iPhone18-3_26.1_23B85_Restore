@interface ADDeviceSyncMessageSender
- (ADDeviceSyncMessageSender)initWithDeviceIdentifier:(id)identifier messagingService:(id)service;
- (void)sendMessage:(id)message completion:(id)completion;
@end

@implementation ADDeviceSyncMessageSender

- (void)sendMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_messagingService);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained sendMessage:messageCopy toDeviceWithIdentifier:self->_deviceIdentifier completion:completionCopy];
  }

  else if (completionCopy)
  {
    v9 = [AFError errorWithCode:2403 description:@"Messaging service is nil." underlyingError:0];
    completionCopy[2](completionCopy, 0, v9);
  }
}

- (ADDeviceSyncMessageSender)initWithDeviceIdentifier:(id)identifier messagingService:(id)service
{
  identifierCopy = identifier;
  serviceCopy = service;
  v12.receiver = self;
  v12.super_class = ADDeviceSyncMessageSender;
  v8 = [(ADDeviceSyncMessageSender *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    deviceIdentifier = v8->_deviceIdentifier;
    v8->_deviceIdentifier = v9;

    objc_storeWeak(&v8->_messagingService, serviceCopy);
  }

  return v8;
}

@end
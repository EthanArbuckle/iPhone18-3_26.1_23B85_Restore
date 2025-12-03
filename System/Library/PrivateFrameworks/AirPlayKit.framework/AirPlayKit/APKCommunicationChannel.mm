@interface APKCommunicationChannel
- (APKCommunicationChannel)initWithCommunicationChannel:(id)channel;
- (void)close;
- (void)communicationChannel:(id)channel didReceiveData:(id)data;
- (void)communicationChannelDidClose:(id)close;
- (void)sendData:(id)data completionHandler:(id)handler;
@end

@implementation APKCommunicationChannel

- (APKCommunicationChannel)initWithCommunicationChannel:(id)channel
{
  channelCopy = channel;
  v6 = [(APKCommunicationChannel *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_channel, channel);
    [(AVOutputDeviceCommunicationChannel *)v7->_channel setDelegate:v7];
  }

  return v7;
}

- (void)close
{
  channel = [(APKCommunicationChannel *)self channel];
  [channel close];
}

- (void)sendData:(id)data completionHandler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  channel = [(APKCommunicationChannel *)self channel];
  [channel sendData:dataCopy completionHandler:handlerCopy];
}

- (void)communicationChannel:(id)channel didReceiveData:(id)data
{
  dataCopy = data;
  onData = [(APKCommunicationChannel *)self onData];

  if (onData)
  {
    onData2 = [(APKCommunicationChannel *)self onData];
    (onData2)[2](onData2, dataCopy);
  }
}

- (void)communicationChannelDidClose:(id)close
{
  onClose = [(APKCommunicationChannel *)self onClose];

  if (onClose)
  {
    onClose2 = [(APKCommunicationChannel *)self onClose];
    onClose2[2]();
  }
}

@end
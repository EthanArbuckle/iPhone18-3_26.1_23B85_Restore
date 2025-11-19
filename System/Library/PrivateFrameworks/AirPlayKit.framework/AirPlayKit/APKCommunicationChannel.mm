@interface APKCommunicationChannel
- (APKCommunicationChannel)initWithCommunicationChannel:(id)a3;
- (void)close;
- (void)communicationChannel:(id)a3 didReceiveData:(id)a4;
- (void)communicationChannelDidClose:(id)a3;
- (void)sendData:(id)a3 completionHandler:(id)a4;
@end

@implementation APKCommunicationChannel

- (APKCommunicationChannel)initWithCommunicationChannel:(id)a3
{
  v5 = a3;
  v6 = [(APKCommunicationChannel *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_channel, a3);
    [(AVOutputDeviceCommunicationChannel *)v7->_channel setDelegate:v7];
  }

  return v7;
}

- (void)close
{
  v2 = [(APKCommunicationChannel *)self channel];
  [v2 close];
}

- (void)sendData:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(APKCommunicationChannel *)self channel];
  [v8 sendData:v7 completionHandler:v6];
}

- (void)communicationChannel:(id)a3 didReceiveData:(id)a4
{
  v7 = a4;
  v5 = [(APKCommunicationChannel *)self onData];

  if (v5)
  {
    v6 = [(APKCommunicationChannel *)self onData];
    (v6)[2](v6, v7);
  }
}

- (void)communicationChannelDidClose:(id)a3
{
  v4 = [(APKCommunicationChannel *)self onClose];

  if (v4)
  {
    v5 = [(APKCommunicationChannel *)self onClose];
    v5[2]();
  }
}

@end
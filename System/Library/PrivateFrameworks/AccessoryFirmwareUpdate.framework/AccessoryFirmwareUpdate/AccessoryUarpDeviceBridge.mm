@interface AccessoryUarpDeviceBridge
- (void)deviceSendUarpMessageToTransport:(id)transport uarpMessage:(id)message;
@end

@implementation AccessoryUarpDeviceBridge

- (void)deviceSendUarpMessageToTransport:(id)transport uarpMessage:(id)message
{
  transportCopy = transport;
  messageCopy = message;

  v7 = sub_22D05D96C();
  v9 = v8;

  sub_22D0512BC(transportCopy, v7, v9);
  sub_22D04E990(v7, v9);
}

@end
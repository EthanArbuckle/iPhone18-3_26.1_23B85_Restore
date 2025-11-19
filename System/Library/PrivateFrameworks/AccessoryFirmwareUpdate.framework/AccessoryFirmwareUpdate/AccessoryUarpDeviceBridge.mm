@interface AccessoryUarpDeviceBridge
- (void)deviceSendUarpMessageToTransport:(id)a3 uarpMessage:(id)a4;
@end

@implementation AccessoryUarpDeviceBridge

- (void)deviceSendUarpMessageToTransport:(id)a3 uarpMessage:(id)a4
{
  v5 = a3;
  v6 = a4;

  v7 = sub_22D05D96C();
  v9 = v8;

  sub_22D0512BC(v5, v7, v9);
  sub_22D04E990(v7, v9);
}

@end
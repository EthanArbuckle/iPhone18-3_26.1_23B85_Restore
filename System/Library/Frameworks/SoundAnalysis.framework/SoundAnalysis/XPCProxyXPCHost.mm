@interface XPCProxyXPCHost
- (void)xpcUnsafeSendMessageWithData:(id)data proxy:(id)proxy completionHandler:(id)handler;
@end

@implementation XPCProxyXPCHost

- (void)xpcUnsafeSendMessageWithData:(id)data proxy:(id)proxy completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  swift_unknownObjectRetain();
  selfCopy = self;
  if (data)
  {
    dataCopy = data;
    data = sub_1C9A91618();
    v11 = v10;
  }

  else
  {
    v11 = 0xF000000000000000;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  sub_1C9828C34(data, v11, proxy, sub_1C982F5D0, v12);

  sub_1C97AA780(data, v11);
  swift_unknownObjectRelease();
}

@end
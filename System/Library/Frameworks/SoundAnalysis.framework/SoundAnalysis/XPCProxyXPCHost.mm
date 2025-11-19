@interface XPCProxyXPCHost
- (void)xpcUnsafeSendMessageWithData:(id)a3 proxy:(id)a4 completionHandler:(id)a5;
@end

@implementation XPCProxyXPCHost

- (void)xpcUnsafeSendMessageWithData:(id)a3 proxy:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  swift_unknownObjectRetain();
  v8 = self;
  if (a3)
  {
    v9 = a3;
    a3 = sub_1C9A91618();
    v11 = v10;
  }

  else
  {
    v11 = 0xF000000000000000;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  sub_1C9828C34(a3, v11, a4, sub_1C982F5D0, v12);

  sub_1C97AA780(a3, v11);
  swift_unknownObjectRelease();
}

@end
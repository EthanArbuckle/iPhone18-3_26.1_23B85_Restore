@interface _BKSTouchDeliveryPolicyConcreteServerInterface
- (_BKSTouchDeliveryPolicyConcreteServerInterface)init;
@end

@implementation _BKSTouchDeliveryPolicyConcreteServerInterface

- (_BKSTouchDeliveryPolicyConcreteServerInterface)init
{
  v8.receiver = self;
  v8.super_class = _BKSTouchDeliveryPolicyConcreteServerInterface;
  v2 = [(_BKSTouchDeliveryPolicyConcreteServerInterface *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.backboard.TouchDeliveryPolicyServer" options:4096];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = v2->_connection;
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF56EE78];
    [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];

    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

@end
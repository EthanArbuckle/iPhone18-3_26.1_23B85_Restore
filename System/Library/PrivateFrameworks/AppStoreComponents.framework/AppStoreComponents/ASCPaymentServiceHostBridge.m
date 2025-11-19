@interface ASCPaymentServiceHostBridge
- (ASCPaymentServiceHostBridge)init;
@end

@implementation ASCPaymentServiceHostBridge

- (ASCPaymentServiceHostBridge)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ASCPaymentServiceHostBridge *)&v3 init];
}

@end
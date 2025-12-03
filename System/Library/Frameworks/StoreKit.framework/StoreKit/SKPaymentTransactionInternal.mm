@interface SKPaymentTransactionInternal
- (SKPaymentTransactionInternal)init;
@end

@implementation SKPaymentTransactionInternal

- (SKPaymentTransactionInternal)init
{
  v8.receiver = self;
  v8.super_class = SKPaymentTransactionInternal;
  v2 = [(SKPaymentTransactionInternal *)&v8 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    uuid = v2->_uuid;
    v2->_uuid = uUIDString;

    downloads = v2->_downloads;
    v2->_downloads = MEMORY[0x1E695E0F0];
  }

  return v2;
}

@end
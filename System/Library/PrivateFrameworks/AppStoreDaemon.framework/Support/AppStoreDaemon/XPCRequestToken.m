@interface XPCRequestToken
- (void)dealloc;
@end

@implementation XPCRequestToken

- (void)dealloc
{
  sub_1003205AC(TransactionStore, self->_transactionID);
  v3.receiver = self;
  v3.super_class = XPCRequestToken;
  [(XPCRequestToken *)&v3 dealloc];
}

@end
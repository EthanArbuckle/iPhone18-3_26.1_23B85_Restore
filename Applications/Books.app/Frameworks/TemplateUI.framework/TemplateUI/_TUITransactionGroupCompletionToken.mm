@interface _TUITransactionGroupCompletionToken
- (_TUITransactionGroupCompletionToken)initWithGroup:(id)a3;
- (void)dealloc;
@end

@implementation _TUITransactionGroupCompletionToken

- (_TUITransactionGroupCompletionToken)initWithGroup:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _TUITransactionGroupCompletionToken;
  v6 = [(_TUITransactionGroupCompletionToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_group, a3);
    dispatch_group_enter(v7->_group);
  }

  return v7;
}

- (void)dealloc
{
  dispatch_group_leave(self->_group);
  v3.receiver = self;
  v3.super_class = _TUITransactionGroupCompletionToken;
  [(_TUITransactionGroupCompletionToken *)&v3 dealloc];
}

@end
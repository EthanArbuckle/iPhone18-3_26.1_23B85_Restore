@interface SubscriberResponseTransactionElement
+ (id)responseWithInfo:(id)info;
- (id)initResponseWithInfo:(id)info;
@end

@implementation SubscriberResponseTransactionElement

- (id)initResponseWithInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = SubscriberResponseTransactionElement;
  v3 = [(SubscriberTransactionElement *)&v6 initWithInfo:info];
  v4 = v3;
  if (v3)
  {
    [(SubscriberTransactionElement *)v3 setType:1];
  }

  return v4;
}

+ (id)responseWithInfo:(id)info
{
  v3 = [[SubscriberResponseTransactionElement alloc] initResponseWithInfo:info];

  return v3;
}

@end
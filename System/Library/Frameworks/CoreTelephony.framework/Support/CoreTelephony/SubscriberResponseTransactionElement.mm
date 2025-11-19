@interface SubscriberResponseTransactionElement
+ (id)responseWithInfo:(id)a3;
- (id)initResponseWithInfo:(id)a3;
@end

@implementation SubscriberResponseTransactionElement

- (id)initResponseWithInfo:(id)a3
{
  v6.receiver = self;
  v6.super_class = SubscriberResponseTransactionElement;
  v3 = [(SubscriberTransactionElement *)&v6 initWithInfo:a3];
  v4 = v3;
  if (v3)
  {
    [(SubscriberTransactionElement *)v3 setType:1];
  }

  return v4;
}

+ (id)responseWithInfo:(id)a3
{
  v3 = [[SubscriberResponseTransactionElement alloc] initResponseWithInfo:a3];

  return v3;
}

@end
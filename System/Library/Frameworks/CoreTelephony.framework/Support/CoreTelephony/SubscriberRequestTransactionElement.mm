@interface SubscriberRequestTransactionElement
+ (id)requestWithAction:(id)a3 andAnnotation:(id)a4;
- (id)initRequestWithAction:(id)a3 andAnnotation:(id)a4;
@end

@implementation SubscriberRequestTransactionElement

- (id)initRequestWithAction:(id)a3 andAnnotation:(id)a4
{
  v7.receiver = self;
  v7.super_class = SubscriberRequestTransactionElement;
  v4 = [(SubscriberTransactionElement *)&v7 initWithAction:a3 andAnnotation:a4];
  v5 = v4;
  if (v4)
  {
    [(SubscriberTransactionElement *)v4 setType:0];
  }

  return v5;
}

+ (id)requestWithAction:(id)a3 andAnnotation:(id)a4
{
  v4 = [[SubscriberRequestTransactionElement alloc] initRequestWithAction:a3 andAnnotation:a4];

  return v4;
}

@end
@interface SubscriberRequestTransactionElement
+ (id)requestWithAction:(id)action andAnnotation:(id)annotation;
- (id)initRequestWithAction:(id)action andAnnotation:(id)annotation;
@end

@implementation SubscriberRequestTransactionElement

- (id)initRequestWithAction:(id)action andAnnotation:(id)annotation
{
  v7.receiver = self;
  v7.super_class = SubscriberRequestTransactionElement;
  v4 = [(SubscriberTransactionElement *)&v7 initWithAction:action andAnnotation:annotation];
  v5 = v4;
  if (v4)
  {
    [(SubscriberTransactionElement *)v4 setType:0];
  }

  return v5;
}

+ (id)requestWithAction:(id)action andAnnotation:(id)annotation
{
  v4 = [[SubscriberRequestTransactionElement alloc] initRequestWithAction:action andAnnotation:annotation];

  return v4;
}

@end
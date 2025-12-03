@interface VSJSAppleSubscription
+ (id)appleSubscriptionsFromJSAppleSubscriptions:(id)subscriptions;
+ (id)jsAppleSubscriptionsFromAppleSubscriptions:(id)subscriptions;
- (VSJSAppleSubscription)init;
- (VSJSAppleSubscription)initWithAppleSubscription:(id)subscription;
- (id)appleSubscription;
@end

@implementation VSJSAppleSubscription

- (VSJSAppleSubscription)init
{
  v3.receiver = self;
  v3.super_class = VSJSAppleSubscription;
  return [(VSJSObject *)&v3 init];
}

- (VSJSAppleSubscription)initWithAppleSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v13.receiver = self;
  v13.super_class = VSJSAppleSubscription;
  v5 = [(VSJSObject *)&v13 init];
  if (v5)
  {
    customerID = [subscriptionCopy customerID];
    v7 = [customerID copy];
    customerID = v5->_customerID;
    v5->_customerID = v7;

    productCodes = [subscriptionCopy productCodes];
    v10 = [productCodes copy];
    productCodes = v5->_productCodes;
    v5->_productCodes = v10;
  }

  return v5;
}

- (id)appleSubscription
{
  v3 = [VSAppleSubscription alloc];
  customerID = [(VSJSAppleSubscription *)self customerID];
  productCodes = [(VSJSAppleSubscription *)self productCodes];
  v6 = [(VSAppleSubscription *)v3 initWithCustomerID:customerID productCodes:productCodes];

  return v6;
}

+ (id)appleSubscriptionsFromJSAppleSubscriptions:(id)subscriptions
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        appleSubscription = [*(*(&v10 + 1) + 8 * i) appleSubscription];
        if (appleSubscription)
        {
          [v3 addObject:appleSubscription];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

+ (id)jsAppleSubscriptionsFromAppleSubscriptions:(id)subscriptions
{
  v19 = *MEMORY[0x277D85DE8];
  subscriptionsCopy = subscriptions;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = subscriptionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = objc_alloc(objc_opt_class());
        v12 = [v11 initWithAppleSubscription:{v10, v14}];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end
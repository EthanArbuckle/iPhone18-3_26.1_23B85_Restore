@interface VSApplicationAppleSubscription
+ (id)appleSubscriptionsFromApplicationAppleSubscriptions:(id)a3;
+ (id)applicationAppleSubscriptionsFromAppleSubscriptions:(id)a3;
- (VSApplicationAppleSubscription)init;
- (VSApplicationAppleSubscription)initWithAppleSubscription:(id)a3;
- (id)appleSubscription;
@end

@implementation VSApplicationAppleSubscription

- (VSApplicationAppleSubscription)init
{
  v3.receiver = self;
  v3.super_class = VSApplicationAppleSubscription;
  return [(VSApplicationAppleSubscription *)&v3 init];
}

- (VSApplicationAppleSubscription)initWithAppleSubscription:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VSApplicationAppleSubscription;
  v5 = [(VSApplicationAppleSubscription *)&v13 init];
  if (v5)
  {
    v6 = [v4 customerID];
    v7 = [v6 copy];
    customerID = v5->_customerID;
    v5->_customerID = v7;

    v9 = [v4 productCodes];
    v10 = [v9 copy];
    productCodes = v5->_productCodes;
    v5->_productCodes = v10;
  }

  return v5;
}

- (id)appleSubscription
{
  v3 = [VSAppleSubscription alloc];
  v4 = [(VSApplicationAppleSubscription *)self customerID];

  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self customerID] parameter must not be nil."];
  }

  v5 = [(VSApplicationAppleSubscription *)self customerID];
  v6 = [v5 copy];
  v7 = [(VSApplicationAppleSubscription *)self productCodes];

  if (!v7)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self productCodes] parameter must not be nil."];
  }

  v8 = [(VSApplicationAppleSubscription *)self productCodes];
  v9 = [v8 copy];
  v10 = [(VSAppleSubscription *)v3 initWithCustomerID:v6 productCodes:v9];

  return v10;
}

+ (id)appleSubscriptionsFromApplicationAppleSubscriptions:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) appleSubscription];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)applicationAppleSubscriptionsFromAppleSubscriptions:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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
@interface VSSubscriptionFetchOptionDescription
- (VSSubscriptionFetchOptionDescription)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VSSubscriptionFetchOptionDescription

- (VSSubscriptionFetchOptionDescription)init
{
  v10.receiver = self;
  v10.super_class = VSSubscriptionFetchOptionDescription;
  v2 = [(VSSubscriptionFetchOptionDescription *)&v10 init];
  v3 = v2;
  if (v2)
  {
    key = v2->_key;
    v2->_key = &stru_284DD5B48;

    v5 = objc_opt_class();
    allowedClass = v3->_allowedClass;
    v3->_allowedClass = v5;

    v7 = [MEMORY[0x277CCAC30] predicateWithValue:1];
    allowedValuePredicate = v3->_allowedValuePredicate;
    v3->_allowedValuePredicate = v7;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(VSSubscriptionFetchOptionDescription);
  v5 = [(VSSubscriptionFetchOptionDescription *)self key];
  [(VSSubscriptionFetchOptionDescription *)v4 setKey:v5];

  v6 = [(VSSubscriptionFetchOptionDescription *)self defaultValue];
  [(VSSubscriptionFetchOptionDescription *)v4 setDefaultValue:v6];

  [(VSSubscriptionFetchOptionDescription *)v4 setContainer:[(VSSubscriptionFetchOptionDescription *)self isContainer]];
  [(VSSubscriptionFetchOptionDescription *)v4 setMinCount:[(VSSubscriptionFetchOptionDescription *)self minCount]];
  [(VSSubscriptionFetchOptionDescription *)v4 setAllowedClass:[(VSSubscriptionFetchOptionDescription *)self allowedClass]];
  v7 = [(VSSubscriptionFetchOptionDescription *)self allowedValuePredicate];
  [(VSSubscriptionFetchOptionDescription *)v4 setAllowedValuePredicate:v7];

  return v4;
}

@end
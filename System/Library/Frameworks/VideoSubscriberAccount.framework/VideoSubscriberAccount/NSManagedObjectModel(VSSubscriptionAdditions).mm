@interface NSManagedObjectModel(VSSubscriptionAdditions)
+ (id)vs_subscriptionModelForVersion:()VSSubscriptionAdditions;
@end

@implementation NSManagedObjectModel(VSSubscriptionAdditions)

+ (id)vs_subscriptionModelForVersion:()VSSubscriptionAdditions
{
  v4 = objc_alloc_init(MEMORY[0x277CBE450]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [MEMORY[0x277CBE408] vs_subscriptionEntityForVersion:a3];
  [v5 addObject:v6];
  [v4 setEntities:v5];

  return v4;
}

@end
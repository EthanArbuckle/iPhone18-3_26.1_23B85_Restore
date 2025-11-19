@interface ASPredicateContainer
+ (id)predicateMatchingAllPredicates:(id)a3;
+ (id)predicateMatchingAnyPredicates:(id)a3;
- (ASPredicateContainer)initWithHealthKitPredicate:(id)a3 healthDaemonPredicate:(id)a4;
@end

@implementation ASPredicateContainer

- (ASPredicateContainer)initWithHealthKitPredicate:(id)a3 healthDaemonPredicate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ASPredicateContainer;
  v9 = [(ASPredicateContainer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_healthKitPredicate, a3);
    objc_storeStrong(&v10->_healthDaemonPredicate, a4);
  }

  return v10;
}

+ (id)predicateMatchingAllPredicates:(id)a3
{
  v3 = a3;
  v4 = [v3 hk_map:&__block_literal_global_17];
  v5 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v4];
  v6 = [v3 hk_map:&__block_literal_global_298];

  v7 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v6];
  v8 = [[ASPredicateContainer alloc] initWithHealthKitPredicate:v5 healthDaemonPredicate:v7];

  return v8;
}

+ (id)predicateMatchingAnyPredicates:(id)a3
{
  v3 = a3;
  v4 = [v3 hk_map:&__block_literal_global_302];
  v5 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v4];
  v6 = [v3 hk_map:&__block_literal_global_304];

  v7 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v6];
  v8 = [[ASPredicateContainer alloc] initWithHealthKitPredicate:v5 healthDaemonPredicate:v7];

  return v8;
}

@end
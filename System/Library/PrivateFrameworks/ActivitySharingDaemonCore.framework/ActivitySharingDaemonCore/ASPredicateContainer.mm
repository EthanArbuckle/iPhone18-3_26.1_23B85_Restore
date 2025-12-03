@interface ASPredicateContainer
+ (id)predicateMatchingAllPredicates:(id)predicates;
+ (id)predicateMatchingAnyPredicates:(id)predicates;
- (ASPredicateContainer)initWithHealthKitPredicate:(id)predicate healthDaemonPredicate:(id)daemonPredicate;
@end

@implementation ASPredicateContainer

- (ASPredicateContainer)initWithHealthKitPredicate:(id)predicate healthDaemonPredicate:(id)daemonPredicate
{
  predicateCopy = predicate;
  daemonPredicateCopy = daemonPredicate;
  v12.receiver = self;
  v12.super_class = ASPredicateContainer;
  v9 = [(ASPredicateContainer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_healthKitPredicate, predicate);
    objc_storeStrong(&v10->_healthDaemonPredicate, daemonPredicate);
  }

  return v10;
}

+ (id)predicateMatchingAllPredicates:(id)predicates
{
  predicatesCopy = predicates;
  v4 = [predicatesCopy hk_map:&__block_literal_global_17];
  v5 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v4];
  v6 = [predicatesCopy hk_map:&__block_literal_global_298];

  v7 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v6];
  v8 = [[ASPredicateContainer alloc] initWithHealthKitPredicate:v5 healthDaemonPredicate:v7];

  return v8;
}

+ (id)predicateMatchingAnyPredicates:(id)predicates
{
  predicatesCopy = predicates;
  v4 = [predicatesCopy hk_map:&__block_literal_global_302];
  v5 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v4];
  v6 = [predicatesCopy hk_map:&__block_literal_global_304];

  v7 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v6];
  v8 = [[ASPredicateContainer alloc] initWithHealthKitPredicate:v5 healthDaemonPredicate:v7];

  return v8;
}

@end
@interface AudioAnalyticsPredicateWrapper
+ (BOOL)evaluatePredicate:(id)predicate with:(id)with;
+ (id)buildPredicate:(id)predicate;
+ (id)logger;
@end

@implementation AudioAnalyticsPredicateWrapper

+ (id)logger
{
  if (+[AudioAnalyticsPredicateWrapper logger]::onceToken != -1)
  {
    +[AudioAnalyticsPredicateWrapper logger];
  }

  v3 = +[AudioAnalyticsPredicateWrapper logger]::_logger;

  return v3;
}

uint64_t __40__AudioAnalyticsPredicateWrapper_logger__block_invoke()
{
  +[AudioAnalyticsPredicateWrapper logger]::_logger = os_log_create("com.apple.coreaudio", "caro");

  return MEMORY[0x2821F96F8]();
}

+ (id)buildPredicate:(id)predicate
{
  v7 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:predicateCopy argumentArray:0];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (BOOL)evaluatePredicate:(id)predicate with:(id)with
{
  v10 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  withCopy = with;
  v7 = [predicateCopy evaluateWithObject:withCopy];

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

@end
@interface AudioAnalyticsPredicateWrapper
+ (BOOL)evaluatePredicate:(id)a3 with:(id)a4;
+ (id)buildPredicate:(id)a3;
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

+ (id)buildPredicate:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:v3 argumentArray:0];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (BOOL)evaluatePredicate:(id)a3 with:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 evaluateWithObject:v6];

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

@end
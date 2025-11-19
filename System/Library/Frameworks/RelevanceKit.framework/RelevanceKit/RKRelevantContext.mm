@interface RKRelevantContext
+ (void)setClassNamesForUnarchiver;
- (RKRelevantContext)init;
- (id)_init;
@end

@implementation RKRelevantContext

- (RKRelevantContext)init
{
  v3 = [(RKRelevantContext *)self isMemberOfClass:objc_opt_class()];
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  if (v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"RKRelevantContext cannot be initialized directly with -init, initialize a subclass instead."}];
  }

  else
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v4 raise:v5 format:{@"%@ cannot be initialized directly with -init, use the designated initializer instead.", v7}];
  }

  return [(RKRelevantContext *)self _init];
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = RKRelevantContext;
  return [(RKRelevantContext *)&v3 init];
}

+ (void)setClassNamesForUnarchiver
{
  [MEMORY[0x277CCAAC8] setClass:objc_opt_class() forClassName:@"LNRelevantContext"];
  [MEMORY[0x277CCAAC8] setClass:objc_opt_class() forClassName:@"LNDateRelevantContext"];
  [MEMORY[0x277CCAAC8] setClass:objc_opt_class() forClassName:@"LNLocationRelevantContext"];
  [MEMORY[0x277CCAAC8] setClass:objc_opt_class() forClassName:@"LNLocationCategoryRelevantContext"];
  [MEMORY[0x277CCAAC8] setClass:objc_opt_class() forClassName:@"LNDailyRoutineRelevantContext"];
  [MEMORY[0x277CCAAC8] setClass:objc_opt_class() forClassName:@"LNNearbyAudioDeviceRelevantContext"];
  [MEMORY[0x277CCAAC8] setClass:objc_opt_class() forClassName:@"LNFallbackRelevantContext"];
  [MEMORY[0x277CCAAC8] setClass:objc_opt_class() forClassName:@"LNRegulatoryDomainRelevantContext"];
  v2 = MEMORY[0x277CCAAC8];
  v3 = objc_opt_class();

  [v2 setClass:v3 forClassName:@"LNMutualExclusionGroupRelevantContext"];
}

@end
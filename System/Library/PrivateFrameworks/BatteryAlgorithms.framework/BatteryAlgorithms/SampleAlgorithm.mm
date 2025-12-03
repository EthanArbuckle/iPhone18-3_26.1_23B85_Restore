@interface SampleAlgorithm
+ (id)algorithmWithData:(id)data;
- (SampleAlgorithm)initWithSMCKeys:(id)keys withSystemState:(id)state withSavedAlgoState:(id)algoState;
- (id)output;
@end

@implementation SampleAlgorithm

+ (id)algorithmWithData:(id)data
{
  dataCopy = data;
  v5 = [self alloc];
  v6 = [dataCopy valueForKey:@"smcData"];
  v7 = [dataCopy valueForKey:@"systemState"];
  v8 = [dataCopy valueForKey:@"savedAlgoState"];

  v9 = [v5 initWithSMCKeys:v6 withSystemState:v7 withSavedAlgoState:v8];

  return v9;
}

- (SampleAlgorithm)initWithSMCKeys:(id)keys withSystemState:(id)state withSavedAlgoState:(id)algoState
{
  v21 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v18.receiver = self;
  v18.super_class = SampleAlgorithm;
  v7 = [(SampleAlgorithm *)&v18 init];
  v8 = os_log_create("com.apple.batteryalgorithms", "SampleAlgorithm");
  logger = v7->_logger;
  v7->_logger = v8;

  v10 = v7->_logger;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = keysCopy;
    _os_log_impl(&dword_241A71000, v10, OS_LOG_TYPE_DEFAULT, "I was passed in these keys: %@", buf, 0xCu);
  }

  name = v7->_name;
  v7->_name = @"SampleAlgorithm";

  version = v7->_version;
  v7->_version = @"1.0";

  algoDescription = v7->_algoDescription;
  v7->_algoDescription = @"Just to show that this works";

  v14 = [MEMORY[0x277CCABB0] numberWithInt:90000];
  runPeriod = v7->_runPeriod;
  v7->_runPeriod = v14;

  v7->_freshInitNeeded = 1;
  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)output
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"savedAlgoState";
  v10[1] = @"kCoreAnalyticsData";
  v11[0] = &unk_2853A82E8;
  v11[1] = &unk_2853A8310;
  v10[2] = @"kPowerLogData";
  v11[2] = &unk_2853A8338;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_241A71000, logger, OS_LOG_TYPE_DEFAULT, "Output Dictionary looks like : %@", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

@end
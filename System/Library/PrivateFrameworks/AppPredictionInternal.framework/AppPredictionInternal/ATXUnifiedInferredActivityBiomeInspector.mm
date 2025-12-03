@interface ATXUnifiedInferredActivityBiomeInspector
+ (id)inferredActivityStreamFromName:(id)name;
+ (void)retrieveInferredActivitySessionsFromPublisherName:(id)name startTime:(double)time reply:(id)reply;
+ (void)retrieveInferredActivityTransitionsFromPublisherName:(id)name startTime:(double)time reply:(id)reply;
@end

@implementation ATXUnifiedInferredActivityBiomeInspector

+ (id)inferredActivityStreamFromName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"timeBasedInferredActivity"])
  {
    v4 = off_2785943E8;
LABEL_11:
    v5 = *v4;
    v6 = objc_opt_new();
    goto LABEL_12;
  }

  if ([nameCopy isEqualToString:@"appLaunchInferredActivity"])
  {
    v4 = off_278593070;
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"heuristicInferredActivity"])
  {
    v4 = off_278593830;
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"computedModeActivity"])
  {
    v4 = off_278594558;
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"unifiedInferredActivity"])
  {
    v4 = off_278594490;
    goto LABEL_11;
  }

  v6 = 0;
LABEL_12:

  return v6;
}

+ (void)retrieveInferredActivitySessionsFromPublisherName:(id)name startTime:(double)time reply:(id)reply
{
  v20[1] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v9 = [self inferredActivityStreamFromName:name];
  if (v9)
  {
    v10 = objc_opt_new();
    v11 = [v9 sessionPublisherFromStartTime:time];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __110__ATXUnifiedInferredActivityBiomeInspector_retrieveInferredActivitySessionsFromPublisherName_startTime_reply___block_invoke_2;
    v17[3] = &unk_27859CEC8;
    v18 = v10;
    v12 = v10;
    v13 = [v11 sinkWithCompletion:&__block_literal_global_108 receiveInput:v17];
    replyCopy[2](replyCopy, v12, 0);

    replyCopy = v12;
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277CCA9B8]);
    v19 = *MEMORY[0x277CCA450];
    v20[0] = @"Received invalid stream identifier";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v11 = [v14 initWithDomain:@"ATXUnifiedInferredActivityBiomeInspectorErrorDomain" code:-1 userInfo:v15];

    (replyCopy)[2](replyCopy, MEMORY[0x277CBEBF8], v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)retrieveInferredActivityTransitionsFromPublisherName:(id)name startTime:(double)time reply:(id)reply
{
  v20[1] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v9 = [self inferredActivityStreamFromName:name];
  if (v9)
  {
    v10 = objc_opt_new();
    v11 = [v9 transitionPublisherFromStartTime:time];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __113__ATXUnifiedInferredActivityBiomeInspector_retrieveInferredActivityTransitionsFromPublisherName_startTime_reply___block_invoke_2;
    v17[3] = &unk_27859CEF0;
    v18 = v10;
    v12 = v10;
    v13 = [v11 sinkWithCompletion:&__block_literal_global_35_2 receiveInput:v17];
    replyCopy[2](replyCopy, v12, 0);

    replyCopy = v12;
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277CCA9B8]);
    v19 = *MEMORY[0x277CCA450];
    v20[0] = @"Received invalid stream identifier";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v11 = [v14 initWithDomain:@"ATXUnifiedInferredActivityBiomeInspectorErrorDomain" code:-1 userInfo:v15];

    (replyCopy)[2](replyCopy, MEMORY[0x277CBEBF8], v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end
@interface BMStream(ATXExtras)
- (id)atx_DSLPublisher;
- (id)atx_dateOfLastEvent;
- (id)atx_publisherFromStartTime:()ATXExtras;
- (id)atx_publisherWithStartDate:()ATXExtras endDate:maxEvents:lastN:reversed:;
- (id)atx_publisherWithStartTime:()ATXExtras endTime:maxEvents:lastN:reversed:;
@end

@implementation BMStream(ATXExtras)

- (id)atx_DSLPublisher
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  v4 = [processName isEqualToString:@"SpringBoard"];

  if (v4)
  {
    [self DSLPublisher];
  }

  else
  {
    [self DSLPublisherWithUseCase:@"ProactiveAppPrediction"];
  }
  v5 = ;

  return v5;
}

- (id)atx_publisherFromStartTime:()ATXExtras
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v4 doubleValue];
    v6 = [v5 initWithTimeIntervalSinceReferenceDate:?];
    v7 = [self atx_publisherFromStartDate:v6];
  }

  else
  {
    v7 = [self atx_publisherFromStartDate:0];
  }

  return v7;
}

- (id)atx_publisherWithStartTime:()ATXExtras endTime:maxEvents:lastN:reversed:
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v12)
  {
    v16 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v12 doubleValue];
    v17 = [v16 initWithTimeIntervalSinceReferenceDate:?];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = 0;
    if (v13)
    {
LABEL_3:
      v18 = objc_alloc(MEMORY[0x277CBEAA8]);
      [v13 doubleValue];
      v19 = [v18 initWithTimeIntervalSinceReferenceDate:?];
      v20 = [self atx_publisherWithStartDate:v17 endDate:v19 maxEvents:v14 lastN:v15 reversed:a7];

      if (!v12)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v20 = [self atx_publisherWithStartDate:v17 endDate:0 maxEvents:v14 lastN:v15 reversed:a7];
  if (v12)
  {
LABEL_4:
  }

LABEL_5:

  return v20;
}

- (id)atx_publisherWithStartDate:()ATXExtras endDate:maxEvents:lastN:reversed:
{
  v12 = MEMORY[0x277CCAC38];
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  processInfo = [v12 processInfo];
  processName = [processInfo processName];
  v19 = [processName isEqualToString:@"SpringBoard"];

  if (v19)
  {
    v20 = objc_alloc(MEMORY[0x277CF1A50]);
    integerValue = [v14 integerValue];

    integerValue2 = [v13 integerValue];
    v23 = [v20 initWithStartDate:v16 endDate:v15 maxEvents:integerValue lastN:integerValue2 reversed:a7];

    [self publisherWithOptions:v23];
  }

  else
  {
    v24 = objc_alloc(MEMORY[0x277CF1A50]);
    integerValue3 = [v14 integerValue];

    integerValue4 = [v13 integerValue];
    v23 = [v24 initWithStartDate:v16 endDate:v15 maxEvents:integerValue3 lastN:integerValue4 reversed:a7];

    [self publisherWithUseCase:@"ProactiveAppPrediction" options:v23];
  }
  v27 = ;

  return v27;
}

- (id)atx_dateOfLastEvent
{
  v2 = objc_autoreleasePoolPush();
  v3 = [self atx_publisherWithStartDate:0 endDate:0 maxEvents:&unk_283988F18 lastN:&unk_283988F18 reversed:0];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__7;
  v13 = __Block_byref_object_dispose__7;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__BMStream_ATXExtras__atx_dateOfLastEvent__block_invoke;
  v8[3] = &unk_278590808;
  v8[4] = self;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__BMStream_ATXExtras__atx_dateOfLastEvent__block_invoke_5;
  v7[3] = &unk_278590830;
  v7[4] = &v9;
  v4 = [v3 sinkWithCompletion:v8 shouldContinue:v7];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  objc_autoreleasePoolPop(v2);

  return v5;
}

@end
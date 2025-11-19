@interface ATXUnifiedActivityStreamConversions
@end

@implementation ATXUnifiedActivityStreamConversions

id __80___ATXUnifiedActivityStreamConversions_transitionPublisherFromSessionPublisher___block_invoke(uint64_t a1, void *a2)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [ATXUnifiedInferredActivityTransition alloc];
  [v2 startTime];
  v5 = v4;
  v6 = [v2 source];
  v7 = [v2 inferredActivityType];
  [v2 confidence];
  v9 = [(ATXUnifiedInferredActivityTransition *)v3 initFromTransitionTime:1 isEntryEvent:v6 source:v7 activityType:v5 confidence:v8];
  v22[0] = v9;
  v10 = [ATXUnifiedInferredActivityTransition alloc];
  [v2 endTime];
  v12 = v11;
  v13 = [v2 source];
  v14 = [v2 inferredActivityType];
  [v2 confidence];
  v16 = v15;

  v17 = [(ATXUnifiedInferredActivityTransition *)v10 initFromTransitionTime:0 isEntryEvent:v13 source:v14 activityType:v12 confidence:v16];
  v22[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];

  v19 = [v18 bpsPublisher];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id __80___ATXUnifiedActivityStreamConversions_sessionPublisherFromTransitionPublisher___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D42648];
  v5 = a3;
  v6 = [a2 second];
  v7 = [v4 tupleWithFirst:v6 second:v5];

  return v7;
}

uint64_t __80___ATXUnifiedActivityStreamConversions_sessionPublisherFromTransitionPublisher___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 first];
  if (v3)
  {
    v4 = [v2 second];
    if (v4)
    {
      v5 = [v2 first];
      v6 = [v5 isEntryEvent];
      v7 = [v2 second];
      v8 = v6 ^ [v7 isEntryEvent];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __80___ATXUnifiedActivityStreamConversions_sessionPublisherFromTransitionPublisher___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 first];
  v4 = [v3 isEntryEvent];

  v5 = [ATXUnifiedInferredActivitySession alloc];
  v6 = [v2 first];
  [v6 transitionTime];
  v8 = v7;
  v9 = [v2 second];
  [v9 transitionTime];
  v11 = v10;
  v12 = [v2 first];
  v13 = [v12 source];
  v14 = [v2 first];
  v15 = v14;
  if (v4)
  {
    v16 = [v14 inferredActivityType];
    v17 = [v2 first];

    [v17 confidence];
    v19 = [(ATXUnifiedInferredActivitySession *)v5 initFromStartTime:v13 endTime:v16 source:v8 activityType:v11 confidence:v18];
  }

  else
  {

    [v15 confidence];
    v19 = [(ATXUnifiedInferredActivitySession *)v5 initFromStartTime:v13 endTime:14 source:v8 activityType:v11 confidence:v20];
  }

  return v19;
}

BOOL __80___ATXUnifiedActivityStreamConversions_sessionPublisherFromTransitionPublisher___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 endTime];
  v4 = v3;
  [v2 startTime];
  v6 = v5;

  return v4 - v6 > 1.0;
}

@end
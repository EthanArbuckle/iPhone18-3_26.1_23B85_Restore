@interface ATXUnifiedActivityTransitionCombiner
- (id)combineTransitions:(id)a3;
@end

@implementation ATXUnifiedActivityTransitionCombiner

- (id)combineTransitions:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 scanWithInitial:v4 nextPartialResult:&__block_literal_global_49];

  v6 = [MEMORY[0x277D42648] tupleWithFirst:0 second:0];
  v7 = [v5 scanWithInitial:v6 nextPartialResult:&__block_literal_global_102];
  v8 = [v7 filterWithIsIncluded:&__block_literal_global_105];
  v9 = [v8 flatMapWithTransform:&__block_literal_global_108_0];

  return v9;
}

id __59__ATXUnifiedActivityTransitionCombiner_combineTransitions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 newStateFromTransition:?];

  return v2;
}

id __59__ATXUnifiedActivityTransitionCombiner_combineTransitions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D42648];
  v5 = a3;
  v6 = [a2 second];
  v7 = [v4 tupleWithFirst:v6 second:v5];

  return v7;
}

uint64_t __59__ATXUnifiedActivityTransitionCombiner_combineTransitions___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 first];
  if (v3)
  {
    v4 = [v2 second];
    if (v4)
    {
      v5 = [v2 first];
      v6 = [v2 second];
      v7 = [v5 hasSameTopActivityAndConfidenceAsOther:v6] ^ 1;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

id __59__ATXUnifiedActivityTransitionCombiner_combineTransitions___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 first];
  if (v4)
  {
    v5 = v4;
    v6 = [v2 second];

    if (v6)
    {
      v7 = [v2 first];
      v8 = [v2 second];
      [v8 timestamp];
      v9 = [v7 endTransitionWithTimestamp:?];

      [v3 addObject:v9];
    }
  }

  v10 = [v2 second];

  if (v10)
  {
    v11 = [v2 second];
    v12 = [v11 startTransition];

    [v3 addObject:v12];
  }

  v13 = [v3 bpsPublisher];

  return v13;
}

@end
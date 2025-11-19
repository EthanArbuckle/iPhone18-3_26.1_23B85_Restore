@interface _ATXActivityTransitionCombinationState
- (BOOL)hasSameTopActivityAndConfidenceAsOther:(id)a3;
- (_ATXActivityTransitionCombinationState)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)endTransitionWithTimestamp:(double)a3;
- (id)newStateFromTransition:(id)a3;
- (id)startTransition;
- (id)topActivityWithConfidence;
@end

@implementation _ATXActivityTransitionCombinationState

- (_ATXActivityTransitionCombinationState)init
{
  v3.receiver = self;
  v3.super_class = _ATXActivityTransitionCombinationState;
  result = [(_ATXActivityTransitionCombinationState *)&v3 init];
  if (result)
  {
    result->_timeBasedActivity = 14;
    result->_timeBasedConfidence = 0.0;
    result->_appLaunchActivity = 14;
    result->_appLaunchConfidence = 0.0;
    result->_heuristicActivity = 14;
    result->_heuristicConfidence = 0.0;
    result->_computedModeConfidence = 0.0;
    result->_timestamp = 0.0;
    result->_computedModeActivity = 14;
  }

  return result;
}

- (id)newStateFromTransition:(id)a3
{
  v4 = a3;
  v5 = [(_ATXActivityTransitionCombinationState *)self copy];
  if ([v4 isEntryEvent])
  {
    v6 = [v4 inferredActivityType];
  }

  else
  {
    v6 = 14;
  }

  v7 = 0.0;
  if ([v4 isEntryEvent])
  {
    [v4 confidence];
    v7 = v8;
  }

  v9 = [v4 source];
  v10 = [v9 isEqualToString:@"timeBasedInferredActivity"];

  if (v10)
  {
    [v5 setTimeBasedActivity:v6];
    [v5 setTimeBasedConfidence:v7];
  }

  else
  {
    v11 = [v4 source];
    v12 = [v11 isEqualToString:@"appLaunchInferredActivity"];

    if (v12)
    {
      [v5 setAppLaunchActivity:v6];
      [v5 setAppLaunchConfidence:v7];
    }

    else
    {
      v13 = [v4 source];
      v14 = [v13 isEqualToString:@"heuristicInferredActivity"];

      if (v14)
      {
        [v5 setHeuristicActivity:v6];
        [v5 setHeuristicConfidence:v7];
      }

      else
      {
        v15 = [v4 source];
        v16 = [v15 isEqualToString:@"computedModeActivity"];

        if (v16)
        {
          [v5 setComputedModeActivity:v6];
          [v5 setComputedModeConfidence:v7];
        }

        else
        {
          v17 = __atxlog_handle_modes();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            [(_ATXActivityTransitionCombinationState *)self newStateFromTransition:v4, v17];
          }
        }
      }
    }
  }

  [v4 transitionTime];
  [v5 setTimestamp:?];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_ATXActivityTransitionCombinationState allocWithZone:?]];
  [(_ATXActivityTransitionCombinationState *)v4 setTimeBasedActivity:[(_ATXActivityTransitionCombinationState *)self timeBasedActivity]];
  [(_ATXActivityTransitionCombinationState *)self timeBasedConfidence];
  [(_ATXActivityTransitionCombinationState *)v4 setTimeBasedConfidence:?];
  [(_ATXActivityTransitionCombinationState *)v4 setAppLaunchActivity:[(_ATXActivityTransitionCombinationState *)self appLaunchActivity]];
  [(_ATXActivityTransitionCombinationState *)self appLaunchConfidence];
  [(_ATXActivityTransitionCombinationState *)v4 setAppLaunchConfidence:?];
  [(_ATXActivityTransitionCombinationState *)v4 setHeuristicActivity:[(_ATXActivityTransitionCombinationState *)self heuristicActivity]];
  [(_ATXActivityTransitionCombinationState *)self heuristicConfidence];
  [(_ATXActivityTransitionCombinationState *)v4 setHeuristicConfidence:?];
  [(_ATXActivityTransitionCombinationState *)v4 setComputedModeActivity:[(_ATXActivityTransitionCombinationState *)self computedModeActivity]];
  [(_ATXActivityTransitionCombinationState *)self computedModeConfidence];
  [(_ATXActivityTransitionCombinationState *)v4 setComputedModeConfidence:?];
  [(_ATXActivityTransitionCombinationState *)self timestamp];
  [(_ATXActivityTransitionCombinationState *)v4 setTimestamp:?];
  return v4;
}

- (id)topActivityWithConfidence
{
  v65[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D42648];
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_ATXActivityTransitionCombinationState timeBasedActivity](self, "timeBasedActivity")}];
  v4 = MEMORY[0x277CCABB0];
  [(_ATXActivityTransitionCombinationState *)self scaledTimeBasedConfidence];
  v53 = [v4 numberWithDouble:?];
  v52 = [v3 tupleWithFirst:v54 second:v53];
  v65[0] = v52;
  v5 = MEMORY[0x277D42648];
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_ATXActivityTransitionCombinationState appLaunchActivity](self, "appLaunchActivity")}];
  v6 = MEMORY[0x277CCABB0];
  [(_ATXActivityTransitionCombinationState *)self scaledAppLaunchConfidence];
  v7 = [v6 numberWithDouble:?];
  v8 = [v5 tupleWithFirst:v51 second:v7];
  v65[1] = v8;
  v9 = MEMORY[0x277D42648];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_ATXActivityTransitionCombinationState heuristicActivity](self, "heuristicActivity")}];
  v11 = MEMORY[0x277CCABB0];
  [(_ATXActivityTransitionCombinationState *)self scaledHeuristicConfidence];
  v12 = [v11 numberWithDouble:?];
  v13 = [v9 tupleWithFirst:v10 second:v12];
  v65[2] = v13;
  v14 = MEMORY[0x277D42648];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_ATXActivityTransitionCombinationState computedModeActivity](self, "computedModeActivity")}];
  v16 = MEMORY[0x277CCABB0];
  [(_ATXActivityTransitionCombinationState *)self scaledComputedModeConfidence];
  v17 = [v16 numberWithDouble:?];
  v18 = [v14 tupleWithFirst:v15 second:v17];
  v65[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:4];

  v20 = objc_opt_new();
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v21 = v19;
  v22 = [v21 countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v60;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v60 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v59 + 1) + 8 * i);
        v27 = [v26 first];
        v28 = [v20 objectForKeyedSubscript:v27];
        v29 = v28;
        if (!v28)
        {
          v28 = &unk_283A55778;
        }

        [v28 doubleValue];
        v31 = v30;

        v32 = MEMORY[0x277CCABB0];
        v33 = [v26 second];
        [v33 doubleValue];
        v35 = [v32 numberWithDouble:v31 + v34];
        v36 = [v26 first];
        [v20 setObject:v35 forKeyedSubscript:v36];
      }

      v23 = [v21 countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v23);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v37 = v20;
  v38 = [v37 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v56;
    v41 = &unk_283A55790;
    v42 = &unk_283A55778;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v56 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v44 = *(*(&v55 + 1) + 8 * j);
        v45 = [v37 objectForKeyedSubscript:v44];
        if ([v45 compare:v42] == 1)
        {
          v46 = v44;

          v47 = v45;
          v42 = v47;
          v41 = v46;
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v39);
  }

  else
  {
    v41 = &unk_283A55790;
    v42 = &unk_283A55778;
  }

  v48 = [MEMORY[0x277D42648] tupleWithFirst:v41 second:v42];

  v49 = *MEMORY[0x277D85DE8];

  return v48;
}

- (id)startTransition
{
  v3 = [(_ATXActivityTransitionCombinationState *)self topActivityWithConfidence];
  v4 = [v3 first];
  v5 = [v4 integerValue];

  v6 = [ATXUnifiedInferredActivityTransition alloc];
  [(_ATXActivityTransitionCombinationState *)self timestamp];
  v8 = v7;
  v9 = [v3 second];
  [v9 doubleValue];
  v11 = [(ATXUnifiedInferredActivityTransition *)v6 initFromTransitionTime:1 isEntryEvent:@"unifiedInferredActivity" source:v5 activityType:v8 confidence:v10];

  return v11;
}

- (id)endTransitionWithTimestamp:(double)a3
{
  v4 = [(_ATXActivityTransitionCombinationState *)self topActivityWithConfidence];
  v5 = [v4 first];
  v6 = [v5 integerValue];

  v7 = [ATXUnifiedInferredActivityTransition alloc];
  v8 = [v4 second];
  [v8 doubleValue];
  v10 = [(ATXUnifiedInferredActivityTransition *)v7 initFromTransitionTime:0 isEntryEvent:@"unifiedInferredActivity" source:v6 activityType:a3 confidence:v9];

  return v10;
}

- (BOOL)hasSameTopActivityAndConfidenceAsOther:(id)a3
{
  v4 = a3;
  v5 = [(_ATXActivityTransitionCombinationState *)self topActivityWithConfidence];
  v6 = [v4 topActivityWithConfidence];

  v7 = [v5 first];
  v8 = [v6 first];
  if ([v7 isEqualToNumber:v8])
  {
    v9 = [v5 second];
    [v9 doubleValue];
    v11 = v10;
    v12 = [v6 second];
    [v12 doubleValue];
    v14 = v11 - v13;

    v15 = -v14;
    if (v14 >= 0.0)
    {
      v15 = v14;
    }

    v16 = v15 < 0.001;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)newStateFromTransition:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 source];
  v9 = 138412546;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  _os_log_fault_impl(&dword_2263AA000, a3, OS_LOG_TYPE_FAULT, "[%@] Received unexpected activity transition source %@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

@end
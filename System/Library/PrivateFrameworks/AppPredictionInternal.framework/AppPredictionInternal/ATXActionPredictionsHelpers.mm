@interface ATXActionPredictionsHelpers
+ (id)limitTheNumberOfPredictions:(id)a3 withLimit:(int)a4;
+ (id)sortedPredictions:(id)a3;
+ (void)applyJointLogProbabilityToActionPredictions:(id)a3 withAppActionTypePredictionScore:(double)a4;
+ (void)applyLogOfLinearProbabilityTransformationToPredictions:(id)a3;
+ (void)applyLogSoftmaxToPredictions:(id)a3;
+ (void)applyNormalizationToPredictions:(id)a3;
+ (void)keepRandomPredictionItems:(id)a3 limit:(unint64_t)a4 predictionItemsToKeep:(void *)a5;
@end

@implementation ATXActionPredictionsHelpers

+ (void)keepRandomPredictionItems:(id)a3 limit:(unint64_t)a4 predictionItemsToKeep:(void *)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = v7;
  if (a5)
  {
    v23 = a4;
    v32 = 0;
    v31 = 0;
    v33 = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
    v24 = a5;
    if (v10)
    {
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          if (v13)
          {
            [v13 predictionItem];
          }

          else
          {
            bzero(&v25, 0xD08uLL);
          }

          v14 = v32;
          if (v32 >= v33)
          {
            v17 = 0x13A524387AC82261 * ((v32 - v31) >> 3) + 1;
            if (v17 > 0x13A524387AC822)
            {
              std::vector<ATXPredictionItem>::__throw_length_error[abi:ne200100]();
            }

            if (0x274A4870F59044C2 * ((v33 - v31) >> 3) > v17)
            {
              v17 = 0x274A4870F59044C2 * ((v33 - v31) >> 3);
            }

            if ((0x13A524387AC82261 * ((v33 - v31) >> 3)) >= 0x9D2921C3D6411)
            {
              v18 = 0x13A524387AC822;
            }

            else
            {
              v18 = v17;
            }

            v34[4] = &v31;
            if (v18)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<ATXPredictionItem>>(&v31, v18);
            }

            v19 = (8 * ((v32 - v31) >> 3));
            v34[0] = 0;
            v34[1] = v19;
            v34[3] = 0;
            v20 = v25;
            v25 = 0;
            *v19 = v20;
            memcpy(v19 + 1, v26, 0xCFEuLL);
            v34[2] = v19 + 417;
            std::vector<ATXPredictionItem>::__swap_out_circular_buffer(&v31, v34);
            v16 = v32;
            std::__split_buffer<ATXPredictionItem>::~__split_buffer(v34);
          }

          else
          {
            v15 = v25;
            v25 = 0;
            *v32 = v15;
            memcpy(v14 + 1, v26, 0xCFEuLL);
            v16 = v14 + 417;
          }

          v32 = v16;
        }

        v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v10);
    }

    v21 = +[_ATXGlobals sharedInstance];
    ATXKeepRandomPredictionItemsBelowLimit(&v31, v23, v24, [v21 numberOfRandomSlotsToKeepForLogging]);

    v25 = &v31;
    std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](&v25);
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __47__ATXActionPredictionsHelpers_sortPredictions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 score];
  v7 = v6;
  [v5 score];
  if (v7 <= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v7 < v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

+ (id)sortedPredictions:(id)a3
{
  v4 = [a3 mutableCopy];
  [a1 sortPredictions:v4];

  return v4;
}

+ (id)limitTheNumberOfPredictions:(id)a3 withLimit:(int)a4
{
  v7 = a3;
  if (a4 < 0)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"ATXActionPredictionsHelpers.mm" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"limit >= 0"}];
  }

  if ([v7 count] > a4)
  {
    v8 = [v7 subarrayWithRange:{0, a4}];
    v9 = [v8 copy];

    v7 = v9;
  }

  return v7;
}

+ (void)applyJointLogProbabilityToActionPredictions:(id)a3 withAppActionTypePredictionScore:(double)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v13 + 1) + 8 * v8) scoredAction];
        [v9 score];
        v11 = v10 + a4;
        *&v11 = v11;
        [v9 setScore:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)applyNormalizationToPredictions:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v5)
    {
      v6 = *v41;
      v7 = 0.0;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v41 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v40 + 1) + 8 * i) score];
          v7 = v7 + v9;
        }

        v5 = [v4 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = 0.0;
    }

    v10 = [v4 count];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v36 objects:v45 count:16];
    v13 = v7 / v10;
    if (v12)
    {
      v14 = *v37;
      v15 = 0.0;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v36 + 1) + 8 * j);
          [v17 score];
          v19 = v18;
          [v17 score];
          v15 = v15 + (v19 - v13) * (v20 - v13);
        }

        v12 = [v11 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v12);
    }

    else
    {
      v15 = 0.0;
    }

    v21 = [v11 count];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = v11;
    v23 = [v22 countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v23)
    {
      v24 = sqrt(v15 / v21);
      v25 = *v33;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v32 + 1) + 8 * k);
          if (v24 == 0.0)
          {
            [*(*(&v32 + 1) + 8 * k) score];
            v29 = v30 - v13;
          }

          else
          {
            [*(*(&v32 + 1) + 8 * k) score];
            v29 = (v28 - v13) / v24;
          }

          *&v29 = v29;
          [v27 setScore:{v29, v32}];
        }

        v23 = [v22 countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v23);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

+ (void)applyLogOfLinearProbabilityTransformationToPredictions:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![v5 count])
  {
    goto LABEL_25;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = *v32;
    v9 = 0.0;
    v10 = INFINITY;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        [v12 score];
        v14 = v13;
        [v12 score];
        if (v10 > v15)
        {
          [v12 score];
          v10 = v16;
        }

        v9 = v9 + v14;
      }

      v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v7);

    v17 = 0.0;
    if (v10 <= 0.0)
    {
      v17 = 1.0 - v10;
      v9 = v9 + (1.0 - v10) * [v6 count];
    }

    if (v9 > 0.0)
    {
      goto LABEL_17;
    }
  }

  else
  {

    v9 = 0.0;
    v17 = 0.0;
  }

  v18 = [MEMORY[0x277CCA890] currentHandler];
  [v18 handleFailureInMethod:a2 object:a1 file:@"ATXActionPredictionsHelpers.mm" lineNumber:126 description:@"Error: Shifting sum is not greater than zero"];

LABEL_17:
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = v6;
  v20 = [v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v20)
  {
    v21 = *v28;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v27 + 1) + 8 * j);
        [v23 score];
        v25 = log((v17 + v24) / v9);
        *&v25 = v25;
        [v23 setScore:v25];
      }

      v20 = [v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v20);
  }

LABEL_25:
  v26 = *MEMORY[0x277D85DE8];
}

+ (void)applyLogSoftmaxToPredictions:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v4)
  {
    v5 = *v35;
    v6 = -INFINITY;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v34 + 1) + 8 * i);
        [v8 score];
        if (v6 < v9)
        {
          [v8 score];
          v6 = v10;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = -INFINITY;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v11 = v3;
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v12)
  {
    v13 = *v31;
    v14 = 0.0;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v30 + 1) + 8 * j) score];
        v14 = v14 + exp(v16 - v6);
      }

      v12 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 0.0;
  }

  v17 = log(v14);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = v11;
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v19)
  {
    v20 = *v27;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v26 + 1) + 8 * k);
        [v22 score];
        v24 = v23 - v6 - v17;
        *&v24 = v24;
        [v22 setScore:v24];
      }

      v19 = [v18 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v19);
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end
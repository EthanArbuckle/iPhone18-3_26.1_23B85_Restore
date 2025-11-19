@interface ATXActionCacheBuilder
+ (id)serializedChunksFromActionPredictionResults:(id)a3 lockscreenPredictionIndices:(id)a4;
+ (id)serializedDataFromActionPredictionResults:(id)a3 lockscreenPredictionIndices:(id)a4;
@end

@implementation ATXActionCacheBuilder

+ (id)serializedDataFromActionPredictionResults:(id)a3 lockscreenPredictionIndices:(id)a4
{
  v4 = [ATXActionCacheBuilder serializedChunksFromActionPredictionResults:a3 lockscreenPredictionIndices:a4];
  v5 = ATXCacheFileJoinChunks();

  return v5;
}

+ (id)serializedChunksFromActionPredictionResults:(id)a3 lockscreenPredictionIndices:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v46 = a4;
  v5 = [MEMORY[0x277CEB2B8] abGroupForConsumerSubType:24];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277CEB2B8] abGroupNilString];
  }

  v8 = v7;

  v42 = v8;
  v9 = [MEMORY[0x277CEB2B8] abGroupForConsumerSubType:25];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x277CEB2B8] abGroupNilString];
  }

  v12 = v11;

  v43 = v12;
  v13 = [MEMORY[0x277CEB2B8] abGroupForConsumerSubType:27];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = [MEMORY[0x277CEB2B8] abGroupNilString];
  }

  v16 = v15;

  v44 = v16;
  v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%@", v8, v12, v16];
  v17 = [MEMORY[0x277CEB3C0] version];
  v52 = objc_opt_new();
  v51 = [objc_alloc(MEMORY[0x277CEB550]) initWithABGroup:v47 assetVersion:v17];
  v48 = [objc_alloc(MEMORY[0x277CEB550]) initWithABGroup:v47 assetVersion:v17];
  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  obj = v45;
  v18 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
  if (v18)
  {
    v19 = 0;
    v20 = *v58;
    v21.i32[1] = -1059153344;
    *v21.i32 = -31337.0;
    v50 = vdupq_lane_s32(v21, 0);
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v58 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v57 + 1) + 8 * i);
        v24 = objc_autoreleasePoolPush();
        v25 = [v23 scoredAction];
        if (v25)
        {
          location = 0;
          *&v56[415] = -31337.0;
          v26 = 2;
          WORD2(v56[415]) = 0;
          do
          {
            *&v56[v26 - 1] = v50;
            v26 += 2;
          }

          while (v26 != 416);
          if ([v23 predictionItem])
          {
            v27 = [v23 predictionItem];
            objc_storeStrong(&location, *v27);
            memcpy(v56, v27 + 1, 0xCFEuLL);
          }

          v28 = [v25 predictedItem];
          [v28 setTitleForSerializationToCache];
          [v28 setSubtitleForSerializationToCache];
          [v25 score];
          [v52 recordPrediction:v28 score:?];
          v29 = [MEMORY[0x277CCABB0] numberWithInteger:v19];
          LODWORD(v30) = v56[415];
          [v51 recordPrediction:v29 actionHash:v56[0] totalScore:&v56[1] scoreInputs:BYTE4(v56[415]) isMediumConfidenceForBlendingLayer:BYTE5(v56[415]) isHighConfidenceForBlendingLayer:v30];

          ++v19;
        }

        else if ([v23 predictionItem])
        {
          v31 = [v23 predictionItem];
          LODWORD(v32) = *(v31 + 3328);
          [v48 recordPrediction:*v31 actionHash:*(v31 + 8) totalScore:v31 + 16 scoreInputs:*(v31 + 3332) isMediumConfidenceForBlendingLayer:*(v31 + 3333) isHighConfidenceForBlendingLayer:v32];
        }

        objc_autoreleasePoolPop(v24);
      }

      v18 = [obj countByEnumeratingWithState:&v57 objects:v62 count:16];
    }

    while (v18);
  }

  v33 = [v52 finish];
  v34 = objc_opt_new();
  [v46 count];
  ATXCacheAppendInteger();
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __97__ATXActionCacheBuilder_serializedChunksFromActionPredictionResults_lockscreenPredictionIndices___block_invoke;
  v53[3] = &unk_27859D418;
  v35 = v34;
  v54 = v35;
  [v46 enumerateIndexesUsingBlock:v53];
  v36 = [v51 finish];
  v37 = [v48 finish];
  v61[0] = v33;
  v38 = [v35 copy];
  v61[1] = v38;
  v61[2] = v36;
  v61[3] = v37;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:4];

  v40 = *MEMORY[0x277D85DE8];

  return v39;
}

@end
@interface ARPAnalyticsEvent
+ (id)feedbackEventsFromAppUsageEvents:(id)a3 playingEvents:(id)a4 microLocationEvents:(id)a5 feedbackEvents:(id)a6;
- (ARPAnalyticsEvent)init;
- (id)analyticsDictionary;
- (id)description;
@end

@implementation ARPAnalyticsEvent

- (ARPAnalyticsEvent)init
{
  v13.receiver = self;
  v13.super_class = ARPAnalyticsEvent;
  v2 = [(ARPAnalyticsEvent *)&v13 init];
  v3 = v2;
  if (v2)
  {
    prediction = v2->_prediction;
    v2->_prediction = @"none";

    predictionReason = v3->_predictionReason;
    v3->_predictionReason = @"none";

    suppressionReason = v3->_suppressionReason;
    v3->_suppressionReason = @"none";

    v3->_predictionCorrect = 0;
    predictedDevice = v3->_predictedDevice;
    v3->_predictedDevice = @"none";

    actualDevice = v3->_actualDevice;
    v3->_actualDevice = @"none";

    correction = v3->_correction;
    v3->_correction = @"none";

    correctionTiming = v3->_correctionTiming;
    v3->_correctionTiming = @"none";

    failure = v3->_failure;
    v3->_failure = @"none";

    v3->_numberOfMicrolocations = 0;
  }

  return v3;
}

+ (id)feedbackEventsFromAppUsageEvents:(id)a3 playingEvents:(id)a4 microLocationEvents:(id)a5 feedbackEvents:(id)a6
{
  v113 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v90 = a4;
  v10 = a5;
  v89 = a6;
  v82 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&UUID_NULL_0];
  v83 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = objc_alloc_init(ARPAnalyticsEvent);
  v88 = [(ARPAnalyticsEvent *)v11 analyticsDictionary];

  v12 = [MEMORY[0x277CBEAA8] distantPast];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = v9;
  v91 = [obj countByEnumeratingWithState:&v107 objects:v112 count:16];
  if (v91)
  {
    v86 = *v108;
    v87 = v10;
    do
    {
      v13 = 0;
      v98 = v12;
      do
      {
        if (*v108 != v86)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v107 + 1) + 8 * v13);
        v15 = objc_alloc_init(ARPAnalyticsEvent);
        v106[0] = MEMORY[0x277D85DD0];
        v106[1] = 3221225472;
        v106[2] = __103__ARPAnalyticsEvent_feedbackEventsFromAppUsageEvents_playingEvents_microLocationEvents_feedbackEvents___block_invoke;
        v106[3] = &unk_278C64888;
        v96 = v14;
        v106[4] = v14;
        v16 = [v90 indexOfObjectPassingTest:v106];
        v94 = v13;
        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = 0;
        }

        else
        {
          v17 = [v90 objectAtIndexedSubscript:v16];
        }

        v18 = [v17 metadata];
        v19 = [MEMORY[0x277CFE248] outputDeviceIDs];
        v20 = [v18 objectForKeyedSubscript:v19];

        v21 = ARPExtractLongFormVideoOutputDeviceIDs(v20);
        v99 = objc_alloc_init(MEMORY[0x277CBEB98]);
        v95 = v21;
        if (v21 && [v21 count])
        {
          if ([v21 count] != 1 || (objc_msgSend(v21, "firstObject"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", @"Speaker"), v22, v24 = @"local", (v23 & 1) == 0))
          {
            v25 = [v20 objectForKeyedSubscript:&unk_285142978];
            v26 = [v25 objectForKeyedSubscript:&unk_285142990];
            v27 = [v26 count];

            v24 = @"appletv";
            if (!v27)
            {
              v28 = [v20 objectForKeyedSubscript:&unk_285142978];
              v29 = [v28 objectForKeyedSubscript:&unk_2851429A8];
              v30 = [v29 count];

              if (v30)
              {
                v24 = @"tv";
              }

              else
              {
                v24 = @"other";
              }
            }
          }

          v31 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v95];

          v99 = v31;
        }

        else
        {
          v24 = @"none";
        }

        [(ARPAnalyticsEvent *)v15 setActualDevice:v24];
        v105[0] = MEMORY[0x277D85DD0];
        v105[1] = 3221225472;
        v105[2] = __103__ARPAnalyticsEvent_feedbackEventsFromAppUsageEvents_playingEvents_microLocationEvents_feedbackEvents___block_invoke_60;
        v105[3] = &unk_278C64888;
        v105[4] = v96;
        v32 = [v10 indexOfObjectPassingTest:v105];
        if (v32 == 0x7FFFFFFFFFFFFFFFLL || ([v10 objectAtIndexedSubscript:v32], (v33 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v92 = 0;
        }

        else
        {
          v92 = v33;
          v34 = [v33 metadata];
          v35 = [MEMORY[0x277CFE230] probabilityVector];
          v36 = [v34 objectForKeyedSubscript:v35];

          v37 = [v36 count];
          v38 = [v36 objectForKeyedSubscript:v82];
          v39 = v38 != 0;

          [(ARPAnalyticsEvent *)v15 setNumberOfMicrolocations:v37 - v39];
        }

        v40 = MEMORY[0x277CCAC30];
        v41 = [v17 startDate];
        v42 = v41;
        if (!v41)
        {
          v85 = [v96 endDate];
          v42 = v85;
        }

        v93 = v20;
        v43 = [v40 predicateWithFormat:@"%@ <= startDate && endDate <= %@", v98, v42];
        v44 = [v89 filteredArrayUsingPredicate:v43];

        if (!v41)
        {
        }

        v97 = v17;
        v100 = v15;

        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v45 = v44;
        v46 = [v45 countByEnumeratingWithState:&v101 objects:v111 count:16];
        if (!v46)
        {
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          goto LABEL_54;
        }

        v47 = v46;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = *v102;
        do
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v102 != v52)
            {
              objc_enumerationMutation(v45);
            }

            v54 = *(*(&v101 + 1) + 8 * i);
            v55 = [v54 integerValue];
            if (!v49 && v55 <= 1)
            {
              v48 = v55 == 1;
              v49 = v54;
LABEL_46:
              v58 = v51;
              goto LABEL_47;
            }

            if (v55 == 2 && v50 == 0)
            {
              v50 = v54;
              goto LABEL_46;
            }

            v57 = v55 == 3 && v51 == 0;
            v58 = v54;
            if (!v57)
            {
              if (!v49)
              {
                continue;
              }

              goto LABEL_48;
            }

LABEL_47:
            v59 = v54;
            v51 = v58;
            if (!v49)
            {
              continue;
            }

LABEL_48:
            if (v50 && v51)
            {
              goto LABEL_54;
            }
          }

          v47 = [v45 countByEnumeratingWithState:&v101 objects:v111 count:16];
        }

        while (v47);
LABEL_54:

        v60 = [v97 endDate];
        v61 = v60;
        if (v60)
        {
          v62 = v60;
        }

        else
        {
          v62 = [v96 endDate];
        }

        v12 = v62;

        if (v49)
        {
          v63 = [v49 metadata];
          v64 = [MEMORY[0x277CFE130] subtype];
          v65 = [v63 objectForKeyedSubscript:v64];

          if (v48)
          {
            [(ARPAnalyticsEvent *)v100 setSuppressionReason:v65];
            v66 = v100;
            v67 = @"suppressed";
          }

          else
          {
            v66 = v100;
            v67 = v65;
          }

          [(ARPAnalyticsEvent *)v66 setPrediction:v67];
          v68 = [v49 metadata];
          v69 = [MEMORY[0x277CFE130] outputDeviceID];
          v70 = [v68 objectForKeyedSubscript:v69];

          if (v70 && [v99 containsObject:v70])
          {
            [(ARPAnalyticsEvent *)v100 setPredictionCorrect:1];
          }
        }

        if (v50)
        {
          v71 = [v50 metadata];
          v72 = [MEMORY[0x277CFE130] subtype];
          v73 = [v71 objectForKeyedSubscript:v72];
          [(ARPAnalyticsEvent *)v100 setCorrection:v73];
        }

        if (v51)
        {
          v74 = [v50 metadata];
          v75 = [MEMORY[0x277CFE130] subtype];
          v76 = [v74 objectForKeyedSubscript:v75];
          [(ARPAnalyticsEvent *)v100 setFailure:v76];
        }

        v77 = [(ARPAnalyticsEvent *)v100 analyticsDictionary];
        v78 = [v77 isEqualToDictionary:v88];

        if ((v78 & 1) == 0)
        {
          [v83 addObject:v100];
        }

        v13 = v94 + 1;
        v98 = v12;
        v10 = v87;
      }

      while (v94 + 1 != v91);
      v91 = [obj countByEnumeratingWithState:&v107 objects:v112 count:16];
    }

    while (v91);
  }

  v79 = [v83 copy];
  v80 = *MEMORY[0x277D85DE8];

  return v79;
}

BOOL __103__ARPAnalyticsEvent_feedbackEventsFromAppUsageEvents_playingEvents_microLocationEvents_feedbackEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) startDate];
  [v4 timeIntervalSince1970];
  v6 = v5;
  v7 = [v3 startDate];
  [v7 timeIntervalSince1970];
  if (v6 <= v8)
  {
    v10 = [v3 startDate];
    [v10 timeIntervalSince1970];
    v12 = v11;
    v13 = [*(a1 + 32) endDate];
    [v13 timeIntervalSince1970];
    v9 = v12 <= v14;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL __103__ARPAnalyticsEvent_feedbackEventsFromAppUsageEvents_playingEvents_microLocationEvents_feedbackEvents___block_invoke_60(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 startDate];
  [v4 timeIntervalSince1970];
  v6 = v5;

  v7 = [v3 startDate];

  [v7 timeIntervalSince1970];
  v9 = v8;

  return v9 <= v6 + 5.0 && v6 <= v9;
}

- (id)description
{
  v16 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v14 = [(ARPAnalyticsEvent *)self prediction];
  v13 = [(ARPAnalyticsEvent *)self predictionReason];
  v3 = [(ARPAnalyticsEvent *)self suppressionReason];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[ARPAnalyticsEvent predictionCorrect](self, "predictionCorrect")}];
  v5 = [(ARPAnalyticsEvent *)self predictedDevice];
  v6 = [(ARPAnalyticsEvent *)self actualDevice];
  v7 = [(ARPAnalyticsEvent *)self correction];
  v8 = [(ARPAnalyticsEvent *)self correctionTiming];
  v9 = [(ARPAnalyticsEvent *)self failure];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ARPAnalyticsEvent numberOfMicrolocations](self, "numberOfMicrolocations")}];
  v11 = [v16 stringWithFormat:@"<%@ %p> prediction: %@, predictionReason: %@, suppressionReason: %@, predictionCorrect: %@, predictedDevice: %@, actualDevice: %@, correction: %@, correctionTiming: %@, failure: %@, numberOfMicrolocations: %@", v15, self, v14, v13, v3, v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (id)analyticsDictionary
{
  v21[10] = *MEMORY[0x277D85DE8];
  v20[0] = @"predicted";
  v3 = [(ARPAnalyticsEvent *)self prediction];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_285140A98;
  }

  v21[0] = v5;
  v20[1] = @"suppression_reason";
  v6 = [(ARPAnalyticsEvent *)self suppressionReason];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_285140A98;
  }

  v21[1] = v8;
  v20[2] = @"prediction_correct";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ARPAnalyticsEvent predictionCorrect](self, "predictionCorrect")}];
  v21[2] = v9;
  v20[3] = @"actual_device";
  v10 = [(ARPAnalyticsEvent *)self actualDevice];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &stru_285140A98;
  }

  v21[3] = v12;
  v20[4] = @"failure";
  v13 = [(ARPAnalyticsEvent *)self failure];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_285140A98;
  }

  v21[4] = v15;
  v20[5] = @"number_of_microlocations";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ARPAnalyticsEvent numberOfMicrolocations](self, "numberOfMicrolocations")}];
  v21[5] = v16;
  v21[6] = @"unknown";
  v20[6] = @"prediction_reason";
  v20[7] = @"predicted_device";
  v21[7] = @"unknown";
  v21[8] = @"unknown";
  v20[8] = @"correction";
  v20[9] = @"correction_timing";
  v21[9] = @"unknown";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:10];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end
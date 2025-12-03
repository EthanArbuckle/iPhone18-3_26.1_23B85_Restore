@interface ARPAnalyticsEvent
+ (id)feedbackEventsFromAppUsageEvents:(id)events playingEvents:(id)playingEvents microLocationEvents:(id)locationEvents feedbackEvents:(id)feedbackEvents;
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

+ (id)feedbackEventsFromAppUsageEvents:(id)events playingEvents:(id)playingEvents microLocationEvents:(id)locationEvents feedbackEvents:(id)feedbackEvents
{
  v113 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  playingEventsCopy = playingEvents;
  locationEventsCopy = locationEvents;
  feedbackEventsCopy = feedbackEvents;
  v82 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&UUID_NULL_0];
  v83 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = objc_alloc_init(ARPAnalyticsEvent);
  analyticsDictionary = [(ARPAnalyticsEvent *)v11 analyticsDictionary];

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = eventsCopy;
  v91 = [obj countByEnumeratingWithState:&v107 objects:v112 count:16];
  if (v91)
  {
    v86 = *v108;
    v87 = locationEventsCopy;
    do
    {
      v13 = 0;
      v98 = distantPast;
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
        v16 = [playingEventsCopy indexOfObjectPassingTest:v106];
        v94 = v13;
        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = 0;
        }

        else
        {
          v17 = [playingEventsCopy objectAtIndexedSubscript:v16];
        }

        metadata = [v17 metadata];
        outputDeviceIDs = [MEMORY[0x277CFE248] outputDeviceIDs];
        v20 = [metadata objectForKeyedSubscript:outputDeviceIDs];

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
        v32 = [locationEventsCopy indexOfObjectPassingTest:v105];
        if (v32 == 0x7FFFFFFFFFFFFFFFLL || ([locationEventsCopy objectAtIndexedSubscript:v32], (v33 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v92 = 0;
        }

        else
        {
          v92 = v33;
          metadata2 = [v33 metadata];
          probabilityVector = [MEMORY[0x277CFE230] probabilityVector];
          v36 = [metadata2 objectForKeyedSubscript:probabilityVector];

          v37 = [v36 count];
          v38 = [v36 objectForKeyedSubscript:v82];
          v39 = v38 != 0;

          [(ARPAnalyticsEvent *)v15 setNumberOfMicrolocations:v37 - v39];
        }

        v40 = MEMORY[0x277CCAC30];
        startDate = [v17 startDate];
        v42 = startDate;
        if (!startDate)
        {
          endDate = [v96 endDate];
          v42 = endDate;
        }

        v93 = v20;
        v43 = [v40 predicateWithFormat:@"%@ <= startDate && endDate <= %@", v98, v42];
        v44 = [feedbackEventsCopy filteredArrayUsingPredicate:v43];

        if (!startDate)
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
            integerValue = [v54 integerValue];
            if (!v49 && integerValue <= 1)
            {
              v48 = integerValue == 1;
              v49 = v54;
LABEL_46:
              v58 = v51;
              goto LABEL_47;
            }

            if (integerValue == 2 && v50 == 0)
            {
              v50 = v54;
              goto LABEL_46;
            }

            v57 = integerValue == 3 && v51 == 0;
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

        endDate2 = [v97 endDate];
        v61 = endDate2;
        if (endDate2)
        {
          endDate3 = endDate2;
        }

        else
        {
          endDate3 = [v96 endDate];
        }

        distantPast = endDate3;

        if (v49)
        {
          metadata3 = [v49 metadata];
          subtype = [MEMORY[0x277CFE130] subtype];
          v65 = [metadata3 objectForKeyedSubscript:subtype];

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
          metadata4 = [v49 metadata];
          outputDeviceID = [MEMORY[0x277CFE130] outputDeviceID];
          v70 = [metadata4 objectForKeyedSubscript:outputDeviceID];

          if (v70 && [v99 containsObject:v70])
          {
            [(ARPAnalyticsEvent *)v100 setPredictionCorrect:1];
          }
        }

        if (v50)
        {
          metadata5 = [v50 metadata];
          subtype2 = [MEMORY[0x277CFE130] subtype];
          v73 = [metadata5 objectForKeyedSubscript:subtype2];
          [(ARPAnalyticsEvent *)v100 setCorrection:v73];
        }

        if (v51)
        {
          metadata6 = [v50 metadata];
          subtype3 = [MEMORY[0x277CFE130] subtype];
          v76 = [metadata6 objectForKeyedSubscript:subtype3];
          [(ARPAnalyticsEvent *)v100 setFailure:v76];
        }

        analyticsDictionary2 = [(ARPAnalyticsEvent *)v100 analyticsDictionary];
        v78 = [analyticsDictionary2 isEqualToDictionary:analyticsDictionary];

        if ((v78 & 1) == 0)
        {
          [v83 addObject:v100];
        }

        v13 = v94 + 1;
        v98 = distantPast;
        locationEventsCopy = v87;
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
  prediction = [(ARPAnalyticsEvent *)self prediction];
  predictionReason = [(ARPAnalyticsEvent *)self predictionReason];
  suppressionReason = [(ARPAnalyticsEvent *)self suppressionReason];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[ARPAnalyticsEvent predictionCorrect](self, "predictionCorrect")}];
  predictedDevice = [(ARPAnalyticsEvent *)self predictedDevice];
  actualDevice = [(ARPAnalyticsEvent *)self actualDevice];
  correction = [(ARPAnalyticsEvent *)self correction];
  correctionTiming = [(ARPAnalyticsEvent *)self correctionTiming];
  failure = [(ARPAnalyticsEvent *)self failure];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ARPAnalyticsEvent numberOfMicrolocations](self, "numberOfMicrolocations")}];
  v11 = [v16 stringWithFormat:@"<%@ %p> prediction: %@, predictionReason: %@, suppressionReason: %@, predictionCorrect: %@, predictedDevice: %@, actualDevice: %@, correction: %@, correctionTiming: %@, failure: %@, numberOfMicrolocations: %@", v15, self, prediction, predictionReason, suppressionReason, v4, predictedDevice, actualDevice, correction, correctionTiming, failure, v10];

  return v11;
}

- (id)analyticsDictionary
{
  v21[10] = *MEMORY[0x277D85DE8];
  v20[0] = @"predicted";
  prediction = [(ARPAnalyticsEvent *)self prediction];
  v4 = prediction;
  if (prediction)
  {
    v5 = prediction;
  }

  else
  {
    v5 = &stru_285140A98;
  }

  v21[0] = v5;
  v20[1] = @"suppression_reason";
  suppressionReason = [(ARPAnalyticsEvent *)self suppressionReason];
  v7 = suppressionReason;
  if (suppressionReason)
  {
    v8 = suppressionReason;
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
  actualDevice = [(ARPAnalyticsEvent *)self actualDevice];
  v11 = actualDevice;
  if (actualDevice)
  {
    v12 = actualDevice;
  }

  else
  {
    v12 = &stru_285140A98;
  }

  v21[3] = v12;
  v20[4] = @"failure";
  failure = [(ARPAnalyticsEvent *)self failure];
  v14 = failure;
  if (failure)
  {
    v15 = failure;
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
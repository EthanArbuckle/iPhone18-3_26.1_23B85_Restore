@interface ATXModeTransitionMetric
- (ATXModeTransitionMetric)initWithPreviousModeSemanticType:(id)a3 previousModeDuration:(double)a4 previousModeHadScheduledExit:(BOOL)a5 exitReason:(id)a6 enterReason:(id)a7 transitionDeviceType:(id)a8 transitionSource:(id)a9 nextModeSemanticType:(id)a10;
- (id)coreAnalyticsDictionary;
- (id)description;
@end

@implementation ATXModeTransitionMetric

- (ATXModeTransitionMetric)initWithPreviousModeSemanticType:(id)a3 previousModeDuration:(double)a4 previousModeHadScheduledExit:(BOOL)a5 exitReason:(id)a6 enterReason:(id)a7 transitionDeviceType:(id)a8 transitionSource:(id)a9 nextModeSemanticType:(id)a10
{
  v26 = a3;
  v25 = a6;
  v24 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v27.receiver = self;
  v27.super_class = ATXModeTransitionMetric;
  v20 = [(_ATXCoreAnalyticsMetric *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_previousModeSemanticType, a3);
    v21->_previousModeDuration = a4;
    v21->_previousModeHadScheduledExit = a5;
    objc_storeStrong(&v21->_exitReason, a6);
    objc_storeStrong(&v21->_enterReason, a7);
    objc_storeStrong(&v21->_transitionDeviceType, a8);
    objc_storeStrong(&v21->_transitionSource, a9);
    objc_storeStrong(&v21->_nextModeSemanticType, a10);
  }

  return v21;
}

- (id)coreAnalyticsDictionary
{
  v50[19] = *MEMORY[0x277D85DE8];
  previousModeSemanticType = self->_previousModeSemanticType;
  v48 = previousModeSemanticType;
  v49[0] = @"previousMode";
  if (!previousModeSemanticType)
  {
    previousModeSemanticType = [MEMORY[0x277CBEB68] null];
  }

  v36 = previousModeSemanticType;
  v50[0] = previousModeSemanticType;
  v49[1] = @"previousModeDuration";
  v47 = [MEMORY[0x277CCABB0] numberWithDouble:self->_previousModeDuration];
  v50[1] = v47;
  v49[2] = @"previousHadScheduledExit";
  v46 = [MEMORY[0x277CCABB0] numberWithBool:self->_previousModeHadScheduledExit];
  v50[2] = v46;
  v49[3] = @"exitReason";
  exitReason = self->_exitReason;
  v45 = exitReason;
  if (!exitReason)
  {
    exitReason = [MEMORY[0x277CBEB68] null];
  }

  v35 = exitReason;
  v50[3] = exitReason;
  v49[4] = @"enterReason";
  enterReason = self->_enterReason;
  v44 = enterReason;
  if (!enterReason)
  {
    enterReason = [MEMORY[0x277CBEB68] null];
  }

  v34 = enterReason;
  v50[4] = enterReason;
  v49[5] = @"transitionDeviceType";
  transitionDeviceType = self->_transitionDeviceType;
  v43 = transitionDeviceType;
  if (!transitionDeviceType)
  {
    transitionDeviceType = [MEMORY[0x277CBEB68] null];
  }

  v33 = transitionDeviceType;
  v50[5] = transitionDeviceType;
  v49[6] = @"transitionSource";
  transitionSource = self->_transitionSource;
  v42 = transitionSource;
  if (!transitionSource)
  {
    transitionSource = [MEMORY[0x277CBEB68] null];
  }

  v32 = transitionSource;
  v50[6] = transitionSource;
  v49[7] = @"nextMode";
  nextModeSemanticType = self->_nextModeSemanticType;
  v41 = nextModeSemanticType;
  if (!nextModeSemanticType)
  {
    nextModeSemanticType = [MEMORY[0x277CBEB68] null];
  }

  v31 = nextModeSemanticType;
  v50[7] = nextModeSemanticType;
  v49[8] = @"inferredModeConfidenceScore";
  inferredModeConfidenceScore = self->_inferredModeConfidenceScore;
  v40 = inferredModeConfidenceScore;
  if (!inferredModeConfidenceScore)
  {
    inferredModeConfidenceScore = [MEMORY[0x277CBEB68] null];
  }

  v30 = inferredModeConfidenceScore;
  v50[8] = inferredModeConfidenceScore;
  v49[9] = @"inferredModeDuration";
  inferredModeDuration = self->_inferredModeDuration;
  v39 = inferredModeDuration;
  if (!inferredModeDuration)
  {
    inferredModeDuration = [MEMORY[0x277CBEB68] null];
  }

  v29 = inferredModeDuration;
  v50[9] = inferredModeDuration;
  v49[10] = @"inferredModeOriginAnchorType";
  inferredModeOriginAnchorType = self->_inferredModeOriginAnchorType;
  v38 = inferredModeOriginAnchorType;
  if (!inferredModeOriginAnchorType)
  {
    inferredModeOriginAnchorType = [MEMORY[0x277CBEB68] null];
  }

  v28 = inferredModeOriginAnchorType;
  v50[10] = inferredModeOriginAnchorType;
  v49[11] = @"inferredModeType";
  inferredModeType = self->_inferredModeType;
  v13 = inferredModeType;
  if (!inferredModeType)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v27 = v13;
  v50[11] = v13;
  v49[12] = @"inferredModeUILocation";
  inferredModeUILocation = self->_inferredModeUILocation;
  v15 = inferredModeUILocation;
  if (!inferredModeUILocation)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v26 = v15;
  v50[12] = v15;
  v49[13] = @"previousModeOrigin";
  previousModeOrigin = self->_previousModeOrigin;
  v17 = previousModeOrigin;
  if (!previousModeOrigin)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v50[13] = v17;
  v49[14] = @"appBasedSchedulingEnabled";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_appBasedSchedulingEnabled];
  v50[14] = v18;
  v49[15] = @"timeBasedSchedulingEnabled";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_timeBasedSchedulingEnabled];
  v50[15] = v19;
  v49[16] = @"locationBasedSchedulingEnabled";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_locationBasedSchedulingEnabled];
  v50[16] = v20;
  v49[17] = @"smartActivationEnabled";
  v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_smartActivationEnabled];
  v50[17] = v21;
  v49[18] = @"currentModeOrigin";
  currentModeOrigin = self->_currentModeOrigin;
  v23 = currentModeOrigin;
  if (!currentModeOrigin)
  {
    v23 = [MEMORY[0x277CBEB68] null];
  }

  v50[18] = v23;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:19];
  if (!currentModeOrigin)
  {
  }

  if (previousModeOrigin)
  {
    if (inferredModeUILocation)
    {
      goto LABEL_31;
    }

LABEL_54:

    if (inferredModeType)
    {
      goto LABEL_32;
    }

    goto LABEL_55;
  }

  if (!inferredModeUILocation)
  {
    goto LABEL_54;
  }

LABEL_31:
  if (inferredModeType)
  {
    goto LABEL_32;
  }

LABEL_55:

LABEL_32:
  if (!v38)
  {
  }

  if (!v39)
  {
  }

  if (!v40)
  {
  }

  if (!v41)
  {
  }

  if (!v42)
  {
  }

  if (!v43)
  {
  }

  if (!v44)
  {
  }

  if (!v45)
  {
  }

  if (!v48)
  {
  }

  v24 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)description
{
  v23 = MEMORY[0x277CCACA8];
  v22 = [(ATXModeTransitionMetric *)self previousModeSemanticType];
  [(ATXModeTransitionMetric *)self previousModeDuration];
  v4 = v3;
  v21 = [(ATXModeTransitionMetric *)self previousModeHadScheduledExit];
  v20 = [(ATXModeTransitionMetric *)self exitReason];
  v19 = [(ATXModeTransitionMetric *)self enterReason];
  v18 = [(ATXModeTransitionMetric *)self transitionDeviceType];
  v25 = [(ATXModeTransitionMetric *)self transitionSource];
  v15 = [(ATXModeTransitionMetric *)self nextModeSemanticType];
  v17 = [(ATXModeTransitionMetric *)self inferredModeConfidenceScore];
  v16 = [(ATXModeTransitionMetric *)self inferredModeDuration];
  v14 = [(ATXModeTransitionMetric *)self inferredModeOriginAnchorType];
  v5 = [(ATXModeTransitionMetric *)self inferredModeType];
  v6 = [(ATXModeTransitionMetric *)self inferredModeUILocation];
  v7 = [(ATXModeTransitionMetric *)self previousModeOrigin];
  v8 = [(ATXModeTransitionMetric *)self appBasedSchedulingEnabled];
  v9 = [(ATXModeTransitionMetric *)self timeBasedSchedulingEnabled];
  v10 = [(ATXModeTransitionMetric *)self locationBasedSchedulingEnabled];
  v11 = [(ATXModeTransitionMetric *)self smartActivationEnabled];
  v12 = [(ATXModeTransitionMetric *)self currentModeOrigin];
  v24 = [v23 stringWithFormat:@"ATXModeTransitionMetric previousMode:%@\npreviousModeDuration:%f\npreviousHadScheduledExit:%d\nexitReason:%@\nenterReason:%@\ntransitionDeviceType:%@\ntransitionSource:%@\nnextMode:%@\ninferredModeConfidenceScore:%@\ninferredModeDuration:%@\ninferredModeOriginAnchorType:%@\ninferredModeType:%@\ninferredModeUILocation:%@\npreviousModeOrigin:%@\nappBasedSchedulingEnabled:%d\ntimeBasedSchedulingEnabled:%d\nlocationBasedSchedulingEnabled:%d\nsmartActivationEnabled:%d\ncurrentModeOrigin:%@\n", v22, v4, v21, v20, v19, v18, v25, v15, v17, v16, v14, v5, v6, v7, v8, v9, v10, v11, v12];

  return v24;
}

@end
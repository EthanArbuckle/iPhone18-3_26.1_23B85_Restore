@interface ATXProactiveSuggestionPartialIntentResultWrapper
- (ATXProactiveSuggestionPartialIntentResultWrapper)initWithCoder:(id)a3;
- (ATXProactiveSuggestionPartialIntentResultWrapper)initWithUIFeedbackResult:(id)a3 partiallyExecutedUUID:(id)a4 partiallyExecutedAction:(id)a5 partiallyExecutedActionStartDate:(id)a6 matchingIntentDonatedAction:(id)a7 matchingIntentDonationDate:(id)a8 partialEngagementWasCompleteMatch:(id)a9;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXProactiveSuggestionPartialIntentResultWrapper:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)markPartiallyExecutedSuggestionAsAbandoned;
- (void)markPartiallyExecutedSuggestionAsCompleteMatchWithDonatedAction:(id)a3 donationDate:(id)a4;
- (void)markPartiallyExecutedSuggestionAsPartialMatchWithDonatedAction:(id)a3 donationDate:(id)a4;
- (void)updatePartiallyExecutedActionWithProactiveSuggestion:(id)a3;
@end

@implementation ATXProactiveSuggestionPartialIntentResultWrapper

- (ATXProactiveSuggestionPartialIntentResultWrapper)initWithUIFeedbackResult:(id)a3 partiallyExecutedUUID:(id)a4 partiallyExecutedAction:(id)a5 partiallyExecutedActionStartDate:(id)a6 matchingIntentDonatedAction:(id)a7 matchingIntentDonationDate:(id)a8 partialEngagementWasCompleteMatch:(id)a9
{
  v36 = a4;
  v27 = a5;
  v35 = a5;
  v28 = a6;
  v34 = a6;
  v29 = a7;
  v33 = a7;
  v30 = a8;
  v32 = a8;
  v31 = a9;
  v15 = a3;
  v16 = [v15 shownSuggestions];
  v17 = [v15 engagedSuggestions];
  v18 = [v15 rejectedSuggestions];
  v19 = [v15 session];
  v20 = [v15 consumerSubType];
  v21 = [v15 clientCacheUpdate];
  v22 = [v15 uiCacheUpdate];
  v23 = [v15 context];

  v37.receiver = self;
  v37.super_class = ATXProactiveSuggestionPartialIntentResultWrapper;
  v24 = [(ATXProactiveSuggestionUIFeedbackResult *)&v37 initWithShownSuggestions:v16 engagedSuggestions:v17 rejectedSuggestions:v18 session:v19 consumerSubType:v20 clientCacheUpdate:v21 uiCacheUpdate:v22 context:v23];

  if (v24)
  {
    objc_storeStrong(&v24->_partiallyExecutedUUID, a4);
    objc_storeStrong(&v24->_partiallyExecutedAction, v27);
    objc_storeStrong(&v24->_partiallyExecutedActionStartDate, v28);
    objc_storeStrong(&v24->_matchingIntentDonatedAction, v29);
    objc_storeStrong(&v24->_matchingIntentDonationDate, v30);
    objc_storeStrong(&v24->_partialEngagementWasCompleteMatch, a9);
  }

  return v24;
}

- (void)updatePartiallyExecutedActionWithProactiveSuggestion:(id)a3
{
  v10 = a3;
  v4 = [v10 atxActionExecutableObject];
  if (v4)
  {
    v5 = [v10 uuid];
    partiallyExecutedUUID = self->_partiallyExecutedUUID;
    self->_partiallyExecutedUUID = v5;

    objc_storeStrong(&self->_partiallyExecutedAction, v4);
    v7 = [(ATXProactiveSuggestionUIFeedbackResult *)self session];
    v8 = [v7 sessionEndDate];
    partiallyExecutedActionStartDate = self->_partiallyExecutedActionStartDate;
    self->_partiallyExecutedActionStartDate = v8;
  }
}

- (void)markPartiallyExecutedSuggestionAsAbandoned
{
  if (self->_partiallyExecutedAction)
  {
    matchingIntentDonatedAction = self->_matchingIntentDonatedAction;
    self->_matchingIntentDonatedAction = 0;

    matchingIntentDonationDate = self->_matchingIntentDonationDate;
    self->_matchingIntentDonationDate = 0;

    partialEngagementWasCompleteMatch = self->_partialEngagementWasCompleteMatch;
    self->_partialEngagementWasCompleteMatch = 0;
  }
}

- (void)markPartiallyExecutedSuggestionAsCompleteMatchWithDonatedAction:(id)a3 donationDate:(id)a4
{
  v9 = a3;
  v7 = a4;
  if (self->_partiallyExecutedAction)
  {
    objc_storeStrong(&self->_matchingIntentDonatedAction, a3);
    objc_storeStrong(&self->_matchingIntentDonationDate, a4);
    partialEngagementWasCompleteMatch = self->_partialEngagementWasCompleteMatch;
    self->_partialEngagementWasCompleteMatch = MEMORY[0x277CBEC38];
  }
}

- (void)markPartiallyExecutedSuggestionAsPartialMatchWithDonatedAction:(id)a3 donationDate:(id)a4
{
  v9 = a3;
  v7 = a4;
  if (self->_partiallyExecutedAction)
  {
    objc_storeStrong(&self->_matchingIntentDonatedAction, a3);
    objc_storeStrong(&self->_matchingIntentDonationDate, a4);
    partialEngagementWasCompleteMatch = self->_partialEngagementWasCompleteMatch;
    self->_partialEngagementWasCompleteMatch = MEMORY[0x277CBEC28];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ATXProactiveSuggestionPartialIntentResultWrapper;
  v4 = a3;
  [(ATXProactiveSuggestionUIFeedbackResult *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_partiallyExecutedUUID forKey:{@"partialUUID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_partiallyExecutedAction forKey:@"partialAction"];
  [v4 encodeObject:self->_partiallyExecutedActionStartDate forKey:@"partialActionDate"];
  [v4 encodeObject:self->_matchingIntentDonatedAction forKey:@"matchingAction"];
  [v4 encodeObject:self->_matchingIntentDonationDate forKey:@"matchingActionDate"];
  [v4 encodeObject:self->_partialEngagementWasCompleteMatch forKey:@"partialEngagement"];
}

- (ATXProactiveSuggestionPartialIntentResultWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = ATXProactiveSuggestionPartialIntentResultWrapper;
  v5 = [(ATXProactiveSuggestionUIFeedbackResult *)&v41 initWithCoder:v4];
  v6 = MEMORY[0x277D42620];
  v7 = objc_opt_class();
  v8 = __atxlog_handle_blending_ecosystem();
  v9 = [v6 robustDecodeObjectOfClass:v7 forKey:@"partialUUID" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionPartialIntentResultWrapper" errorCode:-1 logHandle:v8];

  v10 = [v4 error];

  if (v10)
  {
    v11 = 0;
    v12 = v5;
  }

  else
  {
    v13 = MEMORY[0x277D42620];
    v14 = objc_opt_class();
    v15 = __atxlog_handle_blending_ecosystem();
    v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"partialAction" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionPartialIntentResultWrapper" errorCode:-1 logHandle:v15];

    v17 = [v4 error];

    if (v17)
    {
      v11 = 0;
      v12 = v5;
    }

    else
    {
      v18 = MEMORY[0x277D42620];
      v19 = objc_opt_class();
      v20 = __atxlog_handle_blending_ecosystem();
      v21 = [v18 robustDecodeObjectOfClass:v19 forKey:@"partialActionDate" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionPartialIntentResultWrapper" errorCode:-1 logHandle:v20];

      v22 = [v4 error];

      if (v22)
      {
        v11 = 0;
        v12 = v5;
      }

      else
      {
        v23 = MEMORY[0x277D42620];
        v24 = objc_opt_class();
        v25 = __atxlog_handle_blending_ecosystem();
        v26 = [v23 robustDecodeObjectOfClass:v24 forKey:@"matchingAction" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionPartialIntentResultWrapper" errorCode:-1 logHandle:v25];

        v27 = [v4 error];

        if (v27)
        {
          v11 = 0;
          v12 = v5;
        }

        else
        {
          v28 = MEMORY[0x277D42620];
          v29 = objc_opt_class();
          v30 = __atxlog_handle_blending_ecosystem();
          v31 = [v28 robustDecodeObjectOfClass:v29 forKey:@"matchingActionDate" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionPartialIntentResultWrapper" errorCode:-1 logHandle:v30];

          v32 = [v4 error];

          if (v32)
          {
            v11 = 0;
            v12 = v5;
          }

          else
          {
            v33 = MEMORY[0x277D42620];
            v34 = objc_opt_class();
            v35 = __atxlog_handle_blending_ecosystem();
            v36 = [v33 robustDecodeObjectOfClass:v34 forKey:@"partialEngagement" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionPartialIntentResultWrapper" errorCode:-1 logHandle:v35];

            v37 = [v4 error];

            if (v37)
            {
              v11 = 0;
              v38 = v36;
              v12 = v5;
            }

            else
            {
              v39 = [(ATXProactiveSuggestionPartialIntentResultWrapper *)v5 initWithUIFeedbackResult:v5 partiallyExecutedUUID:v9 partiallyExecutedAction:v16 partiallyExecutedActionStartDate:v21 matchingIntentDonatedAction:v26 matchingIntentDonationDate:v31 partialEngagementWasCompleteMatch:v36];
              v38 = v36;
              v12 = v39;
              v11 = v39;
            }
          }
        }
      }
    }
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXProactiveSuggestionPartialIntentResultWrapper *)self isEqualToATXProactiveSuggestionPartialIntentResultWrapper:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXProactiveSuggestionPartialIntentResultWrapper:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = ATXProactiveSuggestionPartialIntentResultWrapper;
  if (![(ATXProactiveSuggestionUIFeedbackResult *)&v24 isEqual:v4])
  {
    goto LABEL_20;
  }

  v5 = self->_partiallyExecutedUUID;
  v6 = v5;
  if (v5 == v4[11])
  {
  }

  else
  {
    v7 = [(NSUUID *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v8 = self->_partiallyExecutedAction;
  v9 = v8;
  if (v8 == v4[12])
  {
  }

  else
  {
    v10 = [(ATXAction *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v11 = self->_partiallyExecutedActionStartDate;
  v12 = v11;
  if (v11 == v4[13])
  {
  }

  else
  {
    v13 = [(NSDate *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v14 = self->_matchingIntentDonatedAction;
  v15 = v14;
  if (v14 == v4[14])
  {
  }

  else
  {
    v16 = [(ATXAction *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v17 = self->_matchingIntentDonationDate;
  v18 = v17;
  if (v17 == v4[15])
  {
  }

  else
  {
    v19 = [(NSDate *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
LABEL_20:
      v20 = 0;
      goto LABEL_21;
    }
  }

  v22 = self->_partialEngagementWasCompleteMatch;
  v23 = v22;
  if (v22 == v4[16])
  {
    v20 = 1;
  }

  else
  {
    v20 = [(NSNumber *)v22 isEqual:?];
  }

LABEL_21:
  return v20;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_partiallyExecutedUUID hash];
  v4 = [(ATXAction *)self->_partiallyExecutedAction hash]- v3 + 32 * v3;
  v5 = [(NSDate *)self->_partiallyExecutedActionStartDate hash]- v4 + 32 * v4;
  v6 = [(ATXAction *)self->_matchingIntentDonatedAction hash]- v5 + 32 * v5;
  v7 = [(NSDate *)self->_matchingIntentDonationDate hash]- v6 + 32 * v6;
  return [(NSNumber *)self->_partialEngagementWasCompleteMatch hash]- v7 + 32 * v7;
}

@end
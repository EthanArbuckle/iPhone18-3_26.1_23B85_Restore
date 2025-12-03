@interface ATXProactiveSuggestionPartialIntentResultWrapper
- (ATXProactiveSuggestionPartialIntentResultWrapper)initWithCoder:(id)coder;
- (ATXProactiveSuggestionPartialIntentResultWrapper)initWithUIFeedbackResult:(id)result partiallyExecutedUUID:(id)d partiallyExecutedAction:(id)action partiallyExecutedActionStartDate:(id)date matchingIntentDonatedAction:(id)donatedAction matchingIntentDonationDate:(id)donationDate partialEngagementWasCompleteMatch:(id)match;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXProactiveSuggestionPartialIntentResultWrapper:(id)wrapper;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)markPartiallyExecutedSuggestionAsAbandoned;
- (void)markPartiallyExecutedSuggestionAsCompleteMatchWithDonatedAction:(id)action donationDate:(id)date;
- (void)markPartiallyExecutedSuggestionAsPartialMatchWithDonatedAction:(id)action donationDate:(id)date;
- (void)updatePartiallyExecutedActionWithProactiveSuggestion:(id)suggestion;
@end

@implementation ATXProactiveSuggestionPartialIntentResultWrapper

- (ATXProactiveSuggestionPartialIntentResultWrapper)initWithUIFeedbackResult:(id)result partiallyExecutedUUID:(id)d partiallyExecutedAction:(id)action partiallyExecutedActionStartDate:(id)date matchingIntentDonatedAction:(id)donatedAction matchingIntentDonationDate:(id)donationDate partialEngagementWasCompleteMatch:(id)match
{
  dCopy = d;
  actionCopy = action;
  actionCopy2 = action;
  dateCopy = date;
  dateCopy2 = date;
  donatedActionCopy = donatedAction;
  donatedActionCopy2 = donatedAction;
  donationDateCopy = donationDate;
  donationDateCopy2 = donationDate;
  matchCopy = match;
  resultCopy = result;
  shownSuggestions = [resultCopy shownSuggestions];
  engagedSuggestions = [resultCopy engagedSuggestions];
  rejectedSuggestions = [resultCopy rejectedSuggestions];
  session = [resultCopy session];
  consumerSubType = [resultCopy consumerSubType];
  clientCacheUpdate = [resultCopy clientCacheUpdate];
  uiCacheUpdate = [resultCopy uiCacheUpdate];
  context = [resultCopy context];

  v37.receiver = self;
  v37.super_class = ATXProactiveSuggestionPartialIntentResultWrapper;
  v24 = [(ATXProactiveSuggestionUIFeedbackResult *)&v37 initWithShownSuggestions:shownSuggestions engagedSuggestions:engagedSuggestions rejectedSuggestions:rejectedSuggestions session:session consumerSubType:consumerSubType clientCacheUpdate:clientCacheUpdate uiCacheUpdate:uiCacheUpdate context:context];

  if (v24)
  {
    objc_storeStrong(&v24->_partiallyExecutedUUID, d);
    objc_storeStrong(&v24->_partiallyExecutedAction, actionCopy);
    objc_storeStrong(&v24->_partiallyExecutedActionStartDate, dateCopy);
    objc_storeStrong(&v24->_matchingIntentDonatedAction, donatedActionCopy);
    objc_storeStrong(&v24->_matchingIntentDonationDate, donationDateCopy);
    objc_storeStrong(&v24->_partialEngagementWasCompleteMatch, match);
  }

  return v24;
}

- (void)updatePartiallyExecutedActionWithProactiveSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  atxActionExecutableObject = [suggestionCopy atxActionExecutableObject];
  if (atxActionExecutableObject)
  {
    uuid = [suggestionCopy uuid];
    partiallyExecutedUUID = self->_partiallyExecutedUUID;
    self->_partiallyExecutedUUID = uuid;

    objc_storeStrong(&self->_partiallyExecutedAction, atxActionExecutableObject);
    session = [(ATXProactiveSuggestionUIFeedbackResult *)self session];
    sessionEndDate = [session sessionEndDate];
    partiallyExecutedActionStartDate = self->_partiallyExecutedActionStartDate;
    self->_partiallyExecutedActionStartDate = sessionEndDate;
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

- (void)markPartiallyExecutedSuggestionAsCompleteMatchWithDonatedAction:(id)action donationDate:(id)date
{
  actionCopy = action;
  dateCopy = date;
  if (self->_partiallyExecutedAction)
  {
    objc_storeStrong(&self->_matchingIntentDonatedAction, action);
    objc_storeStrong(&self->_matchingIntentDonationDate, date);
    partialEngagementWasCompleteMatch = self->_partialEngagementWasCompleteMatch;
    self->_partialEngagementWasCompleteMatch = MEMORY[0x277CBEC38];
  }
}

- (void)markPartiallyExecutedSuggestionAsPartialMatchWithDonatedAction:(id)action donationDate:(id)date
{
  actionCopy = action;
  dateCopy = date;
  if (self->_partiallyExecutedAction)
  {
    objc_storeStrong(&self->_matchingIntentDonatedAction, action);
    objc_storeStrong(&self->_matchingIntentDonationDate, date);
    partialEngagementWasCompleteMatch = self->_partialEngagementWasCompleteMatch;
    self->_partialEngagementWasCompleteMatch = MEMORY[0x277CBEC28];
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ATXProactiveSuggestionPartialIntentResultWrapper;
  coderCopy = coder;
  [(ATXProactiveSuggestionUIFeedbackResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_partiallyExecutedUUID forKey:{@"partialUUID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_partiallyExecutedAction forKey:@"partialAction"];
  [coderCopy encodeObject:self->_partiallyExecutedActionStartDate forKey:@"partialActionDate"];
  [coderCopy encodeObject:self->_matchingIntentDonatedAction forKey:@"matchingAction"];
  [coderCopy encodeObject:self->_matchingIntentDonationDate forKey:@"matchingActionDate"];
  [coderCopy encodeObject:self->_partialEngagementWasCompleteMatch forKey:@"partialEngagement"];
}

- (ATXProactiveSuggestionPartialIntentResultWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = ATXProactiveSuggestionPartialIntentResultWrapper;
  v5 = [(ATXProactiveSuggestionUIFeedbackResult *)&v41 initWithCoder:coderCopy];
  v6 = MEMORY[0x277D42620];
  v7 = objc_opt_class();
  v8 = __atxlog_handle_blending_ecosystem();
  v9 = [v6 robustDecodeObjectOfClass:v7 forKey:@"partialUUID" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionPartialIntentResultWrapper" errorCode:-1 logHandle:v8];

  error = [coderCopy error];

  if (error)
  {
    v11 = 0;
    v12 = v5;
  }

  else
  {
    v13 = MEMORY[0x277D42620];
    v14 = objc_opt_class();
    v15 = __atxlog_handle_blending_ecosystem();
    v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"partialAction" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionPartialIntentResultWrapper" errorCode:-1 logHandle:v15];

    error2 = [coderCopy error];

    if (error2)
    {
      v11 = 0;
      v12 = v5;
    }

    else
    {
      v18 = MEMORY[0x277D42620];
      v19 = objc_opt_class();
      v20 = __atxlog_handle_blending_ecosystem();
      v21 = [v18 robustDecodeObjectOfClass:v19 forKey:@"partialActionDate" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionPartialIntentResultWrapper" errorCode:-1 logHandle:v20];

      error3 = [coderCopy error];

      if (error3)
      {
        v11 = 0;
        v12 = v5;
      }

      else
      {
        v23 = MEMORY[0x277D42620];
        v24 = objc_opt_class();
        v25 = __atxlog_handle_blending_ecosystem();
        v26 = [v23 robustDecodeObjectOfClass:v24 forKey:@"matchingAction" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionPartialIntentResultWrapper" errorCode:-1 logHandle:v25];

        error4 = [coderCopy error];

        if (error4)
        {
          v11 = 0;
          v12 = v5;
        }

        else
        {
          v28 = MEMORY[0x277D42620];
          v29 = objc_opt_class();
          v30 = __atxlog_handle_blending_ecosystem();
          v31 = [v28 robustDecodeObjectOfClass:v29 forKey:@"matchingActionDate" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionPartialIntentResultWrapper" errorCode:-1 logHandle:v30];

          error5 = [coderCopy error];

          if (error5)
          {
            v11 = 0;
            v12 = v5;
          }

          else
          {
            v33 = MEMORY[0x277D42620];
            v34 = objc_opt_class();
            v35 = __atxlog_handle_blending_ecosystem();
            v36 = [v33 robustDecodeObjectOfClass:v34 forKey:@"partialEngagement" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionPartialIntentResultWrapper" errorCode:-1 logHandle:v35];

            error6 = [coderCopy error];

            if (error6)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXProactiveSuggestionPartialIntentResultWrapper *)self isEqualToATXProactiveSuggestionPartialIntentResultWrapper:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXProactiveSuggestionPartialIntentResultWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v24.receiver = self;
  v24.super_class = ATXProactiveSuggestionPartialIntentResultWrapper;
  if (![(ATXProactiveSuggestionUIFeedbackResult *)&v24 isEqual:wrapperCopy])
  {
    goto LABEL_20;
  }

  v5 = self->_partiallyExecutedUUID;
  v6 = v5;
  if (v5 == wrapperCopy[11])
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
  if (v8 == wrapperCopy[12])
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
  if (v11 == wrapperCopy[13])
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
  if (v14 == wrapperCopy[14])
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
  if (v17 == wrapperCopy[15])
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
  if (v22 == wrapperCopy[16])
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
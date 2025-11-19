@interface ATXProactiveSuggestionClientModelEvaluationResult
+ (int64_t)rankOfEngagedSuggestion:(id)a3 inSuggestions:(id)a4;
- (ATXProactiveSuggestionClientModelEvaluationResult)initWithSessionType:(unint64_t)a3 executableType:(int64_t)a4 removeDockedApps:(BOOL)a5;
- (id)description;
- (id)filteredSuggestions:(id)a3 removeDockedApps:(BOOL)a4;
- (void)updateCountsForSessionsWithShownSuggestions:(id)a3 engagedSuggestions:(id)a4 rejectedSuggestions:(id)a5;
@end

@implementation ATXProactiveSuggestionClientModelEvaluationResult

- (ATXProactiveSuggestionClientModelEvaluationResult)initWithSessionType:(unint64_t)a3 executableType:(int64_t)a4 removeDockedApps:(BOOL)a5
{
  v22.receiver = self;
  v22.super_class = ATXProactiveSuggestionClientModelEvaluationResult;
  v8 = [(ATXProactiveSuggestionClientModelEvaluationResult *)&v22 init];
  v9 = v8;
  if (v8)
  {
    v8->_sessionType = a3;
    v8->_executableType = a4;
    v8->_removeDockedApps = a5;
    v10 = +[_ATXAppIconState sharedInstance];
    v11 = [v10 allDockedApps];
    dockedApps = v9->_dockedApps;
    v9->_dockedApps = v11;

    v13 = objc_opt_new();
    engagedInTop4PerCandidate = v9->_engagedInTop4PerCandidate;
    v9->_engagedInTop4PerCandidate = v13;

    v15 = objc_opt_new();
    engagedInTop8PerCandidate = v9->_engagedInTop8PerCandidate;
    v9->_engagedInTop8PerCandidate = v15;

    v17 = objc_opt_new();
    shownInTop8PerCandidate = v9->_shownInTop8PerCandidate;
    v9->_shownInTop8PerCandidate = v17;

    v19 = objc_opt_new();
    engagedPerCandidate = v9->_engagedPerCandidate;
    v9->_engagedPerCandidate = v19;
  }

  return v9;
}

- (void)updateCountsForSessionsWithShownSuggestions:(id)a3 engagedSuggestions:(id)a4 rejectedSuggestions:(id)a5
{
  v47 = a3;
  v7 = a4;
  if ([v7 count])
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    if ([v8 executableType] != self->_executableType || self->_removeDockedApps && (dockedApps = self->_dockedApps, objc_msgSend(v8, "executableIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), LOBYTE(dockedApps) = -[NSSet containsObject:](dockedApps, "containsObject:", v10), v10, (dockedApps & 1) != 0))
    {
LABEL_30:

      goto LABEL_31;
    }

    v11 = [MEMORY[0x277CEBCF0] consumerTypeForSubType:{objc_msgSend(v8, "consumerSubType")}] == 14 && self->_executableType == 1;
    v12 = [(ATXProactiveSuggestionClientModelEvaluationResult *)self filteredSuggestions:v47 removeDockedApps:self->_removeDockedApps || v11];
    v13 = [objc_opt_class() rankOfEngagedSuggestion:v8 inSuggestions:v12];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      engagedInTop1 = self->_engagedInTop1;
      engagedInTop2 = self->_engagedInTop2;
      if (!v13)
      {
        ++engagedInTop1;
      }

      if (v13 < 2)
      {
        ++engagedInTop2;
      }

      self->_engagedInTop1 = engagedInTop1;
      self->_engagedInTop2 = engagedInTop2;
      engagedInTop4 = self->_engagedInTop4;
      engagedInTop8 = self->_engagedInTop8;
      if (v13 < 4)
      {
        ++engagedInTop4;
      }

      if (v13 < 8)
      {
        ++engagedInTop8;
      }

      self->_engagedInTop4 = engagedInTop4;
      self->_engagedInTop8 = engagedInTop8;
      self->_reciprocalRank = (1.0 / (v13 + 1)) + self->_reciprocalRank;
      if (v13 <= 3)
      {
        v18 = MEMORY[0x277CCABB0];
        engagedInTop4PerCandidate = self->_engagedInTop4PerCandidate;
        v20 = [v8 executableIdentifier];
        v21 = [(NSMutableDictionary *)engagedInTop4PerCandidate objectForKeyedSubscript:v20];
        v22 = [v18 numberWithInt:{objc_msgSend(v21, "intValue") + 1}];
        v23 = self->_engagedInTop4PerCandidate;
        v24 = [v8 executableIdentifier];
        [(NSMutableDictionary *)v23 setObject:v22 forKeyedSubscript:v24];

LABEL_20:
        v25 = MEMORY[0x277CCABB0];
        engagedInTop8PerCandidate = self->_engagedInTop8PerCandidate;
        v27 = [v8 executableIdentifier];
        v28 = [(NSMutableDictionary *)engagedInTop8PerCandidate objectForKeyedSubscript:v27];
        v29 = [v25 numberWithInt:{objc_msgSend(v28, "intValue") + 1}];
        v30 = self->_engagedInTop8PerCandidate;
        v31 = [v8 executableIdentifier];
        [(NSMutableDictionary *)v30 setObject:v29 forKeyedSubscript:v31];

        goto LABEL_21;
      }

      if (v13 <= 7)
      {
        goto LABEL_20;
      }
    }

LABEL_21:
    v32 = MEMORY[0x277CCABB0];
    engagedPerCandidate = self->_engagedPerCandidate;
    v34 = [v8 executableIdentifier];
    v35 = [(NSMutableDictionary *)engagedPerCandidate objectForKeyedSubscript:v34];
    v36 = [v32 numberWithInt:{objc_msgSend(v35, "intValue") + 1}];
    v37 = self->_engagedPerCandidate;
    v38 = [v8 executableIdentifier];
    [(NSMutableDictionary *)v37 setObject:v36 forKeyedSubscript:v38];

    if ([v12 count])
    {
      v39 = 0;
      do
      {
        v40 = [v12 objectAtIndexedSubscript:v39];
        v41 = [v40 executableIdentifier];

        v42 = MEMORY[0x277CCABB0];
        v43 = [(NSMutableDictionary *)self->_shownInTop8PerCandidate objectForKeyedSubscript:v41];
        v44 = [v42 numberWithInt:{objc_msgSend(v43, "intValue") + 1}];
        [(NSMutableDictionary *)self->_shownInTop8PerCandidate setObject:v44 forKeyedSubscript:v41];

        ++v39;
        v45 = [v12 count];
        if (v45 >= 8)
        {
          v46 = 8;
        }

        else
        {
          v46 = v45;
        }
      }

      while (v46 > v39);
    }

    if ([v12 count])
    {
      ++self->_numberOfSessionsWithPredictions;
    }

    ++self->_numberOfSessions;

    goto LABEL_30;
  }

LABEL_31:
}

+ (int64_t)rankOfEngagedSuggestion:(id)a3 inSuggestions:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v6 count])
  {
LABEL_8:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  v7 = 0;
  while (1)
  {
    v8 = [v6 objectAtIndexedSubscript:v7];
    v9 = [v8 executableIdentifier];
    v10 = [v5 executableIdentifier];
    if (![v9 isEqualToString:v10])
    {

      goto LABEL_7;
    }

    v11 = [v5 executableType];
    v12 = [v8 executableType];

    if (v11 == v12)
    {
      break;
    }

LABEL_7:

    if (++v7 >= [v6 count])
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  return v7;
}

- (id)filteredSuggestions:(id)a3 removeDockedApps:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if (v4)
        {
          dockedApps = self->_dockedApps;
          v15 = [*(*(&v19 + 1) + 8 * i) executableIdentifier];
          v16 = [(NSSet *)dockedApps containsObject:v15];
        }

        else
        {
          v16 = 0;
        }

        if ([v13 executableType] == self->_executableType && !v16)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)description
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableDictionary *)self->_shownInTop8PerCandidate keysSortedByValueUsingComparator:&__block_literal_global_80];
  v4 = [(NSMutableDictionary *)self->_shownInTop8PerCandidate count];
  if (v4 >= 0x14)
  {
    v5 = 20;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 subarrayWithRange:{0, v5}];

  v7 = objc_opt_new();
  sessionType = self->_sessionType;
  if (sessionType)
  {
    if (sessionType == 1)
    {
      v9 = @"UI";
    }

    else
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %lu)", self->_sessionType];
    }
  }

  else
  {
    v9 = @"Shadow";
  }

  [v7 appendFormat:@"Session Type: %@\n", v9];

  executableType = self->_executableType;
  if (executableType >= 0xC)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %li)", self->_executableType];
  }

  else
  {
    v11 = off_27859B008[executableType];
  }

  [v7 appendFormat:@"Suggestion Type: %@\n", v11];

  if (self->_executableType == 1)
  {
    if (self->_removeDockedApps)
    {
      dockedApps = self->_dockedApps;
    }

    else
    {
      dockedApps = @"None";
    }

    [v7 appendFormat:@"Docked Apps Removed: %@\n", dockedApps];
  }

  [v7 appendFormat:@"Success@1: %.02f\n", (self->_engagedInTop1 / self->_numberOfSessionsWithPredictions)];
  [v7 appendFormat:@"Success@2: %.02f\n", (self->_engagedInTop2 / self->_numberOfSessionsWithPredictions)];
  [v7 appendFormat:@"Success@4: %.02f\n", (self->_engagedInTop4 / self->_numberOfSessionsWithPredictions)];
  [v7 appendFormat:@"Success@8: %.02f\n", (self->_engagedInTop8 / self->_numberOfSessionsWithPredictions)];
  [v7 appendFormat:@"Mean Reciprocal Rank (MRR): %.02f\n", (self->_reciprocalRank / self->_numberOfSessionsWithPredictions)];
  [v7 appendFormat:@"# Sessions w predictions: %lu\n", self->_numberOfSessionsWithPredictions];
  [v7 appendFormat:@"# Sessions: %lu\n", self->_numberOfSessions];
  [v7 appendFormat:@"Top predicted candidates:\n"];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v41;
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v40 + 1) + 8 * i);
        v22 = [(NSMutableDictionary *)self->_engagedInTop8PerCandidate objectForKeyedSubscript:v21];
        [v22 floatValue];
        v24 = v23;
        v25 = [(NSMutableDictionary *)self->_engagedPerCandidate objectForKeyedSubscript:v21];
        [v25 floatValue];
        *&v24 = v24 / (v26 + 0.000001);

        v27 = [(NSMutableDictionary *)self->_engagedInTop8PerCandidate objectForKeyedSubscript:v21];
        [v27 floatValue];
        v29 = v28;
        v30 = [(NSMutableDictionary *)self->_shownInTop8PerCandidate objectForKeyedSubscript:v21];
        [v30 floatValue];
        *&v29 = v29 / (v31 + 0.000001);

        v32 = (*&v24 * *&v29) / ((*&v24 + *&v29) + 0.000001) + (*&v24 * *&v29) / ((*&v24 + *&v29) + 0.000001);
        v33 = [(NSMutableDictionary *)self->_engagedPerCandidate objectForKeyedSubscript:v21];
        [v33 floatValue];
        v35 = v34 / self->_numberOfSessions;

        v19 = v19 + v32;
        v18 = v18 + (v32 * v35);
        v17 = v17 + v35;
        v36 = [(NSMutableDictionary *)self->_shownInTop8PerCandidate objectForKeyedSubscript:v21];
        [v36 floatValue];
        [v7 appendFormat:@"\t launched: %.02f; shown %.02f; precision %.02f; recall %.02f; f1 %.02f; candidate: %@\n", v35, (v37 / self->_numberOfSessions), *&v29, *&v24, v32, v21, v40];
      }

      v15 = [v13 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v15);
  }

  else
  {
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
  }

  [v7 appendFormat:@"\tAverage F1 Score in top predicted candidates: %.02f\n", (v19 / objc_msgSend(v13, "count"))];
  [v7 appendFormat:@"\tLaunch-weighted Average F1 Score for top predicted candidates: %.02f\n", (v18 / v17)];

  v38 = *MEMORY[0x277D85DE8];

  return v7;
}

@end
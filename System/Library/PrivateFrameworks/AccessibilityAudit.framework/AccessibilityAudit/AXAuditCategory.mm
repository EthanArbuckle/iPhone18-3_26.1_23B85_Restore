@interface AXAuditCategory
+ (void)initialize;
- (AXAuditCategory)init;
- (AXAuditCategoryDelegate)delegate;
- (BOOL)localIssueShouldRun:(id)a3;
- (BOOL)shouldRunAuditTestType:(id)a3;
- (BOOL)supportsAuditTestType:(id)a3;
- (id)_availableCasesDescription;
- (id)caseStartedForSelectorName:(id)a3;
- (id)description;
- (id)result;
- (unint64_t)categoryType;
- (void)addIssueWithClassification:(int64_t)a3 auditElement:(id)a4 elementRect:(CGRect)a5 elementDescription:(id)a6 mlGeneratedDescription:(id)a7 longDescExtraInfo:(id)a8 elementText:(id)a9;
- (void)caseEndedForSelectorName:(id)a3 result:(id)a4;
- (void)run;
- (void)setTitle:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation AXAuditCategory

+ (void)initialize
{
  v2 = os_log_create("com.apple.AccessibilityAudit", "AccessibilityAudit");
  v3 = log_category_signpost;
  log_category_signpost = v2;

  category_spid = os_signpost_id_generate(log_category_signpost);
}

- (AXAuditCategory)init
{
  v7.receiver = self;
  v7.super_class = AXAuditCategory;
  v2 = [(AXAuditCategory *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    title = v2->_title;
    v2->_title = v4;

    AXDevicePrimeDisplayManager();
  }

  return v2;
}

- (BOOL)localIssueShouldRun:(id)a3
{
  v4 = a3;
  v5 = +[AXAuditIssueDescriptionManager auditIssueTypeToAuditTestTypeMapping];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [(AXAuditCategory *)self currentAuditTypesToTestFor];
    v8 = [v7 containsObject:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)shouldRunAuditTestType:(id)a3
{
  v4 = a3;
  v5 = [(AXAuditCategory *)self currentAuditTypesToTestFor];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)supportsAuditTestType:(id)a3
{
  v4 = a3;
  v5 = [(AXAuditCategory *)self allSupportedAuditTypes];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (id)_availableCasesDescription
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(AXAuditCategory *)self caseSelectorsForAuditing];
  [v3 appendFormat:@"\nContains %i test cases {\n", objc_msgSend(v4, "count")];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(AXAuditCategory *)self caseSelectorsForAuditing];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v3 appendFormat:@"   %@\n", *(*(&v13 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [v3 appendString:@"}\n"];
  v10 = [v3 copy];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)description
{
  v3 = objc_opt_new();
  v10.receiver = self;
  v10.super_class = AXAuditCategory;
  v4 = [(AXAuditCategory *)&v10 description];
  [v3 appendString:v4];

  v5 = [(AXAuditCategory *)self title];
  if ([v5 length])
  {
    [v3 appendFormat:@" %@", v5];
  }

  v6 = [(AXAuditCategory *)self _availableCasesDescription];
  v7 = [v6 mutableCopy];

  [v7 replaceOccurrencesOfString:@"\n" withString:@"\n   " options:1 range:{0, objc_msgSend(v7, "length")}];
  [v3 appendString:v7];
  v8 = [v3 copy];

  return v8;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(AXAuditCategory *)self _result];
  [v5 setTitle:v4];

  title = self->_title;
  self->_title = v4;
}

- (id)result
{
  v3 = [(AXAuditCategory *)self _result];
  if (!v3)
  {
    v3 = objc_opt_new();
    v4 = [(AXAuditCategory *)self title];
    [v3 setTitle:v4];

    [(AXAuditCategory *)self set_result:v3];
  }

  return v3;
}

- (unint64_t)categoryType
{
  if (self->_categoryType - 1 >= 3)
  {
    return 1;
  }

  else
  {
    return self->_categoryType;
  }
}

- (void)run
{
  v21 = *MEMORY[0x277D85DE8];
  [(AXAuditCategory *)self start];
  v3 = [(AXAuditCategory *)self caseSelectorsForAuditing];
  v4 = [(AXAuditCategory *)self _currentTestingCaseSelectors];
  [v4 removeAllObjects];

  v5 = [MEMORY[0x277CBEB18] array];
  [(AXAuditCategory *)self set_currentTestingCaseSelectors:v5];

  v6 = [(AXAuditCategory *)self currentAuditTypesToTestFor];
  if (![v6 count])
  {

    goto LABEL_14;
  }

  v7 = [v3 count];

  if (!v7)
  {
LABEL_14:
    [(AXAuditCategory *)self stop];
    goto LABEL_15;
  }

  v8 = [(AXAuditCategory *)self _currentTestingCaseSelectors];
  [v8 addObjectsFromArray:v3];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = NSSelectorFromString(*(*(&v16 + 1) + 8 * v13));
        if (v14)
        {
          [self v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

LABEL_15:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v6 = [(AXAuditCategory *)self result];
  [v6 appendLog:@"\n"];
  [v6 appendLog:@"===================================================================="];
  if ([(AXAuditCategory *)self targetPid])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@" (against pid: %i)", -[AXAuditCategory targetPid](self, "targetPid")];
  }

  else
  {
    v3 = &stru_284FBB130;
  }

  v4 = [(AXAuditCategory *)self title];
  [v6 appendLog:{@"Test Starting: %@%@", v4, v3}];

  v5 = [MEMORY[0x277CBEAA8] date];
  [v6 setStartTime:v5];
}

- (void)stop
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(AXAuditCategory *)self result];
  v4 = [MEMORY[0x277CBEAA8] date];
  [v3 setEndTime:v4];

  [v3 appendLog:@"\n"];
  v5 = [(AXAuditCategory *)self title];
  v6 = [v3 executionTimeString];
  [v3 appendLog:{@"Test Complete: %@ -- Execution time:%@", v5, v6}];

  v7 = [v3 issueCount];
  if (v7)
  {
    if (v7 == 1)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Found %i issue", 1];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Found %i issues", v7];
    }
    v8 = ;
  }

  else
  {
    v8 = @"No issues";
  }

  [v3 appendLog:v8];
  [v3 appendLog:@"====================================================================\n"];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v3 issueSummaryStrings];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v3 appendLog:*(*(&v16 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [v3 appendLog:@"\n"];
  [v3 appendLog:@"===================================================================="];
  v14 = [(AXAuditCategory *)self delegate];
  [v14 didCompleteCategory:self];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)caseStartedForSelectorName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = log_category_signpost;
  v6 = v5;
  v7 = category_spid;
  if ((category_spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 138543362;
    v17 = v4;
    _os_signpost_emit_with_name_impl(&dword_23D6FE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "AXAuditCase", "Starting test case: %{public}@", buf, 0xCu);
  }

  v8 = [(AXAuditCategory *)self currentCaseResult];

  if (v8)
  {
    v9 = 0.0;
    do
    {
      [MEMORY[0x277CCACC8] sleepForTimeInterval:1.0];
      v10 = [(AXAuditCategory *)self currentCaseResult];

      if (!v10)
      {
        break;
      }

      v9 = v9 + 1.0;
    }

    while (v9 < 20.0);
  }

  v11 = [(AXAuditCategory *)self result];
  v12 = objc_opt_new();
  [v11 addCaseResult:v12];
  [(AXAuditCategory *)self setCurrentCaseResult:v12];
  [v11 appendLog:@"===================================================================="];
  [v11 appendLog:{@"Case Starting %@", v4}];
  [v12 setCaseTitle:v4];
  v13 = [MEMORY[0x277CBEAA8] date];
  [v12 setStartTime:v13];

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)caseEndedForSelectorName:(id)a3 result:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = log_category_signpost;
  v9 = v8;
  v10 = category_spid;
  if ((category_spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 138543362;
    v19 = v6;
    _os_signpost_emit_with_name_impl(&dword_23D6FE000, v9, OS_SIGNPOST_INTERVAL_END, v10, "AXAuditCase", "Completed test case: %{public}@", buf, 0xCu);
  }

  v11 = [(AXAuditCategory *)self result];
  v12 = [MEMORY[0x277CBEAA8] date];
  [v7 setEndTime:v12];

  v13 = [v7 executionTimeString];
  [v11 appendLog:{@"Case Complete: %@ -- Execution time:%@", v6, v13}];

  [v11 appendLog:@"====================================================================\n"];
  [(AXAuditCategory *)self setCurrentCaseResult:0];
  v14 = [(AXAuditCategory *)self _currentTestingCaseSelectors];
  [v14 removeObject:v6];

  [(AXAuditCategory *)self setLastCaseSelectorFinishedName:v6];
  v15 = [(AXAuditCategory *)self _currentTestingCaseSelectors];
  v16 = [v15 count];

  if (!v16)
  {
    [(AXAuditCategory *)self stop];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addIssueWithClassification:(int64_t)a3 auditElement:(id)a4 elementRect:(CGRect)a5 elementDescription:(id)a6 mlGeneratedDescription:(id)a7 longDescExtraInfo:(id)a8 elementText:(id)a9
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v18 = a4;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = [AXAuditIssue auditIssueForClassification:a3];
  v24 = [v18 axElement];
  v25 = v24;
  if (!v24)
  {
    if (isAppleInternalBuild())
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  pid = 0;
  if (AXUIElementGetPid([v24 elementRef], &pid) || !AuditDoesAllowDeveloperAttributes(pid))
  {
LABEL_6:

    v22 = 0;
  }

LABEL_7:
  v26 = +[AXAuditIssueDescriptionManager auditIssueTypeToAuditTestTypeMapping];
  v27 = [MEMORY[0x277CCABB0] numberWithLong:a3];
  v28 = [v26 objectForKey:v27];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v23 setAuditTestType:v28];
    [v23 setAuditElement:v18];
    [v23 setElementDescription:v19];
    [v23 setElementRect:{x, y, width, height}];
    [v23 setLongDescExtraInfo:v21];
    [v23 setElementText:v22];
    [v23 setMlGeneratedDescription:v20];
    v29 = [(AXAuditCategory *)self currentCaseResult];
    [v29 addAuditIssue:v23];
    v30 = [(AXAuditCategory *)self delegate];
    [v30 auditCategory:self didEncounterIssue:v23];
  }
}

- (AXAuditCategoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
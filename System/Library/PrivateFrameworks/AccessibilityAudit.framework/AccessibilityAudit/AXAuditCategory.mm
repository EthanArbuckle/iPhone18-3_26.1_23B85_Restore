@interface AXAuditCategory
+ (void)initialize;
- (AXAuditCategory)init;
- (AXAuditCategoryDelegate)delegate;
- (BOOL)localIssueShouldRun:(id)run;
- (BOOL)shouldRunAuditTestType:(id)type;
- (BOOL)supportsAuditTestType:(id)type;
- (id)_availableCasesDescription;
- (id)caseStartedForSelectorName:(id)name;
- (id)description;
- (id)result;
- (unint64_t)categoryType;
- (void)addIssueWithClassification:(int64_t)classification auditElement:(id)element elementRect:(CGRect)rect elementDescription:(id)description mlGeneratedDescription:(id)generatedDescription longDescExtraInfo:(id)info elementText:(id)text;
- (void)caseEndedForSelectorName:(id)name result:(id)result;
- (void)run;
- (void)setTitle:(id)title;
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

- (BOOL)localIssueShouldRun:(id)run
{
  runCopy = run;
  v5 = +[AXAuditIssueDescriptionManager auditIssueTypeToAuditTestTypeMapping];
  v6 = [v5 objectForKey:runCopy];

  if (v6)
  {
    currentAuditTypesToTestFor = [(AXAuditCategory *)self currentAuditTypesToTestFor];
    v8 = [currentAuditTypesToTestFor containsObject:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)shouldRunAuditTestType:(id)type
{
  typeCopy = type;
  currentAuditTypesToTestFor = [(AXAuditCategory *)self currentAuditTypesToTestFor];
  v6 = [currentAuditTypesToTestFor containsObject:typeCopy];

  return v6;
}

- (BOOL)supportsAuditTestType:(id)type
{
  typeCopy = type;
  allSupportedAuditTypes = [(AXAuditCategory *)self allSupportedAuditTypes];
  v6 = [allSupportedAuditTypes containsObject:typeCopy];

  return v6;
}

- (id)_availableCasesDescription
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  caseSelectorsForAuditing = [(AXAuditCategory *)self caseSelectorsForAuditing];
  [v3 appendFormat:@"\nContains %i test cases {\n", objc_msgSend(caseSelectorsForAuditing, "count")];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  caseSelectorsForAuditing2 = [(AXAuditCategory *)self caseSelectorsForAuditing];
  v6 = [caseSelectorsForAuditing2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(caseSelectorsForAuditing2);
        }

        [v3 appendFormat:@"   %@\n", *(*(&v13 + 1) + 8 * i)];
      }

      v7 = [caseSelectorsForAuditing2 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

  title = [(AXAuditCategory *)self title];
  if ([title length])
  {
    [v3 appendFormat:@" %@", title];
  }

  _availableCasesDescription = [(AXAuditCategory *)self _availableCasesDescription];
  v7 = [_availableCasesDescription mutableCopy];

  [v7 replaceOccurrencesOfString:@"\n" withString:@"\n   " options:1 range:{0, objc_msgSend(v7, "length")}];
  [v3 appendString:v7];
  v8 = [v3 copy];

  return v8;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  _result = [(AXAuditCategory *)self _result];
  [_result setTitle:titleCopy];

  title = self->_title;
  self->_title = titleCopy;
}

- (id)result
{
  _result = [(AXAuditCategory *)self _result];
  if (!_result)
  {
    _result = objc_opt_new();
    title = [(AXAuditCategory *)self title];
    [_result setTitle:title];

    [(AXAuditCategory *)self set_result:_result];
  }

  return _result;
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
  caseSelectorsForAuditing = [(AXAuditCategory *)self caseSelectorsForAuditing];
  _currentTestingCaseSelectors = [(AXAuditCategory *)self _currentTestingCaseSelectors];
  [_currentTestingCaseSelectors removeAllObjects];

  array = [MEMORY[0x277CBEB18] array];
  [(AXAuditCategory *)self set_currentTestingCaseSelectors:array];

  currentAuditTypesToTestFor = [(AXAuditCategory *)self currentAuditTypesToTestFor];
  if (![currentAuditTypesToTestFor count])
  {

    goto LABEL_14;
  }

  v7 = [caseSelectorsForAuditing count];

  if (!v7)
  {
LABEL_14:
    [(AXAuditCategory *)self stop];
    goto LABEL_15;
  }

  _currentTestingCaseSelectors2 = [(AXAuditCategory *)self _currentTestingCaseSelectors];
  [_currentTestingCaseSelectors2 addObjectsFromArray:caseSelectorsForAuditing];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = caseSelectorsForAuditing;
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
  result = [(AXAuditCategory *)self result];
  [result appendLog:@"\n"];
  [result appendLog:@"===================================================================="];
  if ([(AXAuditCategory *)self targetPid])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@" (against pid: %i)", -[AXAuditCategory targetPid](self, "targetPid")];
  }

  else
  {
    v3 = &stru_284FBB130;
  }

  title = [(AXAuditCategory *)self title];
  [result appendLog:{@"Test Starting: %@%@", title, v3}];

  date = [MEMORY[0x277CBEAA8] date];
  [result setStartTime:date];
}

- (void)stop
{
  v21 = *MEMORY[0x277D85DE8];
  result = [(AXAuditCategory *)self result];
  date = [MEMORY[0x277CBEAA8] date];
  [result setEndTime:date];

  [result appendLog:@"\n"];
  title = [(AXAuditCategory *)self title];
  executionTimeString = [result executionTimeString];
  [result appendLog:{@"Test Complete: %@ -- Execution time:%@", title, executionTimeString}];

  issueCount = [result issueCount];
  if (issueCount)
  {
    if (issueCount == 1)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Found %i issue", 1];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Found %i issues", issueCount];
    }
    v8 = ;
  }

  else
  {
    v8 = @"No issues";
  }

  [result appendLog:v8];
  [result appendLog:@"====================================================================\n"];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  issueSummaryStrings = [result issueSummaryStrings];
  v10 = [issueSummaryStrings countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(issueSummaryStrings);
        }

        [result appendLog:*(*(&v16 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [issueSummaryStrings countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [result appendLog:@"\n"];
  [result appendLog:@"===================================================================="];
  delegate = [(AXAuditCategory *)self delegate];
  [delegate didCompleteCategory:self];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)caseStartedForSelectorName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = log_category_signpost;
  v6 = v5;
  v7 = category_spid;
  if ((category_spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 138543362;
    v17 = nameCopy;
    _os_signpost_emit_with_name_impl(&dword_23D6FE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "AXAuditCase", "Starting test case: %{public}@", buf, 0xCu);
  }

  currentCaseResult = [(AXAuditCategory *)self currentCaseResult];

  if (currentCaseResult)
  {
    v9 = 0.0;
    do
    {
      [MEMORY[0x277CCACC8] sleepForTimeInterval:1.0];
      currentCaseResult2 = [(AXAuditCategory *)self currentCaseResult];

      if (!currentCaseResult2)
      {
        break;
      }

      v9 = v9 + 1.0;
    }

    while (v9 < 20.0);
  }

  result = [(AXAuditCategory *)self result];
  v12 = objc_opt_new();
  [result addCaseResult:v12];
  [(AXAuditCategory *)self setCurrentCaseResult:v12];
  [result appendLog:@"===================================================================="];
  [result appendLog:{@"Case Starting %@", nameCopy}];
  [v12 setCaseTitle:nameCopy];
  date = [MEMORY[0x277CBEAA8] date];
  [v12 setStartTime:date];

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)caseEndedForSelectorName:(id)name result:(id)result
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  resultCopy = result;
  v8 = log_category_signpost;
  v9 = v8;
  v10 = category_spid;
  if ((category_spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 138543362;
    v19 = nameCopy;
    _os_signpost_emit_with_name_impl(&dword_23D6FE000, v9, OS_SIGNPOST_INTERVAL_END, v10, "AXAuditCase", "Completed test case: %{public}@", buf, 0xCu);
  }

  result = [(AXAuditCategory *)self result];
  date = [MEMORY[0x277CBEAA8] date];
  [resultCopy setEndTime:date];

  executionTimeString = [resultCopy executionTimeString];
  [result appendLog:{@"Case Complete: %@ -- Execution time:%@", nameCopy, executionTimeString}];

  [result appendLog:@"====================================================================\n"];
  [(AXAuditCategory *)self setCurrentCaseResult:0];
  _currentTestingCaseSelectors = [(AXAuditCategory *)self _currentTestingCaseSelectors];
  [_currentTestingCaseSelectors removeObject:nameCopy];

  [(AXAuditCategory *)self setLastCaseSelectorFinishedName:nameCopy];
  _currentTestingCaseSelectors2 = [(AXAuditCategory *)self _currentTestingCaseSelectors];
  v16 = [_currentTestingCaseSelectors2 count];

  if (!v16)
  {
    [(AXAuditCategory *)self stop];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addIssueWithClassification:(int64_t)classification auditElement:(id)element elementRect:(CGRect)rect elementDescription:(id)description mlGeneratedDescription:(id)generatedDescription longDescExtraInfo:(id)info elementText:(id)text
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  elementCopy = element;
  descriptionCopy = description;
  generatedDescriptionCopy = generatedDescription;
  infoCopy = info;
  textCopy = text;
  v23 = [AXAuditIssue auditIssueForClassification:classification];
  axElement = [elementCopy axElement];
  v25 = axElement;
  if (!axElement)
  {
    if (isAppleInternalBuild())
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  pid = 0;
  if (AXUIElementGetPid([axElement elementRef], &pid) || !AuditDoesAllowDeveloperAttributes(pid))
  {
LABEL_6:

    textCopy = 0;
  }

LABEL_7:
  v26 = +[AXAuditIssueDescriptionManager auditIssueTypeToAuditTestTypeMapping];
  v27 = [MEMORY[0x277CCABB0] numberWithLong:classification];
  v28 = [v26 objectForKey:v27];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v23 setAuditTestType:v28];
    [v23 setAuditElement:elementCopy];
    [v23 setElementDescription:descriptionCopy];
    [v23 setElementRect:{x, y, width, height}];
    [v23 setLongDescExtraInfo:infoCopy];
    [v23 setElementText:textCopy];
    [v23 setMlGeneratedDescription:generatedDescriptionCopy];
    currentCaseResult = [(AXAuditCategory *)self currentCaseResult];
    [currentCaseResult addAuditIssue:v23];
    delegate = [(AXAuditCategory *)self delegate];
    [delegate auditCategory:self didEncounterIssue:v23];
  }
}

- (AXAuditCategoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
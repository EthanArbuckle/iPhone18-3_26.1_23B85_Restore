@interface AXAuditCategoryResult
- (AXAuditCategoryResult)init;
- (AXAuditCategoryResultDelegate)delegate;
- (NSArray)caseResults;
- (id)allIssues;
- (id)description;
- (id)issueSummaryStrings;
- (id)log;
- (int64_t)issueCount;
- (void)addCaseResult:(id)a3;
- (void)appendLog:(id)a3;
@end

@implementation AXAuditCategoryResult

- (AXAuditCategoryResult)init
{
  v8.receiver = self;
  v8.super_class = AXAuditCategoryResult;
  v2 = [(AXAuditCategoryResult *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mutableLog = v2->__mutableLog;
    v2->__mutableLog = v3;

    v5 = objc_opt_new();
    mutableCases = v2->__mutableCases;
    v2->__mutableCases = v5;
  }

  return v2;
}

- (void)addCaseResult:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v4 = [(AXAuditCategoryResult *)self _mutableCases];
    [v4 addObject:v5];

    [v5 setResult:self];
  }
}

- (NSArray)caseResults
{
  v2 = [(AXAuditCategoryResult *)self _mutableCases];
  v3 = [v2 copy];

  return v3;
}

- (void)appendLog:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v10];

  v7 = [v6 axAuditStringForLog];

  v8 = [(AXAuditCategoryResult *)self delegate];
  [v8 auditCategoryResult:self didAppendLogWithMessage:v7];

  v9 = [(AXAuditCategoryResult *)self _mutableLog];
  [v9 appendString:v7];
}

- (id)log
{
  v2 = [(AXAuditCategoryResult *)self _mutableLog];
  v3 = [v2 copy];

  return v3;
}

- (int64_t)issueCount
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(AXAuditCategoryResult *)self _mutableCases];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) auditIssues];
        v5 += [v8 count];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)allIssues
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [(AXAuditCategoryResult *)self _mutableCases];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [v9 auditIssues];
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [v3 addObject:*(*(&v18 + 1) + 8 * j)];
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v15 = [v3 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)issueSummaryStrings
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [(AXAuditCategoryResult *)self _mutableCases];
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = [v9 auditIssues];
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v19 + 1) + 8 * j) foundLogMessage];
              if ([v15 length])
              {
                [v3 addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  v16 = [v3 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)description
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(AXAuditCategoryResult *)self issueSummaryStrings];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"%@\n", *(*(&v14 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13.receiver = self;
  v13.super_class = AXAuditCategoryResult;
  v9 = [(AXAuditCategoryResult *)&v13 description];
  v10 = [v9 stringByAppendingString:v3];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (AXAuditCategoryResultDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
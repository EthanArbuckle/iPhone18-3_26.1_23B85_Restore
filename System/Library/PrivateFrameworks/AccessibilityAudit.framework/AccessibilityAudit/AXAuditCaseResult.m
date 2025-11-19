@interface AXAuditCaseResult
- (AXAuditCaseResult)init;
- (AXAuditCategoryResult)result;
- (NSArray)auditIssues;
- (id)description;
- (void)addAuditIssue:(id)a3;
- (void)setAuditIssues:(id)a3;
@end

@implementation AXAuditCaseResult

- (AXAuditCaseResult)init
{
  v6.receiver = self;
  v6.super_class = AXAuditCaseResult;
  v2 = [(AXAuditCaseResult *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mutableIssues = v2->__mutableIssues;
    v2->__mutableIssues = v3;
  }

  return v2;
}

- (NSArray)auditIssues
{
  v2 = [(AXAuditCaseResult *)self _mutableIssues];
  v3 = [v2 copy];

  return v3;
}

- (void)setAuditIssues:(id)a3
{
  v4 = [a3 mutableCopy];
  [(AXAuditCaseResult *)self set_mutableIssues:v4];
}

- (void)addAuditIssue:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    if ([v4 issueClassification])
    {
      v5 = [(AXAuditCaseResult *)self result];
      v6 = [v8 foundLogMessage];
      [v5 appendLog:v6];

      v7 = [(AXAuditCaseResult *)self _mutableIssues];
      [v7 addObject:v8];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AXAuditCaseResult;
  v3 = [(AXAuditCaseResult *)&v7 description];
  v4 = [(AXAuditCaseResult *)self auditIssues];
  v5 = [v3 stringByAppendingFormat:@"AuditIssues:%@", v4];

  return v5;
}

- (AXAuditCategoryResult)result
{
  WeakRetained = objc_loadWeakRetained(&self->_result);

  return WeakRetained;
}

@end
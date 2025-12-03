@interface AXAuditCaseResult
- (AXAuditCaseResult)init;
- (AXAuditCategoryResult)result;
- (NSArray)auditIssues;
- (id)description;
- (void)addAuditIssue:(id)issue;
- (void)setAuditIssues:(id)issues;
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
  _mutableIssues = [(AXAuditCaseResult *)self _mutableIssues];
  v3 = [_mutableIssues copy];

  return v3;
}

- (void)setAuditIssues:(id)issues
{
  v4 = [issues mutableCopy];
  [(AXAuditCaseResult *)self set_mutableIssues:v4];
}

- (void)addAuditIssue:(id)issue
{
  issueCopy = issue;
  if (issueCopy)
  {
    v8 = issueCopy;
    if ([issueCopy issueClassification])
    {
      result = [(AXAuditCaseResult *)self result];
      foundLogMessage = [v8 foundLogMessage];
      [result appendLog:foundLogMessage];

      _mutableIssues = [(AXAuditCaseResult *)self _mutableIssues];
      [_mutableIssues addObject:v8];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = AXAuditCaseResult;
  v3 = [(AXAuditCaseResult *)&v7 description];
  auditIssues = [(AXAuditCaseResult *)self auditIssues];
  v5 = [v3 stringByAppendingFormat:@"AuditIssues:%@", auditIssues];

  return v5;
}

- (AXAuditCategoryResult)result
{
  WeakRetained = objc_loadWeakRetained(&self->_result);

  return WeakRetained;
}

@end
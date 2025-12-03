@interface ASTConnectionRetrieveSelfServiceSuiteResults
- (ASTConnectionRetrieveSelfServiceSuiteResults)initWithDiagnosticEventID:(id)d;
@end

@implementation ASTConnectionRetrieveSelfServiceSuiteResults

- (ASTConnectionRetrieveSelfServiceSuiteResults)initWithDiagnosticEventID:(id)d
{
  v13[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v11.receiver = self;
  v11.super_class = ASTConnectionRetrieveSelfServiceSuiteResults;
  v5 = [(ASTMaterializedConnection *)&v11 init];
  v6 = v5;
  if (dCopy && v5)
  {
    v12 = @"diagnosticEventId";
    v13[0] = dCopy;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    rawBody = v6->_rawBody;
    v6->_rawBody = v7;

    [(ASTMaterializedConnection *)v6 addBody:v6->_rawBody];
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

@end
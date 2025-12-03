@interface ASTConnectionTestResult
- (ASTConnectionTestResult)initWithTestResults:(id)results;
@end

@implementation ASTConnectionTestResult

- (ASTConnectionTestResult)initWithTestResults:(id)results
{
  resultsCopy = results;
  v12.receiver = self;
  v12.super_class = ASTConnectionTestResult;
  v5 = [(ASTMaterializedConnection *)&v12 init];
  if (v5)
  {
    testId = [resultsCopy testId];
    testId = v5->_testId;
    v5->_testId = testId;

    payload = [resultsCopy payload];

    if (payload)
    {
      payload2 = [resultsCopy payload];
      [(ASTMaterializedConnection *)v5 addBody:payload2 gzip:+[ASTConnectionUtilities isGzipEnabled]];

      base64Signature = [resultsCopy base64Signature];
      [(ASTMaterializedConnection *)v5 setSignature:base64Signature];
    }
  }

  return v5;
}

@end
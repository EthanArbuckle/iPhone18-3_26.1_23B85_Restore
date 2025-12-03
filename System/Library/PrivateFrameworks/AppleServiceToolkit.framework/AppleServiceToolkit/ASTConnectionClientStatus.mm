@interface ASTConnectionClientStatus
- (ASTConnectionClientStatus)initWithClientStatus:(id)status;
@end

@implementation ASTConnectionClientStatus

- (ASTConnectionClientStatus)initWithClientStatus:(id)status
{
  statusCopy = status;
  v10.receiver = self;
  v10.super_class = ASTConnectionClientStatus;
  v5 = [(ASTMaterializedConnection *)&v10 init];
  if (v5)
  {
    payload = [statusCopy payload];

    if (payload)
    {
      payload2 = [statusCopy payload];
      [(ASTMaterializedConnection *)v5 addBody:payload2 gzip:+[ASTConnectionUtilities isGzipEnabled]];

      base64Signature = [statusCopy base64Signature];
      [(ASTMaterializedConnection *)v5 setSignature:base64Signature];
    }
  }

  return v5;
}

@end
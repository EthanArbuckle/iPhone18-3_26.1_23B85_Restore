@interface ASTConnectionAuthInfo
- (ASTConnectionAuthInfo)initWithAuthInfo:(id)info;
@end

@implementation ASTConnectionAuthInfo

- (ASTConnectionAuthInfo)initWithAuthInfo:(id)info
{
  infoCopy = info;
  v10.receiver = self;
  v10.super_class = ASTConnectionAuthInfo;
  v5 = [(ASTMaterializedConnection *)&v10 init];
  if (v5)
  {
    payload = [infoCopy payload];

    if (payload)
    {
      payload2 = [infoCopy payload];
      [(ASTMaterializedConnection *)v5 addBody:payload2 gzip:+[ASTConnectionUtilities isGzipEnabled]];

      base64Signature = [infoCopy base64Signature];
      [(ASTMaterializedConnection *)v5 setSignature:base64Signature];
    }
  }

  return v5;
}

@end
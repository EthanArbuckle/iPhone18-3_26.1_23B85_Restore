@interface ASTConnectionAuthInfo
- (ASTConnectionAuthInfo)initWithAuthInfo:(id)a3;
@end

@implementation ASTConnectionAuthInfo

- (ASTConnectionAuthInfo)initWithAuthInfo:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ASTConnectionAuthInfo;
  v5 = [(ASTMaterializedConnection *)&v10 init];
  if (v5)
  {
    v6 = [v4 payload];

    if (v6)
    {
      v7 = [v4 payload];
      [(ASTMaterializedConnection *)v5 addBody:v7 gzip:+[ASTConnectionUtilities isGzipEnabled]];

      v8 = [v4 base64Signature];
      [(ASTMaterializedConnection *)v5 setSignature:v8];
    }
  }

  return v5;
}

@end
@interface ASTConnectionProfile
- (ASTConnectionProfile)initWithProfile:(id)profile;
@end

@implementation ASTConnectionProfile

- (ASTConnectionProfile)initWithProfile:(id)profile
{
  profileCopy = profile;
  v10.receiver = self;
  v10.super_class = ASTConnectionProfile;
  v5 = [(ASTMaterializedConnection *)&v10 init];
  if (v5)
  {
    payload = [profileCopy payload];

    if (payload)
    {
      payload2 = [profileCopy payload];
      [(ASTMaterializedConnection *)v5 addBody:payload2 gzip:+[ASTConnectionUtilities isGzipEnabled]];

      base64Signature = [profileCopy base64Signature];
      [(ASTMaterializedConnection *)v5 setSignature:base64Signature];
    }
  }

  return v5;
}

@end
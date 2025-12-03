@interface AABeneficiaryClaimUIRequest
- (AABeneficiaryClaimUIRequest)initWithGrandSlamAccount:(id)account accountStore:(id)store claimCode:(id)code;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AABeneficiaryClaimUIRequest

- (AABeneficiaryClaimUIRequest)initWithGrandSlamAccount:(id)account accountStore:(id)store claimCode:(id)code
{
  codeCopy = code;
  v13.receiver = self;
  v13.super_class = AABeneficiaryClaimUIRequest;
  v10 = [(AAAppleIDSettingsRequest *)&v13 initWithGrandSlamAccount:account accountStore:store];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_claimCode, code);
  }

  return v11;
}

- (id)urlString
{
  v2 = MEMORY[0x1E698DDF8];
  grandSlamAccount = [(AAAppleIDSettingsRequest *)self grandSlamAccount];
  aida_alternateDSID = [grandSlamAccount aida_alternateDSID];
  v5 = [v2 bagForAltDSID:aida_alternateDSID];
  v6 = [v5 urlAtKey:@"startBeneficiaryClaim"];
  absoluteString = [v6 absoluteString];

  return absoluteString;
}

- (id)urlRequest
{
  v11[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = AABeneficiaryClaimUIRequest;
  urlRequest = [(AAAppleIDSettingsRequest *)&v9 urlRequest];
  v4 = [urlRequest mutableCopy];

  claimCode = self->_claimCode;
  if (claimCode)
  {
    v10 = @"claimCode";
    v11[0] = claimCode;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v4 aa_setBodyWithParameters:v6];
  }

  [v4 setHTTPMethod:@"POST"];
  [v4 addValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

@end
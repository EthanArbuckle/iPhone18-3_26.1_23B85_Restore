@interface AABeneficiaryClaimUIRequest
- (AABeneficiaryClaimUIRequest)initWithGrandSlamAccount:(id)a3 accountStore:(id)a4 claimCode:(id)a5;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AABeneficiaryClaimUIRequest

- (AABeneficiaryClaimUIRequest)initWithGrandSlamAccount:(id)a3 accountStore:(id)a4 claimCode:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = AABeneficiaryClaimUIRequest;
  v10 = [(AAAppleIDSettingsRequest *)&v13 initWithGrandSlamAccount:a3 accountStore:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_claimCode, a5);
  }

  return v11;
}

- (id)urlString
{
  v2 = MEMORY[0x1E698DDF8];
  v3 = [(AAAppleIDSettingsRequest *)self grandSlamAccount];
  v4 = [v3 aida_alternateDSID];
  v5 = [v2 bagForAltDSID:v4];
  v6 = [v5 urlAtKey:@"startBeneficiaryClaim"];
  v7 = [v6 absoluteString];

  return v7;
}

- (id)urlRequest
{
  v11[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = AABeneficiaryClaimUIRequest;
  v3 = [(AAAppleIDSettingsRequest *)&v9 urlRequest];
  v4 = [v3 mutableCopy];

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
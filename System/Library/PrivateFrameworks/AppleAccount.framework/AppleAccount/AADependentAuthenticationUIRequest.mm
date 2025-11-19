@interface AADependentAuthenticationUIRequest
- (AADependentAuthenticationUIRequest)initWithAltDSID:(id)a3;
- (id)urlString;
@end

@implementation AADependentAuthenticationUIRequest

- (id)urlString
{
  v2 = [MEMORY[0x1E698DDF8] bagForAltDSID:self->_altDSID];
  v3 = [v2 changePasswordURL];
  v4 = [v3 absoluteString];

  return v4;
}

- (AADependentAuthenticationUIRequest)initWithAltDSID:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(AADependentAuthenticationUIRequest *)a2 initWithAltDSID:?];
  }

  v10.receiver = self;
  v10.super_class = AADependentAuthenticationUIRequest;
  v7 = [(AADependentAuthenticationUIRequest *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_altDSID, a3);
  }

  return v8;
}

- (void)initWithAltDSID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AARequest.m" lineNumber:1073 description:@"No altDSID passed"];
}

@end
@interface AADependentAuthenticationUIRequest
- (AADependentAuthenticationUIRequest)initWithAltDSID:(id)d;
- (id)urlString;
@end

@implementation AADependentAuthenticationUIRequest

- (id)urlString
{
  v2 = [MEMORY[0x1E698DDF8] bagForAltDSID:self->_altDSID];
  changePasswordURL = [v2 changePasswordURL];
  absoluteString = [changePasswordURL absoluteString];

  return absoluteString;
}

- (AADependentAuthenticationUIRequest)initWithAltDSID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    [(AADependentAuthenticationUIRequest *)a2 initWithAltDSID:?];
  }

  v10.receiver = self;
  v10.super_class = AADependentAuthenticationUIRequest;
  v7 = [(AADependentAuthenticationUIRequest *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_altDSID, d);
  }

  return v8;
}

- (void)initWithAltDSID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AARequest.m" lineNumber:1073 description:@"No altDSID passed"];
}

@end
@interface _WKAuthenticatorSelectionCriteria
- (_WKAuthenticatorSelectionCriteria)init;
@end

@implementation _WKAuthenticatorSelectionCriteria

- (_WKAuthenticatorSelectionCriteria)init
{
  v5.receiver = self;
  v5.super_class = _WKAuthenticatorSelectionCriteria;
  v2 = [(_WKAuthenticatorSelectionCriteria *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(_WKAuthenticatorSelectionCriteria *)v2 setAuthenticatorAttachment:0];
    [(_WKAuthenticatorSelectionCriteria *)v3 setResidentKey:0];
    [(_WKAuthenticatorSelectionCriteria *)v3 setRequireResidentKey:0];
    [(_WKAuthenticatorSelectionCriteria *)v3 setUserVerification:1];
  }

  return v3;
}

@end
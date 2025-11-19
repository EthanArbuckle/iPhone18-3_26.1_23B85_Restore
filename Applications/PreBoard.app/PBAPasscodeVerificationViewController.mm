@interface PBAPasscodeVerificationViewController
- (id)makeAuthenticationRequestWithPasscode:(id)a3;
@end

@implementation PBAPasscodeVerificationViewController

- (id)makeAuthenticationRequestWithPasscode:(id)a3
{
  v3 = a3;
  v4 = [[SBFAuthenticationRequest alloc] initForPasscode:v3 source:0 skipSEKeepUserDataOperation:0 verifyOnly:1 handler:0];

  return v4;
}

@end
@interface PBAPasscodeVerificationViewController
- (id)makeAuthenticationRequestWithPasscode:(id)passcode;
@end

@implementation PBAPasscodeVerificationViewController

- (id)makeAuthenticationRequestWithPasscode:(id)passcode
{
  passcodeCopy = passcode;
  v4 = [[SBFAuthenticationRequest alloc] initForPasscode:passcodeCopy source:0 skipSEKeepUserDataOperation:0 verifyOnly:1 handler:0];

  return v4;
}

@end
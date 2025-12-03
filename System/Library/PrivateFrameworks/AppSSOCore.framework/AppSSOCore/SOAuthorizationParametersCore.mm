@interface SOAuthorizationParametersCore
- (SOAuthorizationParametersCore)init;
@end

@implementation SOAuthorizationParametersCore

- (SOAuthorizationParametersCore)init
{
  v8.receiver = self;
  v8.super_class = SOAuthorizationParametersCore;
  v2 = [(SOAuthorizationParametersCore *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_useInternalExtensions = 1;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v3->_identifier;
    v3->_identifier = uUIDString;

    v3->_showOnCoverScreen = 0;
  }

  return v3;
}

@end
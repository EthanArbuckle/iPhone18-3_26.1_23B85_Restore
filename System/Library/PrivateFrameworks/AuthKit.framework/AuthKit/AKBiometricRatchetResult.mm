@interface AKBiometricRatchetResult
- (AKBiometricRatchetResult)initWithRatchetState:(id)state armingMethod:(unint64_t)method;
@end

@implementation AKBiometricRatchetResult

- (AKBiometricRatchetResult)initWithRatchetState:(id)state armingMethod:(unint64_t)method
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, state);
  methodCopy = method;
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = AKBiometricRatchetResult;
  v8 = [(AKBiometricRatchetResult *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_ratchetState, location[0]);
    selfCopy->_armingMethod = methodCopy;
  }

  v6 = MEMORY[0x1E69E5928](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

@end
@interface LightningControllerHardwareAuthenticationInputs
- (BOOL)_applyChallengeParameter:(id)parameter;
- (BOOL)_applyKeyIndexParameter:(id)parameter;
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation LightningControllerHardwareAuthenticationInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  parametersCopy = parameters;
  if ([(LightningControllerHardwareAuthenticationInputs *)self _applyChallengeParameter:parametersCopy])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = ![(LightningControllerHardwareAuthenticationInputs *)self _applyKeyIndexParameter:parametersCopy];
  }

  return v5;
}

- (BOOL)_applyChallengeParameter:(id)parameter
{
  v9 = 0;
  v4 = [parameter dk_stringFromRequiredKey:@"challenge" maxLength:256 failed:&v9];
  v5 = v9;
  if ((v9 & 1) == 0)
  {
    v6 = [[NSData alloc] initWithBase64EncodedString:v4 options:0];
    [(LightningControllerHardwareAuthenticationInputs *)self setChallenge:v6];

    challenge = [(LightningControllerHardwareAuthenticationInputs *)self challenge];

    if (challenge)
    {
      v5 = v9;
    }

    else
    {
      v5 = 1;
      v9 = 1;
    }
  }

  return v5 & 1;
}

- (BOOL)_applyKeyIndexParameter:(id)parameter
{
  v6 = 0;
  v4 = [parameter dk_numberFromKey:@"keyIndex" lowerBound:&off_1000042F0 upperBound:&off_100004308 defaultValue:&off_1000042F0 failed:&v6];
  -[LightningControllerHardwareAuthenticationInputs setKeyIndex:](self, "setKeyIndex:", [v4 intValue]);

  return v6;
}

@end
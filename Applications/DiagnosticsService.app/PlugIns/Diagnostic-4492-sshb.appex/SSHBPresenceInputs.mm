@interface SSHBPresenceInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
- (BOOL)validateAndInitializeSpecifications:(id)specifications;
@end

@implementation SSHBPresenceInputs

- (BOOL)validateAndInitializeSpecifications:(id)specifications
{
  v6 = 0;
  v4 = [specifications dk_numberFromKey:@"acceptedDeviation" lowerBound:&off_10000CDC8 upperBound:&off_10000CDD8 defaultValue:&off_10000CDE8 failed:&v6];
  [v4 floatValue];
  [(SSHBPresenceInputs *)self setAcceptedDeviation:?];

  return (v6 & 1) == 0;
}

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  v7 = 0;
  parametersCopy = parameters;
  -[SSHBPresenceInputs setFrequentSampling:](self, "setFrequentSampling:", [parametersCopy dk_BOOLFromKey:@"frequentSampling" defaultValue:0 failed:&v7]);
  -[SSHBPresenceInputs setDisableGapSubtraction:](self, "setDisableGapSubtraction:", [parametersCopy dk_BOOLFromKey:@"disableGapSubtraction" defaultValue:0 failed:&v7]);
  -[SSHBPresenceInputs setSendRawData:](self, "setSendRawData:", [parametersCopy dk_BOOLFromKey:@"sendRawData" defaultValue:1 failed:&v7]);
  v5 = [parametersCopy dk_numberFromKey:@"sampleDuration" lowerBound:&off_10000CDF8 upperBound:&off_10000CE08 defaultValue:&off_10000CE18 failed:&v7];

  [v5 doubleValue];
  [(SSHBPresenceInputs *)self setSampleDuration:?];

  return (v7 & 1) == 0;
}

@end
@interface SSHBPresenceInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
- (BOOL)validateAndInitializeSpecifications:(id)a3;
@end

@implementation SSHBPresenceInputs

- (BOOL)validateAndInitializeSpecifications:(id)a3
{
  v6 = 0;
  v4 = [a3 dk_numberFromKey:@"acceptedDeviation" lowerBound:&off_10000CDC8 upperBound:&off_10000CDD8 defaultValue:&off_10000CDE8 failed:&v6];
  [v4 floatValue];
  [(SSHBPresenceInputs *)self setAcceptedDeviation:?];

  return (v6 & 1) == 0;
}

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v7 = 0;
  v4 = a3;
  -[SSHBPresenceInputs setFrequentSampling:](self, "setFrequentSampling:", [v4 dk_BOOLFromKey:@"frequentSampling" defaultValue:0 failed:&v7]);
  -[SSHBPresenceInputs setDisableGapSubtraction:](self, "setDisableGapSubtraction:", [v4 dk_BOOLFromKey:@"disableGapSubtraction" defaultValue:0 failed:&v7]);
  -[SSHBPresenceInputs setSendRawData:](self, "setSendRawData:", [v4 dk_BOOLFromKey:@"sendRawData" defaultValue:1 failed:&v7]);
  v5 = [v4 dk_numberFromKey:@"sampleDuration" lowerBound:&off_10000CDF8 upperBound:&off_10000CE08 defaultValue:&off_10000CE18 failed:&v7];

  [v5 doubleValue];
  [(SSHBPresenceInputs *)self setSampleDuration:?];

  return (v7 & 1) == 0;
}

@end
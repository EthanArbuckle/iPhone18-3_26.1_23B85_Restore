@interface TouchIDSensorSPIBusIntegrityInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
@end

@implementation TouchIDSensorSPIBusIntegrityInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  v8 = 0;
  parametersCopy = parameters;
  v5 = [parametersCopy dk_numberFromRequiredKey:@"numberOfRuns" lowerBound:&off_1000042D0 upperBound:&off_1000042E8 failed:&v8];
  -[TouchIDSensorSPIBusIntegrityInputs setNumberOfRuns:](self, "setNumberOfRuns:", [v5 intValue]);

  v6 = [parametersCopy dk_numberFromRequiredKey:@"runDelay" lowerBound:&off_100004300 upperBound:&off_100004310 failed:&v8];

  [v6 doubleValue];
  [(TouchIDSensorSPIBusIntegrityInputs *)self setRunDelay:?];

  return (v8 & 1) == 0;
}

@end
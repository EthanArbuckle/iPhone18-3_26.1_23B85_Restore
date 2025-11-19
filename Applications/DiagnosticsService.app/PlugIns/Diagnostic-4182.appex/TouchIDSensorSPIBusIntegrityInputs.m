@interface TouchIDSensorSPIBusIntegrityInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
@end

@implementation TouchIDSensorSPIBusIntegrityInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v8 = 0;
  v4 = a3;
  v5 = [v4 dk_numberFromRequiredKey:@"numberOfRuns" lowerBound:&off_1000042D0 upperBound:&off_1000042E8 failed:&v8];
  -[TouchIDSensorSPIBusIntegrityInputs setNumberOfRuns:](self, "setNumberOfRuns:", [v5 intValue]);

  v6 = [v4 dk_numberFromRequiredKey:@"runDelay" lowerBound:&off_100004300 upperBound:&off_100004310 failed:&v8];

  [v6 doubleValue];
  [(TouchIDSensorSPIBusIntegrityInputs *)self setRunDelay:?];

  return (v8 & 1) == 0;
}

@end
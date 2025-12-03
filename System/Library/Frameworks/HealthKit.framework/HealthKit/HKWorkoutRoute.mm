@interface HKWorkoutRoute
+ (id)_workoutRouteWithDevice:(id)device metadata:(id)metadata;
- (BOOL)_isSmoothed;
- (BOOL)_requiresPrivateEntitlementForQueries;
- (id)_validateSample;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)_valueDescription;
@end

@implementation HKWorkoutRoute

+ (id)_workoutRouteWithDevice:(id)device metadata:(id)metadata
{
  metadataCopy = metadata;
  deviceCopy = device;
  v8 = +[HKSeriesType workoutRouteType];
  v9 = [self _newSampleWithType:v8 startDate:deviceCopy endDate:metadataCopy device:&__block_literal_global_3 metadata:2.22507386e-308 config:2.22507386e-308];

  return v9;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v9.receiver = self;
  v9.super_class = HKWorkoutRoute;
  v4 = [(HKSeriesSample *)&v9 _validateWithConfiguration:configuration.var0, configuration.var1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = objc_opt_class();
    v5 = [v6 hk_errorForInvalidArgument:@"@" class:v7 selector:a2 format:{@"Invalid data type %@", objc_opt_class()}];
  }

  return v5;
}

- (id)_validateSample
{
  v4.receiver = self;
  v4.super_class = HKWorkoutRoute;
  _validateSample = [(HKSeriesSample *)&v4 _validateSample];

  return _validateSample;
}

- (id)_valueDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HKSeriesSample *)self count];
  _isFrozen = [(HKSeriesSample *)self _isFrozen];
  v6 = @"N";
  if (_isFrozen)
  {
    v6 = @"Y";
  }

  return [v3 stringWithFormat:@"\ncount=%d, frozen=%@", v4, v6];
}

- (BOOL)_requiresPrivateEntitlementForQueries
{
  sourceRevision = [(HKObject *)self sourceRevision];
  source = [sourceRevision source];
  _isAppleWatch = [source _isAppleWatch];

  sourceRevision2 = [(HKObject *)self sourceRevision];
  source2 = [sourceRevision2 source];
  _isFitnessApp = [source2 _isFitnessApp];

  if ((_isAppleWatch & 1) != 0 || _isFitnessApp)
  {
    _isFitnessApp = ![(HKWorkoutRoute *)self _isSmoothed];
  }

  v10.receiver = self;
  v10.super_class = HKWorkoutRoute;
  return ([(HKSample *)&v10 _requiresPrivateEntitlementForQueries]| _isFitnessApp) & 1;
}

- (BOOL)_isSmoothed
{
  metadata = [(HKObject *)self metadata];
  v3 = [metadata objectForKeyedSubscript:@"HKMetadataKeySyncVersion"];

  if (v3)
  {
    v4 = [v3 integerValue] > 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
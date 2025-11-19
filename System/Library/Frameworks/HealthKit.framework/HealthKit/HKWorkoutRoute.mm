@interface HKWorkoutRoute
+ (id)_workoutRouteWithDevice:(id)a3 metadata:(id)a4;
- (BOOL)_isSmoothed;
- (BOOL)_requiresPrivateEntitlementForQueries;
- (id)_validateSample;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)_valueDescription;
@end

@implementation HKWorkoutRoute

+ (id)_workoutRouteWithDevice:(id)a3 metadata:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[HKSeriesType workoutRouteType];
  v9 = [a1 _newSampleWithType:v8 startDate:v7 endDate:v6 device:&__block_literal_global_3 metadata:2.22507386e-308 config:2.22507386e-308];

  return v9;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v9.receiver = self;
  v9.super_class = HKWorkoutRoute;
  v4 = [(HKSeriesSample *)&v9 _validateWithConfiguration:a3.var0, a3.var1];
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
  v2 = [(HKSeriesSample *)&v4 _validateSample];

  return v2;
}

- (id)_valueDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HKSeriesSample *)self count];
  v5 = [(HKSeriesSample *)self _isFrozen];
  v6 = @"N";
  if (v5)
  {
    v6 = @"Y";
  }

  return [v3 stringWithFormat:@"\ncount=%d, frozen=%@", v4, v6];
}

- (BOOL)_requiresPrivateEntitlementForQueries
{
  v3 = [(HKObject *)self sourceRevision];
  v4 = [v3 source];
  v5 = [v4 _isAppleWatch];

  v6 = [(HKObject *)self sourceRevision];
  v7 = [v6 source];
  v8 = [v7 _isFitnessApp];

  if ((v5 & 1) != 0 || v8)
  {
    v8 = ![(HKWorkoutRoute *)self _isSmoothed];
  }

  v10.receiver = self;
  v10.super_class = HKWorkoutRoute;
  return ([(HKSample *)&v10 _requiresPrivateEntitlementForQueries]| v8) & 1;
}

- (BOOL)_isSmoothed
{
  v2 = [(HKObject *)self metadata];
  v3 = [v2 objectForKeyedSubscript:@"HKMetadataKeySyncVersion"];

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
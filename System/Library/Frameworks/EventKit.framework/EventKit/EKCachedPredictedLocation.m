@interface EKCachedPredictedLocation
+ (id)cachedPredictedLocationWithTitle:(id)a3 location:(id)a4 calendar:(id)a5;
+ (id)emptyPrediction;
- (EKCachedPredictedLocation)initWithTitle:(id)a3 location:(id)a4 calendar:(id)a5;
- (id)_updatedPredictedLocationRespectingTimeoutBudgetWithError:(id *)a3;
- (id)fetchPredictedLocationWithDelegate:(id)a3;
- (id)frozenCopy;
- (void)_updatePredictedLocation:(id)a3;
@end

@implementation EKCachedPredictedLocation

+ (id)emptyPrediction
{
  v2 = [[a1 alloc] initWithTitle:&stru_1F1B49D68 location:0 calendar:&stru_1F1B49D68];
  [v2 _freeze];

  return v2;
}

+ (id)cachedPredictedLocationWithTitle:(id)a3 location:(id)a4 calendar:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [a3 stringByReplacingOccurrencesOfString:@"\ withString:@"\\\];
  v10 = [v8 stringByReplacingOccurrencesOfString:@"\ withString:@"\\\];

  v11 = [v7 stringByReplacingOccurrencesOfString:@"\ withString:@"\\\];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_\\_%@_\\_%@", v9, v10, v11];
  if (cachedPredictedLocationWithTitle_location_calendar__onceToken != -1)
  {
    +[EKCachedPredictedLocation cachedPredictedLocationWithTitle:location:calendar:];
  }

  v13 = [cachedPredictedLocationWithTitle_location_calendar__cache objectForKey:v12];
  if (!v13)
  {
    v13 = [[EKCachedPredictedLocation alloc] initWithTitle:v9 location:v10 calendar:v11];
    [cachedPredictedLocationWithTitle_location_calendar__cache setObject:v13 forKey:v12];
  }

  return v13;
}

uint64_t __80__EKCachedPredictedLocation_cachedPredictedLocationWithTitle_location_calendar___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = cachedPredictedLocationWithTitle_location_calendar__cache;
  cachedPredictedLocationWithTitle_location_calendar__cache = v0;

  v2 = cachedPredictedLocationWithTitle_location_calendar__cache;

  return [v2 setCountLimit:5000];
}

- (EKCachedPredictedLocation)initWithTitle:(id)a3 location:(id)a4 calendar:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = EKCachedPredictedLocation;
  v11 = [(EKCachedPredictedLocation *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    eventTitle = v11->_eventTitle;
    v11->_eventTitle = v12;

    v14 = [v9 copy];
    locationWithoutPrediction = v11->_locationWithoutPrediction;
    v11->_locationWithoutPrediction = v14;

    v16 = [v10 copy];
    calendarIdentifier = v11->_calendarIdentifier;
    v11->_calendarIdentifier = v16;

    v11->_lock._os_unfair_lock_opaque = 0;
  }

  return v11;
}

- (id)frozenCopy
{
  v2 = [[EKCachedPredictedLocation alloc] initWithTitle:self->_eventTitle location:self->_locationWithoutPrediction calendar:self->_calendarIdentifier];
  [(EKCachedPredictedLocation *)v2 _freeze];

  return v2;
}

- (id)fetchPredictedLocationWithDelegate:(id)a3
{
  v4 = a3;
  v5 = CalApproximateContinuousTime();
  os_unfair_lock_lock(&self->_lock);
  if (self->_predictionExpiration < v5)
  {
    [(EKCachedPredictedLocation *)self _updatePredictedLocation:v4];
  }

  v6 = self->_cachedPrediction;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)_updatePredictedLocation:(id)a3
{
  v4 = a3;
  v10 = 0;
  v5 = [(EKCachedPredictedLocation *)self _updatedPredictedLocationRespectingTimeoutBudgetWithError:&v10];
  v6 = v10;
  objc_storeStrong(&self->_cachedPrediction, v5);
  if (v6)
  {
    v7 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKCachedPredictedLocation *)v7 _updatePredictedLocation:v6];
    }
  }

  else if (v5)
  {
    v8 = [v4 suggestedTitleForPredictedLocation];
    if (!v8)
    {
      v8 = [v5 address];
    }

    [v5 setTitle:v8];
  }

  v9 = CalApproximateContinuousTime();
  self->_predictionExpiration = CalNSTimeIntervalToContinuousInterval() + v9;
}

- (id)_updatedPredictedLocationRespectingTimeoutBudgetWithError:(id *)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AF00] isMainThread];
  v6 = *&remainingTimeout;
  if (v5)
  {
    v7 = *&remainingTimeout;
  }

  else
  {
    v7 = 0.1;
  }

  v8 = os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG);
  if (v5 && v6 <= 0.0)
  {
    if (v8)
    {
      [EKCachedPredictedLocation _updatedPredictedLocationRespectingTimeoutBudgetWithError:];
    }

    v17 = *MEMORY[0x1E696A578];
    v18[0] = @"Prediction not attempted due to past timeouts";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    if (a3)
    {
      *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6992EC0] code:0 userInfo:v9];
    }

    v10 = 0;
    goto LABEL_22;
  }

  if (v8)
  {
    [EKCachedPredictedLocation _updatedPredictedLocationRespectingTimeoutBudgetWithError:];
    if (v5)
    {
      goto LABEL_13;
    }
  }

  else if (v5)
  {
LABEL_13:
    v11 = mach_absolute_time();
    goto LABEL_16;
  }

  v11 = 0;
LABEL_16:
  v10 = [EKStructuredLocationPrediction locationPredictionForTitle:self->_eventTitle location:self->_locationWithoutPrediction calendar:self->_calendarIdentifier error:a3 timeout:v7];
  if (v5)
  {
    v12 = mach_absolute_time();
    v16 = 0;
    mach_timebase_info(&v16);
    v13 = (v12 - v11) * v16.numer / v16.denom;
    if (*&remainingTimeout == 0.1)
    {
      dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_22_2);
    }

    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      [EKCachedPredictedLocation _updatedPredictedLocationRespectingTimeoutBudgetWithError:];
    }

    *&remainingTimeout = *&remainingTimeout - v13 / 1000000000.0;
  }

LABEL_22:
  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

void __87__EKCachedPredictedLocation__updatedPredictedLocationRespectingTimeoutBudgetWithError___block_invoke()
{
  remainingTimeout = 0x3FB999999999999ALL;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    __87__EKCachedPredictedLocation__updatedPredictedLocationRespectingTimeoutBudgetWithError___block_invoke_cold_1();
  }
}

- (void)_updatePredictedLocation:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_1A805E000, v3, OS_LOG_TYPE_ERROR, "Failed to predict a structured location: %@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_updatedPredictedLocationRespectingTimeoutBudgetWithError:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_updatedPredictedLocationRespectingTimeoutBudgetWithError:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end
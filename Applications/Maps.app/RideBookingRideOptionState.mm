@interface RideBookingRideOptionState
+ (RideBookingRideOptionState)stateWithRideOptionStatusMap:(id)a3 appStoreSuggestions:(id)a4 installedSuggestions:(id)a5;
@end

@implementation RideBookingRideOptionState

+ (RideBookingRideOptionState)stateWithRideOptionStatusMap:(id)a3 appStoreSuggestions:(id)a4 installedSuggestions:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(a1);
  v12 = [v10 copy];

  [v11 setRideOptionStatusMap:v12];
  [v11 setAppStoreSuggestions:v9];

  [v11 setInstalledSuggestions:v8];
  v13 = [v11 appStoreSuggestions];

  if (!v13)
  {
    [v11 setLoadingAppStoreSuggestions:1];
  }

  v14 = [v11 appStoreSuggestions];
  if ([v14 count])
  {
    v15 = 0;
  }

  else
  {
    v15 = [v11 loadingAppStoreSuggestions] ^ 1;
  }

  [v11 setNoAppStoreSuggestionsAvailable:v15];

  v16 = [v11 rideOptionStatusMap];
  v17 = [v16 allValues];
  [v11 setNoRideOptionsAvailable:{objc_msgSend(v17, "count") == 0}];

  return v11;
}

@end
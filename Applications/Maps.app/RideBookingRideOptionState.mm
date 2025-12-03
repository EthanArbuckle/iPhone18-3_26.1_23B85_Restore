@interface RideBookingRideOptionState
+ (RideBookingRideOptionState)stateWithRideOptionStatusMap:(id)map appStoreSuggestions:(id)suggestions installedSuggestions:(id)installedSuggestions;
@end

@implementation RideBookingRideOptionState

+ (RideBookingRideOptionState)stateWithRideOptionStatusMap:(id)map appStoreSuggestions:(id)suggestions installedSuggestions:(id)installedSuggestions
{
  installedSuggestionsCopy = installedSuggestions;
  suggestionsCopy = suggestions;
  mapCopy = map;
  v11 = objc_alloc_init(self);
  v12 = [mapCopy copy];

  [v11 setRideOptionStatusMap:v12];
  [v11 setAppStoreSuggestions:suggestionsCopy];

  [v11 setInstalledSuggestions:installedSuggestionsCopy];
  appStoreSuggestions = [v11 appStoreSuggestions];

  if (!appStoreSuggestions)
  {
    [v11 setLoadingAppStoreSuggestions:1];
  }

  appStoreSuggestions2 = [v11 appStoreSuggestions];
  if ([appStoreSuggestions2 count])
  {
    v15 = 0;
  }

  else
  {
    v15 = [v11 loadingAppStoreSuggestions] ^ 1;
  }

  [v11 setNoAppStoreSuggestionsAvailable:v15];

  rideOptionStatusMap = [v11 rideOptionStatusMap];
  allValues = [rideOptionStatusMap allValues];
  [v11 setNoRideOptionsAvailable:{objc_msgSend(allValues, "count") == 0}];

  return v11;
}

@end
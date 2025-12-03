@interface WeatherLocationResolutionResult
+ (id)confirmationRequiredWithWeatherLocationToConfirm:(id)confirm;
+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate;
+ (id)disambiguationWithWeatherLocationsToDisambiguate:(id)disambiguate;
+ (id)successWithResolvedWeatherLocation:(id)location;
@end

@implementation WeatherLocationResolutionResult

+ (id)successWithResolvedWeatherLocation:(id)location
{
  swift_getObjCClassMetadata();
  locationCopy = location;
  v5 = static WeatherLocationResolutionResult.success(with:)(locationCopy);

  return v5;
}

+ (id)disambiguationWithWeatherLocationsToDisambiguate:(id)disambiguate
{
  type metadata accessor for WeatherLocation();
  v3 = sub_10000FD04();
  swift_getObjCClassMetadata();
  v4 = static WeatherLocationResolutionResult.disambiguation(with:)(v3);

  return v4;
}

+ (id)confirmationRequiredWithWeatherLocationToConfirm:(id)confirm
{
  swift_getObjCClassMetadata();
  confirmCopy = confirm;
  v5 = static WeatherLocationResolutionResult.confirmationRequired(with:)(confirm);

  return v5;
}

+ (id)disambiguationWithObjectsToDisambiguate:(id)disambiguate
{
  sub_10000F074();
  v3 = sub_10000FD04();
  static WeatherLocationResolutionResult.disambiguation(with:)(v3, v4, v5, v6, v7);
}

@end